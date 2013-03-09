.class Lcom/htc/android/mail/MiscSettings$2;
.super Ljava/lang/Object;
.source "MiscSettings.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/MiscSettings;->bind()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/MiscSettings;

.field final synthetic val$account:Lcom/htc/android/mail/Account;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/MiscSettings;Lcom/htc/android/mail/Account;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 163
    iput-object p1, p0, Lcom/htc/android/mail/MiscSettings$2;->this$0:Lcom/htc/android/mail/MiscSettings;

    iput-object p2, p0, Lcom/htc/android/mail/MiscSettings$2;->val$account:Lcom/htc/android/mail/Account;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 4
    .parameter "preference"
    .parameter "value"

    .prologue
    .line 165
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    .line 166
    .local v0, res:Ljava/lang/Boolean;
    iget-object v1, p0, Lcom/htc/android/mail/MiscSettings$2;->this$0:Lcom/htc/android/mail/MiscSettings;

    iget-object v1, v1, Lcom/htc/android/mail/MiscSettings;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v2, "account_detail_notify_vibrate"

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 167
    iget-object v1, p0, Lcom/htc/android/mail/MiscSettings$2;->this$0:Lcom/htc/android/mail/MiscSettings;

    iget-object v2, p0, Lcom/htc/android/mail/MiscSettings$2;->val$account:Lcom/htc/android/mail/Account;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    #calls: Lcom/htc/android/mail/MiscSettings;->saveAccountVibrate(Lcom/htc/android/mail/Account;Z)V
    invoke-static {v1, v2, v3}, Lcom/htc/android/mail/MiscSettings;->access$100(Lcom/htc/android/mail/MiscSettings;Lcom/htc/android/mail/Account;Z)V

    .line 168
    const/4 v1, 0x1

    return v1
.end method
