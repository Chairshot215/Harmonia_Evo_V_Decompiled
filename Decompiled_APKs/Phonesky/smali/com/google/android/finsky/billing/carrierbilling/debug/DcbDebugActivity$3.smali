.class Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity$3;
.super Ljava/lang/Object;
.source "DcbDebugActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->refreshAllInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;

.field final synthetic val$postRefreshProvRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity$3;->this$0:Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;

    iput-object p2, p0, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity$3;->val$postRefreshProvRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity$3;->this$0:Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;

    #calls: Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->updateStatus()V
    invoke-static {v0}, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->access$000(Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;)V

    .line 112
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity$3;->this$0:Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity$3;->val$postRefreshProvRunnable:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity$3;->this$0:Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;

    #getter for: Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->updateStatusRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->access$100(Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;)Ljava/lang/Runnable;

    move-result-object v2

    #calls: Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->refreshProvisioning(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    invoke-static {v0, v1, v2}, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->access$300(Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 113
    return-void
.end method
