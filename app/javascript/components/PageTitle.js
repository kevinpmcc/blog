import React from "react"
import PropTypes from "prop-types"
class PageTitle extends React.Component {
  render () {
    return (
      <React.Fragment>
        <h1>{this.props.title}</h1>
      </React.Fragment>
    );
  }
}

PageTitle.propTypes = {
  title: PropTypes.string
};
export default PageTitle
