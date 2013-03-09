.class public Lcom/google/android/apps/uploader/googlemobile/masf/protocol/HttpResponse;
.super Ljava/lang/Object;


# instance fields
.field private response:Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Response;

.field private responseCode:I

.field private responseHeaderCount:I

.field private responseHeaderKeys:[Ljava/lang/String;

.field private responseHeaderValues:[Ljava/lang/String;

.field private responseInputStream:Ljava/io/DataInputStream;

.field private responseLength:I


# direct methods
.method public constructor <init>(Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Response;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/HttpResponse;->response:Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Response;

    invoke-virtual {p1}, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Response;->getStatusCode()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/HttpResponse;->responseCode:I

    invoke-virtual {p1}, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Response;->getStreamLength()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/HttpResponse;->responseLength:I

    new-instance v0, Ljava/io/DataInputStream;

    invoke-virtual {p1}, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Response;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/HttpResponse;->responseInputStream:Ljava/io/DataInputStream;

    instance-of v0, p1, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/MultipartResponse;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/MultipartResponse;

    invoke-virtual {p1}, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/MultipartResponse;->getRoot()Lcom/google/android/apps/uploader/googlemobile/masf/protocol/BodyPart;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/BodyPart;->getProperties()Ljava/util/Hashtable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/HttpResponse;->responseHeaderCount:I

    iget v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/HttpResponse;->responseHeaderCount:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/HttpResponse;->responseHeaderKeys:[Ljava/lang/String;

    iget v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/HttpResponse;->responseHeaderCount:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/HttpResponse;->responseHeaderValues:[Ljava/lang/String;

    invoke-virtual {v1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/HttpResponse;->responseHeaderKeys:[Ljava/lang/String;

    aput-object v0, v4, v3

    iget-object v4, p0, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/HttpResponse;->responseHeaderValues:[Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v4, v3

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/HttpResponse;->responseLength:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/HttpResponse;->responseInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/HttpResponse;->responseHeaderCount:I

    iget v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/HttpResponse;->responseLength:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/HttpResponse;->responseLength:I

    iget v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/HttpResponse;->responseHeaderCount:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/HttpResponse;->responseHeaderCount:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/HttpResponse;->responseHeaderKeys:[Ljava/lang/String;

    iget v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/HttpResponse;->responseHeaderCount:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/HttpResponse;->responseHeaderValues:[Ljava/lang/String;

    move v0, v3

    :goto_1
    iget v1, p0, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/HttpResponse;->responseHeaderCount:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/HttpResponse;->responseInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/HttpResponse;->responseHeaderKeys:[Ljava/lang/String;

    aput-object v1, v2, v0

    iget v2, p0, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/HttpResponse;->responseLength:I

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    sub-int v1, v2, v1

    iput v1, p0, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/HttpResponse;->responseLength:I

    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/HttpResponse;->responseInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/HttpResponse;->responseHeaderValues:[Ljava/lang/String;

    aput-object v1, v2, v0

    iget v2, p0, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/HttpResponse;->responseLength:I

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    sub-int v1, v2, v1

    iput v1, p0, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/HttpResponse;->responseLength:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/HttpResponse;->response:Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Response;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Response;->dispose()V

    return-void
.end method

.method public getDataInputStream()Ljava/io/DataInputStream;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/HttpResponse;->responseInputStream:Ljava/io/DataInputStream;

    return-object v0
.end method

.method public getHeaderCount()I
    .locals 1

    iget v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/HttpResponse;->responseHeaderCount:I

    return v0
.end method

.method public getHeaderKeys()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/HttpResponse;->responseHeaderKeys:[Ljava/lang/String;

    return-object v0
.end method

.method public getHeaderValues()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/HttpResponse;->responseHeaderValues:[Ljava/lang/String;

    return-object v0
.end method

.method public getResponseCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/HttpResponse;->responseCode:I

    return v0
.end method

.method public getStreamLength()I
    .locals 1

    iget v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/HttpResponse;->responseLength:I

    return v0
.end method
