.class Lcom/htc/android/psclient/SwitchUsbSettings$1;
.super Ljava/lang/Thread;
.source "SwitchUsbSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/psclient/SwitchUsbSettings;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/psclient/SwitchUsbSettings;


# direct methods
.method constructor <init>(Lcom/htc/android/psclient/SwitchUsbSettings;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 128
    iput-object p1, p0, Lcom/htc/android/psclient/SwitchUsbSettings$1;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/htc/android/psclient/SwitchUsbSettings$1;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    #getter for: Lcom/htc/android/psclient/SwitchUsbSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/android/psclient/SwitchUsbSettings;->access$1100(Lcom/htc/android/psclient/SwitchUsbSettings;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/htc/android/psclient/SwitchUsbSettings$1$1;

    invoke-direct {v1, p0}, Lcom/htc/android/psclient/SwitchUsbSettings$1$1;-><init>(Lcom/htc/android/psclient/SwitchUsbSettings$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 314
    return-void
.end method
