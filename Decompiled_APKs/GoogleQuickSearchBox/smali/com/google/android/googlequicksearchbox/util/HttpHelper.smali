.class public interface abstract Lcom/google/android/googlequicksearchbox/util/HttpHelper;
.super Ljava/lang/Object;
.source "HttpHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/googlequicksearchbox/util/HttpHelper$UrlRewriter;,
        Lcom/google/android/googlequicksearchbox/util/HttpHelper$HttpException;,
        Lcom/google/android/googlequicksearchbox/util/HttpHelper$PostRequest;,
        Lcom/google/android/googlequicksearchbox/util/HttpHelper$GetRequest;
    }
.end annotation


# virtual methods
.method public abstract get(Lcom/google/android/googlequicksearchbox/util/HttpHelper$GetRequest;I)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/googlequicksearchbox/util/HttpHelper$HttpException;
        }
    .end annotation
.end method

.method public abstract get(Ljava/lang/String;Ljava/util/Map;I)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/googlequicksearchbox/util/HttpHelper$HttpException;
        }
    .end annotation
.end method

.method public abstract getNetworkInfo()Landroid/net/NetworkInfo;
.end method

.method public abstract haveNetworkConnection()Z
.end method

.method public abstract post(Lcom/google/android/googlequicksearchbox/util/HttpHelper$PostRequest;I)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/googlequicksearchbox/util/HttpHelper$HttpException;
        }
    .end annotation
.end method
