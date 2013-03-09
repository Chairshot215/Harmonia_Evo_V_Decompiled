.class Lcom/android/settings/wifi/WpsDialog$2;
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
    .line 166
    iput-object p1, p0, Lcom/android/settings/wifi/WpsDialog$2;->this$0:Lcom/android/settings/wifi/WpsDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog$2;->this$0:Lcom/android/settings/wifi/WpsDialog;

    #calls: Lcom/android/settings/wifi/WpsDialog;->clearThread()V
    invoke-static {v0}, Lcom/android/settings/wifi/WpsDialog;->access$000(Lcom/android/settings/wifi/WpsDialog;)V

    .line 169
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog$2;->this$0:Lcom/android/settings/wifi/WpsDialog;

    #getter for: Lcom/android/settings/wifi/WpsDialog;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/android/settings/wifi/WpsDialog;->access$300(Lcom/android/settings/wifi/WpsDialog;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiManager;->stopWps(Landroid/net/wifi/WifiManager;)V

    .line 170
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog$2;->this$0:Lcom/android/settings/wifi/WpsDialog;

    const/4 v1, 0x1

    #setter for: Lcom/android/settings/wifi/WpsDialog;->mCancel:Z
    invoke-static {v0, v1}, Lcom/android/settings/wifi/WpsDialog;->access$402(Lcom/android/settings/wifi/WpsDialog;Z)Z

    .line 171
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog$2;->this$0:Lcom/android/settings/wifi/WpsDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WpsDialog;->finish()V

    .line 173
    return-void
.end method
