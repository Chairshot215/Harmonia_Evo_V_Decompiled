.class public Lcom/google/wireless/gdata/client/HttpException;
.super Ljava/lang/Exception;
.source "HttpException.java"


# static fields
.field public static final SC_BAD_REQUEST:I = 0x190

.field public static final SC_CONFLICT:I = 0x199

.field public static final SC_FORBIDDEN:I = 0x193

.field public static final SC_GONE:I = 0x19a

.field public static final SC_INTERNAL_SERVER_ERROR:I = 0x1f4

.field public static final SC_NOT_FOUND:I = 0x194

.field public static final SC_UNAUTHORIZED:I = 0x191


# instance fields
.field private final responseStream:Ljava/io/InputStream;

.field private final statusCode:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/io/InputStream;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 39
    iput p2, p0, Lcom/google/wireless/gdata/client/HttpException;->statusCode:I

    .line 40
    iput-object p3, p0, Lcom/google/wireless/gdata/client/HttpException;->responseStream:Ljava/io/InputStream;

    .line 41
    return-void
.end method


# virtual methods
.method public getResponseStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/wireless/gdata/client/HttpException;->responseStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/google/wireless/gdata/client/HttpException;->statusCode:I

    return v0
.end method
