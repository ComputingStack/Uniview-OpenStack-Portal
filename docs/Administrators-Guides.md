# About Deployments

## Multiple Regions Support

Uniview out of box supports most complex deploy, such as multile regions when many public clouds or high available enterprise cloud need. User can choose to select region and project easily at the user console.

## OpenStack backend endpoint type (https vs http) 

Uniview provides options for administrator to choose the interface type OpenStack supports among "public", "internal" and "admin". Uniview has implemented self-adaptation based on the nature of the endpoint, such as TLS or plain HTTP, for the communication.  Howerver it's expected to have the consistency of such choice, for example, when internal is selected, for all endpoints other than keystone, the internal shall be used in the same way. That may require consistent strategy across different componenents of OpenStack. Arbitrary endpoint strategy may end up some issues.

However it's worth to mention that uniview portal is considered as OpenStack root level component, hence it's recommanded to be deployed as close as possible to the controller nodes, even though it's possible to have such portal run in a public network.

## User credential needs

In order to render the best user experiences, and facilitate various communications, Uniview portal need detects the capability, user creation, MFA binding, version of API etc, so that it requires an admin credential to talk with keystone and other components.  For particular use case, please contact admin@computingstack.com for different solutions.

## MFA support

MFA is one of most desireable security features. Uniview has formed a best practice of managing MFA, including user self-sufficident of binding MFA, combination of application credentials when passwork stops working and backend tuning etc. For the details, please consult support team of ComputingsTack.

## Log Level Support

Uniview portal service has configurable level of logging: info, debug. To change the option, user needs pass corresponding environment variables: log_level with value of info or debug.

# About Customizations

Univew portal can be easily customized with logos, privacy statements etc terms of use with just a click. 

## Customize master logo on sign in page

- Sign in with user with role "admin"
- To "Security and Identity" -> Portal Settings
- Expand "Portal branding settings" 
- Select desired master logo, click submit! Please note PNG and SVG formats, and a horizontal layout are recommanded. Other format may not display properly
- Sign out, the login page will show up the newly uploaded logo
- If multiple docker services are running, other portal docker service needs be restarted to pick up the newer value

## Customize main logo on the top left after sign in

- Sign in with user with role "admin"
- To "Security and Identity" -> Portal Settings
- Expand "Portal branding settings" 
- Select desired main page logo, click submit! Please note PNG and SVG formats, and a square shape are recommanded. Other format may not display properly
- Sign out and sign in, the main page logo will show up
- If multiple docker services are running, other portal docker service needs be restarted to pick up the newer value

## Customize "Terms of Use"
Text containing hyperlink of external URL is supported. 
- Sign in with user with role "admin"
- To "Security and Identity" -> Portal Settings
- Expand "Portal branding settings" 
- Provide the text of hyperlink of a URL, click submit
- Sign out, and the terms of use has an external link to the statement
- If multiple docker services are running, other portal docker service needs be restarted to pick up the newer value

## Customize Privacy Policy

- Sign in with user with role "admin"
- To "Security and Identity" -> Portal Settings
- Expand "Portal branding settings" 
- Provide the text of hyperlink of a URL, click submit
- Sign out, and the terms of use has an external link to the statement
- If multiple docker services are running, other portal docker service needs be restarted to pick up the newer value

## Customize Google fraud prevention plugin in

Univew out of box supports Google "I'm not a robot" frault prevention. To support it:
- Configure the portal to be on TLS, so that https://you_domain works
- Sign in with user with role "admin"
- To "Security and Identity" -> Portal Settings
- Expand "Cloud Portal Pulibc DNS Settings" 
- Provide "External DNS" if not provided yet
- Provide "reCAPTCHA v2 site key bound to above DNS" with the DNS supported
- Provide "Google reCAPTCHA v2 Secrets" bound to above DNS:
- If multiple docker services are running, other portal docker service needs be restarted to pick up the newer value
- Sign out and go to "Create New Account" to confirm that the plugin is enabled

# Known Issues
