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

    iput-object p1, p0, Lcom/htc/urlshortener/UrlShorteningOperation$1;->this$0:Lcom/htc/urlshortener/UrlShorteningOperation;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHttpOperationComplete(Lcom/htc/urlshortener/HttpOperation;ILjava/lang/String;Ljava/io/OutputStream;Ljava/lang/Exception;)V
    .locals 4

    const/16 v1, 0xc8

    if-ne p2, v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/htc/urlshortener/UrlShorteningOperation$1;->this$0:Lcom/htc/urlshortener/UrlShorteningOperation;

    new-instance v2, Ljava/lang/String;

    check-cast p4, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Lcom/htc/urlshortener/UrlShorteningOperation;->parseResponse(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/htc/urlshortener/UrlShorteningException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/htc/urlshortener/UrlShorteningOperation$1;->this$0:Lcom/htc/urlshortener/UrlShorteningOperation;

    invoke-virtual {v1, p2, p3, p5}, Lcom/htc/urlshortener/UrlShorteningOperation;->onHttpComplete(ILjava/lang/String;Ljava/lang/Exception;)V

    return-void

    :catch_0
    move-exception v0

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

    const/4 p2, 0x0

    const/4 p3, 0x0

    move-object p5, v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object p5, v0

    const-string v1, "UrlShorteningOperation"

    const-string v2, "onHttpOperationComplete failed!"

    invoke-static {v1, v2, p5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p2, 0x0

    const/4 p3, 0x0

    goto :goto_0
.end method

.method public onHttpOperationProgress(Lcom/htc/urlshortener/HttpOperation;JJ)V
    .locals 0

    return-void
.end method
