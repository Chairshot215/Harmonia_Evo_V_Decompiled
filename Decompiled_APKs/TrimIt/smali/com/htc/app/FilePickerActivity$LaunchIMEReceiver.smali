.class Lcom/htc/app/FilePickerActivity$LaunchIMEReceiver;
.super Landroid/os/ResultReceiver;
.source "FilePickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/app/FilePickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LaunchIMEReceiver"
.end annotation


# instance fields
.field private mRetryCount:I

.field final synthetic this$0:Lcom/htc/app/FilePickerActivity;


# direct methods
.method constructor <init>(Lcom/htc/app/FilePickerActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 1755
    iput-object p1, p0, Lcom/htc/app/FilePickerActivity$LaunchIMEReceiver;->this$0:Lcom/htc/app/FilePickerActivity;

    .line 1756
    invoke-virtual {p1}, Lcom/htc/app/FilePickerActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    .line 1757
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/app/FilePickerActivity$LaunchIMEReceiver;->mRetryCount:I

    .line 1758
    return-void
.end method

.method static synthetic access$3808(Lcom/htc/app/FilePickerActivity$LaunchIMEReceiver;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 1752
    iget v0, p0, Lcom/htc/app/FilePickerActivity$LaunchIMEReceiver;->mRetryCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/htc/app/FilePickerActivity$LaunchIMEReceiver;->mRetryCount:I

    return v0
.end method

.method private reLaunchIME()V
    .locals 4

    .prologue
    .line 1762
    iget-object v0, p0, Lcom/htc/app/FilePickerActivity$LaunchIMEReceiver;->this$0:Lcom/htc/app/FilePickerActivity;

    #getter for: Lcom/htc/app/FilePickerActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/app/FilePickerActivity;->access$3900(Lcom/htc/app/FilePickerActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/htc/app/FilePickerActivity$LaunchIMEReceiver$1;

    invoke-direct {v1, p0}, Lcom/htc/app/FilePickerActivity$LaunchIMEReceiver$1;-><init>(Lcom/htc/app/FilePickerActivity$LaunchIMEReceiver;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1777
    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 2
    .parameter "resultCode"
    .parameter "resultData"

    .prologue
    .line 1780
    packed-switch p1, :pswitch_data_0

    .line 1795
    :goto_0
    return-void

    .line 1783
    :pswitch_0
    iget v0, p0, Lcom/htc/app/FilePickerActivity$LaunchIMEReceiver;->mRetryCount:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 1784
    invoke-direct {p0}, Lcom/htc/app/FilePickerActivity$LaunchIMEReceiver;->reLaunchIME()V

    goto :goto_0

    .line 1786
    :cond_0
    const-string v0, "michael"

    const-string v1, "retry launch IME over 5 times, give up..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1792
    :pswitch_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/app/FilePickerActivity$LaunchIMEReceiver;->mRetryCount:I

    goto :goto_0

    .line 1780
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
