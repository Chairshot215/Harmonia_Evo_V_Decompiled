.class Lcom/sprint/dsa/DsaWebViewClient$4;
.super Ljava/lang/Object;
.source "DsaWebViewClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/dsa/DsaWebViewClient;->loadData(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/dsa/DsaWebViewClient;

.field private final synthetic val$str:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sprint/dsa/DsaWebViewClient;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/dsa/DsaWebViewClient$4;->this$0:Lcom/sprint/dsa/DsaWebViewClient;

    iput-object p2, p0, Lcom/sprint/dsa/DsaWebViewClient$4;->val$str:Ljava/lang/String;

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 219
    :try_start_0
    sget-object v0, Lcom/sprint/dsa/DsaClient;->dsaWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 220
    sget-object v0, Lcom/sprint/dsa/DsaClient;->dsaWebView:Landroid/webkit/WebView;

    sget-object v1, Lcom/sprint/dsa/DsaHttpClient;->lastLoadUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/sprint/dsa/DsaWebViewClient$4;->val$str:Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "utf-8"

    .line 221
    iget-object v5, p0, Lcom/sprint/dsa/DsaWebViewClient$4;->this$0:Lcom/sprint/dsa/DsaWebViewClient;

    #getter for: Lcom/sprint/dsa/DsaWebViewClient;->dsaClient:Lcom/sprint/dsa/DsaClient;
    invoke-static {v5}, Lcom/sprint/dsa/DsaWebViewClient;->access$0(Lcom/sprint/dsa/DsaWebViewClient;)Lcom/sprint/dsa/DsaClient;

    move-result-object v5

    iget-object v5, v5, Lcom/sprint/dsa/DsaClient;->nextURL:Ljava/lang/String;

    .line 220
    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    :goto_0
    return-void

    .line 223
    :catch_0
    move-exception v6

    .line 224
    .local v6, e:Ljava/lang/Exception;
    const-string v0, "DSS"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "loadData:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
