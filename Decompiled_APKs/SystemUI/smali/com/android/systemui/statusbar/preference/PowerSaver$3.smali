.class Lcom/android/systemui/statusbar/preference/PowerSaver$3;
.super Ljava/lang/Object;
.source "PowerSaver.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/preference/PowerSaver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/preference/PowerSaver;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/preference/PowerSaver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/preference/PowerSaver$3;->this$0:Lcom/android/systemui/statusbar/preference/PowerSaver;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10

    const-wide/16 v8, 0x1f4

    const/16 v7, 0x1f40

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/systemui/statusbar/preference/PowerSaver$3;->this$0:Lcom/android/systemui/statusbar/preference/PowerSaver;

    iget-object v5, v5, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mCheckBox:Lcom/htc/widget/HtcToggleButton;

    invoke-virtual {v5}, Lcom/htc/widget/HtcToggleButton;->isChecked()Z

    move-result v5

    if-nez v5, :cond_1

    move v1, v3

    :goto_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/preference/PowerSaver$3;->this$0:Lcom/android/systemui/statusbar/preference/PowerSaver;

    iget-object v5, v5, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mCheckBox:Lcom/htc/widget/HtcToggleButton;

    invoke-virtual {v5, v1}, Lcom/htc/widget/HtcToggleButton;->setChecked(Z)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/preference/PowerSaver$3;->this$0:Lcom/android/systemui/statusbar/preference/PowerSaver;

    #getter for: Lcom/android/systemui/statusbar/preference/PowerSaver;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/systemui/statusbar/preference/PowerSaver;->access$300(Lcom/android/systemui/statusbar/preference/PowerSaver;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-ne v1, v3, :cond_2

    const-string v5, "user_powersaver_enable"

    invoke-static {v0, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v5, "powersaver_enable"

    invoke-static {v0, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    iget-object v5, p0, Lcom/android/systemui/statusbar/preference/PowerSaver$3;->this$0:Lcom/android/systemui/statusbar/preference/PowerSaver;

    #getter for: Lcom/android/systemui/statusbar/preference/PowerSaver;->POWERSAVER_LEVEL_CHANGE:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/systemui/statusbar/preference/PowerSaver;->access$400(Lcom/android/systemui/statusbar/preference/PowerSaver;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "IS_POWERSAVER_ENABLE"

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/systemui/statusbar/preference/PowerSaver$3;->this$0:Lcom/android/systemui/statusbar/preference/PowerSaver;

    #getter for: Lcom/android/systemui/statusbar/preference/PowerSaver;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/systemui/statusbar/preference/PowerSaver;->access$300(Lcom/android/systemui/statusbar/preference/PowerSaver;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v5, "PowerSaverStatusBarPreference"

    const-string v6, "POWERSAVER_LEVEL_CHANGE send"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "PowerSaverStatusBarPreference"

    const-string v6, "checkd"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/systemui/statusbar/preference/PowerSaver$3;->this$0:Lcom/android/systemui/statusbar/preference/PowerSaver;

    #getter for: Lcom/android/systemui/statusbar/preference/PowerSaver;->mPlugState:Z
    invoke-static {v5}, Lcom/android/systemui/statusbar/preference/PowerSaver;->access$000(Lcom/android/systemui/statusbar/preference/PowerSaver;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/statusbar/preference/PowerSaver$3;->this$0:Lcom/android/systemui/statusbar/preference/PowerSaver;

    invoke-virtual {v5, v4}, Lcom/android/systemui/statusbar/preference/PowerSaver;->setEnabled(Z)V

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/preference/PowerSaver$3;->this$0:Lcom/android/systemui/statusbar/preference/PowerSaver;

    iget-object v4, v4, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mSummary:Landroid/widget/TextView;

    const v5, 0x7f08007f

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/preference/PowerSaver$3;->this$0:Lcom/android/systemui/statusbar/preference/PowerSaver;

    #getter for: Lcom/android/systemui/statusbar/preference/PowerSaver;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/systemui/statusbar/preference/PowerSaver;->access$200(Lcom/android/systemui/statusbar/preference/PowerSaver;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v3, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_1
    return-void

    :cond_1
    move v1, v4

    goto :goto_0

    :cond_2
    const-string v3, "user_powersaver_enable"

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v3, "STATUS_POWER_SAVING_AUTO"

    invoke-static {v0, v3, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/16 v5, 0x1f41

    if-eq v3, v5, :cond_3

    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/PowerSaver$3;->this$0:Lcom/android/systemui/statusbar/preference/PowerSaver;

    iget v3, v3, Lcom/android/systemui/statusbar/preference/PowerSaver;->mBatteryLevel:I

    const-string v5, "powersaver_set_schedule"

    const/16 v6, 0x19

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ge v3, v5, :cond_4

    const-string v3, "STATUS_POWER_SAVING_AUTO"

    invoke-static {v0, v3, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/16 v5, 0x1f42

    if-ne v3, v5, :cond_4

    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/PowerSaver$3;->this$0:Lcom/android/systemui/statusbar/preference/PowerSaver;

    #getter for: Lcom/android/systemui/statusbar/preference/PowerSaver;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/systemui/statusbar/preference/PowerSaver;->access$300(Lcom/android/systemui/statusbar/preference/PowerSaver;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "powersaver_enable"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_4
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/PowerSaver$3;->this$0:Lcom/android/systemui/statusbar/preference/PowerSaver;

    #getter for: Lcom/android/systemui/statusbar/preference/PowerSaver;->POWERSAVER_LEVEL_CHANGE:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/systemui/statusbar/preference/PowerSaver;->access$400(Lcom/android/systemui/statusbar/preference/PowerSaver;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "IS_POWERSAVER_ENABLE"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/PowerSaver$3;->this$0:Lcom/android/systemui/statusbar/preference/PowerSaver;

    #getter for: Lcom/android/systemui/statusbar/preference/PowerSaver;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/systemui/statusbar/preference/PowerSaver;->access$300(Lcom/android/systemui/statusbar/preference/PowerSaver;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v3, "PowerSaverStatusBarPreference"

    const-string v5, "POWERSAVER_LEVEL_CHANGE send"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/PowerSaver$3;->this$0:Lcom/android/systemui/statusbar/preference/PowerSaver;

    #getter for: Lcom/android/systemui/statusbar/preference/PowerSaver;->mPlugState:Z
    invoke-static {v3}, Lcom/android/systemui/statusbar/preference/PowerSaver;->access$000(Lcom/android/systemui/statusbar/preference/PowerSaver;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/PowerSaver$3;->this$0:Lcom/android/systemui/statusbar/preference/PowerSaver;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/preference/PowerSaver;->setEnabled(Z)V

    :cond_5
    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/PowerSaver$3;->this$0:Lcom/android/systemui/statusbar/preference/PowerSaver;

    iget-object v3, v3, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mSummary:Landroid/widget/TextView;

    const v4, 0x7f080080

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/PowerSaver$3;->this$0:Lcom/android/systemui/statusbar/preference/PowerSaver;

    #getter for: Lcom/android/systemui/statusbar/preference/PowerSaver;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/systemui/statusbar/preference/PowerSaver;->access$200(Lcom/android/systemui/statusbar/preference/PowerSaver;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 5

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/PowerSaver$3;->this$0:Lcom/android/systemui/statusbar/preference/PowerSaver;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/preference/PowerSaver;->collapseStatusBar()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/preference/PowerSaver$3;->toggleSettings()V

    return v1
.end method

.method public toggleSettings()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/PowerSaver$3;->this$0:Lcom/android/systemui/statusbar/preference/PowerSaver;

    iget-object v1, v0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.android.settings"

    const-string v5, "com.android.settings.Settings$PowersaverListActivity"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/PowerSaver$3;->this$0:Lcom/android/systemui/statusbar/preference/PowerSaver;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/preference/PowerSaver;->startActivitySafely(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
