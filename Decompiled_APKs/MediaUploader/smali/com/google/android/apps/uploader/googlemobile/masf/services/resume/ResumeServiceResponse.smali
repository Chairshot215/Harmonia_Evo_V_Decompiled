.class public Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumeServiceResponse;
.super Ljava/lang/Object;


# instance fields
.field private exception:Ljava/lang/Exception;

.field private response:Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Response;

.field private responseHeaderCount:I

.field private responseHeaderKeys:[Ljava/lang/String;

.field private responseHeaderValues:[Ljava/lang/String;

.field private responseInputStream:Ljava/io/DataInputStream;

.field private responseMissingChunkCount:I

.field private responseMissingChunkLengths:[I

.field private responseMissingChunkOffsets:[I

.field private responseServerTicket:Ljava/lang/String;

.field private responseStatusCode:I

.field private responseStreamLength:I


# direct methods
.method public constructor <init>(Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Response;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumeServiceResponse;->response:Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Response;

    invoke-virtual {p1}, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Response;->getStatusCode()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumeServiceResponse;->responseStatusCode:I

    iget v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumeServiceResponse;->responseStatusCode:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_2

    new-instance v0, Ljava/io/DataInputStream;

    invoke-virtual {p1}, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Response;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumeServiceResponse;->responseInputStream:Ljava/io/DataInputStream;

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumeServiceResponse;->responseInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumeServiceResponse;->responseServerTicket:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumeServiceResponse;->responseInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    iput v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumeServiceResponse;->responseStatusCode:I

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumeServiceResponse;->responseInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    iput v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumeServiceResponse;->responseHeaderCount:I

    iget v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumeServiceResponse;->responseHeaderCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumeServiceResponse;->responseHeaderCount:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumeServiceResponse;->responseHeaderKeys:[Ljava/lang/String;

    iget v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumeServiceResponse;->responseHeaderCount:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumeServiceResponse;->responseHeaderValues:[Ljava/lang/String;

    move v0, v3

    :goto_0
    iget v1, p0, Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumeServiceResponse;->responseHeaderCount:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumeServiceResponse;->responseHeaderKeys:[Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumeServiceResponse;->responseInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumeServiceResponse;->responseHeaderValues:[Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumeServiceResponse;->responseInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumeServiceResponse;->responseInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    iput v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumeServiceResponse;->responseMissingChunkCount:I

    iget v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumeServiceResponse;->responseMissingChunkCount:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumeServiceResponse;->responseMissingChunkCount:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumeServiceResponse;->responseMissingChunkOffsets:[I

    iget v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumeServiceResponse;->responseMissingChunkCount:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumeServiceResponse;->responseMissingChunkLengths:[I

    move v0, v3

    :goto_1
    iget v1, p0, Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumeServiceResponse;->responseMissingChunkCount:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumeServiceResponse;->responseInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumeServiceResponse;->responseInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumeServiceResponse;->responseMissingChunkOffsets:[I

    aput v1, v3, v0

    iget-object v3, p0, Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumeServiceResponse;->responseMissingChunkLengths:[I

    sub-int v1, v2, v1

    add-int/lit8 v1, v1, 0x1

    aput v1, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumeServiceResponse;->responseInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumeServiceResponse;->responseStreamLength:I

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Response;->dispose()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumeServiceResponse;->exception:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumeServiceResponse;->response:Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Response;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumeServiceResponse;->response:Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Response;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Response;->dispose()V

    :cond_0
    return-void
.end method

.method public getDataInputStream()Ljava/io/DataInputStream;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumeServiceResponse;->responseInputStream:Ljava/io/DataInputStream;

    return-object v0
.end method

.method public getException()Ljava/lang/Exception;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumeServiceResponse;->exception:Ljava/lang/Exception;

    return-object v0
.end method

.method public getHeaderCount()I
    .locals 1

    iget v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumeServiceResponse;->responseHeaderCount:I

    return v0
.end method

.method public getHeaderKeys()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumeServiceResponse;->responseHeaderKeys:[Ljava/lang/String;

    return-object v0
.end method

.method public getHeaderValues()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumeServiceResponse;->responseHeaderValues:[Ljava/lang/String;

    return-object v0
.end method

.method public getMissingChunkCount()I
    .locals 1

    iget v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumeServiceResponse;->responseMissingChunkCount:I

    return v0
.end method

.method public getMissingChunkLengths()[I
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumeServiceResponse;->responseMissingChunkLengths:[I

    return-object v0
.end method

.method public getMissingChunkOffsets()[I
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumeServiceResponse;->responseMissingChunkOffsets:[I

    return-object v0
.end method

.method public getServerTicket()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumeServiceResponse;->responseServerTicket:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumeServiceResponse;->responseStatusCode:I

    return v0
.end method

.method public getStreamLength()I
    .locals 1

    iget v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumeServiceResponse;->responseStreamLength:I

    return v0
.end method

.method public hasException()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumeServiceResponse;->exception:Ljava/lang/Exception;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
