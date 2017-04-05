# Bloglist Page

## Article

- title: xxx
- date: yyyy-mm-dd
- author: xxx
- url: blog-title.html
- brief: xxxxxxxxxxxx

example:
```
<div class="article">
    <h1 class="title"><a href="{{blog.url}}">{{blog.title}}</a></h1>
        <ul class="blog-post-meta">
            <li class="meta-item">
                <svg aria-hidden="true" class="octicon octicon-calendar" height="16" version="1.1" viewBox="0 0 14 16" width="14"><path fill-rule="evenodd" d="M13 2h-1v1.5c0 .28-.22.5-.5.5h-2c-.28 0-.5-.22-.5-.5V2H6v1.5c0 .28-.22.5-.5.5h-2c-.28 0-.5-.22-.5-.5V2H2c-.55 0-1 .45-1 1v11c0 .55.45 1 1 1h11c.55 0 1-.45 1-1V3c0-.55-.45-1-1-1zm0 12H2V5h11v9zM5 3H4V1h1v2zm6 0h-1V1h1v2zM6 7H5V6h1v1zm2 0H7V6h1v1zm2 0H9V6h1v1zm2 0h-1V6h1v1zM4 9H3V8h1v1zm2 0H5V8h1v1zm2 0H7V8h1v1zm2 0H9V8h1v1zm2 0h-1V8h1v1zm-8 2H3v-1h1v1zm2 0H5v-1h1v1zm2 0H7v-1h1v1zm2 0H9v-1h1v1zm2 0h-1v-1h1v1zm-8 2H3v-1h1v1zm2 0H5v-1h1v1zm2 0H7v-1h1v1zm2 0H9v-1h1v1z"></path></svg>
                {{blog.date}}
            </li>
            <li class="meta-item"><svg enable-background="new 0 0 139 139" viewBox="0 0 139 139" xmlns="http://www.w3.org/2000/svg"><circle cx="69.5" cy="52.2" fill="none" r="27.4" stroke="#000103" stroke-miterlimit="10" stroke-width="6"/><path d="m69.2 124.6c0 0 22 1.8 40.2-17.9 0 0 1.5-19.2-12.7-24.9l-9.9-4.7c0 0-1.1-1.9-.7-3.4" fill="none" stroke="#000103" stroke-miterlimit="10" stroke-width="6"/><path d="m70 124.6c0 0-22 1.8-40.2-17.9 0 0-1.5-19.2 12.7-24.9l9.9-4.7c0 0 1.1-1.9.7-3.4" fill="none" stroke="#000103" stroke-miterlimit="10" stroke-width="6"/></svg>
                {{blog.author}}
            </li>
        </ul>
        <a href="{{blog.url}}">
            <div class="brief">
                <p>{{ blog.brief}}</p>
            </div>
        </a>
        <div class="article_divider"></div>
    </div>
```


# Blog Page

## Sidebar

- title: xxx
- url: blogs/blog-title.html or blogs-cn/blog-title.html
- years: [yyyy,...]
- months: [mm,...]
- post_count: the number of blogs in a month, the number of blogs in a year

example:

```
    <div class="st_tree" id="doc-nav">
        <ul>
            {% for year in years['ys'] %}
            <li><a href="#">{{ years[year].zh_code }} ({{ years[year].post_count }})</a></li>
            <ul show="{% if years[year].show %}true{% endif %}">
                {% for month in years[year].months %}
                <li><a href="#">{{ years[year][month].zh_code }}({{
                                years[year][month].post_count }})</a></li>
                <ul>
                    {% for post in years[year][month].posts %}
                    <li><i class="icon"></i><a href="{{ post.url }}">{{ post.title }}</a></li>
                    {% endfor %}
                </ul>
                {% endfor %}
            </ul>
            {% endfor %}
        </ul>
    </div>
```

## Content

- title: xxx
- date: yyyy-mm-dd
- author: xxx
- content: xxxxxxxxxxxx
- url

