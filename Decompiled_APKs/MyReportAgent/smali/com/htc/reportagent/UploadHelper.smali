.class interface abstract Lcom/htc/reportagent/UploadHelper;
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

.method public abstract putReport(Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;)Z
.end method
