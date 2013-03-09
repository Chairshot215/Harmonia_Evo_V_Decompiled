.class Lcom/android/mms/ui/MessagingPreferenceActivity$24;
.super Ljava/lang/Object;
.source "MessagingPreferenceActivity.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessagingPreferenceActivity;->setNotificationListeners()V
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
    .line 3305
    iput-object p1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$24;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 7
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v5, 0x1

    .line 3307
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 3308
    .local v3, bsentfail:Z
    iget-object v4, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$24;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    const-string v6, "pref_key_enable_sent_notifications"

    invoke-virtual {v4, v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v4

    check-cast v4, Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v4}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v2

    .line 3309
    .local v2, bsent:Z
    if-nez v2, :cond_2

    if-nez v3, :cond_2

    const/4 v0, 0x0

    .line 3310
    .local v0, benableNotify:Z
    :goto_0
    iget-object v4, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$24;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    const-string v6, "pref_key_play_sent_notifications"

    invoke-virtual {v4, v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v4

    check-cast v4, Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v4}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v1

    .line 3312
    .local v1, bplaysound:Z
    iget-object v4, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$24;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    const-string v6, "pref_key_play_sent_notifications"

    invoke-virtual {v4, v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 3314
    if-eqz v1, :cond_0

    .line 3315
    iget-object v4, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$24;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    const-string v6, "pref_key_sent_ringtone"

    invoke-virtual {v4, v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 3317
    :cond_0
    iget-object v4, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$24;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    const-string v6, "pref_key_vibrate_sent_notifications"

    invoke-virtual {v4, v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 3318
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportNotificationEnhancement()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$24;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    const-string v6, "pref_display_message"

    invoke-virtual {v4, v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 3319
    iget-object v4, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$24;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    const-string v6, "pref_display_message"

    invoke-virtual {v4, v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 3321
    :cond_1
    return v5

    .end local v0           #benableNotify:Z
    .end local v1           #bplaysound:Z
    :cond_2
    move v0, v5

    .line 3309
    goto :goto_0
.end method
