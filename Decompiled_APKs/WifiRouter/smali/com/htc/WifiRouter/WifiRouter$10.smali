.class Lcom/htc/WifiRouter/WifiRouter$10;
.super Ljava/lang/Object;
.source "WifiRouter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/WifiRouter/WifiRouter;->showRemindDialog()V
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
    .line 685
    iput-object p1, p0, Lcom/htc/WifiRouter/WifiRouter$10;->this$0:Lcom/htc/WifiRouter/WifiRouter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 687
    iget-object v1, p0, Lcom/htc/WifiRouter/WifiRouter$10;->this$0:Lcom/htc/WifiRouter/WifiRouter;

    #getter for: Lcom/htc/WifiRouter/WifiRouter;->mDontRemind:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/htc/WifiRouter/WifiRouter;->access$2800(Lcom/htc/WifiRouter/WifiRouter;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 688
    iget-object v1, p0, Lcom/htc/WifiRouter/WifiRouter$10;->this$0:Lcom/htc/WifiRouter/WifiRouter;

    #getter for: Lcom/htc/WifiRouter/WifiRouter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/htc/WifiRouter/WifiRouter;->access$500(Lcom/htc/WifiRouter/WifiRouter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "hotspot_remind_dialog"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 692
    :goto_0
    iget-object v1, p0, Lcom/htc/WifiRouter/WifiRouter$10;->this$0:Lcom/htc/WifiRouter/WifiRouter;

    #getter for: Lcom/htc/WifiRouter/WifiRouter;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/htc/WifiRouter/WifiRouter;->access$2500(Lcom/htc/WifiRouter/WifiRouter;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 693
    iget-object v1, p0, Lcom/htc/WifiRouter/WifiRouter$10;->this$0:Lcom/htc/WifiRouter/WifiRouter;

    #getter for: Lcom/htc/WifiRouter/WifiRouter;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/htc/WifiRouter/WifiRouter;->access$2500(Lcom/htc/WifiRouter/WifiRouter;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    .line 694
    .local v0, currentstate:I
    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    .line 695
    iget-object v1, p0, Lcom/htc/WifiRouter/WifiRouter$10;->this$0:Lcom/htc/WifiRouter/WifiRouter;

    #calls: Lcom/htc/WifiRouter/WifiRouter;->switchHotspotOnOff()V
    invoke-static {v1}, Lcom/htc/WifiRouter/WifiRouter;->access$2400(Lcom/htc/WifiRouter/WifiRouter;)V

    .line 698
    .end local v0           #currentstate:I
    :cond_0
    return-void

    .line 690
    :cond_1
    iget-object v1, p0, Lcom/htc/WifiRouter/WifiRouter$10;->this$0:Lcom/htc/WifiRouter/WifiRouter;

    #getter for: Lcom/htc/WifiRouter/WifiRouter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/htc/WifiRouter/WifiRouter;->access$500(Lcom/htc/WifiRouter/WifiRouter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "hotspot_remind_dialog"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method
