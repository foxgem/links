# 说明

本例是一个简单的随机推荐服务：读取[DTeam 团队日志](https://blog.shifudao.com/)所有文章链接，随机推荐 5 篇文章。

# 安装

1. 安装 julia
1. julia links.jl

访问 “ http://localhost:8080/ ”，若有返回，则 OK 。返回内容为类似：

> <ul class="posts"> <li class="post"><a href="/posts/2018-06/nginx-ssl%E5%BF%AB%E9%80%9F%E5%8F%8C%E5%90%91%E8%AE%A4%E8%AF%81%E9%85%8D%E7%BD%AE%E8%84%9A%E6%9C%AC.html">Nginx SSL快速双向认证配置(脚本)</a><span class="meta">Jun 15, 2018</span></li><li class="post"><a href="/posts/2018-08/%E5%8C%BA%E5%9D%97%E9%93%BE%E5%91%A8%E5%91%A8%E8%AE%B0%E5%85%B1%E8%AF%86%E7%AE%97%E6%B3%95.html">区块链周周记：共识算法</a><span class="meta">Aug 5, 2018</span></li><li class="post"><a href="/posts/2018-07/%E6%90%AD%E5%BB%BA%E4%BB%A5%E5%A4%AA%E5%9D%8A%E6%B5%8B%E8%AF%95%E9%93%BE%E7%9A%84%E7%AE%80%E6%98%93%E6%95%99%E7%A8%8B.html">搭建以太坊测试链的简易教程</a><span class="meta">Jul 15, 2018</span></li><li class="post"><a href="/posts/2018-02/%E8%81%8A%E8%81%8A%E5%B7%A5%E4%B8%9A%E4%BA%92%E8%81%94%E7%BD%91.html">聊聊工业互联网</a><span class="meta">Feb 14, 2018</span></li><li class="post"><a href="/posts/2018-08/erc20%E4%BB%A3%E5%B8%81%E5%90%88%E7%BA%A6%E5%BC%80%E5%8F%91%E7%9B%B8%E5%85%B3%E5%87%BD%E6%95%B0%E5%92%8C%E4%BA%8B%E4%BB%B6.html">ERC20代币合约开发相关函数和事件</a><span class="meta">Aug 5, 2018</span></li></ul>

其结果为上述 HTML 的片段。