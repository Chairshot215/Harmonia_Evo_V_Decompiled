.class Lcom/android/htccontacts/ui/EditStructuredNameActivity$LaunchIMEReceiver;
.super Landroid/os/ResultReceiver;
.source "EditStructuredNameActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ui/EditStructuredNameActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LaunchIMEReceiver"
.end annotation


# instance fields
.field activityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/htccontacts/ui/EditStructuredNameActivity;",
            ">;"
        }
    .end annotation
.end field

.field public retryCount:I


# direct methods
.method constructor <init>(Lcom/android/htccontacts/ui/EditStructuredNameActivity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 610
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    .line 611
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/htccontacts/ui/EditStructuredNameActivity$LaunchIMEReceiver;->activityRef:Ljava/lang/ref/WeakReference;

    .line 612
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/htccontacts/ui/EditStructuredNameActivity$LaunchIMEReceiver;->retryCount:I

    .line 613
    return-void
.end method

.method private relaunchIME()V
    .locals 4

    .prologue
    .line 616
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/htccontacts/ui/EditStructuredNameActivity$LaunchIMEReceiver$1;

    invoke-direct {v1, p0}, Lcom/android/htccontacts/ui/EditStructuredNameActivity$LaunchIMEReceiver$1;-><init>(Lcom/android/htccontacts/ui/EditStructuredNameActivity$LaunchIMEReceiver;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 635
    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 2
    .parameter "resultCode"
    .parameter "resultData"

    .prologue
    .line 638
    packed-switch p1, :pswitch_data_0

    .line 651
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 641
    :pswitch_1
    iget v0, p0, Lcom/android/htccontacts/ui/EditStructuredNameActivity$LaunchIMEReceiver;->retryCount:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 643
    invoke-direct {p0}, Lcom/android/htccontacts/ui/EditStructuredNameActivity$LaunchIMEReceiver;->relaunchIME()V

    goto :goto_0

    .line 638
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
