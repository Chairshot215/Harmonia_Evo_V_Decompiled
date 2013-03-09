.class public Ltwitter4j/StatusStream;
.super Ljava/lang/Object;
.source "StatusStream.java"


# instance fields
.field private br:Ljava/io/BufferedReader;

.field private is:Ljava/io/InputStream;

.field private response:Ltwitter4j/http/Response;

.field private streamAlive:Z


# direct methods
.method constructor <init>(Ljava/io/InputStream;)V
    .locals 3
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltwitter4j/StatusStream;->streamAlive:Z

    .line 49
    iput-object p1, p0, Ltwitter4j/StatusStream;->is:Ljava/io/InputStream;

    .line 50
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    const-string v2, "UTF-8"

    invoke-direct {v1, p1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Ltwitter4j/StatusStream;->br:Ljava/io/BufferedReader;

    .line 51
    return-void
.end method

.method constructor <init>(Ltwitter4j/http/Response;)V
    .locals 1
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53
    invoke-virtual {p1}, Ltwitter4j/http/Response;->asStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Ltwitter4j/StatusStream;-><init>(Ljava/io/InputStream;)V

    .line 54
    iput-object p1, p0, Ltwitter4j/StatusStream;->response:Ltwitter4j/http/Response;

    .line 55
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Ltwitter4j/StatusStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 88
    iget-object v0, p0, Ltwitter4j/StatusStream;->br:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 89
    iget-object v0, p0, Ltwitter4j/StatusStream;->response:Ltwitter4j/http/Response;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Ltwitter4j/StatusStream;->response:Ltwitter4j/http/Response;

    invoke-virtual {v0}, Ltwitter4j/http/Response;->disconnect()V

    .line 92
    :cond_0
    return-void
.end method

.method public next()Ltwitter4j/Status;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 57
    iget-boolean v2, p0, Ltwitter4j/StatusStream;->streamAlive:Z

    if-nez v2, :cond_0

    .line 58
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Stream already closed."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 67
    .local v1, line:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 62
    .end local v1           #line:Ljava/lang/String;
    :cond_0
    :try_start_0
    iget-boolean v2, p0, Ltwitter4j/StatusStream;->streamAlive:Z

    if-eqz v2, :cond_1

    .line 63
    iget-object v2, p0, Ltwitter4j/StatusStream;->br:Ljava/io/BufferedReader;

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 64
    .restart local v1       #line:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    if-lez v2, :cond_0

    .line 66
    :try_start_1
    new-instance v2, Ltwitter4j/Status;

    invoke-direct {v2, v1}, Ltwitter4j/Status;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ltwitter4j/org/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v2

    .line 75
    .end local v1           #line:Ljava/lang/String;
    :cond_1
    :try_start_2
    new-instance v2, Ltwitter4j/TwitterException;

    const-string v3, "Stream closed."

    invoke-direct {v2, v3}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 76
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 78
    .local v0, e:Ljava/io/IOException;
    :try_start_3
    iget-object v2, p0, Ltwitter4j/StatusStream;->is:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 81
    :goto_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Ltwitter4j/StatusStream;->streamAlive:Z

    .line 82
    new-instance v2, Ltwitter4j/TwitterException;

    const-string v3, "Stream closed."

    invoke-direct {v2, v3, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    .line 79
    :catch_2
    move-exception v2

    goto :goto_0
.end method
