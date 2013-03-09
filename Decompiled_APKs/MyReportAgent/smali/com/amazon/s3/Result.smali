.class public Lcom/amazon/s3/Result;
.super Ljava/lang/Object;
.source "Result.java"


# instance fields
.field private downloadedSize:I

.field private eTag:Ljava/lang/String;

.field private responeDescription:Ljava/lang/String;

.field private responseHeaders:[Lorg/apache/http/Header;

.field resultBytes:[B

.field statusCode:I

.field private uploadedSize:I

.field private versionId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getETag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/amazon/s3/Result;->eTag:Ljava/lang/String;

    return-object v0
.end method

.method public getResponeDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/amazon/s3/Result;->responeDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseHeaders()[Lorg/apache/http/Header;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/amazon/s3/Result;->responseHeaders:[Lorg/apache/http/Header;

    return-object v0
.end method

.method public getResultBytes()[B
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/amazon/s3/Result;->resultBytes:[B

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/amazon/s3/Result;->statusCode:I

    return v0
.end method

.method public getUploadedSize()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/amazon/s3/Result;->uploadedSize:I

    return v0
.end method

.method public getVersionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/amazon/s3/Result;->versionId:Ljava/lang/String;

    return-object v0
.end method

.method public setETag(Ljava/lang/String;)V
    .locals 0
    .parameter "eTag"

    .prologue
    .line 163
    iput-object p1, p0, Lcom/amazon/s3/Result;->eTag:Ljava/lang/String;

    .line 164
    return-void
.end method

.method public setResponeDescription(Ljava/lang/String;)V
    .locals 0
    .parameter "responeDescription"

    .prologue
    .line 24
    iput-object p1, p0, Lcom/amazon/s3/Result;->responeDescription:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public setResponseHeaders([Lorg/apache/http/Header;)V
    .locals 0
    .parameter "responseHeaders"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/amazon/s3/Result;->responseHeaders:[Lorg/apache/http/Header;

    .line 81
    return-void
.end method

.method public setResultBytes([B)V
    .locals 0
    .parameter "resultBytes"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/amazon/s3/Result;->resultBytes:[B

    .line 53
    return-void
.end method

.method public setStatusCode(I)V
    .locals 0
    .parameter "statusCode"

    .prologue
    .line 38
    iput p1, p0, Lcom/amazon/s3/Result;->statusCode:I

    .line 39
    return-void
.end method

.method public setUploadedSize(I)V
    .locals 0
    .parameter "uploadedSize"

    .prologue
    .line 66
    iput p1, p0, Lcom/amazon/s3/Result;->uploadedSize:I

    .line 67
    return-void
.end method

.method public setVersionId(Ljava/lang/String;)V
    .locals 0
    .parameter "versionId"

    .prologue
    .line 139
    iput-object p1, p0, Lcom/amazon/s3/Result;->versionId:Ljava/lang/String;

    .line 140
    return-void
.end method
