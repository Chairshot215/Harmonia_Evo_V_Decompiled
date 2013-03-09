.class Lcom/google/android/marvin/talkback/PreferenceFeedbackController;
.super Lcom/googlecode/eyesfree/utils/FeedbackController;
.source "PreferenceFeedbackController.java"


# instance fields
.field private final mContentObserver:Landroid/database/ContentObserver;

.field private final mPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private final mPrefs:Landroid/content/SharedPreferences;

.field private final mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/googlecode/eyesfree/utils/FeedbackController;-><init>(Landroid/content/Context;)V

    .line 119
    new-instance v1, Lcom/google/android/marvin/talkback/PreferenceFeedbackController$1;

    invoke-direct {v1, p0}, Lcom/google/android/marvin/talkback/PreferenceFeedbackController$1;-><init>(Lcom/google/android/marvin/talkback/PreferenceFeedbackController;)V

    iput-object v1, p0, Lcom/google/android/marvin/talkback/PreferenceFeedbackController;->mPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 127
    new-instance v1, Lcom/google/android/marvin/talkback/PreferenceFeedbackController$2;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/google/android/marvin/talkback/PreferenceFeedbackController$2;-><init>(Lcom/google/android/marvin/talkback/PreferenceFeedbackController;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/google/android/marvin/talkback/PreferenceFeedbackController;->mContentObserver:Landroid/database/ContentObserver;

    .line 52
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/marvin/talkback/PreferenceFeedbackController;->mPrefs:Landroid/content/SharedPreferences;

    .line 53
    iget-object v1, p0, Lcom/google/android/marvin/talkback/PreferenceFeedbackController;->mPrefs:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/google/android/marvin/talkback/PreferenceFeedbackController;->mPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 56
    const-string v1, "enabled_accessibility_services"

    .line 55
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 57
    .local v0, servicesUri:Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/marvin/talkback/PreferenceFeedbackController;->mResolver:Landroid/content/ContentResolver;

    .line 58
    iget-object v1, p0, Lcom/google/android/marvin/talkback/PreferenceFeedbackController;->mResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/marvin/talkback/PreferenceFeedbackController;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 60
    iget-object v1, p0, Lcom/google/android/marvin/talkback/PreferenceFeedbackController;->mPrefs:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/google/android/marvin/talkback/PreferenceFeedbackController;->updatePreferences(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method static synthetic access$0(Lcom/google/android/marvin/talkback/PreferenceFeedbackController;Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Lcom/google/android/marvin/talkback/PreferenceFeedbackController;->updatePreferences(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1(Lcom/google/android/marvin/talkback/PreferenceFeedbackController;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/google/android/marvin/talkback/PreferenceFeedbackController;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private updatePreferences(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 9
    .parameter "prefs"
    .parameter "key"

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/google/android/marvin/talkback/PreferenceFeedbackController;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 79
    .local v0, context:Landroid/content/Context;
    if-nez v0, :cond_0

    .line 116
    :goto_0
    return-void

    .line 83
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 87
    .local v2, res:Landroid/content/res/Resources;
    const v7, 0x7f09000a

    const v8, 0x7f09001c

    .line 86
    invoke-static {p1, v2, v7, v8}, Lcom/googlecode/eyesfree/utils/SharedPreferencesUtils;->getIntFromStringPref(Landroid/content/SharedPreferences;Landroid/content/res/Resources;II)I

    move-result v6

    .line 90
    .local v6, volumePref:I
    const-string v7, "com.google.android.marvin.kickback"

    .line 89
    invoke-static {v0, v7}, Lcom/googlecode/eyesfree/utils/PackageManagerUtils;->getVersionCode(Landroid/content/Context;Ljava/lang/CharSequence;)I

    move-result v1

    .line 92
    .local v1, kickBackVersionCode:I
    const-string v7, "com.google.android.marvin.soundback"

    .line 91
    invoke-static {v0, v7}, Lcom/googlecode/eyesfree/utils/PackageManagerUtils;->getVersionCode(Landroid/content/Context;Ljava/lang/CharSequence;)I

    move-result v3

    .line 97
    .local v3, soundBackVersionCode:I
    const/4 v7, 0x5

    if-lt v1, v7, :cond_1

    .line 99
    const-string v7, "com.google.android.marvin.kickback"

    .line 98
    invoke-static {v0, v7}, Lcom/google/android/marvin/utils/SecureSettingsUtils;->isAccessibilityServiceEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    .line 105
    .local v5, vibrationPref:Z
    :goto_1
    const/4 v7, 0x7

    if-lt v3, v7, :cond_2

    .line 107
    const-string v7, "com.google.android.marvin.soundback"

    .line 106
    invoke-static {v0, v7}, Lcom/google/android/marvin/utils/SecureSettingsUtils;->isAccessibilityServiceEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    .line 113
    .local v4, soundbackPref:Z
    :goto_2
    invoke-virtual {p0, v5}, Lcom/google/android/marvin/talkback/PreferenceFeedbackController;->setHapticEnabled(Z)V

    .line 114
    invoke-virtual {p0, v4}, Lcom/google/android/marvin/talkback/PreferenceFeedbackController;->setAuditoryEnabled(Z)V

    .line 115
    invoke-virtual {p0, v6}, Lcom/google/android/marvin/talkback/PreferenceFeedbackController;->setVolume(I)V

    goto :goto_0

    .line 102
    .end local v4           #soundbackPref:Z
    .end local v5           #vibrationPref:Z
    :cond_1
    const v7, 0x7f090006

    const v8, 0x7f0b0002

    .line 101
    invoke-static {p1, v2, v7, v8}, Lcom/googlecode/eyesfree/utils/SharedPreferencesUtils;->getBooleanPref(Landroid/content/SharedPreferences;Landroid/content/res/Resources;II)Z

    move-result v5

    .restart local v5       #vibrationPref:Z
    goto :goto_1

    .line 110
    :cond_2
    const v7, 0x7f090007

    const v8, 0x7f0b0003

    .line 109
    invoke-static {p1, v2, v7, v8}, Lcom/googlecode/eyesfree/utils/SharedPreferencesUtils;->getBooleanPref(Landroid/content/SharedPreferences;Landroid/content/res/Resources;II)Z

    move-result v4

    .restart local v4       #soundbackPref:Z
    goto :goto_2
.end method


# virtual methods
.method public shutdown()V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/marvin/talkback/PreferenceFeedbackController;->mPrefs:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/google/android/marvin/talkback/PreferenceFeedbackController;->mPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 66
    iget-object v0, p0, Lcom/google/android/marvin/talkback/PreferenceFeedbackController;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/google/android/marvin/talkback/PreferenceFeedbackController;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 67
    invoke-super {p0}, Lcom/googlecode/eyesfree/utils/FeedbackController;->shutdown()V

    .line 68
    return-void
.end method
