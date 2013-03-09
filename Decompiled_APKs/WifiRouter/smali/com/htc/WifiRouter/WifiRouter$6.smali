.class Lcom/htc/WifiRouter/WifiRouter$6;
.super Ljava/lang/Object;
.source "WifiRouter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/WifiRouter/WifiRouter;->showMLDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/WifiRouter/WifiRouter;


# direct methods
.method constructor <init>(Lcom/htc/WifiRouter/WifiRouter;)V
    .locals 0
    .parameter

    .prologue
    .line 648
    iput-object p1, p0, Lcom/htc/WifiRouter/WifiRouter$6;->this$0:Lcom/htc/WifiRouter/WifiRouter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 650
    iget-object v1, p0, Lcom/htc/WifiRouter/WifiRouter$6;->this$0:Lcom/htc/WifiRouter/WifiRouter;

    #getter for: Lcom/htc/WifiRouter/WifiRouter;->remindDialog:I
    invoke-static {v1}, Lcom/htc/WifiRouter/WifiRouter;->access$2200(Lcom/htc/WifiRouter/WifiRouter;)I

    move-result v1

    if-nez v1, :cond_1

    .line 651
    iget-object v1, p0, Lcom/htc/WifiRouter/WifiRouter$6;->this$0:Lcom/htc/WifiRouter/WifiRouter;

    #calls: Lcom/htc/WifiRouter/WifiRouter;->showRemindDialog()V
    invoke-static {v1}, Lcom/htc/WifiRouter/WifiRouter;->access$2000(Lcom/htc/WifiRouter/WifiRouter;)V

    .line 660
    :cond_0
    :goto_0
    return-void

    .line 653
    :cond_1
    iget-object v1, p0, Lcom/htc/WifiRouter/WifiRouter$6;->this$0:Lcom/htc/WifiRouter/WifiRouter;

    #getter for: Lcom/htc/WifiRouter/WifiRouter;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/htc/WifiRouter/WifiRouter;->access$2500(Lcom/htc/WifiRouter/WifiRouter;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 654
    iget-object v1, p0, Lcom/htc/WifiRouter/WifiRouter$6;->this$0:Lcom/htc/WifiRouter/WifiRouter;

    #getter for: Lcom/htc/WifiRouter/WifiRouter;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/htc/WifiRouter/WifiRouter;->access$2500(Lcom/htc/WifiRouter/WifiRouter;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    .line 655
    .local v0, currentstate:I
    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    .line 656
    iget-object v1, p0, Lcom/htc/WifiRouter/WifiRouter$6;->this$0:Lcom/htc/WifiRouter/WifiRouter;

    #calls: Lcom/htc/WifiRouter/WifiRouter;->switchHotspotOnOff()V
    invoke-static {v1}, Lcom/htc/WifiRouter/WifiRouter;->access$2400(Lcom/htc/WifiRouter/WifiRouter;)V

    goto :goto_0
.end method
