.class public interface abstract Lcom/htc/urlshortener/UrlShorteningOperation$UrlShorteningOperationListener;
.super Ljava/lang/Object;
.source "UrlShorteningOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/urlshortener/UrlShorteningOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UrlShorteningOperationListener"
.end annotation


# virtual methods
.method public abstract onOperationComplete(Lcom/htc/urlshortener/UrlShorteningOperation;ILjava/lang/String;Ljava/lang/Exception;)V
.end method

.method public abstract onOperationProgress(Lcom/htc/urlshortener/UrlShorteningOperation;JJ)V
.end method

.method public abstract onProcessComplete(Lcom/htc/urlshortener/UrlShorteningOperation;ILjava/lang/String;Ljava/lang/Exception;)V
.end method
