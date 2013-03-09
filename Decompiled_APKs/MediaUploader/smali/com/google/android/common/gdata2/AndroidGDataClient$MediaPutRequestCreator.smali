.class Lcom/google/android/common/gdata2/AndroidGDataClient$MediaPutRequestCreator;
.super Ljava/lang/Object;
.source "AndroidGDataClient.java"

# interfaces
.implements Lcom/google/android/common/gdata2/AndroidGDataClient$HttpRequestCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/common/gdata2/AndroidGDataClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MediaPutRequestCreator"
.end annotation


# instance fields
.field private final mContentType:Ljava/lang/String;

.field private final mMediaInputStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-object p1, p0, Lcom/google/android/common/gdata2/AndroidGDataClient$MediaPutRequestCreator;->mMediaInputStream:Ljava/io/InputStream;

    .line 110
    iput-object p2, p0, Lcom/google/android/common/gdata2/AndroidGDataClient$MediaPutRequestCreator;->mContentType:Ljava/lang/String;

    .line 111
    return-void
.end method


# virtual methods
.method public createRequest(Ljava/net/URI;)Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 5
    .parameter

    .prologue
    .line 114
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/net/URI;)V

    .line 115
    const-string v1, "X-HTTP-Method-Override"

    const-string v2, "PUT"

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    new-instance v1, Lorg/apache/http/entity/InputStreamEntity;

    iget-object v2, p0, Lcom/google/android/common/gdata2/AndroidGDataClient$MediaPutRequestCreator;->mMediaInputStream:Ljava/io/InputStream;

    const-wide/16 v3, -0x1

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    .line 119
    iget-object v2, p0, Lcom/google/android/common/gdata2/AndroidGDataClient$MediaPutRequestCreator;->mContentType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/apache/http/entity/InputStreamEntity;->setContentType(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 121
    return-object v0
.end method
