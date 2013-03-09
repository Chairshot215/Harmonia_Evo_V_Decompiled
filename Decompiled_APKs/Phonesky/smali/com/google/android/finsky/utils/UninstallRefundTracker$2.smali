.class Lcom/google/android/finsky/utils/UninstallRefundTracker$2;
.super Ljava/lang/Object;
.source "UninstallRefundTracker.java"

# interfaces
.implements Lcom/google/android/finsky/utils/AppSupport$RefundListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/utils/UninstallRefundTracker;->refundIfNecessary(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/utils/UninstallRefundTracker;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/utils/UninstallRefundTracker;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/google/android/finsky/utils/UninstallRefundTracker$2;->this$0:Lcom/google/android/finsky/utils/UninstallRefundTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefundComplete(Lcom/google/android/finsky/utils/AppSupport$RefundResult;Ljava/lang/String;)V
    .locals 4
    .parameter "result"
    .parameter "packageName"

    .prologue
    .line 80
    sget-object v1, Lcom/google/android/finsky/utils/UninstallRefundTracker$3;->$SwitchMap$com$google$android$finsky$utils$AppSupport$RefundResult:[I

    invoke-virtual {p1}, Lcom/google/android/finsky/utils/AppSupport$RefundResult;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 93
    const-string v1, "Refund failed for %s: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    :goto_0
    return-void

    .line 83
    :pswitch_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 84
    .local v0, handler:Landroid/os/Handler;
    new-instance v1, Lcom/google/android/finsky/utils/UninstallRefundTracker$2$1;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/utils/UninstallRefundTracker$2$1;-><init>(Lcom/google/android/finsky/utils/UninstallRefundTracker$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 80
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onRefundStart()V
    .locals 0

    .prologue
    .line 76
    return-void
.end method
