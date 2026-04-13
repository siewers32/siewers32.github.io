import syntaxHighlight from "@11ty/eleventy-plugin-syntaxhighlight";
import pluginWebc from "@11ty/eleventy-plugin-webc";
// import CleanCSS from "clean-css";
import pluginTOC from "eleventy-plugin-toc";
// import { minify } from "terser";
import markdownIt from 'markdown-it';
import markdownItAnchor from 'markdown-it-anchor';
import { HtmlBasePlugin } from "@11ty/eleventy";


export default function(eleventyConfig) {
	// Order matters, put this at the top of your configuration file.
	// This is relative to your input directory!
  eleventyConfig.setIncludesDirectory("_includes");
  
  eleventyConfig.addCollection("pages", function(collection) {
    const coll = collection.getFilteredByTag("pages");

    for(let i = 0; i < coll.length ; i++) {
        const prevPost = coll[i-1];
        const nextPost = coll[i + 1];

        coll[i].data["prevPost"] = prevPost;
        coll[i].data["nextPost"] = nextPost;
    }

    return coll;
  });
  
  eleventyConfig.addPlugin(pluginWebc, {
    components: [
        "src/_components/*.webc",
    ]      
  });

  eleventyConfig.addPlugin(pluginTOC, {
    tags:['h2'],
    wrapper:'div',
    ul: true
  })

	eleventyConfig.addPlugin(HtmlBasePlugin);

//   eleventyConfig.addFilter("cssmin", function(code) {
//     return new CleanCSS({}).minify(code).styles;
//   });
  
//   eleventyConfig.addNunjucksAsyncFilter("jsmin", async function (code, callback) {
// 		try {
// 			const minified = await minify(code);
// 			callback(null, minified.code);
// 		} catch (err) {
// 			console.error("Terser error: ", err);
// 			// Fail gracefully.
// 			callback(null, code);
// 		}
//   });
eleventyConfig.addPassthroughCopy("./manifest.json");
eleventyConfig.addPassthroughCopy("./service-worker.js");
eleventyConfig.addPassthroughCopy("./src/_js");
eleventyConfig.addPassthroughCopy("./src/_assets");
eleventyConfig.addPassthroughCopy("./src/_css");

eleventyConfig.addShortcode("video", (yt_id) => {
    return `<div class="video-wrapper">
        <iframe allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
            allowfullscreen frameborder="0" height="auto"
            src="https://www.youtube.com/embed/${yt_id}">
        </iframe>
    </div>`
});

eleventyConfig.addPlugin(syntaxHighlight);

const markdownItOptions = {
    html:true,
    breaks: false
}

const markdownItAnchorOptions = {
    permalink: false,
    tabIndex: false
}

const markdownLib = markdownIt(markdownItOptions).use(
    markdownItAnchor,
    markdownItAnchorOptions
)

eleventyConfig.setLibrary("md", markdownLib);

eleventyConfig.addFilter("date", function(date) {
    let myDate = new Date(date);
    let dd = myDate.getDate() < 10 ? "0" + myDate.getDate(): myDate.getDate();
    let mm = myDate.getMonth() < 10 ? "0" + myDate.getMonth(): myDate.getMonth();
    let yy = myDate.getFullYear();

    return yy + '-' + mm + '-' + dd; 
}); 

eleventyConfig.addFilter("postsAscending", (collection) => {
    return collection.sort((a,b) => {
        // console.log(a.data.page.inputPath)
        if (a.data.page.inputPath > b.data.page.inputPath) return 1;
        else if (a.data.page.inputPath < b.data.page.inputPath) return -1;
        else return 0;
    })
});

return {
    // pathPrefix: "//",
    dir: {
        input: "src",
        output: "docs",
    },
};

}