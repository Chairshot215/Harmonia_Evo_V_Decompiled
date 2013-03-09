.class Lcom/google/android/finsky/services/MarketCatalogService$1;
.super Lcom/google/android/finsky/services/IMarketCatalogService$Stub;
.source "MarketCatalogService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/services/MarketCatalogService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/services/MarketCatalogService;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/services/MarketCatalogService;)V
    .locals 0
    .parameter

    .prologue
    .line 26
    iput-object p1, p0, Lcom/google/android/finsky/services/MarketCatalogService$1;->this$0:Lcom/google/android/finsky/services/MarketCatalogService;

    invoke-direct {p0}, Lcom/google/android/finsky/services/IMarketCatalogService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public isBackendEnabled(Ljava/lang/String;I)Z
    .locals 7
    .parameter "accountName"
    .parameter "backendId"

    .prologue
    const/4 v6, 0x0

    .line 29
    invoke-static {}, Lcom/google/android/finsky/utils/Utils;->ensureNotOnMainThread()V

    .line 32
    new-instance v2, Ljava/util/concurrent/Semaphore;

    invoke-direct {v2, v6}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 33
    .local v2, sem:Ljava/util/concurrent/Semaphore;
    const/4 v3, 0x1

    new-array v1, v3, [Z

    .line 35
    .local v1, enabled:[Z
    iget-object v3, p0, Lcom/google/android/finsky/services/MarketCatalogService$1;->this$0:Lcom/google/android/finsky/services/MarketCatalogService;

    invoke-static {p1, v3}, Lcom/google/android/finsky/api/AccountHandler;->findAccount(Ljava/lang/String;Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    .line 37
    .local v0, account:Landroid/accounts/Account;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    iget-object v4, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/FinskyApp;->getDfeApi(Ljava/lang/String;)Lcom/google/android/finsky/api/DfeApi;

    move-result-object v3

    new-instance v4, Lcom/google/android/finsky/services/MarketCatalogService$1$1;

    invoke-direct {v4, p0, p2, v1, v2}, Lcom/google/android/finsky/services/MarketCatalogService$1$1;-><init>(Lcom/google/android/finsky/services/MarketCatalogService$1;I[ZLjava/util/concurrent/Semaphore;)V

    new-instance v5, Lcom/google/android/finsky/services/MarketCatalogService$1$2;

    invoke-direct {v5, p0, v2}, Lcom/google/android/finsky/services/MarketCatalogService$1$2;-><init>(Lcom/google/android/finsky/services/MarketCatalogService$1;Ljava/util/concurrent/Semaphore;)V

    invoke-interface {v3, v4, v5, v6}, Lcom/google/android/finsky/api/DfeApi;->getToc(Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Z)Lcom/android/volley/Request;

    .line 56
    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->acquireUninterruptibly()V

    .line 58
    iget-object v3, p0, Lcom/google/android/finsky/services/MarketCatalogService$1;->this$0:Lcom/google/android/finsky/services/MarketCatalogService;

    invoke-virtual {v3}, Lcom/google/android/finsky/services/MarketCatalogService;->stopSelf()V

    .line 59
    aget-boolean v3, v1, v6

    return v3
.end method
