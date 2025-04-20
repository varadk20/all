// src/components/Layout.jsx
import React from 'react';
import { Link } from 'react-router-dom';
import Logo from '../assets/sfit.png'; // Adjust the path if needed
import '../App.css';

const Layout = ({ children }) => {
  return (
    <div className="container">
      <header className="header">
        <img src={Logo} alt="College Logo" className="logo" />
        <h1 className="college-name">St. Francis Institute of Technology</h1>
      </header>

      <nav className="nav-tabs">
        <Link to="/" className="tab">Home</Link>
        <Link to="/about" className="tab">About Us</Link>
        <Link to="/academics" className="tab">Academics</Link>
        <Link to="/library" className="tab">Library</Link>
        <Link to="/placements" className="tab">Placements</Link>
        <Link to="/admissions" className="tab">Admissions</Link>
      </nav>

      <div className="page-content">{children}</div>
    </div>
  );
};

export default Layout;
