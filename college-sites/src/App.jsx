// src/App.jsx
import React from 'react';
import { BrowserRouter as Router, Routes, Route } from 'react-router-dom';

import AboutUs from './pages/AboutUs';
import Academics from './pages/Academics';
import Library from './pages/Library';
import Placements from './pages/Placements';
import Admissions from './pages/Admissions';
import Layout from './Components/Layout';

import './App.css';

const Home = () => (
  <Layout>
    <section className="announcement">
      <h2>Announcements</h2>
      <p>New semester starts on Monday. Check your emails for further details and instructions!</p>
    </section>
  </Layout>
);

function App() {
  return (
    <Router>
      <Routes>
        <Route path="/" element={<Home />} />
        <Route path="/about" element={<AboutUs />} />
        <Route path="/academics" element={<Academics />} />
        <Route path="/library" element={<Library />} />
        <Route path="/placements" element={<Placements />} />
        <Route path="/admissions" element={<Admissions />} />
      </Routes>
    </Router>
  );
}

export default App;
