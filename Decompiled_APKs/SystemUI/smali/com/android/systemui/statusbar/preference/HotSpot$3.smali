.class Lcom/android/systemui/statusbar/preference/HotSpot$3;
.super Ljava/lang/Object;
.source "HotSpot.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/preference/HotSpot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/preference/HotSpot;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/preference/HotSpot;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/preference/HotSpot$3;->this$0:Lcom/android/systemui/statusbar/preference/HotSpot;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11

    const/4 v7, 0x0

    const/4 v6, 0x1

    iget-object v8, p0, Lcom/android/systemui/statusbar/preference/HotSpot$3;->this$0:Lcom/android/systemui/statusbar/preference/HotSpot;

    iget-object v8, v8, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mCheckBox:Lcom/htc/widget/HtcToggleButton;

    invoke-virtual {v8}, Lcom/htc/widget/HtcToggleButton;->isChecked()Z

    move-result v8

    if-nez v8, :cond_1

    move v3, v6

    :goto_0
    const-string v8, "HotSpotStatusBarPreference"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "set wifi enable: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_2

    iget-object v8, p0, Lcom/android/systemui/statusbar/preference/HotSpot$3;->this$0:Lcom/android/systemui/statusbar/preference/HotSpot;

    iget-object v9, p0, Lcom/android/systemui/statusbar/preference/HotSpot$3;->this$0:Lcom/android/systemui/statusbar/preference/HotSpot;

    iget-object v9, v9, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mContext:Landroid/content/Context;

    const-string v10, "wifi"

    #calls: Lcom/android/systemui/statusbar/preference/HotSpot;->isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z
    invoke-static {v8, v9, v10}, Lcom/android/systemui/statusbar/preference/HotSpot;->access$200(Lcom/android/systemui/statusbar/preference/HotSpot;Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v3, v7

    goto :goto_0

    :cond_2
    iget-object v8, p0, Lcom/android/systemui/statusbar/preference/HotSpot$3;->this$0:Lcom/android/systemui/statusbar/preference/HotSpot;

    #getter for: Lcom/android/systemui/statusbar/preference/HotSpot;->mEnableMhs:Z
    invoke-static {v8}, Lcom/android/systemui/statusbar/preference/HotSpot;->access$300(Lcom/android/systemui/statusbar/preference/HotSpot;)Z

    move-result v8

    if-eqz v8, :cond_3

    if-eqz v3, :cond_3

    const-string v8, "HotSpotStatusBarPreference"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "enable="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/systemui/statusbar/preference/HotSpot$3;->this$0:Lcom/android/systemui/statusbar/preference/HotSpot;

    #calls: Lcom/android/systemui/statusbar/preference/HotSpot;->handleMhs(Z)Z
    invoke-static {v8, v3}, Lcom/android/systemui/statusbar/preference/HotSpot;->access$400(Lcom/android/systemui/statusbar/preference/HotSpot;Z)Z

    move-result v4

    const-string v8, "HotSpotStatusBarPreference"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handleMhs result="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v4, :cond_0

    :cond_3
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-ne v8, v6, :cond_4

    sget-short v8, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v9, 0xa1

    if-ne v8, v9, :cond_4

    iget-object v6, p0, Lcom/android/systemui/statusbar/preference/HotSpot$3;->this$0:Lcom/android/systemui/statusbar/preference/HotSpot;

    #calls: Lcom/android/systemui/statusbar/preference/HotSpot;->showRemindDialog(Z)V
    invoke-static {v6, v3}, Lcom/android/systemui/statusbar/preference/HotSpot;->access$500(Lcom/android/systemui/statusbar/preference/HotSpot;Z)V

    goto :goto_1

    :cond_4
    sget-short v8, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v9, 0xa8

    if-ne v8, v9, :cond_6

    iget-object v8, p0, Lcom/android/systemui/statusbar/preference/HotSpot$3;->this$0:Lcom/android/systemui/statusbar/preference/HotSpot;

    #getter for: Lcom/android/systemui/statusbar/preference/HotSpot;->mEnableMhs:Z
    invoke-static {v8}, Lcom/android/systemui/statusbar/preference/HotSpot;->access$300(Lcom/android/systemui/statusbar/preference/HotSpot;)Z

    move-result v8

    if-nez v8, :cond_6

    :try_start_0
    iget-object v8, p0, Lcom/android/systemui/statusbar/preference/HotSpot$3;->this$0:Lcom/android/systemui/statusbar/preference/HotSpot;

    iget-object v9, p0, Lcom/android/systemui/statusbar/preference/HotSpot$3;->this$0:Lcom/android/systemui/statusbar/preference/HotSpot;

    iget-object v9, v9, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "hotspot_remind_dialog"

    invoke-static {v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v9

    #setter for: Lcom/android/systemui/statusbar/preference/HotSpot;->remindDialog:I
    invoke-static {v8, v9}, Lcom/android/systemui/statusbar/preference/HotSpot;->access$602(Lcom/android/systemui/statusbar/preference/HotSpot;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    iget-object v7, p0, Lcom/android/systemui/statusbar/preference/HotSpot$3;->this$0:Lcom/android/systemui/statusbar/preference/HotSpot;

    #calls: Lcom/android/systemui/statusbar/preference/HotSpot;->isMLEnabled()Z
    invoke-static {v7}, Lcom/android/systemui/statusbar/preference/HotSpot;->access$700(Lcom/android/systemui/statusbar/preference/HotSpot;)Z

    move-result v5

    const-string v7, "HotSpotStatusBarPreference"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MLEnabled="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_5

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-ne v7, v6, :cond_5

    new-instance v7, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v8, p0, Lcom/android/systemui/statusbar/preference/HotSpot$3;->this$0:Lcom/android/systemui/statusbar/preference/HotSpot;

    iget-object v8, v8, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v8, 0x7f0800bb

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f0800b9

    new-instance v9, Lcom/android/systemui/statusbar/preference/HotSpot$3$2;

    invoke-direct {v9, p0}, Lcom/android/systemui/statusbar/preference/HotSpot$3$2;-><init>(Lcom/android/systemui/statusbar/preference/HotSpot$3;)V

    invoke-virtual {v7, v8, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f0800b8

    new-instance v9, Lcom/android/systemui/statusbar/preference/HotSpot$3$1;

    invoke-direct {v9, p0, v3}, Lcom/android/systemui/statusbar/preference/HotSpot$3$1;-><init>(Lcom/android/systemui/statusbar/preference/HotSpot$3;Z)V

    invoke-virtual {v7, v8, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f0800be

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x7d3

    invoke-virtual {v6, v7}, Landroid/view/Window;->setType(I)V

    new-instance v6, Lcom/android/systemui/statusbar/preference/HotSpot$3$3;

    invoke-direct {v6, p0}, Lcom/android/systemui/statusbar/preference/HotSpot$3$3;-><init>(Lcom/android/systemui/statusbar/preference/HotSpot$3;)V

    invoke-virtual {v1, v6}, Lcom/htc/widget/HtcAlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->show()V

    goto/16 :goto_1

    :catch_0
    move-exception v2

    iget-object v8, p0, Lcom/android/systemui/statusbar/preference/HotSpot$3;->this$0:Lcom/android/systemui/statusbar/preference/HotSpot;

    #setter for: Lcom/android/systemui/statusbar/preference/HotSpot;->remindDialog:I
    invoke-static {v8, v7}, Lcom/android/systemui/statusbar/preference/HotSpot;->access$602(Lcom/android/systemui/statusbar/preference/HotSpot;I)I

    goto :goto_2

    :cond_5
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-ne v7, v6, :cond_6

    iget-object v6, p0, Lcom/android/systemui/statusbar/preference/HotSpot$3;->this$0:Lcom/android/systemui/statusbar/preference/HotSpot;

    #getter for: Lcom/android/systemui/statusbar/preference/HotSpot;->remindDialog:I
    invoke-static {v6}, Lcom/android/systemui/statusbar/preference/HotSpot;->access$600(Lcom/android/systemui/statusbar/preference/HotSpot;)I

    move-result v6

    if-nez v6, :cond_6

    iget-object v6, p0, Lcom/android/systemui/statusbar/preference/HotSpot$3;->this$0:Lcom/android/systemui/statusbar/preference/HotSpot;

    #calls: Lcom/android/systemui/statusbar/preference/HotSpot;->showRemindDialog(Z)V
    invoke-static {v6, v3}, Lcom/android/systemui/statusbar/preference/HotSpot;->access$500(Lcom/android/systemui/statusbar/preference/HotSpot;Z)V

    goto/16 :goto_1

    :cond_6
    iget-object v6, p0, Lcom/android/systemui/statusbar/preference/HotSpot$3;->this$0:Lcom/android/systemui/statusbar/preference/HotSpot;

    #calls: Lcom/android/systemui/statusbar/preference/HotSpot;->switchHotspotOnOff(Z)V
    invoke-static {v6, v3}, Lcom/android/systemui/statusbar/preference/HotSpot;->access$900(Lcom/android/systemui/statusbar/preference/HotSpot;Z)V

    goto/16 :goto_1
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 5

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/HotSpot$3;->this$0:Lcom/android/systemui/statusbar/preference/HotSpot;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/preference/HotSpot;->collapseStatusBar()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/preference/HotSpot$3;->toggleSettings()V

    return v1
.end method

.method public toggleSettings()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/HotSpot$3;->this$0:Lcom/android/systemui/statusbar/preference/HotSpot;

    iget-object v1, v0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.htc.WifiRouter"

    const-string v5, "com.htc.WifiRouter.Intro"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/HotSpot$3;->this$0:Lcom/android/systemui/statusbar/preference/HotSpot;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/preference/HotSpot;->startActivitySafely(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
