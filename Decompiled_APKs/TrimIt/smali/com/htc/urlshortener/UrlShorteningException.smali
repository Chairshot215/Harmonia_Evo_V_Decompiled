.class public Lcom/htc/urlshortener/UrlShorteningException;
.super Ljava/lang/Exception;
.source "UrlShorteningException.java"


# static fields
.field public static final ERROR_EMPTY_RESPONSE:I = 0x386

.field public static final ERROR_MISSING_ARG_SHORTURL_OR_HASH:I = 0x385

.field public static final ERROR_MISSING_ARG_URI:I = 0x384

.field private static final serialVersionUID:J = 0x471abf23632e5426L


# instance fields
.field private final mErrorCode:I

.field private final mErrorMsg:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .parameter "errorCode"
    .parameter "errorMsg"

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 15
    iput p1, p0, Lcom/htc/urlshortener/UrlShorteningException;->mErrorCode:I

    .line 16
    iput-object p2, p0, Lcom/htc/urlshortener/UrlShorteningException;->mErrorMsg:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/htc/urlshortener/UrlShorteningException;->mErrorCode:I

    return v0
.end method

.method public getErrorMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/htc/urlshortener/UrlShorteningException;->mErrorMsg:Ljava/lang/String;

    return-object v0
.end method
