import * as React from "react"

import * as styles from "../components/index.module.css"
import "../components/layout.css"

import { Helmet } from "react-helmet"
import { graphql } from "gatsby"

const IndexPage = ({ data }) => {
  return (
    <>
      <Helmet title={data.site.siteMetadata.title} />
      <div className={styles.textCenter}>
        <h1>
          <b>{data.site.siteMetadata.title}</b>
        </h1>
        {data.site.siteMetadata.lyric.split("\n").map((item, i) => (
          <p
            key={i}
            style={{
              textAlign: "center",
              lineHeight: "5px",
              marginLeft: "auto",
              marginRight: "auto",
              fontWeight: i % 2 === 0 ? "bold" : "unset",
            }}
          >
            {item !== "" ? item : <br />}
          </p>
        ))}
      </div>
    </>
  )
}

export const query = graphql`
  query HomePageQuery {
    site {
      siteMetadata {
        title
        lyric
      }
    }
  }
`

export default IndexPage
