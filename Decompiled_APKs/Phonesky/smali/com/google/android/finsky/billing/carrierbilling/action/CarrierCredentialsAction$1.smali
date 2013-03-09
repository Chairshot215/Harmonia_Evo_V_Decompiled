.class Lcom/google/android/finsky/billing/carrierbilling/action/CarrierCredentialsAction$1;
.super Ljava/lang/Object;
.source "CarrierCredentialsAction.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/billing/carrierbilling/action/CarrierCredentialsAction;->run(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
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
        "Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/billing/carrierbilling/action/CarrierCredentialsAction;

.field final synthetic val$carrierId:Ljava/lang/String;

.field final synthetic val$successRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/billing/carrierbilling/action/CarrierCredentialsAction;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierCredentialsAction$1;->this$0:Lcom/google/android/finsky/billing/carrierbilling/action/CarrierCredentialsAction;

    iput-object p2, p0, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierCredentialsAction$1;->val$carrierId:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierCredentialsAction$1;->val$successRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;)V
    .locals 3
    .parameter "credentials"

    .prologue
    const/4 v2, 0x1

    .line 47
    if-eqz p1, :cond_1

    .line 48
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierCredentialsAction$1;->this$0:Lcom/google/android/finsky/billing/carrierbilling/action/CarrierCredentialsAction;

    #getter for: Lcom/google/android/finsky/billing/carrierbilling/action/CarrierCredentialsAction;->mDcbStorage:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;
    invoke-static {v0}, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierCredentialsAction;->access$000(Lcom/google/android/finsky/billing/carrierbilling/action/CarrierCredentialsAction;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->setCredentials(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;)V

    .line 50
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierCredentialsAction$1;->val$carrierId:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierCredentialsAction$1;->this$0:Lcom/google/android/finsky/billing/carrierbilling/action/CarrierCredentialsAction;

    #getter for: Lcom/google/android/finsky/billing/carrierbilling/action/CarrierCredentialsAction;->mDcbStorage:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;
    invoke-static {v1}, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierCredentialsAction;->access$000(Lcom/google/android/finsky/billing/carrierbilling/action/CarrierCredentialsAction;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/finsky/billing/carrierbilling/CarrierBillingUtils;->areCredentialsValid(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;)Z

    move-result v1

    invoke-static {v0, v2, v1}, Lcom/google/android/finsky/billing/BillingEventRecorder;->recordSuccess(Ljava/lang/String;IZ)V

    .line 62
    :goto_0
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierCredentialsAction$1;->val$successRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierCredentialsAction$1;->val$successRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 65
    :cond_0
    return-void

    .line 54
    :cond_1
    const-string v0, "Fetching credentials returned null."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierCredentialsAction$1;->val$carrierId:Ljava/lang/String;

    const-string v1, "SERVER"

    invoke-static {v0, v2, v1}, Lcom/google/android/finsky/billing/BillingEventRecorder;->recordError(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    check-cast p1, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierCredentialsAction$1;->onResponse(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;)V

    return-void
.end method
