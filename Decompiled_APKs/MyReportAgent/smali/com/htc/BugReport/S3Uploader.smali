.class Lcom/htc/BugReport/S3Uploader;
.super Ljava/lang/Object;
.source "S3Uploader.java"

# interfaces
.implements Lcom/htc/BugReport/UploadHelper;


# static fields
.field private static final TAG:Ljava/lang/String; = "S3Uploader"

.field static final awsAccessKeyId:Ljava/lang/String; = "AKIAIMVGUENMDYRXQGCQ"

.field static final awsSecretAccessKey:Ljava/lang/String; = "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"

.field static final bucketName4Releasing:Ljava/lang/String; = "htc-error-log-releasing-bucket"

.field static final bucketName4Testing:Ljava/lang/String; = "htc-error-log-testing-bucket"


# instance fields
.field private final awsConn:Lcom/amazon/s3/AWSAuthConnection;

.field private final awsop:Lcom/amazon/s3/AWSOperations;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lcom/amazon/s3/AWSAuthConnection;

    const-string v1, "AKIAIMVGUENMDYRXQGCQ"

    const-string v2, "s+SWnBqF0F6VibBvZSp/8V8fEjRMljA0/UK14Mts"

    const-string v4, "s3.amazonaws.com"

    invoke-static {}, Lcom/amazon/s3/CallingFormat;->getSubdomainCallingFormat()Lcom/amazon/s3/CallingFormat;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/amazon/s3/AWSAuthConnection;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/amazon/s3/CallingFormat;)V

    iput-object v0, p0, Lcom/htc/BugReport/S3Uploader;->awsConn:Lcom/amazon/s3/AWSAuthConnection;

    .line 36
    new-instance v0, Lcom/amazon/s3/AWSOperations;

    const-string v1, "AKIAIMVGUENMDYRXQGCQ"

    const-string v2, "s+SWnBqF0F6VibBvZSp/8V8fEjRMljA0/UK14Mts"

    const-string v4, "s3.amazonaws.com"

    invoke-static {}, Lcom/amazon/s3/CallingFormat;->getSubdomainCallingFormat()Lcom/amazon/s3/CallingFormat;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/amazon/s3/AWSOperations;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/amazon/s3/CallingFormat;)V

    iput-object v0, p0, Lcom/htc/BugReport/S3Uploader;->awsop:Lcom/amazon/s3/AWSOperations;

    .line 38
    return-void
.end method


