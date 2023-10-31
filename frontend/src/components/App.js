import React, { useEffect, useState } from "react";
import Login from "./Login";
import './App.css';

function App() {
  const [user, setUser] = useState(null);

  useEffect(() => {
    // auto-login
    fetch("/me").then((r) => {
      if (r.ok) {
        r.json().then((user) => setUser(user));
      }
    });
  }, []);

  // if (!user) return <Login onLogin={setUser} />;


  return (
    <div>
      <h1> Massage Therapists;</h1>
      <h3>Ace Your Anatomy & Physiology Exams</h3>
    </div>
  );
}

export default App;
