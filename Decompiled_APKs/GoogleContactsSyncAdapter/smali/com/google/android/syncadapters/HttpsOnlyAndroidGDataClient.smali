.class public final Lcom/google/android/syncadapters/HttpsOnlyAndroidGDataClient;
.super Lcom/google/android/common/gdata2/AndroidGDataClient;
.source "HttpsOnlyAndroidGDataClient.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "appAndVersion"
    .parameter "gdataVersion"

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/common/gdata2/AndroidGDataClient;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    return-void
.end method


# virtual methods
.method protected createAndExecuteMethod(Lcom/google/android/common/gdata2/AndroidGDataClient$HttpRequestCreator;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2
    .parameter "creator"
    .parameter "url"
    .parameter "authToken"
    .parameter "eTag"
    .parameter "protocolVersion"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/client/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 29
    const-string v0, "http://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "http://"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 32
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/google/android/common/gdata2/AndroidGDataClient;->createAndExecuteMethod(Lcom/google/android/common/gdata2/AndroidGDataClient$HttpRequestCreator;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
