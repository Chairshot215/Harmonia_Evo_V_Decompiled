.class public Lcom/google/wireless/gdata2/client/HttpException;
.super Lcom/google/wireless/gdata2/GDataException;
.source "HttpException.java"


# instance fields
.field private final responseStream:Ljava/io/InputStream;

.field private retryAfter:J

.field private final statusCode:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/io/InputStream;)V
    .locals 2
    .parameter "message"
    .parameter "statusCode"
    .parameter "responseStream"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/google/wireless/gdata2/GDataException;-><init>(Ljava/lang/String;)V

    .line 59
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/gdata2/client/HttpException;->retryAfter:J

    .line 68
    iput p2, p0, Lcom/google/wireless/gdata2/client/HttpException;->statusCode:I

    .line 69
    iput-object p3, p0, Lcom/google/wireless/gdata2/client/HttpException;->responseStream:Ljava/io/InputStream;

    .line 70
    return-void
.end method


# virtual methods
.method public getResponseStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/wireless/gdata2/client/HttpException;->responseStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getRetryAfter()J
    .locals 2

    .prologue
    .line 44
    iget-wide v0, p0, Lcom/google/wireless/gdata2/client/HttpException;->retryAfter:J

    return-wide v0
.end method

.method public getStatusCode()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/google/wireless/gdata2/client/HttpException;->statusCode:I

    return v0
.end method

.method public setRetryAfter(J)V
    .locals 0
    .parameter "retryAfter"

    .prologue
    .line 52
    iput-wide p1, p0, Lcom/google/wireless/gdata2/client/HttpException;->retryAfter:J

    .line 53
    return-void
.end method
