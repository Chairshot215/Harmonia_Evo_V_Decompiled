.class public Ltwitter4j/examples/OAuthUpdate;
.super Ljava/lang/Object;
.source "OAuthUpdate.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 11
    .parameter "args"

    .prologue
    const/4 v10, -0x1

    .line 52
    :try_start_0
    new-instance v6, Ltwitter4j/Twitter;

    invoke-direct {v6}, Ltwitter4j/Twitter;-><init>()V

    .line 53
    .local v6, twitter:Ltwitter4j/Twitter;
    invoke-virtual {v6}, Ltwitter4j/Twitter;->getOAuthRequestToken()Ltwitter4j/http/RequestToken;

    move-result-object v3

    .line 54
    .local v3, requestToken:Ltwitter4j/http/RequestToken;
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "Got request token."

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 55
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "Request token: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v3}, Ltwitter4j/http/RequestToken;->getToken()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 56
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "Request token secret: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v3}, Ltwitter4j/http/RequestToken;->getTokenSecret()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 57
    const/4 v0, 0x0

    .line 59
    .local v0, accessToken:Ltwitter4j/http/AccessToken;
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    sget-object v8, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-direct {v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 60
    .local v1, br:Ljava/io/BufferedReader;
    :goto_0
    if-nez v0, :cond_1

    .line 61
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "Open the following URL and grant access to your account:"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 62
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3}, Ltwitter4j/http/RequestToken;->getAuthorizationURL()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 63
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "Hit enter when it\'s done.[Enter]:"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ltwitter4j/TwitterException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 66
    :try_start_1
    invoke-virtual {v3}, Ltwitter4j/http/RequestToken;->getAccessToken()Ltwitter4j/http/AccessToken;
    :try_end_1
    .catch Ltwitter4j/TwitterException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    goto :goto_0

    .line 67
    :catch_0
    move-exception v5

    .line 68
    .local v5, te:Ltwitter4j/TwitterException;
    const/16 v7, 0x191

    :try_start_2
    invoke-virtual {v5}, Ltwitter4j/TwitterException;->getStatusCode()I

    move-result v8

    if-ne v7, v8, :cond_0

    .line 69
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "Unable to get the access token."

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_2
    .catch Ltwitter4j/TwitterException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 82
    .end local v0           #accessToken:Ltwitter4j/http/AccessToken;
    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v3           #requestToken:Ltwitter4j/http/RequestToken;
    .end local v5           #te:Ltwitter4j/TwitterException;
    .end local v6           #twitter:Ltwitter4j/Twitter;
    :catch_1
    move-exception v7

    move-object v5, v7

    .line 83
    .restart local v5       #te:Ltwitter4j/TwitterException;
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "Failed to get timeline: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v5}, Ltwitter4j/TwitterException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 84
    invoke-static {v10}, Ljava/lang/System;->exit(I)V

    .line 89
    .end local v5           #te:Ltwitter4j/TwitterException;
    :goto_1
    return-void

    .line 71
    .restart local v0       #accessToken:Ltwitter4j/http/AccessToken;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v3       #requestToken:Ltwitter4j/http/RequestToken;
    .restart local v5       #te:Ltwitter4j/TwitterException;
    .restart local v6       #twitter:Ltwitter4j/Twitter;
    :cond_0
    :try_start_3
    invoke-virtual {v5}, Ltwitter4j/TwitterException;->printStackTrace()V
    :try_end_3
    .catch Ltwitter4j/TwitterException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 85
    .end local v0           #accessToken:Ltwitter4j/http/AccessToken;
    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v3           #requestToken:Ltwitter4j/http/RequestToken;
    .end local v5           #te:Ltwitter4j/TwitterException;
    .end local v6           #twitter:Ltwitter4j/Twitter;
    :catch_2
    move-exception v7

    move-object v2, v7

    .line 86
    .local v2, ioe:Ljava/io/IOException;
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "Failed to read the system input."

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 87
    invoke-static {v10}, Ljava/lang/System;->exit(I)V

    goto :goto_1

    .line 75
    .end local v2           #ioe:Ljava/io/IOException;
    .restart local v0       #accessToken:Ltwitter4j/http/AccessToken;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v3       #requestToken:Ltwitter4j/http/RequestToken;
    .restart local v6       #twitter:Ltwitter4j/Twitter;
    :cond_1
    :try_start_4
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "Got access token."

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 76
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "Access token: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v0}, Ltwitter4j/http/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 77
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "Access token secret: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v0}, Ltwitter4j/http/AccessToken;->getTokenSecret()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 79
    const/4 v7, 0x0

    aget-object v7, p0, v7

    invoke-virtual {v6, v7}, Ltwitter4j/Twitter;->updateStatus(Ljava/lang/String;)Ltwitter4j/Status;

    move-result-object v4

    .line 80
    .local v4, status:Ltwitter4j/Status;
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "Successfully updated the status to ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v4}, Ltwitter4j/Status;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, "]."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 81
    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/System;->exit(I)V
    :try_end_4
    .catch Ltwitter4j/TwitterException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1
.end method
