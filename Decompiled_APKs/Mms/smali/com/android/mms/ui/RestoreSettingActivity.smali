.class public Lcom/android/mms/ui/RestoreSettingActivity;
.super Lcom/htc/preference/HtcPreferenceActivity;
.source "RestoreSettingActivity.java"


# static fields
.field static final PREF_KEY_RESTORE_SETTING:Ljava/lang/String; = "pref_key_restore_setting"

.field static final SETTING_VALUE_CLEAR_ALL:Ljava/lang/String; = "clearall"

.field static final SETTING_VALUE_KEEP_ALL:Ljava/lang/String; = "keepall"

.field static final SETTING_VALUE_KEEP_UNREAD:Ljava/lang/String; = "keepunread"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/htc/preference/HtcPreferenceActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/RestoreSettingActivity;Ljava/lang/String;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/android/mms/ui/RestoreSettingActivity;->getSummaryId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private getSummaryId(Ljava/lang/String;)I
    .locals 1
    .parameter "setting"

    .prologue
    .line 52
    const-string v0, "clearall"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    const v0, 0x7f090284

    .line 57
    :goto_0
    return v0

    .line 54
    :cond_0
    const-string v0, "keepunread"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    const v0, 0x7f090285

    goto :goto_0

    .line 57
    :cond_1
    const v0, 0x7f090286

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    .line 36
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const v3, 0x7f04001a

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/RestoreSettingActivity;->addPreferencesFromResource(I)V

    .line 39
    invoke-static {p0}, Lcom/htc/preference/HtcPreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 40
    .local v2, sp:Landroid/content/SharedPreferences;
    const-string v3, "pref_key_restore_setting"

    const-string v4, "keepunread"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 41
    .local v1, setting:Ljava/lang/String;
    const-string v3, "pref_key_restore_setting"

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/RestoreSettingActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    .line 42
    .local v0, entry:Lcom/htc/preference/HtcPreference;
    new-instance v3, Lcom/android/mms/ui/RestoreSettingActivity$1;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/RestoreSettingActivity$1;-><init>(Lcom/android/mms/ui/RestoreSettingActivity;)V

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 48
    invoke-direct {p0, v1}, Lcom/android/mms/ui/RestoreSettingActivity;->getSummaryId(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    .line 49
    return-void
.end method
