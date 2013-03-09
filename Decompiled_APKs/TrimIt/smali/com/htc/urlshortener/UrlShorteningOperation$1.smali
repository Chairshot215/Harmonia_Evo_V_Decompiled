.class Lcom/htc/urlshortener/UrlShorteningOperation$1;
.super Ljava/lang/Object;
.source "UrlShorteningOperation.java"

# interfaces
.implements Lcom/htc/urlshortener/HttpOperation$HttpOperationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/urlshortener/UrlShorteningOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/urlshortener/UrlShorteningOperation;


# direct methods
.method constructor <init>(Lcom/htc/urlshortener/UrlShorteningOperation;)V
    .locals 0
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/htc/urlshortener/UrlShorteningOperation$1;->this$0:Lcom/htc/urlshortener/UrlShorteningOperation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHttpOperationComplete(Lcom/htc/urlshortener/HttpOperation;ILjava/lang/String;Ljava/io/OutputStream;Ljava/lang/Exception;)V
    .locals 4
    .parameter "operation"
    .parameter "errorCode"
    .parameter "reasonPhrase"
    .parameter "os"
    .parameter "e"

    .prologue
    .line 106
    const/16 v1, 0xc8

    if-ne p2, v1, :cond_0

    .line 108
    :try_start_0
    iget-object v1, p0, Lcom/htc/urlshortener/UrlShorteningOperation$1;->this$0:Lcom/htc/urlshortener/UrlShorteningOperation;

    new-instance v2, Ljava/lang/String;

    check-cast p4, Ljava/io/ByteArrayOutputStream;

    .end local p4
    invoke-virtual {p4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Lcom/htc/urlshortener/UrlShorteningOperation;->parseResponse(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/htc/urlshortener/UrlShorteningException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 123
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/htc/urlshortener/UrlShorteningOperation$1;->this$0:Lcom/htc/urlshortener/UrlShorteningOperation;

    invoke-virtual {v1, p2, p3, p5}, Lcom/htc/urlshortener/UrlShorteningOperation;->onHttpComplete(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 124
    return-void

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, ex:Lcom/htc/urlshortener/UrlShorteningException;
    const-string v1, "UrlShorteningOperation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UrlShorteningException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/htc/urlshortener/UrlShorteningException;->getErrorCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/htc/urlshortener/UrlShorteningException;->getErrorMsg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const/4 p2, 0x0

    .line 114
    const/4 p3, 0x0

    .line 115
    move-object p5, v0

    .line 121
    goto :goto_0

    .line 116
    .end local v0           #ex:Lcom/htc/urlshortener/UrlShorteningException;
    :catch_1
    move-exception v0

    .line 117
    .local v0, ex:Ljava/lang/Exception;
    move-object p5, v0

    .line 118
    const-string v1, "UrlShorteningOperation"

    const-string v2, "onHttpOperationComplete failed!"

    invoke-static {v1, v2, p5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 119
    const/4 p2, 0x0

    .line 120
    const/4 p3, 0x0

    goto :goto_0
.end method

.method public onHttpOperationProgress(Lcom/htc/urlshortener/HttpOperation;JJ)V
    .locals 0
    .parameter "operation"
    .parameter "position"
    .parameter "length"

    .prologue
    .line 129
    return-void
.end method
