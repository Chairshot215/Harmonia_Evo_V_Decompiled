.class Lcom/google/android/finsky/billing/GetBillingCountriesAction$2;
.super Ljava/lang/Object;
.source "GetBillingCountriesAction.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/billing/GetBillingCountriesAction;->run(Ljava/lang/String;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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
    .line 55
    iput-object p1, p0, Lcom/google/android/finsky/billing/GetBillingCountriesAction$2;->this$0:Lcom/google/android/finsky/billing/GetBillingCountriesAction;

    iput-object p2, p0, Lcom/google/android/finsky/billing/GetBillingCountriesAction$2;->val$finishRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 3
    .parameter "error"

    .prologue
    .line 58
    const-string v0, "PurchaseMetadataRequest failed: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    iget-object v0, p0, Lcom/google/android/finsky/billing/GetBillingCountriesAction$2;->val$finishRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/google/android/finsky/billing/GetBillingCountriesAction$2;->val$finishRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 62
    :cond_0
    return-void
.end method
