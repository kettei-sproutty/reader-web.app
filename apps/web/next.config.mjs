/** @type {import('next').NextConfig} */
export default {
  webpack: (config) => {
    config.experiments.asyncWebAssembly = true;
    return config;
  },
};
