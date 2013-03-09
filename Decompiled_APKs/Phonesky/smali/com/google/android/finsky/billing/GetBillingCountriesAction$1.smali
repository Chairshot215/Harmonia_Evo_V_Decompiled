.class Lcom/google/android/finsky/billing/GetBillingCountriesAction$1;
.super Ljava/lang/Object;
.source "GetBillingCountriesAction.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/billing/GetBillingCountriesAction;->run(Ljava/lang/String;Ljava/lang/Runnable;)V
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
        "Ljava/util/List",
        "<",
        "Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/billing/GetBillingCountriesAction;

.field final synthetic val$finishRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/billing/GetBillingCountriesAction;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/google/android/finsky/billing/GetBillingCountriesAction$1;->this$0:Lcom/google/android/finsky/billing/GetBillingCountriesAction;

    iput-object p2, p0, Lcom/google/android/finsky/billing/GetBillingCountriesAction$1;->val$finishRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    check-cast p1, Ljava/util/List;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/billing/GetBillingCountriesAction$1;->onResponse(Ljava/util/List;)V

    return-void
.end method

.method public onResponse(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p1, response:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;>;"
    invoke-static {p1}, Lcom/google/android/finsky/billing/BillingLocator;->setBillingCountries(Ljava/util/List;)V

    .line 49
    const-string v0, "Received and stored %d billing countries."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    iget-object v0, p0, Lcom/google/android/finsky/billing/GetBillingCountriesAction$1;->val$finishRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/google/android/finsky/billing/GetBillingCountriesAction$1;->val$finishRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 53
    :cond_0
    return-void
.end method
