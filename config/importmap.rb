# Pin npm packages by running ./bin/importmap

pin "application", preload: true
pin "@hotwired/turbo-rails", to: "turbo.min.js", preload: true
pin "@hotwired/stimulus", to: "stimulus.min.js", preload: true
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js", preload: true
pin_all_from "app/javascript/controllers", under: "controllers"
pin "jquery", to: "https://ga.jspm.io/npm:jquery@3.7.1/dist/jquery.js"
pin "popper.js", to: "https://ga.jspm.io/npm:popper.js@1.16.1/dist/umd/popper.js"
pin "select2", to: "https://ga.jspm.io/npm:select2@4.1.0-rc.0/dist/js/select2.js"
pin "trix", to: "https://ga.jspm.io/npm:trix@2.0.8/dist/trix.esm.min.js"
pin "stimulus", to: "https://ga.jspm.io/npm:stimulus@2.0.0/dist/stimulus.umd.js"
pin "stimulus-check-all", to: "https://ga.jspm.io/npm:stimulus-check-all@0.6.0/src/index.js"
pin "@github/check-all", to: "https://ga.jspm.io/npm:@github/check-all@0.4.0/dist/index.js"
pin "daisyui", to: "https://ga.jspm.io/npm:daisyui@4.5.0/src/index.js"
pin "buffer", to: "https://ga.jspm.io/npm:@jspm/core@2.0.1/nodelibs/browser/buffer.js"
pin "camelcase-css", to: "https://ga.jspm.io/npm:camelcase-css@2.0.1/index-es5.js"
pin "css-selector-tokenizer", to: "https://ga.jspm.io/npm:css-selector-tokenizer@0.8.0/lib/index.js"
pin "cssesc", to: "https://ga.jspm.io/npm:cssesc@3.0.0/cssesc.js"
pin "culori/require", to: "https://ga.jspm.io/npm:culori@3.3.0/bundled/culori.cjs"
pin "fastparse", to: "https://ga.jspm.io/npm:fastparse@1.1.2/lib/Parser.js"
pin "fs", to: "https://ga.jspm.io/npm:@jspm/core@2.0.1/nodelibs/browser/fs.js"
pin "nanoid/non-secure", to: "https://ga.jspm.io/npm:nanoid@3.3.7/non-secure/index.cjs"
pin "path", to: "https://ga.jspm.io/npm:@jspm/core@2.0.1/nodelibs/browser/path.js"
pin "picocolors", to: "https://ga.jspm.io/npm:picocolors@1.0.0/picocolors.browser.js"
pin "postcss", to: "https://ga.jspm.io/npm:postcss@8.4.32/lib/postcss.js"
pin "postcss-js", to: "https://ga.jspm.io/npm:postcss-js@4.0.1/index.js"
pin "process", to: "https://ga.jspm.io/npm:@jspm/core@2.0.1/nodelibs/browser/process-production.js"
pin "source-map-js", to: "https://ga.jspm.io/npm:source-map-js@1.0.2/source-map.js"
pin "url", to: "https://ga.jspm.io/npm:@jspm/core@2.0.1/nodelibs/browser/url.js"
pin "trix"
pin "@rails/actiontext", to: "actiontext.esm.js"
