.class public interface abstract Lcom/htc/urlshortener/HttpOperation$HttpOperationListener;
.super Ljava/lang/Object;
.source "HttpOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/urlshortener/HttpOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "HttpOperationListener"
.end annotation


# virtual methods
.method public abstract onHttpOperationComplete(Lcom/htc/urlshortener/HttpOperation;ILjava/lang/String;Ljava/io/OutputStream;Ljava/lang/Exception;)V
.end method

.method public abstract onHttpOperationProgress(Lcom/htc/urlshortener/HttpOperation;JJ)V
.end method
