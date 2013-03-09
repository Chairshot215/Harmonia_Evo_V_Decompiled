.class Lcom/android/mms/ui/MessagingPreferenceActivity$16;
.super Ljava/lang/Object;
.source "MessagingPreferenceActivity.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessagingPreferenceActivity;->initPreference()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2123
    iput-object p1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$16;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 8
    .parameter "p"
    .parameter "newObjValue"

    .prologue
    .line 2125
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 2126
    .local v2, newValue:Z
    const-string v5, "MessagingPreferenceActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RECEIVED_NOTIFICATION_ENABLED onPreferenceChange> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2127
    if-eqz v2, :cond_2

    .line 2129
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportNotificationPreview()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2131
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/mms/transaction/MessagingNotification;->getNewMsgNotificationSetting(Landroid/content/Context;)Z

    move-result v1

    .line 2132
    .local v1, enabled:Z
    iget-object v5, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$16;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    invoke-virtual {v5}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v5

    const-string v6, "pref_received_notification_settings_category"

    invoke-virtual {v5, v6}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v5

    check-cast v5, Lcom/htc/preference/HtcPreferenceCategory;

    move-object v3, v5

    check-cast v3, Lcom/htc/preference/HtcPreferenceCategory;

    .line 2133
    .local v3, notification_category:Lcom/htc/preference/HtcPreferenceCategory;
    const-string v5, "pref_key_preview_received_notifications"

    invoke-virtual {v3, v5}, Lcom/htc/preference/HtcPreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v4

    check-cast v4, Lcom/htc/preference/HtcCheckBoxPreference;

    .line 2134
    .local v4, preview_notification:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-virtual {v4, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 2137
    .end local v1           #enabled:Z
    .end local v3           #notification_category:Lcom/htc/preference/HtcPreferenceCategory;
    .end local v4           #preview_notification:Lcom/htc/preference/HtcCheckBoxPreference;
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportCharmNotification()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2139
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/mms/transaction/MessagingNotification;->getCharmMsgNotificationSetting(Landroid/content/Context;)Z

    move-result v1

    .line 2140
    .restart local v1       #enabled:Z
    iget-object v5, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$16;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    invoke-virtual {v5}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v5

    const-string v6, "pref_received_notification_settings_category"

    invoke-virtual {v5, v6}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v5

    check-cast v5, Lcom/htc/preference/HtcPreferenceCategory;

    move-object v3, v5

    check-cast v3, Lcom/htc/preference/HtcPreferenceCategory;

    .line 2141
    .restart local v3       #notification_category:Lcom/htc/preference/HtcPreferenceCategory;
    const-string v5, "pref_key_charm_notifications"

    invoke-virtual {v3, v5}, Lcom/htc/preference/HtcPreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcCheckBoxPreference;

    .line 2142
    .local v0, charm_notification:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 2143
    iget-object v5, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$16;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    invoke-virtual {v5}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "charm_message_received_notification"

    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 2157
    .end local v0           #charm_notification:Lcom/htc/preference/HtcCheckBoxPreference;
    .end local v1           #enabled:Z
    .end local v3           #notification_category:Lcom/htc/preference/HtcPreferenceCategory;
    :cond_1
    :goto_0
    const/4 v5, 0x1

    return v5

    .line 2147
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportNotificationPreview()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2148
    iget-object v5, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$16;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    invoke-virtual {v5}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "htc_message_notification_preview"

    invoke-static {v5, v6, v2}, Landroid/provider/Settings$Secure;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 2150
    :cond_3
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportCharmNotification()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2152
    iget-object v5, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$16;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    invoke-virtual {v5}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "charm_message_notification"

    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 2153
    iget-object v5, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$16;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    invoke-virtual {v5}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "charm_message_received_notification"

    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    goto :goto_0
.end method
