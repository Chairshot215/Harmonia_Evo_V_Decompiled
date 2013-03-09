.class Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity$10;
.super Ljava/lang/Object;
.source "DcbDebugActivity.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->refreshDcbParams(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;

.field final synthetic val$errorRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 368
    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity$10;->this$0:Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;

    iput-object p2, p0, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity$10;->val$errorRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 5
    .parameter "error"

    .prologue
    const/4 v4, 0x1

    .line 371
    const-string v1, "Error getting dcb params: %s"

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 372
    .local v0, msg:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity$10;->this$0:Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;

    invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 373
    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity$10;->val$errorRunnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 374
    return-void
.end method
