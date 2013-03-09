.class public Lcom/google/chrome/bookmarks/sync/api/ChromeHttpException;
.super Lorg/apache/http/HttpException;
.source "ChromeHttpException.java"


# instance fields
.field private final statusCode:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter "message"
    .parameter "statusCode"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lorg/apache/http/HttpException;-><init>(Ljava/lang/String;)V

    .line 25
    iput p2, p0, Lcom/google/chrome/bookmarks/sync/api/ChromeHttpException;->statusCode:I

    .line 26
    return-void
.end method


# virtual methods
.method public getStatusCode()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/google/chrome/bookmarks/sync/api/ChromeHttpException;->statusCode:I

    return v0
.end method
