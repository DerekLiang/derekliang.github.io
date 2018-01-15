title: Thoughts after reading The Death of Microservice Madness in 2018
tags:
  - software
date: 2018-01-14 20:46:05
---


The article {% link 'The Death of Microservice Madness in 2018' http://www.dwmkerr.com/the-death-of-microservice-madness-in-2018/ The Death of Microservice Madness in 2018 %} was arrived almost one year too late. 

Our company had started a new project from scratch about 9 months, and encountered all almost all the symptoms that described in the article. In our case, the software architecture was decided before anyone has a chance to look at the true requirements.

In particular the following quote: {% blockquote dwmkerr http://www.dwmkerr.com/the-death-of-microservice-madness-in-2018/ The Death of Microservice Madness in 2018 %}
There is no microservice architecture. Microservices are just another pattern or implementation of components, nothing more, nothing less. 
{% endblockquote %} It resonated the most for me. Since {% link 'components based software engineering' https://en.wikipedia.org/wiki/Component-based_software_engineering  %}  _is a reuse-based approach to defining, implementing and composing loosely coupled independent components into systems_, it is just another logical step to grow your application. In SOA(Service Oriented Architecture), components will be exposed via web service end points.

Another point the author has mentioned in the article is that Microservice has _Independent Scalability_. In reality, most of the line of business software don't need that for 2 reasons. 1) with properly cache, and database design, a system can easily support tens of thousands of concurrent users with SOA. You can always scale vertically. 2) most of the applications are small enough to just be scaled horizontally with little overhead. Not everyone is Netflix. Chances are you don't have thousands of machines to run your Microservices.

