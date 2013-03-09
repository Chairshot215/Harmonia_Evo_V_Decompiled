.class public Lcom/google/wireless/gdata2/client/HttpException;
.super Lcom/google/wireless/gdata2/GDataException;
.source "HttpException.java"


# static fields
.field public static final SC_BAD_REQUEST:I = 0x190

.field public static final SC_CONFLICT:I = 0x199

.field public static final SC_FORBIDDEN:I = 0x193

.field public static final SC_GONE:I = 0x19a

.field public static final SC_INTERNAL_SERVER_ERROR:I = 0x1f4

.field public static final SC_NOT_FOUND:I = 0x194

.field public static final SC_NOT_MODIFIED:I = 0x130

.field public static final SC_PRECONDITION_FAILED:I = 0x19c

.field public static final SC_RESOURCE_UNAVAILABLE:I = 0x1f7

.field public static final SC_UNAUTHORIZED:I = 0x191


# instance fields
.field private final responseStream:Ljava/io/InputStream;

.field private retryAfter:J

.field private final statusCode:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/io/InputStream;)V
    .locals 2
    .parameter
    .parameter
    .parameter

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
    .parameter

    .prologue
    .line 52
    iput-wide p1, p0, Lcom/google/wireless/gdata2/client/HttpException;->retryAfter:J

    .line 53
    return-void
.end method
