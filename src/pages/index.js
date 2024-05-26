import React, { useEffect } from 'react';
import useDocusaurusContext from '@docusaurus/useDocusaurusContext';
import Layout from '@theme/Layout';
import { Redirect } from '@docusaurus/router';

export default function Home() {
  const { siteConfig } = useDocusaurusContext();

  useEffect(() => {
    // Redirect to "/docs" when the component mounts
    window.location.href = '/docs';
  }, []);

  // Render a Redirect component to ensure proper redirection
  return <Redirect to="/docs" />;
}

