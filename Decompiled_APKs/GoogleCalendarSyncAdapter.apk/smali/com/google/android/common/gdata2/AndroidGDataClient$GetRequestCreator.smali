.class Lcom/google/android/common/gdata2/AndroidGDataClient$GetRequestCreator;
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
    name = "GetRequestCreator"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    return-void
.end method


# virtual methods
.method public createRequest(Ljava/net/URI;)Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 1
    .parameter "uri"

    .prologue
    .line 81
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/net/URI;)V

    return-object v0
.end method
