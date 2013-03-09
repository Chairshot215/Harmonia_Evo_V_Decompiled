.class public Ltwitter4j/examples/GetDirectMessages;
.super Ljava/lang/Object;
.source "GetDirectMessages.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 9
    .parameter "args"

    .prologue
    const/4 v7, 0x0

    const/4 v8, -0x1

    .line 46
    array-length v5, p0

    const/4 v6, 0x2

    if-ge v5, v6, :cond_0

    .line 47
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "No TwitterID/Password specified."

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 48
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "Usage: java twitter4j.examples.GetDirectMessages ID Password"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 50
    invoke-static {v8}, Ljava/lang/System;->exit(I)V

    .line 52
    :cond_0
    new-instance v4, Ltwitter4j/Twitter;

    aget-object v5, p0, v7

    const/4 v6, 0x1

    aget-object v6, p0, v6

    invoke-direct {v4, v5, v6}, Ltwitter4j/Twitter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .local v4, twitter:Ltwitter4j/Twitter;
    :try_start_0
    invoke-virtual {v4}, Ltwitter4j/Twitter;->getDirectMessages()Ljava/util/List;

    move-result-object v2

    .line 55
    .local v2, messages:Ljava/util/List;,"Ljava/util/List<Ltwitter4j/DirectMessage;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltwitter4j/DirectMessage;

    .line 56
    .local v1, message:Ltwitter4j/DirectMessage;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Sender:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v1}, Ltwitter4j/DirectMessage;->getSenderScreenName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 57
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Text:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v1}, Ltwitter4j/DirectMessage;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ltwitter4j/TwitterException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 60
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #message:Ltwitter4j/DirectMessage;
    .end local v2           #messages:Ljava/util/List;,"Ljava/util/List<Ltwitter4j/DirectMessage;>;"
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 61
    .local v3, te:Ltwitter4j/TwitterException;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Failed to get messages: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v3}, Ltwitter4j/TwitterException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 62
    invoke-static {v8}, Ljava/lang/System;->exit(I)V

    .line 64
    .end local v3           #te:Ltwitter4j/TwitterException;
    :goto_1
    return-void

    .line 59
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v2       #messages:Ljava/util/List;,"Ljava/util/List<Ltwitter4j/DirectMessage;>;"
    :cond_1
    const/4 v5, 0x0

    :try_start_1
    invoke-static {v5}, Ljava/lang/System;->exit(I)V
    :try_end_1
    .catch Ltwitter4j/TwitterException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
