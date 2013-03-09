.class Lcom/htc/htcsettingwidgets/HotspotWidget$4;
.super Ljava/lang/Object;
.source "HotspotWidget.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/htcsettingwidgets/HotspotWidget;->doShowRemindDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/htcsettingwidgets/HotspotWidget;

.field final synthetic val$ct:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/htc/htcsettingwidgets/HotspotWidget;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 282
    iput-object p1, p0, Lcom/htc/htcsettingwidgets/HotspotWidget$4;->this$0:Lcom/htc/htcsettingwidgets/HotspotWidget;

    iput-object p2, p0, Lcom/htc/htcsettingwidgets/HotspotWidget$4;->val$ct:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 285
    iget-object v1, p0, Lcom/htc/htcsettingwidgets/HotspotWidget$4;->this$0:Lcom/htc/htcsettingwidgets/HotspotWidget;

    #getter for: Lcom/htc/htcsettingwidgets/HotspotWidget;->mDontRemind:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/htc/htcsettingwidgets/HotspotWidget;->access$700(Lcom/htc/htcsettingwidgets/HotspotWidget;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 286
    iget-object v1, p0, Lcom/htc/htcsettingwidgets/HotspotWidget$4;->val$ct:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "hotspot_remind_dialog"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 290
    :goto_0
    iget-object v1, p0, Lcom/htc/htcsettingwidgets/HotspotWidget$4;->this$0:Lcom/htc/htcsettingwidgets/HotspotWidget;

    #getter for: Lcom/htc/htcsettingwidgets/HotspotWidget;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/htc/htcsettingwidgets/HotspotWidget;->access$800(Lcom/htc/htcsettingwidgets/HotspotWidget;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 291
    iget-object v1, p0, Lcom/htc/htcsettingwidgets/HotspotWidget$4;->this$0:Lcom/htc/htcsettingwidgets/HotspotWidget;

    #getter for: Lcom/htc/htcsettingwidgets/HotspotWidget;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/htc/htcsettingwidgets/HotspotWidget;->access$800(Lcom/htc/htcsettingwidgets/HotspotWidget;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    .line 292
    .local v0, iCurrentState:I
    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    .line 293
    iget-object v1, p0, Lcom/htc/htcsettingwidgets/HotspotWidget$4;->this$0:Lcom/htc/htcsettingwidgets/HotspotWidget;

    #calls: Lcom/htc/htcsettingwidgets/HotspotWidget;->setHotspotState()V
    invoke-static {v1}, Lcom/htc/htcsettingwidgets/HotspotWidget;->access$500(Lcom/htc/htcsettingwidgets/HotspotWidget;)V

    .line 296
    .end local v0           #iCurrentState:I
    :cond_0
    return-void

    .line 288
    :cond_1
    iget-object v1, p0, Lcom/htc/htcsettingwidgets/HotspotWidget$4;->val$ct:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "hotspot_remind_dialog"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method
