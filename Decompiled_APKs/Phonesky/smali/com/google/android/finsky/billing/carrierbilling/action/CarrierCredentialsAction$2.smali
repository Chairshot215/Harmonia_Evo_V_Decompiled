.class Lcom/google/android/finsky/billing/carrierbilling/action/CarrierCredentialsAction$2;
.super Ljava/lang/Object;
.source "CarrierCredentialsAction.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/billing/carrierbilling/action/CarrierCredentialsAction;->run(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/billing/carrierbilling/action/CarrierCredentialsAction;

.field final synthetic val$carrierId:Ljava/lang/String;

.field final synthetic val$errorRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/billing/carrierbilling/action/CarrierCredentialsAction;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierCredentialsAction$2;->this$0:Lcom/google/android/finsky/billing/carrierbilling/action/CarrierCredentialsAction;

    iput-object p2, p0, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierCredentialsAction$2;->val$carrierId:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierCredentialsAction$2;->val$errorRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 8
    .parameter "error"

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 71
    const-string v4, "Fetching credentials returned an error: %s"

    new-array v5, v7, [Ljava/lang/Object;

    aput-object p1, v5, v6

    invoke-static {v4, v5}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    invoke-static {p1}, Lcom/google/android/finsky/api/DfeUtils;->getLegacyErrorCode(Lcom/android/volley/VolleyError;)Ljava/lang/String;

    move-result-object v2

    .line 74
    .local v2, legacyMessage:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, exceptionMessage:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    .line 77
    .local v1, exceptionType:Ljava/lang/String;
    const-string v4, "%s/%s/%s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v6

    aput-object v0, v5, v7

    const/4 v6, 0x2

    aput-object v1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 80
    .local v3, message:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierCredentialsAction$2;->val$carrierId:Ljava/lang/String;

    invoke-static {v4, v7, v3}, Lcom/google/android/finsky/billing/BillingEventRecorder;->recordError(Ljava/lang/String;ILjava/lang/String;)V

    .line 85
    iget-object v4, p0, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierCredentialsAction$2;->val$errorRunnable:Ljava/lang/Runnable;

    if-eqz v4, :cond_0

    .line 86
    iget-object v4, p0, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierCredentialsAction$2;->val$errorRunnable:Ljava/lang/Runnable;

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    .line 88
    :cond_0
    return-void
.end method
