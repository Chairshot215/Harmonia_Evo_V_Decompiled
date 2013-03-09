.class public Ltwitter4j/examples/SendDirectMessage;
.super Ljava/lang/Object;
.source "SendDirectMessage.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 7
    .parameter "args"

    .prologue
    const/4 v5, 0x0

    const/4 v6, -0x1

    .line 44
    array-length v3, p0

    const/4 v4, 0x4

    if-ge v3, v4, :cond_0

    .line 45
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "No TwitterID/Password specified."

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 46
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "Usage: java twitter4j.examples.DirectMessage senderID senderPassword message recipientId"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 47
    invoke-static {v6}, Ljava/lang/System;->exit(I)V

    .line 49
    :cond_0
    new-instance v2, Ltwitter4j/Twitter;

    aget-object v3, p0, v5

    const/4 v4, 0x1

    aget-object v4, p0, v4

    invoke-direct {v2, v3, v4}, Ltwitter4j/Twitter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .local v2, twitter:Ltwitter4j/Twitter;
    const/4 v3, 0x2

    :try_start_0
    aget-object v3, p0, v3

    const/4 v4, 0x3

    aget-object v4, p0, v4

    invoke-virtual {v2, v3, v4}, Ltwitter4j/Twitter;->sendDirectMessage(Ljava/lang/String;Ljava/lang/String;)Ltwitter4j/DirectMessage;

    move-result-object v0

    .line 52
    .local v0, message:Ltwitter4j/DirectMessage;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Direct message successfully sent to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v0}, Ltwitter4j/DirectMessage;->getRecipientScreenName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 54
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/System;->exit(I)V
    :try_end_0
    .catch Ltwitter4j/TwitterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .end local v0           #message:Ltwitter4j/DirectMessage;
    :goto_0
    return-void

    .line 55
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 56
    .local v1, te:Ltwitter4j/TwitterException;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Failed to send message: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v1}, Ltwitter4j/TwitterException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 57
    invoke-static {v6}, Ljava/lang/System;->exit(I)V

    goto :goto_0
.end method
