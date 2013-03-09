.class Lcom/google/android/finsky/billing/iab/InAppBillingService$1;
.super Ljava/lang/Object;
.source "InAppBillingService.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/billing/iab/InAppBillingService;->fetchSkuDetails(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/billing/iab/InAppBillingService;

.field final synthetic val$response:Landroid/os/Bundle;

.field final synthetic val$semaphore:Ljava/util/concurrent/Semaphore;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/billing/iab/InAppBillingService;Landroid/os/Bundle;Ljava/util/concurrent/Semaphore;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 522
    iput-object p1, p0, Lcom/google/android/finsky/billing/iab/InAppBillingService$1;->this$0:Lcom/google/android/finsky/billing/iab/InAppBillingService;

    iput-object p2, p0, Lcom/google/android/finsky/billing/iab/InAppBillingService$1;->val$response:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/google/android/finsky/billing/iab/InAppBillingService$1;->val$semaphore:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsResponse;)V
    .locals 6
    .parameter "detailsResponse"

    .prologue
    .line 526
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsResponse;->getEntryList()Ljava/util/List;

    move-result-object v0

    .line 527
    .local v0, bulkDetailsEntry:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsEntry;>;"
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 528
    .local v1, detailsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsEntry;

    .line 529
    .local v2, entry:Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsEntry;
    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsEntry;->getDoc()Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 530
    iget-object v4, p0, Lcom/google/android/finsky/billing/iab/InAppBillingService$1;->this$0:Lcom/google/android/finsky/billing/iab/InAppBillingService;

    #calls: Lcom/google/android/finsky/billing/iab/InAppBillingService;->buildDetailsJson(Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsEntry;)Ljava/lang/String;
    invoke-static {v4, v2}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->access$800(Lcom/google/android/finsky/billing/iab/InAppBillingService;Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsEntry;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 533
    .end local v2           #entry:Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsEntry;
    :cond_1
    iget-object v4, p0, Lcom/google/android/finsky/billing/iab/InAppBillingService$1;->val$response:Landroid/os/Bundle;

    const-string v5, "DETAILS_LIST"

    invoke-virtual {v4, v5, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 534
    iget-object v4, p0, Lcom/google/android/finsky/billing/iab/InAppBillingService$1;->val$semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    .line 535
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 522
    check-cast p1, Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/billing/iab/InAppBillingService$1;->onResponse(Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsResponse;)V

    return-void
.end method
