.class Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity$2;
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


# direct methods
.method constructor <init>(Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity$2;->this$0:Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity$2;->this$0:Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;

    #calls: Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->updateStatus()V
    invoke-static {v0}, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->access$000(Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;)V

    .line 105
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity$2;->this$0:Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity$2;->this$0:Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;

    #getter for: Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->updateStatusRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->access$100(Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity$2;->this$0:Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;

    #getter for: Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->updateStatusRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->access$100(Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;)Ljava/lang/Runnable;

    move-result-object v2

    #calls: Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->refreshCredentials(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    invoke-static {v0, v1, v2}, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->access$200(Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 106
    return-void
.end method
