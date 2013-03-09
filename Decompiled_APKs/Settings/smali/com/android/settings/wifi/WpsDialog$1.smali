.class Lcom/android/settings/wifi/WpsDialog$1;
.super Landroid/content/BroadcastReceiver;
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
    .line 65
    iput-object p1, p0, Lcom/android/settings/wifi/WpsDialog$1;->this$0:Lcom/android/settings/wifi/WpsDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 68
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.net.wifi.WPS_SUCCESS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 70
    iget-object v2, p0, Lcom/android/settings/wifi/WpsDialog$1;->this$0:Lcom/android/settings/wifi/WpsDialog;

    #calls: Lcom/android/settings/wifi/WpsDialog;->clearThread()V
    invoke-static {v2}, Lcom/android/settings/wifi/WpsDialog;->access$000(Lcom/android/settings/wifi/WpsDialog;)V

    .line 71
    iget-object v2, p0, Lcom/android/settings/wifi/WpsDialog$1;->this$0:Lcom/android/settings/wifi/WpsDialog;

    #setter for: Lcom/android/settings/wifi/WpsDialog;->mSuccess:Z
    invoke-static {v2, v4}, Lcom/android/settings/wifi/WpsDialog;->access$102(Lcom/android/settings/wifi/WpsDialog;Z)Z

    .line 73
    iget-object v2, p0, Lcom/android/settings/wifi/WpsDialog$1;->this$0:Lcom/android/settings/wifi/WpsDialog;

    invoke-virtual {v2}, Lcom/android/settings/wifi/WpsDialog;->finish()V

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    const-string v2, "android.net.wifi.ERROR"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 75
    const-string v2, "errorCode"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 76
    .local v1, errorCode:I
    if-ne v1, v4, :cond_0

    .line 77
    iget-object v2, p0, Lcom/android/settings/wifi/WpsDialog$1;->this$0:Lcom/android/settings/wifi/WpsDialog;

    #calls: Lcom/android/settings/wifi/WpsDialog;->clearThread()V
    invoke-static {v2}, Lcom/android/settings/wifi/WpsDialog;->access$000(Lcom/android/settings/wifi/WpsDialog;)V

    .line 78
    iget-object v2, p0, Lcom/android/settings/wifi/WpsDialog$1;->this$0:Lcom/android/settings/wifi/WpsDialog;

    invoke-virtual {v2, v5}, Lcom/android/settings/wifi/WpsDialog;->showDialog(I)V

    goto :goto_0

    .line 80
    .end local v1           #errorCode:I
    :cond_2
    const-string v2, "android.net.wifi.WPS_OVERLAP"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 81
    iget-object v2, p0, Lcom/android/settings/wifi/WpsDialog$1;->this$0:Lcom/android/settings/wifi/WpsDialog;

    #calls: Lcom/android/settings/wifi/WpsDialog;->clearThread()V
    invoke-static {v2}, Lcom/android/settings/wifi/WpsDialog;->access$000(Lcom/android/settings/wifi/WpsDialog;)V

    .line 82
    iget-object v2, p0, Lcom/android/settings/wifi/WpsDialog$1;->this$0:Lcom/android/settings/wifi/WpsDialog;

    invoke-virtual {v2, v5}, Lcom/android/settings/wifi/WpsDialog;->showDialog(I)V

    goto :goto_0
.end method
