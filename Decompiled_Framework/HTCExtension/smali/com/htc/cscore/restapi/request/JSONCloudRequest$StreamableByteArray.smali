.class public Lcom/htc/cscore/restapi/request/JSONCloudRequest$StreamableByteArray;
.super Ljava/lang/Object;
.source "JSONCloudRequest.java"

# interfaces
.implements Lcom/htc/cscore/restapi/request/JSONCloudRequest$ReadStreamable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/restapi/request/JSONCloudRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StreamableByteArray"
.end annotation


# instance fields
.field public _m:Ljava/io/ByteArrayOutputStream;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/htc/cscore/restapi/request/JSONCloudRequest$StreamableByteArray;->_m:Ljava/io/ByteArrayOutputStream;

    return-void
.end method


# virtual methods
.method public readFrom(Ljava/io/InputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v2, 0x1000

    new-array v0, v2, [B

    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_0

    iget-object v2, p0, Lcom/htc/cscore/restapi/request/JSONCloudRequest$StreamableByteArray;->_m:Ljava/io/ByteArrayOutputStream;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    return-void
.end method