# virtual methods
.method putObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .locals 7
    .parameter "location"
    .parameter "bucketName"
    .parameter "key"
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/HttpException;
        }
    .end annotation

    .prologue
    .line 74
    const/4 v1, 0x0

    .line 75
    .local v1, headers:Ljava/util/Map;
    new-instance v3, Lcom/amazon/s3/S3Object;

    const/4 v5, 0x0

    invoke-direct {v3, p4, v5}, Lcom/amazon/s3/S3Object;-><init>(Ljava/io/File;Ljava/util/Map;)V

    .line 76
    .local v3, object:Lcom/amazon/s3/S3Object;
    iget-object v5, v3, Lcom/amazon/s3/S3Object;->contentMD5:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 77
    new-instance v1, Ljava/util/HashMap;

    .end local v1           #headers:Ljava/util/Map;
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 78
    .restart local v1       #headers:Ljava/util/Map;
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 79
    .local v2, list:Ljava/util/Vector;
    iget-object v5, v3, Lcom/amazon/s3/S3Object;->contentMD5:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 80
    const-string v5, "Content-MD5"

    invoke-interface {v1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .end local v2           #list:Ljava/util/Vector;
    :cond_0
    iget-object v5, p0, Lcom/htc/BugReport/S3Uploader;->awsConn:Lcom/amazon/s3/AWSAuthConnection;

    invoke-virtual {v5, p2, p3, v3, v1}, Lcom/amazon/s3/AWSAuthConnection;->put(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/s3/S3Object;Ljava/util/Map;)Lcom/amazon/s3/Response;

    move-result-object v4

    .line 84
    .local v4, response:Lcom/amazon/s3/Response;
    iget-object v5, v4, Lcom/amazon/s3/Response;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    const/16 v6, 0xc8

    if-eq v5, v6, :cond_1

    .line 86
    :try_start_0
    const-string v5, "S3Uploader"

    invoke-virtual {v4}, Lcom/amazon/s3/Response;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/BugReport/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :goto_0
    new-instance v5, Lorg/apache/http/HttpException;

    const-string v6, "couldn\'t put simple object"

    invoke-direct {v5, v6}, Lorg/apache/http/HttpException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "S3Uploader"

    const-string v6, "Cannot print error message from server"

    invoke-static {v5, v6}, Lcom/htc/BugReport/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 92
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    return-void
.end method

.method putObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 7
    .parameter "location"
    .parameter "bucketName"
    .parameter "key"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/HttpException;
        }
    .end annotation

    .prologue
    .line 97
    const/4 v1, 0x0

    .line 98
    .local v1, headers:Ljava/util/Map;
    new-instance v3, Lcom/amazon/s3/S3Object;

    const/4 v5, 0x0

    invoke-direct {v3, p4, v5}, Lcom/amazon/s3/S3Object;-><init>([BLjava/util/Map;)V

    .line 101
    .local v3, object:Lcom/amazon/s3/S3Object;
    iget-object v5, v3, Lcom/amazon/s3/S3Object;->contentMD5:Ljava/lang/String;

    if-nez v5, :cond_0

    if-eqz p4, :cond_0

    .line 102
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, p4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v5}, Lcom/amazon/s3/Utils;->computeMD5Hash(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/amazon/s3/S3Object;->contentMD5:Ljava/lang/String;

    .line 104
    :cond_0
    iget-object v5, v3, Lcom/amazon/s3/S3Object;->contentMD5:Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 105
    new-instance v1, Ljava/util/HashMap;

    .end local v1           #headers:Ljava/util/Map;
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 106
    .restart local v1       #headers:Ljava/util/Map;
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 107
    .local v2, list:Ljava/util/Vector;
    iget-object v5, v3, Lcom/amazon/s3/S3Object;->contentMD5:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 108
    const-string v5, "Content-MD5"

    invoke-interface {v1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .end local v2           #list:Ljava/util/Vector;
    :cond_1
    iget-object v5, p0, Lcom/htc/BugReport/S3Uploader;->awsConn:Lcom/amazon/s3/AWSAuthConnection;

    invoke-virtual {v5, p2, p3, v3, v1}, Lcom/amazon/s3/AWSAuthConnection;->put(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/s3/S3Object;Ljava/util/Map;)Lcom/amazon/s3/Response;

    move-result-object v4

    .line 112
    .local v4, response:Lcom/amazon/s3/Response;
    iget-object v5, v4, Lcom/amazon/s3/Response;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    const/16 v6, 0xc8

    if-eq v5, v6, :cond_2

    .line 114
    :try_start_0
    const-string v5, "S3Uploader"

    invoke-virtual {v4}, Lcom/amazon/s3/Response;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/BugReport/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :goto_0
    new-instance v5, Lorg/apache/http/HttpException;

    const-string v6, "couldn\'t put simple object"

    invoke-direct {v5, v6}, Lorg/apache/http/HttpException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "S3Uploader"

    const-string v6, "Cannot print error message from server"

    invoke-static {v5, v6}, Lcom/htc/BugReport/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 120
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    return-void
.end method

.method putObjectByHttpClient(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;I)Lcom/amazon/s3/Result;
    .locals 9
    .parameter "location"
    .parameter "bucketName"
    .parameter "key"
    .parameter "file"
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/HttpException;
        }
    .end annotation

    .prologue
    .line 189
    const/4 v4, 0x0

    .line 191
    .local v4, headers:Ljava/util/Map;
    new-instance v3, Lcom/amazon/s3/S3Object;

    const/4 v0, 0x0

    invoke-direct {v3, p4, v0}, Lcom/amazon/s3/S3Object;-><init>(Ljava/io/File;Ljava/util/Map;)V

    .line 192
    .local v3, object:Lcom/amazon/s3/S3Object;
    iget-object v0, v3, Lcom/amazon/s3/S3Object;->contentMD5:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 193
    new-instance v4, Ljava/util/HashMap;

    .end local v4           #headers:Ljava/util/Map;
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 194
    .restart local v4       #headers:Ljava/util/Map;
    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    .line 195
    .local v7, list:Ljava/util/Vector;
    iget-object v0, v3, Lcom/amazon/s3/S3Object;->contentMD5:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 196
    const-string v0, "Content-MD5"

    invoke-interface {v4, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    .end local v7           #list:Ljava/util/Vector;
    :cond_0
    iget-object v0, p0, Lcom/htc/BugReport/S3Uploader;->awsop:Lcom/amazon/s3/AWSOperations;

    move-object v1, p2

    move-object v2, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/amazon/s3/AWSOperations;->Put(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/s3/S3Object;Ljava/util/Map;I)Lcom/amazon/s3/Result;

    move-result-object v8

    .line 199
    .local v8, result:Lcom/amazon/s3/Result;
    if-eqz v8, :cond_1

    invoke-virtual {v8}, Lcom/amazon/s3/Result;->getStatusCode()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_1

    .line 201
    :try_start_0
    const-string v0, "S3Uploader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Status code is :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Lcom/amazon/s3/Result;->getStatusCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/BugReport/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    :goto_0
    new-instance v0, Lorg/apache/http/HttpException;

    const-string v1, "couldn\'t put simple object"

    invoke-direct {v0, v1}, Lorg/apache/http/HttpException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 202
    :catch_0
    move-exception v6

    .line 203
    .local v6, e:Ljava/lang/Exception;
    const-string v0, "S3Uploader"

    const-string v1, "Cannot print error message from server"

    invoke-static {v0, v1}, Lcom/htc/BugReport/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 207
    .end local v6           #e:Ljava/lang/Exception;
    :cond_1
    return-object v8
.end method

.method putObjectByHttpClient(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BI)Lcom/amazon/s3/Result;
    .locals 9
    .parameter "location"
    .parameter "bucketName"
    .parameter "key"
    .parameter "data"
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 161
    const/4 v4, 0x0

    .line 162
    .local v4, headers:Ljava/util/Map;
    new-instance v3, Lcom/amazon/s3/S3Object;

    const/4 v0, 0x0

    invoke-direct {v3, p4, v0}, Lcom/amazon/s3/S3Object;-><init>([BLjava/util/Map;)V

    .line 164
    .local v3, object:Lcom/amazon/s3/S3Object;
    iget-object v0, v3, Lcom/amazon/s3/S3Object;->contentMD5:Ljava/lang/String;

    if-nez v0, :cond_0

    if-eqz p4, :cond_0

    .line 165
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Lcom/amazon/s3/Utils;->computeMD5Hash(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/amazon/s3/S3Object;->contentMD5:Ljava/lang/String;

    .line 167
    :cond_0
    iget-object v0, v3, Lcom/amazon/s3/S3Object;->contentMD5:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 168
    new-instance v4, Ljava/util/HashMap;

    .end local v4           #headers:Ljava/util/Map;
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 169
    .restart local v4       #headers:Ljava/util/Map;
    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    .line 170
    .local v7, list:Ljava/util/Vector;
    iget-object v0, v3, Lcom/amazon/s3/S3Object;->contentMD5:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 171
    const-string v0, "Content-MD5"

    invoke-interface {v4, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    .end local v7           #list:Ljava/util/Vector;
    :cond_1
    iget-object v0, p0, Lcom/htc/BugReport/S3Uploader;->awsop:Lcom/amazon/s3/AWSOperations;

    move-object v1, p2

    move-object v2, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/amazon/s3/AWSOperations;->Put(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/s3/S3Object;Ljava/util/Map;I)Lcom/amazon/s3/Result;

    move-result-object v8

    .line 177
    .local v8, result:Lcom/amazon/s3/Result;
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Lcom/amazon/s3/Result;->getStatusCode()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_2

    .line 179
    :try_start_0
    const-string v0, "S3Uploader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Status code is :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Lcom/amazon/s3/Result;->getStatusCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/BugReport/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    :goto_0
    new-instance v0, Lorg/apache/http/HttpException;

    const-string v1, "couldn\'t put simple object"

    invoke-direct {v0, v1}, Lorg/apache/http/HttpException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :catch_0
    move-exception v6

    .line 181
    .local v6, e:Ljava/lang/Exception;
    const-string v0, "S3Uploader"

    const-string v1, "Cannot print error message from server"

    invoke-static {v0, v1}, Lcom/htc/BugReport/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 185
    .end local v6           #e:Ljava/lang/Exception;
    :cond_2
    return-object v8
.end method

.method public putReport([BLjava/util/Properties;)V
    .locals 6
    .parameter "data"
    .parameter "prop"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/HttpException;
        }
    .end annotation

    .prologue
    .line 41
    const-string v2, "bugreport.txt.gz"

    .line 42
    .local v2, sFileName:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TAG"

    const-string v5, "ALL"

    invoke-virtual {p2, v4, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "S/N"

    const-string v5, "unknown"

    invoke-virtual {p2, v4, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".zip"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 46
    const-string v3, "ro.build.type"

    const-string v4, "unknown"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 47
    .local v1, buildtype:Ljava/lang/String;
    const-string v0, "htc-error-log-testing-bucket"

    .line 48
    .local v0, bucketName:Ljava/lang/String;
    const-string v3, "userdebug"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 49
    const-string v0, "htc-error-log-testing-bucket"

    .line 55
    :goto_0
    sget-object v3, Lcom/amazon/s3/AWSAuthConnection;->LOCATION_DEFAULT:Ljava/lang/String;

    invoke-virtual {p0, v3, v0, v2, p1}, Lcom/htc/BugReport/S3Uploader;->putObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 56
    return-void

    .line 50
    :cond_0
    const-string v3, "user"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 51
    const-string v0, "htc-error-log-releasing-bucket"

    goto :goto_0

    .line 53
    :cond_1
    const-string v0, "htc-error-log-testing-bucket"

    goto :goto_0
.end method

.method public putReportByHttpClient(Ljava/io/File;Ljava/util/Properties;I)Lcom/amazon/s3/Result;
    .locals 8
    .parameter "file"
    .parameter "prop"
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 142
    const-string v3, "bugreport.txt.gz"

    .line 143
    .local v3, sFileName:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TAG"

    const-string v4, "ALL"

    invoke-virtual {p2, v1, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "S/N"

    const-string v4, "unknown"

    invoke-virtual {p2, v1, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".zip"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 146
    const-string v0, "ro.build.type"

    const-string v1, "unknown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 147
    .local v6, buildtype:Ljava/lang/String;
    const-string v2, "htc-error-log-testing-bucket"

    .line 148
    .local v2, bucketName:Ljava/lang/String;
    const-string v0, "userdebug"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    const-string v2, "htc-error-log-testing-bucket"

    .line 155
    :goto_0
    sget-object v1, Lcom/amazon/s3/AWSOperations;->LOCATION_DEFAULT:Ljava/lang/String;

    move-object v0, p0

    move-object v4, p1

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/BugReport/S3Uploader;->putObjectByHttpClient(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;I)Lcom/amazon/s3/Result;

    move-result-object v7

    .line 157
    .local v7, result:Lcom/amazon/s3/Result;
    return-object v7

    .line 150
    .end local v7           #result:Lcom/amazon/s3/Result;
    :cond_0
    const-string v0, "user"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 151
    const-string v2, "htc-error-log-releasing-bucket"

    goto :goto_0

    .line 153
    :cond_1
    const-string v2, "htc-error-log-testing-bucket"

    goto :goto_0
.end method

.method public putReportByHttpClient([BLjava/util/Properties;I)Lcom/amazon/s3/Result;
    .locals 8
    .parameter "data"
    .parameter "prop"
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Lorg/apache/http/HttpException;
        }
    .end annotation

    .prologue
    .line 124
    const-string v3, "bugreport.txt.gz"

    .line 125
    .local v3, sFileName:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TAG"

    const-string v4, "ALL"

    invoke-virtual {p2, v1, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "S/N"

    const-string v4, "unknown"

    invoke-virtual {p2, v1, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".zip"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 128
    const-string v0, "ro.build.type"

    const-string v1, "unknown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 129
    .local v6, buildtype:Ljava/lang/String;
    const-string v2, "htc-error-log-testing-bucket"

    .line 130
    .local v2, bucketName:Ljava/lang/String;
    const-string v0, "userdebug"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    const-string v2, "htc-error-log-testing-bucket"

    .line 137
    :goto_0
    sget-object v1, Lcom/amazon/s3/AWSOperations;->LOCATION_DEFAULT:Ljava/lang/String;

    move-object v0, p0

    move-object v4, p1

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/BugReport/S3Uploader;->putObjectByHttpClient(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BI)Lcom/amazon/s3/Result;

    move-result-object v7

    .line 139
    .local v7, result:Lcom/amazon/s3/Result;
    return-object v7

    .line 132
    .end local v7           #result:Lcom/amazon/s3/Result;
    :cond_0
    const-string v0, "user"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    const-string v2, "htc-error-log-releasing-bucket"

    goto :goto_0

    .line 135
    :cond_1
    const-string v2, "htc-error-log-testing-bucket"

    goto :goto_0
.end method
