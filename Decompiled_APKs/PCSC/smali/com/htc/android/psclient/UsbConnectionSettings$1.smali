.class Lcom/htc/android/psclient/UsbConnectionSettings$1;
.super Ljava/lang/Thread;
.source "UsbConnectionSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/psclient/UsbConnectionSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/psclient/UsbConnectionSettings;


# direct methods
.method constructor <init>(Lcom/htc/android/psclient/UsbConnectionSettings;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 128
    iput-object p1, p0, Lcom/htc/android/psclient/UsbConnectionSettings$1;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/htc/android/psclient/UsbConnectionSettings$1;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    #getter for: Lcom/htc/android/psclient/UsbConnectionSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/android/psclient/UsbConnectionSettings;->access$1200(Lcom/htc/android/psclient/UsbConnectionSettings;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/htc/android/psclient/UsbConnectionSettings$1$1;

    invoke-direct {v1, p0}, Lcom/htc/android/psclient/UsbConnectionSettings$1$1;-><init>(Lcom/htc/android/psclient/UsbConnectionSettings$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 376
    return-void
.end method
