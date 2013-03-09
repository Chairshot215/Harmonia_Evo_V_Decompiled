.class Lcom/htc/lockscreen/app/util/OOBEMonitor$OOBESettingObserver;
.super Landroid/database/ContentObserver;
.source "OOBEMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/lockscreen/app/util/OOBEMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OOBESettingObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/lockscreen/app/util/OOBEMonitor;


# direct methods
.method public constructor <init>(Lcom/htc/lockscreen/app/util/OOBEMonitor;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/htc/lockscreen/app/util/OOBEMonitor$OOBESettingObserver;->this$0:Lcom/htc/lockscreen/app/util/OOBEMonitor;

    .line 75
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 77
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .parameter "selfChange"

    .prologue
    const/4 v1, 0x0

    .line 81
    const-string v2, "OOBEMonitor"

    const-string v3, "onChange"

    invoke-static {v2, v3}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 83
    iget-object v2, p0, Lcom/htc/lockscreen/app/util/OOBEMonitor$OOBESettingObserver;->this$0:Lcom/htc/lockscreen/app/util/OOBEMonitor;

    #getter for: Lcom/htc/lockscreen/app/util/OOBEMonitor;->mListener:Lcom/htc/lockscreen/app/util/OOBEMonitor$OOBEMonitorListener;
    invoke-static {v2}, Lcom/htc/lockscreen/app/util/OOBEMonitor;->access$000(Lcom/htc/lockscreen/app/util/OOBEMonitor;)Lcom/htc/lockscreen/app/util/OOBEMonitor$OOBEMonitorListener;

    move-result-object v0

    .line 84
    .local v0, listener:Lcom/htc/lockscreen/app/util/OOBEMonitor$OOBEMonitorListener;
    iget-object v2, p0, Lcom/htc/lockscreen/app/util/OOBEMonitor$OOBESettingObserver;->this$0:Lcom/htc/lockscreen/app/util/OOBEMonitor;

    iget-object v3, p0, Lcom/htc/lockscreen/app/util/OOBEMonitor$OOBESettingObserver;->this$0:Lcom/htc/lockscreen/app/util/OOBEMonitor;

    #getter for: Lcom/htc/lockscreen/app/util/OOBEMonitor;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/htc/lockscreen/app/util/OOBEMonitor;->access$200(Lcom/htc/lockscreen/app/util/OOBEMonitor;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "setup_wizard_has_run"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    #setter for: Lcom/htc/lockscreen/app/util/OOBEMonitor;->mIsOOBEDone:Z
    invoke-static {v2, v1}, Lcom/htc/lockscreen/app/util/OOBEMonitor;->access$102(Lcom/htc/lockscreen/app/util/OOBEMonitor;Z)Z

    .line 86
    if-eqz v0, :cond_1

    .line 87
    iget-object v1, p0, Lcom/htc/lockscreen/app/util/OOBEMonitor$OOBESettingObserver;->this$0:Lcom/htc/lockscreen/app/util/OOBEMonitor;

    #getter for: Lcom/htc/lockscreen/app/util/OOBEMonitor;->mIsOOBEDone:Z
    invoke-static {v1}, Lcom/htc/lockscreen/app/util/OOBEMonitor;->access$100(Lcom/htc/lockscreen/app/util/OOBEMonitor;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/htc/lockscreen/app/util/OOBEMonitor$OOBEMonitorListener;->OnOOBEDone(Z)V

    .line 89
    :cond_1
    iget-object v1, p0, Lcom/htc/lockscreen/app/util/OOBEMonitor$OOBESettingObserver;->this$0:Lcom/htc/lockscreen/app/util/OOBEMonitor;

    #getter for: Lcom/htc/lockscreen/app/util/OOBEMonitor;->mIsOOBEDone:Z
    invoke-static {v1}, Lcom/htc/lockscreen/app/util/OOBEMonitor;->access$100(Lcom/htc/lockscreen/app/util/OOBEMonitor;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 91
    iget-object v1, p0, Lcom/htc/lockscreen/app/util/OOBEMonitor$OOBESettingObserver;->this$0:Lcom/htc/lockscreen/app/util/OOBEMonitor;

    invoke-virtual {v1}, Lcom/htc/lockscreen/app/util/OOBEMonitor;->stopMonitor()V

    .line 94
    :cond_2
    return-void
.end method