example: 
```
    <div class="item">
        <div class="content">
            <h1 class="title">{{ blog.title }}</h1>
            <ul class="blog-post-meta">
                <li class="meta-item">
                    <svg aria-hidden="true" class="octicon octicon-calendar" height="16" version="1.1" viewBox="0 0 14 16" width="14"><path fill-rule="evenodd" d="M13 2h-1v1.5c0 .28-.22.5-.5.5h-2c-.28 0-.5-.22-.5-.5V2H6v1.5c0 .28-.22.5-.5.5h-2c-.28 0-.5-.22-.5-.5V2H2c-.55 0-1 .45-1 1v11c0 .55.45 1 1 1h11c.55 0 1-.45 1-1V3c0-.55-.45-1-1-1zm0 12H2V5h11v9zM5 3H4V1h1v2zm6 0h-1V1h1v2zM6 7H5V6h1v1zm2 0H7V6h1v1zm2 0H9V6h1v1zm2 0h-1V6h1v1zM4 9H3V8h1v1zm2 0H5V8h1v1zm2 0H7V8h1v1zm2 0H9V8h1v1zm2 0h-1V8h1v1zm-8 2H3v-1h1v1zm2 0H5v-1h1v1zm2 0H7v-1h1v1zm2 0H9v-1h1v1zm2 0h-1v-1h1v1zm-8 2H3v-1h1v1zm2 0H5v-1h1v1zm2 0H7v-1h1v1zm2 0H9v-1h1v1z"></path></svg>
                                {{ blog.date }}
                </li>
                <li class="meta-item"><svg enable-background="new 0 0 139 139" viewBox="0 0 139 139" xmlns="http://www.w3.org/2000/svg"><circle cx="69.5" cy="52.2" fill="none" r="27.4" stroke="#000103" stroke-miterlimit="10" stroke-width="6"/><path d="m69.2 124.6c0 0 22 1.8 40.2-17.9 0 0 1.5-19.2-12.7-24.9l-9.9-4.7c0 0-1.1-1.9-.7-3.4" fill="none" stroke="#000103" stroke-miterlimit="10" stroke-width="6"/><path d="m70 124.6c0 0-22 1.8-40.2-17.9 0 0-1.5-19.2 12.7-24.9l9.9-4.7c0 0 1.1-1.9.7-3.4" fill="none" stroke="#000103" stroke-miterlimit="10" stroke-width="6"/></svg>{{ blog.author }}</li>
            </ul>
            <div class="blog-text">{{ blog.content }}</div>
        </div>
        <div class="operate">
            <a href="https://www.facebook.com/sharer.php?u=http%3a%2f%2fwww.pingcap.com%2f{{ blog.url }}" class="link_icon">
                <i class="icon"><svg enable-background="new 0 0 36 36" viewBox="0 0 36 36" xmlns="http://www.w3.org/2000/svg">
                    <path d="m1.7 18.9c-.6 0-1-.4-1-1v-5.6c0-3 2.4-5.4 5.4-5.4.6 0 1 .4 1 1s-.4 1-1 1c-1.9 0-3.4 1.5-3.4 3.4v5.6c0 .6-.5 1-1 1z"
                                          fill="#040000"/>
                    <path d="m27.7 31.9h-22c-2.8 0-5-2.2-5-5v-9.5c0-.6.4-1 1-1s1 .4 1 1v9.5c0 1.7 1.3 3 3 3h22c1.7 0 3-1.3 3-3v-2.5c0-.6.4-1 1-1s1 .4 1 1v2.5c0 2.8-2.3 5-5 5z"
                                          fill="#040000"/>
                    <path d="m26.2 21c-.4 0-.7-.1-1-.2-.6-.3-1.5-1-1.5-3v-1.9c0-.6.4-1 1-1s1 .4 1 1v1.9c0 .8.2 1.1.3 1.2s.5 0 1.1-.5l5.1-4.2c.6-.5.9-1.1.9-1.7 0-.6-.3-1.3-.9-1.7l-5.1-4.2c-.6-.5-1-.5-1.1-.5-.1.1-.3.4-.3 1.2v1.5c0 .6-.4 1-1 1s-1-.4-1-1v-1.6c0-2 .9-2.7 1.5-3 .6-.2 1.8-.5 3.3.7l5.1 4.2c1.1.9 1.7 2 1.7 3.3s-.6 2.4-1.7 3.3l-5.1 4.2c-.9.7-1.7 1-2.3 1z"
                                          fill="#040000"/>
                    <path d="m9.3 25.2c-.6 0-1-.4-1-1v-1.3c0-13.3 8.8-15 16.5-15 .6 0 1 .4 1 1s-.4 1-1 1c-10.3 0-14.5 3.8-14.5 13v1.3c0 .6-.4 1-1 1z"
                                          fill="#040000"/>
                    <path d="m15.9 20.9c-.1 0-.2 0-.3-.1-.5-.2-.8-.8-.6-1.3 1.6-4.7 7.2-4.7 9.5-4.7.6 0 1 .4 1 1s-.4 1-1 1c-2.1 0-6.5 0-7.7 3.3-.1.5-.5.8-.9.8z"
                                          fill="#040000"/>
                </svg></i>分享
            </a>
        </div>
    </div>
```


