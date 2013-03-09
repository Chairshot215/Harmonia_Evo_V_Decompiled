.class public Lcom/htc/cscore/restapi/request/JSONCloudRequest$StreamableString;
.super Ljava/lang/Object;
.source "JSONCloudRequest.java"

# interfaces
.implements Lcom/htc/cscore/restapi/request/JSONCloudRequest$WriteStreamable;
.implements Lcom/htc/cscore/restapi/request/JSONCloudRequest$ReadStreamable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/restapi/request/JSONCloudRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StreamableString"
.end annotation


# instance fields
.field public _s:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/htc/cscore/restapi/request/JSONCloudRequest$StreamableString;->_s:Ljava/lang/String;

    .line 89
    return-void
.end method


# virtual methods
.method public readFrom(Ljava/io/InputStream;)V
    .locals 1
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 110
    invoke-static {p1}, Lcom/htc/cscore/restapi/request/JSONCloudRequest;->StreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/restapi/request/JSONCloudRequest$StreamableString;->_s:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 3
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 94
    const/4 v0, 0x0

    .line 97
    .local v0, writer:Ljava/io/OutputStreamWriter;
    :try_start_0
    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    .end local v0           #writer:Ljava/io/OutputStreamWriter;
    .local v1, writer:Ljava/io/OutputStreamWriter;
    :try_start_1
    iget-object v2, p0, Lcom/htc/cscore/restapi/request/JSONCloudRequest$StreamableString;->_s:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 99
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 103
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V

    .line 105
    :cond_0
    return-void

    .line 103
    .end local v1           #writer:Ljava/io/OutputStreamWriter;
    .restart local v0       #writer:Ljava/io/OutputStreamWriter;
    :catchall_0
    move-exception v2

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->close()V

    :cond_1
    throw v2

    .end local v0           #writer:Ljava/io/OutputStreamWriter;
    .restart local v1       #writer:Ljava/io/OutputStreamWriter;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1           #writer:Ljava/io/OutputStreamWriter;
    .restart local v0       #writer:Ljava/io/OutputStreamWriter;
    goto :goto_0
.end method
