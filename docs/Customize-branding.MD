# How to Customize Logos and other business related info

Univew portal can be easily customized with logos, privacy statements, email templates, terms of use and many others with just a click. 

# Customize master logo on sign in page

- Sign in with user with role "admin"
- However user circle on the top right, click the "setting admin"
- Expand "Portal branding settings" 
- Select desired master logo, click submit! Please note PNG and SVG formats, and a horizontal layout are recommanded. Other format may not display properly
- Sign out, the login page will show up the newly uploaded logo
- If multiple docker services are running, other portal docker service needs be restarted to pick up the newer value

# Customize main logo on the top left after sign in

- Sign in with user with role "admin"
- However user circle on the top right, click the "setting admin"
- Expand "Portal branding settings" 
- Select desired main page logo, click submit! Please note PNG and SVG formats, and a square shape are recommanded. Other format may not display properly
- Sign out and sign in, the main page logo will show up
- If multiple docker services are running, other portal docker service needs be restarted to pick up the newer value

# Customize "Terms of Use"
Text containing hyperlink of external URL is supported. 
- Sign in with user with role "admin"
- However user circle on the top right, click the "setting admin"
- Expand "Portal branding settings" 
- Provide the text of hyperlink of a URL, click submit
- Sign out, and the terms of use has an external link to the statement
- If multiple docker services are running, other portal docker service needs be restarted to pick up the newer value

# Customize Privacy Policy

- Sign in with user with role "admin"
- However user circle on the top right, click the "setting admin"
- Expand "Portal branding settings" 
- Provide the text of hyperlink of a URL, click submit
- Sign out, and the terms of use has an external link to the statement
- If multiple docker services are running, other portal docker service needs be restarted to pick up the newer value

# Pick up sign in pages
Univew has different sign in pages available for selection
- Evaluate your logo, theme need
- Pick up one of login1 vs login2 and let Computingstack Support team known
- A new edition will be built with the option in your upcoming build 


# Customize your outgoing email template
- Git checkout the current repo
- Get the folder email_templates/
- Editing the contents (with HTML/CSS schema) 
- Send back to Computingstack Support for the bundles (only contain the edited email templates)
- Computingstack team will do sanity check and get back to you if any issue is found
- Once all are confirmed, your email template will be replaced in your next docker image build
