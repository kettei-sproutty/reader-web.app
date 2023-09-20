"use client"
import { useEffect } from "react";

const Page = () => {

  useEffect(() => {
    import('parser').then(({ greet }) => greet());
  }, [])

  return null;
};

export default Page
