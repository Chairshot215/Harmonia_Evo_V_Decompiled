.class public Ltwitter4j/examples/FeedMonitor;
.super Ljava/lang/Object;
.source "FeedMonitor.java"


# static fields
.field static class$twitter4j$examples$FeedMonitor:Ljava/lang/Class;

.field static log:Lorg/slf4j/Logger;


# instance fields
.field private feedurl:Ljava/lang/String;

.field private fileName:Ljava/lang/String;

.field private http:Ltwitter4j/http/HttpClient;

.field private lastUpdate:Ljava/util/Date;

.field private prop:Ljava/util/Properties;

.field private twitter:Ltwitter4j/Twitter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    sget-object v0, Ltwitter4j/examples/FeedMonitor;->class$twitter4j$examples$FeedMonitor:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "twitter4j.examples.FeedMonitor"

    invoke-static {v0}, Ltwitter4j/examples/FeedMonitor;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ltwitter4j/examples/FeedMonitor;->class$twitter4j$examples$FeedMonitor:Ljava/lang/Class;

    :goto_0
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Ltwitter4j/examples/FeedMonitor;->log:Lorg/slf4j/Logger;

    return-void

    :cond_0
    sget-object v0, Ltwitter4j/examples/FeedMonitor;->class$twitter4j$examples$FeedMonitor:Ljava/lang/Class;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 5
    .parameter "fileName"

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    iput-object v1, p0, Ltwitter4j/examples/FeedMonitor;->prop:Ljava/util/Properties;

    .line 122
    new-instance v1, Ltwitter4j/http/HttpClient;

    invoke-direct {v1}, Ltwitter4j/http/HttpClient;-><init>()V

    iput-object v1, p0, Ltwitter4j/examples/FeedMonitor;->http:Ltwitter4j/http/HttpClient;

    .line 104
    iput-object p1, p0, Ltwitter4j/examples/FeedMonitor;->fileName:Ljava/lang/String;

    .line 105
    sget-object v1, Ltwitter4j/examples/FeedMonitor;->log:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Loading properties from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 107
    :try_start_0
    iget-object v1, p0, Ltwitter4j/examples/FeedMonitor;->prop:Ljava/util/Properties;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :goto_0
    new-instance v1, Ltwitter4j/Twitter;

    iget-object v2, p0, Ltwitter4j/examples/FeedMonitor;->prop:Ljava/util/Properties;

    const-string v3, "id"

    invoke-virtual {v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ltwitter4j/examples/FeedMonitor;->prop:Ljava/util/Properties;

    const-string v4, "password"

    invoke-virtual {v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ltwitter4j/Twitter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Ltwitter4j/examples/FeedMonitor;->twitter:Ltwitter4j/Twitter;

    .line 114
    iget-object v1, p0, Ltwitter4j/examples/FeedMonitor;->prop:Ljava/util/Properties;

    const-string v2, "feedurl"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltwitter4j/examples/FeedMonitor;->feedurl:Ljava/lang/String;

    .line 115
    new-instance v1, Ljava/util/Date;

    iget-object v2, p0, Ltwitter4j/examples/FeedMonitor;->prop:Ljava/util/Properties;

    const-string v3, "lastUpdate"

    const-string v4, "0"

    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v1, p0, Ltwitter4j/examples/FeedMonitor;->lastUpdate:Ljava/util/Date;

    .line 117
    return-void

    .line 108
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 109
    .local v0, ex:Ljava/io/IOException;
    sget-object v1, Ltwitter4j/examples/FeedMonitor;->log:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Configuration file not found:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 110
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    goto :goto_0
.end method

.method private check()V
    .locals 20

    .prologue
    .line 127
    sget-object v16, Ltwitter4j/examples/FeedMonitor;->log:Lorg/slf4j/Logger;

    const-string v17, "Checking feed from {}"

    move-object/from16 v0, p0

    iget-object v0, v0, Ltwitter4j/examples/FeedMonitor;->feedurl:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-interface/range {v16 .. v18}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 128
    move-object/from16 v0, p0

    iget-object v0, v0, Ltwitter4j/examples/FeedMonitor;->lastUpdate:Ljava/util/Date;

    move-object v10, v0

    .line 129
    .local v10, latestEntry:Ljava/util/Date;
    sget-object v16, Ltwitter4j/examples/FeedMonitor;->log:Lorg/slf4j/Logger;

    const-string v17, "Last update is {}"

    move-object/from16 v0, p0

    iget-object v0, v0, Ltwitter4j/examples/FeedMonitor;->lastUpdate:Ljava/util/Date;

    move-object/from16 v18, v0

    invoke-interface/range {v16 .. v18}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 131
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Ltwitter4j/examples/FeedMonitor;->http:Ltwitter4j/http/HttpClient;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ltwitter4j/examples/FeedMonitor;->feedurl:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ltwitter4j/http/HttpClient;->get(Ljava/lang/String;)Ltwitter4j/http/Response;

    move-result-object v12

    .line 132
    .local v12, res:Ltwitter4j/http/Response;
    new-instance v16, Lcom/sun/syndication/io/SyndFeedInput;

    invoke-direct/range {v16 .. v16}, Lcom/sun/syndication/io/SyndFeedInput;-><init>()V

    invoke-virtual {v12}, Ltwitter4j/http/Response;->asDocument()Lorg/w3c/dom/Document;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lcom/sun/syndication/io/SyndFeedInput;->build(Lorg/w3c/dom/Document;)Lcom/sun/syndication/feed/synd/SyndFeed;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lcom/sun/syndication/feed/synd/SyndFeed;->getEntries()Ljava/util/List;

    move-result-object v5

    .line 135
    .local v5, entries:Ljava/util/List;,"Ljava/util/List<Lcom/sun/syndication/feed/synd/SyndEntry;>;"
    new-instance v16, Ltwitter4j/examples/FeedMonitor$1;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ltwitter4j/examples/FeedMonitor$1;-><init>(Ltwitter4j/examples/FeedMonitor;)V

    move-object v0, v5

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 140
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sun/syndication/feed/synd/SyndEntry;

    .line 141
    .local v6, entry:Lcom/sun/syndication/feed/synd/SyndEntry;
    move-object/from16 v0, p0

    iget-object v0, v0, Ltwitter4j/examples/FeedMonitor;->lastUpdate:Ljava/util/Date;

    move-object/from16 v16, v0

    invoke-interface {v6}, Lcom/sun/syndication/feed/synd/SyndEntry;->getPublishedDate()Ljava/util/Date;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v16

    if-eqz v16, :cond_0

    .line 142
    invoke-interface {v6}, Lcom/sun/syndication/feed/synd/SyndEntry;->getPublishedDate()Ljava/util/Date;

    move-result-object v16

    move-object v0, v10

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v16

    if-eqz v16, :cond_1

    invoke-interface {v6}, Lcom/sun/syndication/feed/synd/SyndEntry;->getPublishedDate()Ljava/util/Date;

    move-result-object v16

    move-object/from16 v10, v16

    .line 144
    :cond_1
    invoke-interface {v6}, Lcom/sun/syndication/feed/synd/SyndEntry;->getTitle()Ljava/lang/String;

    move-result-object v16

    const-string v17, "\n"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    aget-object v15, v16, v17

    .line 145
    .local v15, title:Ljava/lang/String;
    invoke-interface {v6}, Lcom/sun/syndication/feed/synd/SyndEntry;->getLink()Ljava/lang/String;

    move-result-object v11

    .line 146
    .local v11, link:Ljava/lang/String;
    sget-object v16, Ltwitter4j/examples/FeedMonitor;->log:Lorg/slf4j/Logger;

    const-string v17, "New entry \"{}\" published at {}"

    invoke-interface {v6}, Lcom/sun/syndication/feed/synd/SyndEntry;->getPublishedDate()Ljava/util/Date;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object v2, v15

    move-object/from16 v3, v18

    invoke-interface {v0, v1, v2, v3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 148
    new-instance v16, Ljava/lang/StringBuffer;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, v16

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    const-string v17, " "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    .line 149
    .local v13, status:Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v16

    const/16 v17, 0xa0

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_2

    .line 150
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v16

    const/16 v17, 0xa0

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_3

    .line 151
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v16

    const/16 v17, 0x9f

    sub-int v4, v16, v17

    .line 152
    .local v4, cutLength:I
    new-instance v16, Ljava/lang/StringBuffer;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v17, 0x0

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v18

    sub-int v18, v18, v4

    move-object v0, v15

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    const-string v17, " "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    .line 162
    .end local v4           #cutLength:I
    :cond_2
    :goto_1
    sget-object v16, Ltwitter4j/examples/FeedMonitor;->log:Lorg/slf4j/Logger;

    const-string v17, "Updating Twitter."

    invoke-interface/range {v16 .. v17}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 164
    move-object/from16 v0, p0

    iget-object v0, v0, Ltwitter4j/examples/FeedMonitor;->twitter:Ltwitter4j/Twitter;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v13

    invoke-virtual {v0, v1}, Ltwitter4j/Twitter;->updateStatus(Ljava/lang/String;)Ltwitter4j/Status;

    .line 165
    sget-object v16, Ltwitter4j/examples/FeedMonitor;->log:Lorg/slf4j/Logger;

    const-string v17, "Done."

    invoke-interface/range {v16 .. v17}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V
    :try_end_0
    .catch Ltwitter4j/TwitterException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/sun/syndication/io/FeedException; {:try_start_0 .. :try_end_0} :catch_2

    goto/16 :goto_0

    .line 182
    .end local v5           #entries:Ljava/util/List;,"Ljava/util/List<Lcom/sun/syndication/feed/synd/SyndEntry;>;"
    .end local v6           #entry:Lcom/sun/syndication/feed/synd/SyndEntry;
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v11           #link:Ljava/lang/String;
    .end local v12           #res:Ltwitter4j/http/Response;
    .end local v13           #status:Ljava/lang/String;
    .end local v15           #title:Ljava/lang/String;
    :catch_0
    move-exception v16

    move-object/from16 v14, v16

    .line 183
    .local v14, te:Ltwitter4j/TwitterException;
    sget-object v16, Ltwitter4j/examples/FeedMonitor;->log:Lorg/slf4j/Logger;

    new-instance v17, Ljava/lang/StringBuffer;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuffer;-><init>()V

    const-string v18, "Failed to fetch the feed:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    invoke-virtual {v14}, Ltwitter4j/TwitterException;->getMessage()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-interface/range {v16 .. v17}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 189
    .end local v14           #te:Ltwitter4j/TwitterException;
    :goto_2
    return-void

    .line 155
    .restart local v5       #entries:Ljava/util/List;,"Ljava/util/List<Lcom/sun/syndication/feed/synd/SyndEntry;>;"
    .restart local v6       #entry:Lcom/sun/syndication/feed/synd/SyndEntry;
    .restart local v9       #i$:Ljava/util/Iterator;
    .restart local v11       #link:Ljava/lang/String;
    .restart local v12       #res:Ltwitter4j/http/Response;
    .restart local v13       #status:Ljava/lang/String;
    .restart local v15       #title:Ljava/lang/String;
    :cond_3
    :try_start_1
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v16

    const/16 v17, 0xa0

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_4

    .line 156
    const/16 v16, 0x0

    const/16 v17, 0xa0

    invoke-virtual/range {v15 .. v17}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    goto :goto_1

    .line 158
    :cond_4
    move-object v13, v15

    goto :goto_1

    .line 168
    .end local v6           #entry:Lcom/sun/syndication/feed/synd/SyndEntry;
    .end local v11           #link:Ljava/lang/String;
    .end local v13           #status:Ljava/lang/String;
    .end local v15           #title:Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Ltwitter4j/examples/FeedMonitor;->lastUpdate:Ljava/util/Date;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_6

    .line 169
    sget-object v16, Ltwitter4j/examples/FeedMonitor;->log:Lorg/slf4j/Logger;

    const-string v17, "Updating last update."

    invoke-interface/range {v16 .. v17}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Ltwitter4j/examples/FeedMonitor;->prop:Ljava/util/Properties;

    move-object/from16 v16, v0

    const-string v17, "lastUpdate"

    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_1
    .catch Ltwitter4j/TwitterException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/sun/syndication/io/FeedException; {:try_start_1 .. :try_end_1} :catch_2

    .line 173
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Ltwitter4j/examples/FeedMonitor;->prop:Ljava/util/Properties;

    move-object/from16 v16, v0

    new-instance v17, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Ltwitter4j/examples/FeedMonitor;->fileName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-direct/range {v17 .. v18}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const-string v18, "FeedMonitor"

    invoke-virtual/range {v16 .. v18}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ltwitter4j/TwitterException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/sun/syndication/io/FeedException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 174
    :catch_1
    move-exception v16

    move-object/from16 v7, v16

    .line 175
    .local v7, ex1:Ljava/io/IOException;
    :try_start_3
    sget-object v16, Ltwitter4j/examples/FeedMonitor;->log:Lorg/slf4j/Logger;

    new-instance v17, Ljava/lang/StringBuffer;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuffer;-><init>()V

    const-string v18, "Failed to save configuration file:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-interface/range {v16 .. v17}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V
    :try_end_3
    .catch Ltwitter4j/TwitterException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/sun/syndication/io/FeedException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 184
    .end local v5           #entries:Ljava/util/List;,"Ljava/util/List<Lcom/sun/syndication/feed/synd/SyndEntry;>;"
    .end local v7           #ex1:Ljava/io/IOException;
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v12           #res:Ltwitter4j/http/Response;
    :catch_2
    move-exception v16

    move-object/from16 v8, v16

    .line 185
    .local v8, fe:Lcom/sun/syndication/io/FeedException;
    sget-object v16, Ltwitter4j/examples/FeedMonitor;->log:Lorg/slf4j/Logger;

    new-instance v17, Ljava/lang/StringBuffer;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuffer;-><init>()V

    const-string v18, "Failed to parse the feed:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    invoke-virtual {v8}, Lcom/sun/syndication/io/FeedException;->getMessage()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-interface/range {v16 .. v17}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 179
    .end local v8           #fe:Lcom/sun/syndication/io/FeedException;
    .restart local v5       #entries:Ljava/util/List;,"Ljava/util/List<Lcom/sun/syndication/feed/synd/SyndEntry;>;"
    .restart local v9       #i$:Ljava/util/Iterator;
    .restart local v12       #res:Ltwitter4j/http/Response;
    :cond_6
    :try_start_4
    sget-object v16, Ltwitter4j/examples/FeedMonitor;->log:Lorg/slf4j/Logger;

    const-string v17, "No new entry found."

    invoke-interface/range {v16 .. v17}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V
    :try_end_4
    .catch Ltwitter4j/TwitterException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/sun/syndication/io/FeedException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_2
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .parameter "x0"

    .prologue
    .line 73
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    .local v0, x1:Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    throw v1
.end method

.method public static main([Ljava/lang/String;)V
    .locals 11
    .parameter "args"

    .prologue
    .line 80
    const/16 v3, 0xa

    .line 81
    .local v3, interval:I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .local v5, list:Ljava/util/List;,"Ljava/util/List<Ltwitter4j/examples/FeedMonitor;>;"
    move-object v1, p0

    .local v1, arr$:[Ljava/lang/String;
    array-length v4, v1

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v1, v2

    .line 84
    .local v0, arg:Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 82
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 85
    :catch_0
    move-exception v7

    .line 86
    .local v7, nfe:Ljava/lang/NumberFormatException;
    new-instance v8, Ltwitter4j/examples/FeedMonitor;

    invoke-direct {v8, v0}, Ltwitter4j/examples/FeedMonitor;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 89
    .end local v0           #arg:Ljava/lang/String;
    .end local v7           #nfe:Ljava/lang/NumberFormatException;
    :cond_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_1

    .line 90
    new-instance v8, Ltwitter4j/examples/FeedMonitor;

    const-string v9, "feedmonitor.properties"

    invoke-direct {v8, v9}, Ltwitter4j/examples/FeedMonitor;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    .end local v2           #i$:I
    :cond_1
    :goto_2
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ltwitter4j/examples/FeedMonitor;

    .line 93
    .local v6, monitor:Ltwitter4j/examples/FeedMonitor;
    invoke-direct {v6}, Ltwitter4j/examples/FeedMonitor;->check()V

    goto :goto_3

    .line 96
    .end local v6           #monitor:Ltwitter4j/examples/FeedMonitor;
    :cond_2
    :try_start_1
    sget-object v8, Ltwitter4j/examples/FeedMonitor;->log:Lorg/slf4j/Logger;

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, "Sleeping "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, " minutes."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 97
    mul-int/lit8 v8, v3, 0x3c

    mul-int/lit16 v8, v8, 0x3e8

    int-to-long v8, v8

    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 98
    :catch_1
    move-exception v8

    goto :goto_2
.end method
