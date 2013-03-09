.class Lcom/htc/urlshortener/UrlShorteningOperation$2;
.super Ljava/lang/Object;
.source "UrlShorteningOperation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/urlshortener/UrlShorteningOperation;->onHttpComplete(ILjava/lang/String;Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/urlshortener/UrlShorteningOperation;

.field final synthetic val$e:Ljava/lang/Exception;

.field final synthetic val$errorCode:I

.field final synthetic val$reasonPhrase:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/htc/urlshortener/UrlShorteningOperation;ILjava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Lcom/htc/urlshortener/UrlShorteningOperation$2;->this$0:Lcom/htc/urlshortener/UrlShorteningOperation;

    iput p2, p0, Lcom/htc/urlshortener/UrlShorteningOperation$2;->val$errorCode:I

    iput-object p3, p0, Lcom/htc/urlshortener/UrlShorteningOperation$2;->val$reasonPhrase:Ljava/lang/String;

    iput-object p4, p0, Lcom/htc/urlshortener/UrlShorteningOperation$2;->val$e:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 139
    iget-object v0, p0, Lcom/htc/urlshortener/UrlShorteningOperation$2;->this$0:Lcom/htc/urlshortener/UrlShorteningOperation;

    iget-object v0, v0, Lcom/htc/urlshortener/UrlShorteningOperation;->mHttpOp:Lcom/htc/urlshortener/HttpOperation;

    if-nez v0, :cond_0

    .line 145
    :goto_0
    return-void

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/htc/urlshortener/UrlShorteningOperation$2;->this$0:Lcom/htc/urlshortener/UrlShorteningOperation;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/htc/urlshortener/UrlShorteningOperation;->mHttpOp:Lcom/htc/urlshortener/HttpOperation;

    .line 143
    iget-object v0, p0, Lcom/htc/urlshortener/UrlShorteningOperation$2;->this$0:Lcom/htc/urlshortener/UrlShorteningOperation;

    iget-object v0, v0, Lcom/htc/urlshortener/UrlShorteningOperation;->mListener:Lcom/htc/urlshortener/UrlShorteningOperation$UrlShorteningOperationListener;

    iget-object v1, p0, Lcom/htc/urlshortener/UrlShorteningOperation$2;->this$0:Lcom/htc/urlshortener/UrlShorteningOperation;

    iget v2, p0, Lcom/htc/urlshortener/UrlShorteningOperation$2;->val$errorCode:I

    iget-object v3, p0, Lcom/htc/urlshortener/UrlShorteningOperation$2;->val$reasonPhrase:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/urlshortener/UrlShorteningOperation$2;->val$e:Ljava/lang/Exception;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/htc/urlshortener/UrlShorteningOperation$UrlShorteningOperationListener;->onOperationComplete(Lcom/htc/urlshortener/UrlShorteningOperation;ILjava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method
