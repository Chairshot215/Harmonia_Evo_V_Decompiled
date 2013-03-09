.class Lcom/android/mms/ui/MessagingPreferenceActivity$13;
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
    .line 2038
    iput-object p1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$13;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 7
    .parameter "p"
    .parameter "newObjValue"

    .prologue
    .line 2040
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 2041
    .local v2, newValue:Z
    const-string v4, "MessagingPreferenceActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "VVM_RECEIVED_NOTIFICATION_SOUND onPreferenceChange> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2042
    if-eqz v2, :cond_0

    .line 2044
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/mms/transaction/MessagingNotification;->getVVMCharmMsgNotificationSetting(Landroid/content/Context;)Z

    move-result v1

    .line 2045
    .local v1, enabled:Z
    iget-object v4, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$13;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    invoke-virtual {v4}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v4

    const-string v5, "pref_key_vvm_notification_category"

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v4

    check-cast v4, Lcom/htc/preference/HtcPreferenceCategory;

    move-object v0, v4

    check-cast v0, Lcom/htc/preference/HtcPreferenceCategory;

    .line 2046
    .local v0, VVMVoicemailCategory:Lcom/htc/preference/HtcPreferenceCategory;
    const-string v4, "pref_key_vvm_charm_notifications"

    invoke-virtual {v0, v4}, Lcom/htc/preference/HtcPreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    check-cast v3, Lcom/htc/preference/HtcCheckBoxPreference;

    .line 2047
    .local v3, preview_notification:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-virtual {v3, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 2052
    .end local v0           #VVMVoicemailCategory:Lcom/htc/preference/HtcPreferenceCategory;
    .end local v1           #enabled:Z
    .end local v3           #preview_notification:Lcom/htc/preference/HtcCheckBoxPreference;
    :goto_0
    const/4 v4, 0x1

    return v4

    .line 2050
    :cond_0
    iget-object v4, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$13;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    invoke-virtual {v4}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "charm_voice_mail_notification"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    goto :goto_0
.end method
