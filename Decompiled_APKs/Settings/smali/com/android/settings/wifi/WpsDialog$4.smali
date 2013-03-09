.class Lcom/android/settings/wifi/WpsDialog$4;
.super Ljava/lang/Object;
.source "WpsDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WpsDialog;->onCreateDialog(I)Landroid/app/Dialog;
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
    .line 219
    iput-object p1, p0, Lcom/android/settings/wifi/WpsDialog$4;->this$0:Lcom/android/settings/wifi/WpsDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 221
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 222
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog$4;->this$0:Lcom/android/settings/wifi/WpsDialog;

    #getter for: Lcom/android/settings/wifi/WpsDialog;->mDialogType:I
    invoke-static {v0}, Lcom/android/settings/wifi/WpsDialog;->access$500(Lcom/android/settings/wifi/WpsDialog;)I

    move-result v0

    if-nez v0, :cond_2

    .line 224
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog$4;->this$0:Lcom/android/settings/wifi/WpsDialog;

    #getter for: Lcom/android/settings/wifi/WpsDialog;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/android/settings/wifi/WpsDialog;->access$300(Lcom/android/settings/wifi/WpsDialog;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog$4;->this$0:Lcom/android/settings/wifi/WpsDialog;

    #getter for: Lcom/android/settings/wifi/WpsDialog;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/android/settings/wifi/WpsDialog;->access$300(Lcom/android/settings/wifi/WpsDialog;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiManager;->setWpsPbcMode(Landroid/net/wifi/WifiManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    const-string v0, "WpsDialog"

    const-string v1, "setWpsPbcMode failed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog$4;->this$0:Lcom/android/settings/wifi/WpsDialog;

    invoke-virtual {v0, v2}, Lcom/android/settings/wifi/WpsDialog;->showDialog(I)V

    .line 231
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog$4;->this$0:Lcom/android/settings/wifi/WpsDialog;

    #setter for: Lcom/android/settings/wifi/WpsDialog;->mDialogType:I
    invoke-static {v0, v2}, Lcom/android/settings/wifi/WpsDialog;->access$502(Lcom/android/settings/wifi/WpsDialog;I)I

    .line 232
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog$4;->this$0:Lcom/android/settings/wifi/WpsDialog;

    #getter for: Lcom/android/settings/wifi/WpsDialog;->mThread:Ljava/lang/Thread;
    invoke-static {v0}, Lcom/android/settings/wifi/WpsDialog;->access$600(Lcom/android/settings/wifi/WpsDialog;)Ljava/lang/Thread;

    move-result-object v0

    if-nez v0, :cond_1

    .line 233
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog$4;->this$0:Lcom/android/settings/wifi/WpsDialog;

    new-instance v1, Lcom/android/settings/wifi/WpsDialog$Count;

    iget-object v2, p0, Lcom/android/settings/wifi/WpsDialog$4;->this$0:Lcom/android/settings/wifi/WpsDialog;

    iget-object v3, p0, Lcom/android/settings/wifi/WpsDialog$4;->this$0:Lcom/android/settings/wifi/WpsDialog;

    iget-object v3, v3, Lcom/android/settings/wifi/WpsDialog;->handler:Landroid/os/Handler;

    invoke-direct {v1, v2, v3}, Lcom/android/settings/wifi/WpsDialog$Count;-><init>(Lcom/android/settings/wifi/WpsDialog;Landroid/os/Handler;)V

    #setter for: Lcom/android/settings/wifi/WpsDialog;->mThread:Ljava/lang/Thread;
    invoke-static {v0, v1}, Lcom/android/settings/wifi/WpsDialog;->access$602(Lcom/android/settings/wifi/WpsDialog;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 234
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog$4;->this$0:Lcom/android/settings/wifi/WpsDialog;

    #getter for: Lcom/android/settings/wifi/WpsDialog;->mThread:Ljava/lang/Thread;
    invoke-static {v0}, Lcom/android/settings/wifi/WpsDialog;->access$600(Lcom/android/settings/wifi/WpsDialog;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 245
    :cond_1
    :goto_0
    return-void

    .line 237
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog$4;->this$0:Lcom/android/settings/wifi/WpsDialog;

    #getter for: Lcom/android/settings/wifi/WpsDialog;->mDialogType:I
    invoke-static {v0}, Lcom/android/settings/wifi/WpsDialog;->access$500(Lcom/android/settings/wifi/WpsDialog;)I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 238
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog$4;->this$0:Lcom/android/settings/wifi/WpsDialog;

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WpsDialog;->showDialog(I)V

    .line 239
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog$4;->this$0:Lcom/android/settings/wifi/WpsDialog;

    #setter for: Lcom/android/settings/wifi/WpsDialog;->mDialogType:I
    invoke-static {v0, v1}, Lcom/android/settings/wifi/WpsDialog;->access$502(Lcom/android/settings/wifi/WpsDialog;I)I

    .line 240
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog$4;->this$0:Lcom/android/settings/wifi/WpsDialog;

    #getter for: Lcom/android/settings/wifi/WpsDialog;->mThread:Ljava/lang/Thread;
    invoke-static {v0}, Lcom/android/settings/wifi/WpsDialog;->access$600(Lcom/android/settings/wifi/WpsDialog;)Ljava/lang/Thread;

    move-result-object v0

    if-nez v0, :cond_1

    .line 241
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog$4;->this$0:Lcom/android/settings/wifi/WpsDialog;

    new-instance v1, Lcom/android/settings/wifi/WpsDialog$Count;

    iget-object v2, p0, Lcom/android/settings/wifi/WpsDialog$4;->this$0:Lcom/android/settings/wifi/WpsDialog;

    iget-object v3, p0, Lcom/android/settings/wifi/WpsDialog$4;->this$0:Lcom/android/settings/wifi/WpsDialog;

    iget-object v3, v3, Lcom/android/settings/wifi/WpsDialog;->handler:Landroid/os/Handler;

    invoke-direct {v1, v2, v3}, Lcom/android/settings/wifi/WpsDialog$Count;-><init>(Lcom/android/settings/wifi/WpsDialog;Landroid/os/Handler;)V

    #setter for: Lcom/android/settings/wifi/WpsDialog;->mThread:Ljava/lang/Thread;
    invoke-static {v0, v1}, Lcom/android/settings/wifi/WpsDialog;->access$602(Lcom/android/settings/wifi/WpsDialog;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 242
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog$4;->this$0:Lcom/android/settings/wifi/WpsDialog;

    #getter for: Lcom/android/settings/wifi/WpsDialog;->mThread:Ljava/lang/Thread;
    invoke-static {v0}, Lcom/android/settings/wifi/WpsDialog;->access$600(Lcom/android/settings/wifi/WpsDialog;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
