.class public Lcom/android/browser/DataUri;
.super Ljava/lang/Object;
.source "DataUri.java"


# static fields
.field private static final BASE_64_ENCODING:Ljava/lang/String; = ";base64"

.field private static final DATA_URI_PREFIX:Ljava/lang/String; = "data:"


# instance fields
.field private mData:[B

.field private mMimeType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 5
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {p1}, Lcom/android/browser/DataUri;->isDataUri(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 38
    new-instance v3, Ljava/net/MalformedURLException;

    const-string v4, "Not a data URI"

    invoke-direct {v3, v4}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 41
    :cond_0
    const/16 v3, 0x2c

    const-string v4, "data:"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 42
    .local v0, commaIndex:I
    if-gez v0, :cond_1

    .line 43
    new-instance v3, Ljava/net/MalformedURLException;

    const-string v4, "Comma expected in data URI"

    invoke-direct {v3, v4}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 45
    :cond_1
    const-string v3, "data:"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 47
    .local v1, contentType:Ljava/lang/String;
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    iput-object v3, p0, Lcom/android/browser/DataUri;->mData:[B

    .line 48
    const-string v3, ";base64"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 49
    iget-object v3, p0, Lcom/android/browser/DataUri;->mData:[B

    invoke-static {v3}, Llibcore/io/Base64;->decode([B)[B

    move-result-object v3

    iput-object v3, p0, Lcom/android/browser/DataUri;->mData:[B

    .line 51
    :cond_2
    const/16 v3, 0x3b

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 52
    .local v2, semiIndex:I
    if-lez v2, :cond_3

    .line 53
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/browser/DataUri;->mMimeType:Ljava/lang/String;

    .line 57
    :goto_0
    return-void

    .line 55
    :cond_3
    iput-object v1, p0, Lcom/android/browser/DataUri;->mMimeType:Ljava/lang/String;

    goto :goto_0
.end method

.method public static isDataUri(Ljava/lang/String;)Z
    .locals 1
    .parameter "text"

    .prologue
    .line 64
    const-string v0, "data:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getData()[B
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/browser/DataUri;->mData:[B

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/browser/DataUri;->mMimeType:Ljava/lang/String;

    return-object v0
.end method
