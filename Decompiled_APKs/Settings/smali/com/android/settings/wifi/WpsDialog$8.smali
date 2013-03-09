.class Lcom/android/settings/wifi/WpsDialog$8;
.super Landroid/os/Handler;
.source "WpsDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WpsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WpsDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WpsDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 351
    iput-object p1, p0, Lcom/android/settings/wifi/WpsDialog$8;->this$0:Lcom/android/settings/wifi/WpsDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 355
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 357
    .local v0, total:I
    const/16 v1, 0x77

    if-lt v0, v1, :cond_2

    .line 359
    iget-object v1, p0, Lcom/android/settings/wifi/WpsDialog$8;->this$0:Lcom/android/settings/wifi/WpsDialog;

    #calls: Lcom/android/settings/wifi/WpsDialog;->clearThread()V
    invoke-static {v1}, Lcom/android/settings/wifi/WpsDialog;->access$000(Lcom/android/settings/wifi/WpsDialog;)V

    .line 361
    iget-object v1, p0, Lcom/android/settings/wifi/WpsDialog$8;->this$0:Lcom/android/settings/wifi/WpsDialog;

    #getter for: Lcom/android/settings/wifi/WpsDialog;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/android/settings/wifi/WpsDialog;->access$300(Lcom/android/settings/wifi/WpsDialog;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/WpsDialog$8;->this$0:Lcom/android/settings/wifi/WpsDialog;

    #getter for: Lcom/android/settings/wifi/WpsDialog;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/android/settings/wifi/WpsDialog;->access$300(Lcom/android/settings/wifi/WpsDialog;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiManager;->stopWps(Landroid/net/wifi/WifiManager;)V

    .line 364
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/WpsDialog$8;->this$0:Lcom/android/settings/wifi/WpsDialog;

    #getter for: Lcom/android/settings/wifi/WpsDialog;->mDialogType:I
    invoke-static {v1}, Lcom/android/settings/wifi/WpsDialog;->access$500(Lcom/android/settings/wifi/WpsDialog;)I

    move-result v1

    if-ltz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/wifi/WpsDialog$8;->this$0:Lcom/android/settings/wifi/WpsDialog;

    iget-object v2, p0, Lcom/android/settings/wifi/WpsDialog$8;->this$0:Lcom/android/settings/wifi/WpsDialog;

    #getter for: Lcom/android/settings/wifi/WpsDialog;->mDialogType:I
    invoke-static {v2}, Lcom/android/settings/wifi/WpsDialog;->access$500(Lcom/android/settings/wifi/WpsDialog;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/wifi/WpsDialog;->removeDialog(I)V

    .line 366
    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/WpsDialog$8;->this$0:Lcom/android/settings/wifi/WpsDialog;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/settings/wifi/WpsDialog;->showDialog(I)V

    .line 368
    :cond_2
    return-void
.end method
