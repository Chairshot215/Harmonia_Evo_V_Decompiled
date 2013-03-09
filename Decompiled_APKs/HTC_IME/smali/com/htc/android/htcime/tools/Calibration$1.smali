.class Lcom/htc/android/htcime/tools/Calibration$1;
.super Landroid/os/Handler;
.source "Calibration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/htcime/tools/Calibration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/htcime/tools/Calibration;


# direct methods
.method constructor <init>(Lcom/htc/android/htcime/tools/Calibration;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/htc/android/htcime/tools/Calibration$1;->this$0:Lcom/htc/android/htcime/tools/Calibration;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    .line 82
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 102
    :goto_0
    return-void

    .line 84
    :pswitch_0
    iget-object v1, p0, Lcom/htc/android/htcime/tools/Calibration$1;->this$0:Lcom/htc/android/htcime/tools/Calibration;

    iget-object v1, v1, Lcom/htc/android/htcime/tools/Calibration;->waitDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 85
    iget-object v1, p0, Lcom/htc/android/htcime/tools/Calibration$1;->this$0:Lcom/htc/android/htcime/tools/Calibration;

    iget-object v1, v1, Lcom/htc/android/htcime/tools/Calibration;->waitDialog:Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/htc/android/htcime/tools/Calibration$1;->this$0:Lcom/htc/android/htcime/tools/Calibration;

    invoke-virtual {v2}, Lcom/htc/android/htcime/tools/Calibration;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0902d1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v1, p0, Lcom/htc/android/htcime/tools/Calibration$1;->this$0:Lcom/htc/android/htcime/tools/Calibration;

    iget-object v1, v1, Lcom/htc/android/htcime/tools/Calibration;->waitDialog:Landroid/app/ProgressDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 87
    iget-object v1, p0, Lcom/htc/android/htcime/tools/Calibration$1;->this$0:Lcom/htc/android/htcime/tools/Calibration;

    iget-object v1, v1, Lcom/htc/android/htcime/tools/Calibration;->waitDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    goto :goto_0

    .line 90
    :pswitch_1
    iget-object v1, p0, Lcom/htc/android/htcime/tools/Calibration$1;->this$0:Lcom/htc/android/htcime/tools/Calibration;

    iget-object v1, v1, Lcom/htc/android/htcime/tools/Calibration;->waitDialog:Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/htc/android/htcime/tools/Calibration$1;->this$0:Lcom/htc/android/htcime/tools/Calibration;

    iget-object v2, v2, Lcom/htc/android/htcime/tools/Calibration;->waitDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->getMax()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 91
    iget-object v1, p0, Lcom/htc/android/htcime/tools/Calibration$1;->this$0:Lcom/htc/android/htcime/tools/Calibration;

    iget-object v1, v1, Lcom/htc/android/htcime/tools/Calibration;->waitDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 92
    iget-object v1, p0, Lcom/htc/android/htcime/tools/Calibration$1;->this$0:Lcom/htc/android/htcime/tools/Calibration;

    iget-object v1, v1, Lcom/htc/android/htcime/tools/Calibration;->waitDialog:Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/htc/android/htcime/tools/Calibration$1;->this$0:Lcom/htc/android/htcime/tools/Calibration;

    invoke-virtual {v2}, Lcom/htc/android/htcime/tools/Calibration;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0902d2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 94
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 95
    .local v0, h:Landroid/os/Handler;
    new-instance v1, Lcom/htc/android/htcime/tools/Calibration$1$1;

    invoke-direct {v1, p0}, Lcom/htc/android/htcime/tools/Calibration$1$1;-><init>(Lcom/htc/android/htcime/tools/Calibration$1;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 82
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
