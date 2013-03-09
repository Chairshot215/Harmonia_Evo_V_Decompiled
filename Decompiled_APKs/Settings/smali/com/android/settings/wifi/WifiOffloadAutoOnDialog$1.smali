.class Lcom/android/settings/wifi/WifiOffloadAutoOnDialog$1;
.super Ljava/lang/Object;
.source "WifiOffloadAutoOnDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiOffloadAutoOnDialog;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiOffloadAutoOnDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiOffloadAutoOnDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/settings/wifi/WifiOffloadAutoOnDialog$1;->this$0:Lcom/android/settings/wifi/WifiOffloadAutoOnDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    const/4 v2, 0x1

    .line 96
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 113
    :goto_0
    return-void

    .line 98
    :sswitch_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiOffloadAutoOnDialog$1;->this$0:Lcom/android/settings/wifi/WifiOffloadAutoOnDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiOffloadAutoOnDialog;->finish()V

    goto :goto_0

    .line 101
    :sswitch_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiOffloadAutoOnDialog$1;->this$0:Lcom/android/settings/wifi/WifiOffloadAutoOnDialog;

    #getter for: Lcom/android/settings/wifi/WifiOffloadAutoOnDialog;->mWifiOffloadManager:Lcom/android/settings/wifi/WifiOffloadManager;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiOffloadAutoOnDialog;->access$000(Lcom/android/settings/wifi/WifiOffloadAutoOnDialog;)Lcom/android/settings/wifi/WifiOffloadManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/settings/wifi/WifiOffloadManager;->persistAutoConnectToWifi(Z)V

    .line 102
    iget-object v0, p0, Lcom/android/settings/wifi/WifiOffloadAutoOnDialog$1;->this$0:Lcom/android/settings/wifi/WifiOffloadAutoOnDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiOffloadAutoOnDialog;->finish()V

    goto :goto_0

    .line 105
    :sswitch_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiOffloadAutoOnDialog$1;->this$0:Lcom/android/settings/wifi/WifiOffloadAutoOnDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiOffloadAutoOnDialog;->removeDialog(I)V

    .line 106
    iget-object v0, p0, Lcom/android/settings/wifi/WifiOffloadAutoOnDialog$1;->this$0:Lcom/android/settings/wifi/WifiOffloadAutoOnDialog;

    #getter for: Lcom/android/settings/wifi/WifiOffloadAutoOnDialog;->mWifiOffloadManager:Lcom/android/settings/wifi/WifiOffloadManager;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiOffloadAutoOnDialog;->access$000(Lcom/android/settings/wifi/WifiOffloadAutoOnDialog;)Lcom/android/settings/wifi/WifiOffloadManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/settings/wifi/WifiOffloadManager;->persistNeverAutoTurnOn(Z)V

    .line 107
    iget-object v0, p0, Lcom/android/settings/wifi/WifiOffloadAutoOnDialog$1;->this$0:Lcom/android/settings/wifi/WifiOffloadAutoOnDialog;

    #setter for: Lcom/android/settings/wifi/WifiOffloadAutoOnDialog;->mTurnOffWifi:Z
    invoke-static {v0, v2}, Lcom/android/settings/wifi/WifiOffloadAutoOnDialog;->access$102(Lcom/android/settings/wifi/WifiOffloadAutoOnDialog;Z)Z

    .line 108
    iget-object v0, p0, Lcom/android/settings/wifi/WifiOffloadAutoOnDialog$1;->this$0:Lcom/android/settings/wifi/WifiOffloadAutoOnDialog;

    invoke-virtual {v0, v2}, Lcom/android/settings/wifi/WifiOffloadAutoOnDialog;->showDialog(I)V

    goto :goto_0

    .line 96
    :sswitch_data_0
    .sparse-switch
        0x7f080188 -> :sswitch_0
        0x7f080207 -> :sswitch_1
        0x7f080208 -> :sswitch_2
    .end sparse-switch
.end method
