.class Lcom/android/settings/wifi/WifiApEnabler$9;
.super Ljava/lang/Object;
.source "WifiApEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiApEnabler;->showRemindDialog(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiApEnabler;

.field final synthetic val$enable:Z


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiApEnabler;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 340
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApEnabler$9;->this$0:Lcom/android/settings/wifi/WifiApEnabler;

    iput-boolean p2, p0, Lcom/android/settings/wifi/WifiApEnabler$9;->val$enable:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 343
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler$9;->this$0:Lcom/android/settings/wifi/WifiApEnabler;

    #getter for: Lcom/android/settings/wifi/WifiApEnabler;->mDontRemind:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/android/settings/wifi/WifiApEnabler;->access$800(Lcom/android/settings/wifi/WifiApEnabler;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 344
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler$9;->this$0:Lcom/android/settings/wifi/WifiApEnabler;

    #getter for: Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/wifi/WifiApEnabler;->access$900(Lcom/android/settings/wifi/WifiApEnabler;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "hotspot_remind_dialog"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 348
    :goto_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler$9;->this$0:Lcom/android/settings/wifi/WifiApEnabler;

    #getter for: Lcom/android/settings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/android/settings/wifi/WifiApEnabler;->access$500(Lcom/android/settings/wifi/WifiApEnabler;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 349
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler$9;->this$0:Lcom/android/settings/wifi/WifiApEnabler;

    #getter for: Lcom/android/settings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/android/settings/wifi/WifiApEnabler;->access$500(Lcom/android/settings/wifi/WifiApEnabler;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    .line 350
    .local v0, currentstate:I
    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    .line 351
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler$9;->this$0:Lcom/android/settings/wifi/WifiApEnabler;

    iget-boolean v2, p0, Lcom/android/settings/wifi/WifiApEnabler$9;->val$enable:Z

    #calls: Lcom/android/settings/wifi/WifiApEnabler;->setWifiAPEnable(Z)V
    invoke-static {v1, v2}, Lcom/android/settings/wifi/WifiApEnabler;->access$600(Lcom/android/settings/wifi/WifiApEnabler;Z)V

    .line 354
    .end local v0           #currentstate:I
    :cond_0
    return-void

    .line 346
    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler$9;->this$0:Lcom/android/settings/wifi/WifiApEnabler;

    #getter for: Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/wifi/WifiApEnabler;->access$900(Lcom/android/settings/wifi/WifiApEnabler;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "hotspot_remind_dialog"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method
