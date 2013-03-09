.class Lcom/htc/android/htcime/tools/Calibration$1$1;
.super Ljava/lang/Object;
.source "Calibration.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/htcime/tools/Calibration$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/android/htcime/tools/Calibration$1;


# direct methods
.method constructor <init>(Lcom/htc/android/htcime/tools/Calibration$1;)V
    .locals 0
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/htc/android/htcime/tools/Calibration$1$1;->this$1:Lcom/htc/android/htcime/tools/Calibration$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/htc/android/htcime/tools/Calibration$1$1;->this$1:Lcom/htc/android/htcime/tools/Calibration$1;

    iget-object v0, v0, Lcom/htc/android/htcime/tools/Calibration$1;->this$0:Lcom/htc/android/htcime/tools/Calibration;

    iget-object v0, v0, Lcom/htc/android/htcime/tools/Calibration;->waitDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/htcime/tools/Calibration$1$1;->this$1:Lcom/htc/android/htcime/tools/Calibration$1;

    iget-object v0, v0, Lcom/htc/android/htcime/tools/Calibration$1;->this$0:Lcom/htc/android/htcime/tools/Calibration;

    iget-object v0, v0, Lcom/htc/android/htcime/tools/Calibration;->waitDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/htcime/tools/Calibration$1$1;->this$1:Lcom/htc/android/htcime/tools/Calibration$1;

    iget-object v0, v0, Lcom/htc/android/htcime/tools/Calibration$1;->this$0:Lcom/htc/android/htcime/tools/Calibration;

    iget-object v0, v0, Lcom/htc/android/htcime/tools/Calibration;->waitDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 98
    :cond_0
    return-void
.end method
