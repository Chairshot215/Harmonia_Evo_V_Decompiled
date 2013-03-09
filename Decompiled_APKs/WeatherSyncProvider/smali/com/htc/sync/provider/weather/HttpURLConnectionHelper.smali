.class public Lcom/htc/sync/provider/weather/HttpURLConnectionHelper;
.super Ljava/lang/Object;
.source "HttpURLConnectionHelper.java"


# static fields
.field private static final LOG_FLAG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "WSP"

.field private static final PREFIX:Ljava/lang/String; = "[HttpURLConnectionHelper] "

.field private static final RETRY_TIMES:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getImage(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "url"
    .parameter "connectTimeour"
    .parameter "readTimeout"

    .prologue
    .line 61
    const/4 v3, 0x0

    .line 63
    .local v3, image:Landroid/graphics/Bitmap;
    const/4 v5, 0x1

    .line 65
    .local v5, times:I
    :goto_0
    const/4 v7, 0x3

    if-gt v5, v7, :cond_0

    .line 68
    :try_start_0
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    check-cast v6, Ljava/net/HttpURLConnection;

    .line 71
    .local v6, uc:Ljava/net/HttpURLConnection;
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/net/HttpURLConnection;->setDefaultUseCaches(Z)V

    .line 72
    invoke-virtual {v6, p1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 73
    invoke-virtual {v6, p2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 75
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 76
    .local v1, code:I
    const-string v7, "WSP"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "response code: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :try_start_1
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 80
    .local v4, is:Ljava/io/InputStream;
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 81
    .local v0, bis:Ljava/io/BufferedInputStream;
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 82
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    .line 83
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    :try_start_2
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 86
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 87
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 100
    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .end local v1           #code:I
    .end local v4           #is:Ljava/io/InputStream;
    .end local v6           #uc:Ljava/net/HttpURLConnection;
    :cond_0
    return-object v3

    .line 85
    .restart local v1       #code:I
    .restart local v6       #uc:Ljava/net/HttpURLConnection;
    :catchall_0
    move-exception v7

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 86
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 87
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    :cond_1
    throw v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 93
    .end local v1           #code:I
    .end local v6           #uc:Ljava/net/HttpURLConnection;
    :catch_0
    move-exception v2

    .line 95
    .local v2, e:Ljava/lang/Exception;
    const/4 v3, 0x0

    .line 96
    add-int/lit8 v5, v5, 0x1

    .line 97
    goto :goto_0
.end method

.method public static getText(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    .locals 8
    .parameter "url"
    .parameter "encode"
    .parameter "connectTimeour"
    .parameter "readTimeout"

    .prologue
    .line 22
    const/4 v2, 0x0

    .line 24
    .local v2, response:Ljava/lang/String;
    const/4 v3, 0x1

    .line 26
    .local v3, times:I
    :goto_0
    const/4 v5, 0x3

    if-gt v3, v5, :cond_0

    .line 29
    :try_start_0
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;

    .line 32
    .local v4, uc:Ljava/net/HttpURLConnection;
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setDefaultUseCaches(Z)V

    .line 33
    invoke-virtual {v4, p2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 34
    invoke-virtual {v4, p3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 36
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 37
    .local v0, code:I
    const-string v5, "WSP"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "response code: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    :try_start_1
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-static {v5, p1}, Lcom/htc/sync/provider/weather/HttpURLConnectionHelper;->toString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 42
    :try_start_2
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 43
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 44
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 57
    .end local v0           #code:I
    .end local v4           #uc:Ljava/net/HttpURLConnection;
    :cond_0
    return-object v2

    .line 42
    .restart local v0       #code:I
    .restart local v4       #uc:Ljava/net/HttpURLConnection;
    :catchall_0
    move-exception v5

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 43
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 44
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    :cond_1
    throw v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 50
    .end local v0           #code:I
    .end local v4           #uc:Ljava/net/HttpURLConnection;
    :catch_0
    move-exception v1

    .line 52
    .local v1, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    .line 53
    add-int/lit8 v3, v3, 0x1

    .line 54
    goto :goto_0
.end method

.method private static toString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "inputStream"
    .parameter "encode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    .local v0, outputBuilder:Ljava/lang/StringBuilder;
    if-eqz p0, :cond_1

    .line 108
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 109
    .local v1, reader:Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .local v2, string:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 110
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 112
    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 115
    .end local v1           #reader:Ljava/io/BufferedReader;
    .end local v2           #string:Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
