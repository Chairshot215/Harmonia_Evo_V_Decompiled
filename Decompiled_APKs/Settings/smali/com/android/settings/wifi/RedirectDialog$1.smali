.class Lcom/android/settings/wifi/RedirectDialog$1;
.super Ljava/lang/Object;
.source "RedirectDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/RedirectDialog;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/RedirectDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/RedirectDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/settings/wifi/RedirectDialog$1;->this$0:Lcom/android/settings/wifi/RedirectDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 69
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.wifi.forgetNetwork"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 70
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings/wifi/RedirectDialog$1;->this$0:Lcom/android/settings/wifi/RedirectDialog;

    #getter for: Lcom/android/settings/wifi/RedirectDialog;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/android/settings/wifi/RedirectDialog;->access$100(Lcom/android/settings/wifi/RedirectDialog;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/RedirectDialog$1;->this$0:Lcom/android/settings/wifi/RedirectDialog;

    new-instance v3, Lcom/android/settings/wifi/RedirectDialog$WifiServiceHandler;

    iget-object v4, p0, Lcom/android/settings/wifi/RedirectDialog$1;->this$0:Lcom/android/settings/wifi/RedirectDialog;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/android/settings/wifi/RedirectDialog$WifiServiceHandler;-><init>(Lcom/android/settings/wifi/RedirectDialog;Lcom/android/settings/wifi/RedirectDialog$1;)V

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiManager;->asyncConnect(Landroid/content/Context;Landroid/os/Handler;)V

    .line 71
    iget-object v1, p0, Lcom/android/settings/wifi/RedirectDialog$1;->this$0:Lcom/android/settings/wifi/RedirectDialog;

    #getter for: Lcom/android/settings/wifi/RedirectDialog;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/android/settings/wifi/RedirectDialog;->access$100(Lcom/android/settings/wifi/RedirectDialog;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/RedirectDialog$1;->this$0:Lcom/android/settings/wifi/RedirectDialog;

    #getter for: Lcom/android/settings/wifi/RedirectDialog;->mNetworkId:I
    invoke-static {v2}, Lcom/android/settings/wifi/RedirectDialog;->access$200(Lcom/android/settings/wifi/RedirectDialog;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->forgetNetwork(I)V

    .line 73
    iget-object v1, p0, Lcom/android/settings/wifi/RedirectDialog$1;->this$0:Lcom/android/settings/wifi/RedirectDialog;

    invoke-virtual {v1}, Lcom/android/settings/wifi/RedirectDialog;->finish()V

    .line 74
    return-void
.end method