# Doc Page

## Sidebar

- title: xxxxxxxxxxxx
- url: docs/doc-title.html  or docs-cn/doc-title.html
- category: introduction ...

example:

```
<div class="col-md-4 nav nav-tree" id="st-tree">
    <h1 class="title"> Documentation </h1>
    <div class="st_tree">
        <ul>
            <li show="true"><a href="#">{{post.category}}</a></li>
            <ul>
                <li><i class="icon"></i><a href="{{post.url}}">{{post.title}}</a></li>
                <li><i class="icon"></i><a href="{{post.url}}#tidb-architecture">{{post.title}}</a></li>
            </ul>
            <li><a href="#">{{post.category}}</a></li>
            <ul>
                <li><i class="icon"></i><a href="{{post.url}}">{{post.title}}</a></li>
                <li><i class="icon"></i><a
                        href="{{post.url}}">{{post.title}}</a></li>
                <li><i class="icon"></i><a href="{{post.url}}">{{post.title}}</a></li>
                <li><i class="icon"></i><a href="doc-docker-deployment.html">Docker Deployment</a></li>
                <li><i class="icon"></i><a href="doc-configuration.html">Configuration and options</a></li>
            </ul>
            <li><a href="#">Operation and Monitoring</a></li>
            <ul>
                <li><i class="icon"></i><a href="doc-monitor-overview.html">Overview of the monitoring framework</a></li>
                <li><i class="icon"></i><a href="doc-monitor.html">Monitoring a TiDB cluster</a></li>
            </ul>
            <li><a href="#">Compatibility and comparison with MySQL</a></li>
            <ul>
                <li><i class="icon"></i><a href="doc-sql-readme.html">SQL Statment Syntax of TiDB</a></li>
                <li><i class="icon"></i><a href="doc-mysql-compatibility.html">Compatibility with MySQL</a></li>
            </ul>
            <li><a href="#">Advanced Usage</a></li>
            <ul>
                <li><i class="icon"></i><a href="doc-migration.html">Data migration from MySQL to TiDB</a></li>
                <li><i class="icon"></i><a href="doc-loader.html">Loader instructions</a></li>
                <li><i class="icon"></i><a href="doc-tune-tikv.html">Performance tuning</a></li>
                <li><i class="icon"></i><a href="doc-history-read.html">Reading data from history versions</a></li>
            </ul>
            <li><a href="#">More resources</a></li>
            <ul>
                <li><i class="icon"></i><a href="https://github.com/pingcap/tidb-tools" target="_blank">Frequently Used
                    Tools</a></li>
                <li><i class="icon"></i><a href="doc-trouble-shooting.html">Troubleshooting</a></li>
                <li><i class="icon"></i><a href="https://pingcap.github.io/blog" target="_blank">PingCAP blog</a></li>
            </ul>
            <li><i class="icon"></i><a href="doc-faq.html">Frequently Asked Questions (FAQ)</a></li>
        </ul>
    </div>
</div>
```


## Content 

- title: xxx
- content: xxxxxxxxxxxx
- url: docs/doc-title.html or docs-cn/doc-title.html

