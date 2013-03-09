.class Lcom/htc/dlnamediaserver/WifiHelp$1;
.super Ljava/lang/Object;
.source "WifiHelp.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/dlnamediaserver/WifiHelp;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/dlnamediaserver/WifiHelp;


# direct methods
.method constructor <init>(Lcom/htc/dlnamediaserver/WifiHelp;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/htc/dlnamediaserver/WifiHelp$1;->this$0:Lcom/htc/dlnamediaserver/WifiHelp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/htc/dlnamediaserver/WifiHelp$1;->this$0:Lcom/htc/dlnamediaserver/WifiHelp;

    #calls: Lcom/htc/dlnamediaserver/WifiHelp;->CloseIfWifiUP()Z
    invoke-static {v0}, Lcom/htc/dlnamediaserver/WifiHelp;->access$000(Lcom/htc/dlnamediaserver/WifiHelp;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/htc/dlnamediaserver/WifiHelp$1;->this$0:Lcom/htc/dlnamediaserver/WifiHelp;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.WIRELESS_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/htc/dlnamediaserver/WifiHelp;->startActivity(Landroid/content/Intent;)V

    .line 46
    :cond_0
    return-void
.end method
