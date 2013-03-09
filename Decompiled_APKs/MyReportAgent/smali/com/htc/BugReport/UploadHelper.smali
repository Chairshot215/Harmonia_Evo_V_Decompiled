.class interface abstract Lcom/htc/BugReport/UploadHelper;
.super Ljava/lang/Object;
.source "UploadHelper.java"


# virtual methods
.method public abstract putReport([BLjava/util/Properties;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/HttpException;
        }
    .end annotation
.end method

.method public abstract putReportByHttpClient(Ljava/io/File;Ljava/util/Properties;I)Lcom/amazon/s3/Result;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract putReportByHttpClient([BLjava/util/Properties;I)Lcom/amazon/s3/Result;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Lorg/apache/http/HttpException;
        }
    .end annotation
.end method
