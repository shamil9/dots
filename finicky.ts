export default { 
  defaultBrowser: "Firefox",
  handlers: [
    {
      // Open google.com and *.google.com urls in Google Chrome
      match: [
        "*.google.com*", // match google.com subdomains
				"*.epic.net*",
				"*.basecamp.com*",
				"*.figma.com*",
				"*localhost*",
				"*0.0.0.0*",
				"*epic-sys*",
      ],
      browser: "Google Chrome",
    },
  ],
};
