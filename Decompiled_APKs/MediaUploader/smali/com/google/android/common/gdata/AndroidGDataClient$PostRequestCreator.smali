.class Lcom/google/android/common/gdata/AndroidGDataClient$PostRequestCreator;
.super Ljava/lang/Object;
.source "AndroidGDataClient.java"

# interfaces
.implements Lcom/google/android/common/gdata/AndroidGDataClient$HttpRequestCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/common/gdata/AndroidGDataClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PostRequestCreator"
.end annotation


# instance fields
.field private final mEntity:Lorg/apache/http/HttpEntity;

.field private final mMethodOverride:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/apache/http/HttpEntity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lcom/google/android/common/gdata/AndroidGDataClient$PostRequestCreator;->mMethodOverride:Ljava/lang/String;

    .line 86
    iput-object p2, p0, Lcom/google/android/common/gdata/AndroidGDataClient$PostRequestCreator;->mEntity:Lorg/apache/http/HttpEntity;

    .line 87
    return-void
.end method


# virtual methods
.method public createRequest(Ljava/net/URI;)Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 3
    .parameter

    .prologue
    .line 90
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/net/URI;)V

    .line 91
    iget-object v1, p0, Lcom/google/android/common/gdata/AndroidGDataClient$PostRequestCreator;->mMethodOverride:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 92
    const-string v1, "X-HTTP-Method-Override"

    iget-object v2, p0, Lcom/google/android/common/gdata/AndroidGDataClient$PostRequestCreator;->mMethodOverride:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :cond_0
    iget-object v1, p0, Lcom/google/android/common/gdata/AndroidGDataClient$PostRequestCreator;->mEntity:Lorg/apache/http/HttpEntity;

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 95
    return-object v0
.end method
