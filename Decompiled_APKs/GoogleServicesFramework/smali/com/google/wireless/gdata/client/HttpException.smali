.class public Lcom/google/wireless/gdata/client/HttpException;
.super Ljava/lang/Exception;
.source "HttpException.java"


# instance fields
.field private final responseStream:Ljava/io/InputStream;

.field private final statusCode:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/io/InputStream;)V
    .locals 0
    .parameter "message"
    .parameter "statusCode"
    .parameter "responseStream"

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
.method public getStatusCode()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/google/wireless/gdata/client/HttpException;->statusCode:I

    return v0
.end method
