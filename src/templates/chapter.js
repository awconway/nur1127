import React, { useState } from 'react'
import { graphql, navigate } from 'gatsby'
import Layout from "../components/layout"
import useLocalStorage from '@illinois/react-use-local-storage'

import { Button } from '../components/button'
import { ChapterContext } from '../context'

import classes from '../styles/chapter.module.sass'
import { MDXRenderer } from "gatsby-plugin-mdx"


//components
import { MDXProvider } from "@mdx-js/react"
import { qu } from '../components/qu'
import SofTable from '../components/sofTable'
import Exercise from '../components/exercise'
import CodeBlock from '../components/code'
import { Link } from '../components/link'
import Choice, { Option } from '../components/choice'
import { H3, Hr, Ol, Ul, Li, InlineCode } from '../components/typography'
const components = {
    exercise: Exercise,
    codeblock: CodeBlock,
    choice: Choice,
    opt: Option,
    a: Link,
    hr: Hr,
    h3: H3,
    ol: Ol,
    ul: Ul,
    li: Li,
    code: InlineCode,
    qu: qu,
    SofTable: SofTable
}


export default function Template({ data: { mdx }, data }) {
    const [activeExc, setActiveExc] = useState(null)
    const {courseId}  = data.site.siteMetadata
    const [completed, setCompleted] = useLocalStorage(`${courseId}-completed-${mdx.frontmatter.id}`, [])

    const buttons = [
        { slug: mdx.frontmatter.prev, text: '« Previous Chapter' },
        { slug: mdx.frontmatter.next, text: 'Next Chapter »' },
    ]

    return (
        <ChapterContext.Provider value={{ activeExc, setActiveExc, completed, setCompleted }}>

        <Layout title={mdx.frontmatter.title} description={mdx.frontmatter.description}>
                <MDXProvider components={components}>
                    <MDXRenderer>
                        {mdx.body}
                    </MDXRenderer>
                </MDXProvider>
                    <section className={classes.pagination}>
                    {buttons.map(({ slug, text }) => (
                        <div key={slug}>
                            {slug && (
                                <Button variant="secondary" small onClick={() => navigate(slug)}>
                                    {text}
                                </Button>
                            )}
                        </div>
                    ))}
                </section>
        </Layout>
  </ChapterContext.Provider>
    )
}



export const pageQuery = graphql`
query($slug: String!) {
    site {
        siteMetadata {
            courseId
        }
    }
    mdx(fields: { slug: { eq: $slug } }) {
                body
                frontmatter{
                id
                title
                description
                next
                prev
                }
            }
    }
`
