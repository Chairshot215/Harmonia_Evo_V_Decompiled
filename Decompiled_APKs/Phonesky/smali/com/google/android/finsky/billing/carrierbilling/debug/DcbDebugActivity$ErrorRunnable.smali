.class Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity$ErrorRunnable;
.super Ljava/lang/Object;
.source "DcbDebugActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ErrorRunnable"
.end annotation


# instance fields
.field private final mChainedRunnable:Ljava/lang/Runnable;

.field private final mErrorMessage:Ljava/lang/String;

.field final synthetic this$0:Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter "errorMessage"
    .parameter "chainedRunnable"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity$ErrorRunnable;->this$0:Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p2, p0, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity$ErrorRunnable;->mErrorMessage:Ljava/lang/String;

    .line 71
    iput-object p3, p0, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity$ErrorRunnable;->mChainedRunnable:Ljava/lang/Runnable;

    .line 72
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity$ErrorRunnable;->this$0:Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity$ErrorRunnable;->mErrorMessage:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 77
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity$ErrorRunnable;->mChainedRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 78
    return-void
.end method
