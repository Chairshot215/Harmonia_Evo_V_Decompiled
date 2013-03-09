.class Lcom/htc/WifiRouter/WifiRouter$5;
.super Ljava/lang/Object;
.source "WifiRouter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/WifiRouter/WifiRouter;
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
    .line 612
    iput-object p1, p0, Lcom/htc/WifiRouter/WifiRouter$5;->this$0:Lcom/htc/WifiRouter/WifiRouter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 614
    iget-object v2, p0, Lcom/htc/WifiRouter/WifiRouter$5;->this$0:Lcom/htc/WifiRouter/WifiRouter;

    #getter for: Lcom/htc/WifiRouter/WifiRouter;->mState:Z
    invoke-static {v2}, Lcom/htc/WifiRouter/WifiRouter;->access$300(Lcom/htc/WifiRouter/WifiRouter;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xa1

    if-ne v2, v3, :cond_0

    .line 615
    iget-object v2, p0, Lcom/htc/WifiRouter/WifiRouter$5;->this$0:Lcom/htc/WifiRouter/WifiRouter;

    #calls: Lcom/htc/WifiRouter/WifiRouter;->showRemindDialog()V
    invoke-static {v2}, Lcom/htc/WifiRouter/WifiRouter;->access$2000(Lcom/htc/WifiRouter/WifiRouter;)V

    .line 635
    :goto_0
    return-void

    .line 617
    :cond_0
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xa8

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/htc/WifiRouter/WifiRouter$5;->this$0:Lcom/htc/WifiRouter/WifiRouter;

    #getter for: Lcom/htc/WifiRouter/WifiRouter;->mEnableMhs:Z
    invoke-static {v2}, Lcom/htc/WifiRouter/WifiRouter;->access$2100(Lcom/htc/WifiRouter/WifiRouter;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 619
    :try_start_0
    iget-object v2, p0, Lcom/htc/WifiRouter/WifiRouter$5;->this$0:Lcom/htc/WifiRouter/WifiRouter;

    iget-object v3, p0, Lcom/htc/WifiRouter/WifiRouter$5;->this$0:Lcom/htc/WifiRouter/WifiRouter;

    #getter for: Lcom/htc/WifiRouter/WifiRouter;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/htc/WifiRouter/WifiRouter;->access$500(Lcom/htc/WifiRouter/WifiRouter;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "hotspot_remind_dialog"

    invoke-static {v3, v4}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    #setter for: Lcom/htc/WifiRouter/WifiRouter;->remindDialog:I
    invoke-static {v2, v3}, Lcom/htc/WifiRouter/WifiRouter;->access$2202(Lcom/htc/WifiRouter/WifiRouter;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 623
    :goto_1
    iget-object v2, p0, Lcom/htc/WifiRouter/WifiRouter$5;->this$0:Lcom/htc/WifiRouter/WifiRouter;

    invoke-virtual {v2}, Lcom/htc/WifiRouter/WifiRouter;->isMLEnabled()Z

    move-result v1

    .line 625
    .local v1, mlEnabled:Z
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/htc/WifiRouter/WifiRouter$5;->this$0:Lcom/htc/WifiRouter/WifiRouter;

    #getter for: Lcom/htc/WifiRouter/WifiRouter;->mState:Z
    invoke-static {v2}, Lcom/htc/WifiRouter/WifiRouter;->access$300(Lcom/htc/WifiRouter/WifiRouter;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 626
    iget-object v2, p0, Lcom/htc/WifiRouter/WifiRouter$5;->this$0:Lcom/htc/WifiRouter/WifiRouter;

    #calls: Lcom/htc/WifiRouter/WifiRouter;->showMLDialog()V
    invoke-static {v2}, Lcom/htc/WifiRouter/WifiRouter;->access$2300(Lcom/htc/WifiRouter/WifiRouter;)V

    goto :goto_0

    .line 620
    .end local v1           #mlEnabled:Z
    :catch_0
    move-exception v0

    .line 621
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    iget-object v2, p0, Lcom/htc/WifiRouter/WifiRouter$5;->this$0:Lcom/htc/WifiRouter/WifiRouter;

    const/4 v3, 0x0

    #setter for: Lcom/htc/WifiRouter/WifiRouter;->remindDialog:I
    invoke-static {v2, v3}, Lcom/htc/WifiRouter/WifiRouter;->access$2202(Lcom/htc/WifiRouter/WifiRouter;I)I

    goto :goto_1

    .line 628
    .end local v0           #e:Landroid/provider/Settings$SettingNotFoundException;
    .restart local v1       #mlEnabled:Z
    :cond_1
    iget-object v2, p0, Lcom/htc/WifiRouter/WifiRouter$5;->this$0:Lcom/htc/WifiRouter/WifiRouter;

    #getter for: Lcom/htc/WifiRouter/WifiRouter;->mState:Z
    invoke-static {v2}, Lcom/htc/WifiRouter/WifiRouter;->access$300(Lcom/htc/WifiRouter/WifiRouter;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/htc/WifiRouter/WifiRouter$5;->this$0:Lcom/htc/WifiRouter/WifiRouter;

    #getter for: Lcom/htc/WifiRouter/WifiRouter;->remindDialog:I
    invoke-static {v2}, Lcom/htc/WifiRouter/WifiRouter;->access$2200(Lcom/htc/WifiRouter/WifiRouter;)I

    move-result v2

    if-nez v2, :cond_2

    .line 629
    iget-object v2, p0, Lcom/htc/WifiRouter/WifiRouter$5;->this$0:Lcom/htc/WifiRouter/WifiRouter;

    #calls: Lcom/htc/WifiRouter/WifiRouter;->showRemindDialog()V
    invoke-static {v2}, Lcom/htc/WifiRouter/WifiRouter;->access$2000(Lcom/htc/WifiRouter/WifiRouter;)V

    goto :goto_0

    .line 634
    .end local v1           #mlEnabled:Z
    :cond_2
    iget-object v2, p0, Lcom/htc/WifiRouter/WifiRouter$5;->this$0:Lcom/htc/WifiRouter/WifiRouter;

    #calls: Lcom/htc/WifiRouter/WifiRouter;->switchHotspotOnOff()V
    invoke-static {v2}, Lcom/htc/WifiRouter/WifiRouter;->access$2400(Lcom/htc/WifiRouter/WifiRouter;)V

    goto :goto_0
.end method
