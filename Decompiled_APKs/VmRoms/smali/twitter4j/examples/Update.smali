.class public Ltwitter4j/examples/Update;
.super Ljava/lang/Object;
.source "Update.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 5
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 45
    array-length v2, p0

    const/4 v3, 0x3

    if-ge v2, v3, :cond_0

    .line 46
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Usage: java twitter4j.examples.Update ID Password text"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 48
    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    .line 50
    :cond_0
    new-instance v1, Ltwitter4j/Twitter;

    const/4 v2, 0x0

    aget-object v2, p0, v2

    const/4 v3, 0x1

    aget-object v3, p0, v3

    invoke-direct {v1, v2, v3}, Ltwitter4j/Twitter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .local v1, twitter:Ltwitter4j/Twitter;
    const/4 v2, 0x2

    aget-object v2, p0, v2

    invoke-virtual {v1, v2}, Ltwitter4j/Twitter;->updateStatus(Ljava/lang/String;)Ltwitter4j/Status;

    move-result-object v0

    .line 52
    .local v0, status:Ltwitter4j/Status;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Successfully updated the status to ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v0}, Ltwitter4j/Status;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "]."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 53
    return-void
.end method
