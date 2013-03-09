.class Lcom/htc/android/psclient/UsbConnectedReceiver$2;
.super Ljava/util/TimerTask;
.source "UsbConnectedReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/psclient/UsbConnectedReceiver;->launchUSBUI(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;


# direct methods
.method constructor <init>(Lcom/htc/android/psclient/UsbConnectedReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 428
    iput-object p1, p0, Lcom/htc/android/psclient/UsbConnectedReceiver$2;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 430
    iget-object v0, p0, Lcom/htc/android/psclient/UsbConnectedReceiver$2;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    iget-object v1, p0, Lcom/htc/android/psclient/UsbConnectedReceiver$2;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$700(Lcom/htc/android/psclient/UsbConnectedReceiver;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "INTENT_CLOSE_BY_TIMEOUT"

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/psclient/UsbConnectedReceiver;->closeUSBUI(Landroid/content/Context;Ljava/lang/String;)V

    .line 431
    return-void
.end method