example: 
```
<div class="item">
    <h1>{{ doc.title }}</h1>
    <div class="content">
        {{ doc.content }}
    </div>
    <div class="draw">
        <img src="https://download.pingcap.org/images/docs-simple.png" width="100%">
    </div>
    <div class="operate">
        <div class="row">
            <div class="col-md-3 f-thide">
                <a href="https://www.facebook.com/sharer.php?u=http%3a%2f%2fwww.pingcap.com%2f{{ doc.url }}"
                                   class="link_icon"><i class="icon">
                    <svg enable-background="new 0 0 36 36" viewBox="0 0 36 36"
                                         xmlns="http://www.w3.org/2000/svg">
                        <path d="m1.7 18.9c-.6 0-1-.4-1-1v-5.6c0-3 2.4-5.4 5.4-5.4.6 0 1 .4 1 1s-.4 1-1 1c-1.9 0-3.4 1.5-3.4 3.4v5.6c0 .6-.5 1-1 1z"
                                              fill="#040000"/>
                        <path d="m27.7 31.9h-22c-2.8 0-5-2.2-5-5v-9.5c0-.6.4-1 1-1s1 .4 1 1v9.5c0 1.7 1.3 3 3 3h22c1.7 0 3-1.3 3-3v-2.5c0-.6.4-1 1-1s1 .4 1 1v2.5c0 2.8-2.3 5-5 5z"
                                              fill="#040000"/>
                        <path d="m26.2 21c-.4 0-.7-.1-1-.2-.6-.3-1.5-1-1.5-3v-1.9c0-.6.4-1 1-1s1 .4 1 1v1.9c0 .8.2 1.1.3 1.2s.5 0 1.1-.5l5.1-4.2c.6-.5.9-1.1.9-1.7 0-.6-.3-1.3-.9-1.7l-5.1-4.2c-.6-.5-1-.5-1.1-.5-.1.1-.3.4-.3 1.2v1.5c0 .6-.4 1-1 1s-1-.4-1-1v-1.6c0-2 .9-2.7 1.5-3 .6-.2 1.8-.5 3.3.7l5.1 4.2c1.1.9 1.7 2 1.7 3.3s-.6 2.4-1.7 3.3l-5.1 4.2c-.9.7-1.7 1-2.3 1z"
                                              fill="#040000"/>
                        <path d="m9.3 25.2c-.6 0-1-.4-1-1v-1.3c0-13.3 8.8-15 16.5-15 .6 0 1 .4 1 1s-.4 1-1 1c-10.3 0-14.5 3.8-14.5 13v1.3c0 .6-.4 1-1 1z"
                                              fill="#040000"/>
                        <path d="m15.9 20.9c-.1 0-.2 0-.3-.1-.5-.2-.8-.8-.6-1.3 1.6-4.7 7.2-4.7 9.5-4.7.6 0 1 .4 1 1s-.4 1-1 1c-2.1 0-6.5 0-7.7 3.3-.1.5-.5.8-.9.8z"
                                              fill="#040000"/>
                    </svg>
                </i>分享</a>
            </div>
            <div class="col-md-3 f-thide" onclick="window.print();">
                <a href="javascript:;" class="link_icon"><i class="icon">
                    <svg enable-background="new 0 0 36 36" viewBox="0 0 36 36"
                                         xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
                                        <defs>
                                            <path id="a"
                                                  d="m7.6 14.6c.4 0 1-.4 1-.4s.6-.7.6-1.2c0-.9-.7-1.6-1.6-1.6s-1.6.7-1.6 1.6c0 .9.7 1.6 1.6 1.6z"/>
                                            <clipPath id="b">
                                                <use overflow="visible" xlink:href="#a"/>
                                            </clipPath>
                                            <clipPath id="c">
                                                <use overflow="visible" xlink:href="#d"/>
                                            </clipPath>
                                            <circle id="d" cx="12.6" cy="12.6" r="1.6"/>
                                        </defs>
                                        <g clip-path="url(#b)" fill="#040000">
                                            <path d="m1 6.4h13.2v13.2h-13.2z"/>
                                        </g>
                                        <g clip-path="url(#c)" fill="#040000">
                                            <path d="m6 6h13.2v13.2h-13.2z"/>
                                        </g>
                                        <path d="m30.4 28.8h-3.6v-2h3.6c1.7 0 3-1.3 3-3v-13c0-1.7-1.3-3-3-3h-24.8c-1.7 0-3 1.3-3 3v13c0 1.7 1.3 3 3 3h5.4v2h-5.4c-2.8 0-5-2.2-5-5v-13c0-2.8 2.2-5 5-5h24.7c2.8 0 5 2.2 5 5v13c .1 2.7-2.2 5-4.9 5z"
                                              fill="#040000"/>
                                        <path d="m25.4 36h-14.4c-1.1 0-2-.9-2-2v-15h18.5v15c0 1.1-.9 2-2.1 2zm-14.4-15v13h14.4v-13z"
                                              fill="#040000"/>
                                        <path d="m27.5 6.8h-2v-4.8h-14.5v4.6h-2v-4.6c0-1.1.9-2 2-2h14.4c1.1 0 2 .9 2 2v4.8z"
                                              fill="#040000"/>
                    </svg>
                </i>打印</a>
            </div>
            <div class="col-md-3 f-thide">
                <a href="https://download.pingcap.org/tidb-manual-cn.pdf" class="link_icon" download="tidb-manual-cn.pdf"><i class="icon">
                    <svg enable-background="new 0 0 36 36" viewBox="0 0 36 36"
                                         xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
                                        <defs>
                                            <circle id="a" cx="20.9" cy="6.9" r="1.6"/>
                                            <clipPath id="b">
                                                <use overflow="visible" xlink:href="#a"/>
                                            </clipPath>
                                        </defs>
                                        <g clip-path="url(#b)" fill="#040000">
                                            <path d="m14.3.3h13.2v13.2h-13.2z"/>
                                        </g>
                                        <path d="m26.7 7.4c-.6 0-1-.4-1-1 0-1.9-2.1-4-4-4-.6 0-1-.4-1-1s .4-1 1-1c3 0 6 3 6 6 0 .5-.5 1-1 1z"
                                              fill="#040000"/>
                                        <path d="m29.7 35.6h-23.4c-2.8 0-5-2.2-5-4.8v-.4c0-2.6 2.2-4.8 5-4.8h1.8c.6 0 1 .4 1 1s-.4 1-1 1h-1.8c-1.7 0-3 1.3-3 2.8v.4c0 1.5 1.3 2.8 3 2.8h23.5c1.7 0 3-1.3 3-2.8v-.4c0-1.5-1.3-2.8-3-2.8h-2.1c-.6 0-1-.4-1-1s .4-1 1-1h2.1c2.8 0 5 2.2 5 4.8v.4c-.1 2.6-2.3 4.8-5.1 4.8z"
                                              fill="#040000"/>
                                        <path d="m17.9 30.6c0 0 0 0 0 0-1.3 0-2.4-.6-3.3-1.7l-4.2-5.1c-1.3-1.5-1-2.7-.7-3.2.3-.6 1-1.5 3-1.5h1.5c.6 0 1 .4 1 1s-.4 1-1 1h-1.5c-.8 0-1.1.2-1.2.3-.1.1 0 .5.5 1.1l4.2 5.1c1 1.2 2.5 1.2 3.5 0l4.2-5.1c.5-.6.5-1 .5-1.1-.1-.1-.4-.3-1.2-.3h-1.9c-.6 0-1-.4-1-1s .4-1 1-1h1.9c2 0 2.7.9 3 1.5.3.6.5 1.7-.7 3.2l-4.3 5.2c-.9 1-2 1.6-3.3 1.6z"
                                              fill="#040000"/>
                                        <path d="m21.3 21.1c-.6 0-1-.4-1-1v-9.1c0-.6.4-1 1-1s1 .4 1 1v9.1c0 .5-.5 1-1 1zm-7 0c-.6 0-1-.4-1-1v-13.5c0-1.7 1.3-3 3-3h1.3c.6 0 1 .4 1 1s-.4 1-1 1h-1.3c-.6 0-1 .4-1 1v13.5c0 .5-.5 1-1 1z"
                                              fill="#040000"/>
                    </svg>
                </i>下载</a>
            </div>
            <div class="col-md-3 f-thide">
                <a href="mailto:info@pingcap.com" class="link_icon"><i class="icon icon-mail">
                    <svg enable-background="new 0 0 34 26" viewBox="0 0 34 26"
                                         xmlns="http://www.w3.org/2000/svg">
                                        <path d="m29.5 2.5c1.1 0 2 .9 2 2v17c0 1.1-.9 2-2 2h-25c-1.1 0-2-.9-2-2v-17c0-1.1.9-2 2-2zm0-2h-25c-2.2 0-4 1.8-4 4v17c0 2.2 1.8 4 4 4h25c2.2 0 4-1.8 4-4v-17c0-2.2-1.8-4-4-4z"
                                              fill="#040000"/>
                                        <path d="m25.9 8.7l-6.4 6.4c-1.6 1.6-4.1 1.6-5.7 0l-6.3-6.4" fill="none"
                                              stroke="#040000" stroke-linecap="round" stroke-miterlimit="10"
                                              stroke-width="2"/>
                                        <path d="m11.8 14.5l-4.3 4.3" fill="none" stroke="#040000"
                                              stroke-linecap="round"
                                              stroke-miterlimit="10" stroke-width="2"/>
                                        <path d="m21.5 13.5l4.3 4.3" fill="none" stroke="#040000" stroke-linecap="round"
                                              stroke-miterlimit="10" stroke-width="2"/>
                    </svg>
                </i>反馈</a>
            </div>
        </div>
    </div>
</div>
```
