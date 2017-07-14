class NavBar extends React.Component {

  render() {
   return <nav className="navbar navbar-toggleable-md navbar-inverse navbar-fixed-top bg-inverse">
     <button className="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
       <span className="navbar-toggler-icon"></span>
     </button>
     <a className="navbar-brand ml-md-5" href="#">
       Sweet Home
     </a>

     <div className="collapse navbar-collapse justify-content-end" id="navbarNav">
       {this.render_links()}
     </div>
   </nav>
  }

  render_links() {
    if (this.props.user_signed_in) {
      return this.render_signed_in_user_links()
    }
    else {
      return this.render_unknown_user_links()
    }
  }

  render_signed_in_user_links() {
    return <ul className="navbar-nav navbar-right">
      <li className="nav-item">
        <a className="nav-link mr-md-5" data-method="delete" href={this.props.sign_out_url}>{this.props.user_name}</a>
      </li>
    </ul>
  }

  render_unknown_user_links() {
    return <ul className="navbar-nav navbar-right float-right">
      <li className="nav-item">
        <a href={this.props.sign_up_url} className='nav-link mr-md-5'>Sign Up</a>
      </li>
      <li className="nav-item">
        <a href={this.props.sign_in_url} className='nav-link mr-md-5'>Sign In</a>
      </li>
    </ul>
  }
}
