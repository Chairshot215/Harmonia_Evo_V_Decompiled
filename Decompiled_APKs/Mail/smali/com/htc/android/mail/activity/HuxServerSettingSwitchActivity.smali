.class public Lcom/htc/android/mail/activity/HuxServerSettingSwitchActivity;
.super Landroid/app/Activity;
.source "HuxServerSettingSwitchActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mTestingServerSettingCB:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private removeHuxData()V
    .locals 3

    .prologue
    .line 51
    const-string v1, "account"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/htc/android/mail/activity/HuxServerSettingSwitchActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 52
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "hux_verifyDeviceInfoupdateTime"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 53
    const-string v1, "vzw_hux_last_fetch_tags_time"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 54
    const-string v1, "isNeedSyncHUXAccount"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 55
    const-string v1, "vzw_hux_token_expiry"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 56
    const-string v1, "vzw_hux_pin"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 57
    const-string v1, "vzw_hux_token"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 58
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 59
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v3, 0x0

    .line 36
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 48
    :cond_0
    :goto_0
    return-void

    .line 38
    :pswitch_0
    if-eqz p2, :cond_0

    .line 39
    const-string v1, "hux_server_setting_switch"

    invoke-virtual {p0, v1, v3}, Lcom/htc/android/mail/activity/HuxServerSettingSwitchActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 40
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "testing_server_setting"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 41
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 42
    iget-object v1, p0, Lcom/htc/android/mail/activity/HuxServerSettingSwitchActivity;->mTestingServerSettingCB:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 43
    invoke-direct {p0}, Lcom/htc/android/mail/activity/HuxServerSettingSwitchActivity;->removeHuxData()V

    .line 44
    invoke-static {}, Lcom/htc/android/mail/Account$HuxServerInfo;->clear()V

    goto :goto_0

    .line 36
    :pswitch_data_0
    .packed-switch 0x7f0900d3
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    .line 22
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    const v2, 0x7f03001b

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/activity/HuxServerSettingSwitchActivity;->setContentView(I)V

    .line 24
    const v2, 0x7f0900d3

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/activity/HuxServerSettingSwitchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/htc/android/mail/activity/HuxServerSettingSwitchActivity;->mTestingServerSettingCB:Landroid/widget/CheckBox;

    .line 26
    const-string v2, "hux_server_setting_switch"

    invoke-virtual {p0, v2, v4}, Lcom/htc/android/mail/activity/HuxServerSettingSwitchActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 27
    .local v1, sp:Landroid/content/SharedPreferences;
    const-string v2, "testing_server_setting"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 28
    .local v0, enabled:Z
    if-eqz v0, :cond_0

    .line 29
    iget-object v2, p0, Lcom/htc/android/mail/activity/HuxServerSettingSwitchActivity;->mTestingServerSettingCB:Landroid/widget/CheckBox;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 30
    iget-object v2, p0, Lcom/htc/android/mail/activity/HuxServerSettingSwitchActivity;->mTestingServerSettingCB:Landroid/widget/CheckBox;

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 32
    :cond_0
    iget-object v2, p0, Lcom/htc/android/mail/activity/HuxServerSettingSwitchActivity;->mTestingServerSettingCB:Landroid/widget/CheckBox;

    invoke-virtual {v2, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 33
    return-void
.end method
