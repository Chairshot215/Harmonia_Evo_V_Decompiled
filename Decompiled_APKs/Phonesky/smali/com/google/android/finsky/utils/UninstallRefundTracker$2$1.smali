.class Lcom/google/android/finsky/utils/UninstallRefundTracker$2$1;
.super Ljava/lang/Object;
.source "UninstallRefundTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/utils/UninstallRefundTracker$2;->onRefundComplete(Lcom/google/android/finsky/utils/AppSupport$RefundResult;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/finsky/utils/UninstallRefundTracker$2;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/utils/UninstallRefundTracker$2;)V
    .locals 0
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/google/android/finsky/utils/UninstallRefundTracker$2$1;->this$1:Lcom/google/android/finsky/utils/UninstallRefundTracker$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/finsky/utils/UninstallRefundTracker$2$1;->this$1:Lcom/google/android/finsky/utils/UninstallRefundTracker$2;

    iget-object v0, v0, Lcom/google/android/finsky/utils/UninstallRefundTracker$2;->this$0:Lcom/google/android/finsky/utils/UninstallRefundTracker;

    #getter for: Lcom/google/android/finsky/utils/UninstallRefundTracker;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/google/android/finsky/utils/UninstallRefundTracker;->access$100(Lcom/google/android/finsky/utils/UninstallRefundTracker;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0701a9

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 89
    return-void
.end method
