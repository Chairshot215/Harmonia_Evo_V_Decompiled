.class public Lcom/google/android/marvin/talkback/TalkBackPreferencesActivity;
.super Landroid/preference/PreferenceActivity;
.source "TalkBackPreferencesActivity.java"


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private final mTouchExplorationChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private final mTouchExploreObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 373
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/marvin/talkback/TalkBackPreferencesActivity;->mHandler:Landroid/os/Handler;

    .line 375
    new-instance v0, Lcom/google/android/marvin/talkback/TalkBackPreferencesActivity$1;

    iget-object v1, p0, Lcom/google/android/marvin/talkback/TalkBackPreferencesActivity;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/google/android/marvin/talkback/TalkBackPreferencesActivity$1;-><init>(Lcom/google/android/marvin/talkback/TalkBackPreferencesActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/marvin/talkback/TalkBackPreferencesActivity;->mTouchExploreObserver:Landroid/database/ContentObserver;

    .line 388
    new-instance v0, Lcom/google/android/marvin/talkback/TalkBackPreferencesActivity$2;

    invoke-direct {v0, p0}, Lcom/google/android/marvin/talkback/TalkBackPreferencesActivity$2;-><init>(Lcom/google/android/marvin/talkback/TalkBackPreferencesActivity;)V

    iput-object v0, p0, Lcom/google/android/marvin/talkback/TalkBackPreferencesActivity;->mTouchExplorationChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 422
    new-instance v0, Lcom/google/android/marvin/talkback/TalkBackPreferencesActivity$3;

    invoke-direct {v0, p0}, Lcom/google/android/marvin/talkback/TalkBackPreferencesActivity$3;-><init>(Lcom/google/android/marvin/talkback/TalkBackPreferencesActivity;)V

    iput-object v0, p0, Lcom/google/android/marvin/talkback/TalkBackPreferencesActivity;->mPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 54
    return-void
.end method

.method static synthetic access$0(Lcom/google/android/marvin/talkback/TalkBackPreferencesActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/google/android/marvin/talkback/TalkBackPreferencesActivity;->updateTouchExplorationState()V

    return-void
.end method

.method static synthetic access$1(Lcom/google/android/marvin/talkback/TalkBackPreferencesActivity;Landroid/content/ContentResolver;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 182
    invoke-direct {p0, p1}, Lcom/google/android/marvin/talkback/TalkBackPreferencesActivity;->isAccessibilityEnabled(Landroid/content/ContentResolver;)Z

    move-result v0

    return v0
.end method

.method private assignTutorialIntent()V
    .locals 5

    .prologue
    .line 84
    const v3, 0x7f090012

    invoke-direct {p0, v3}, Lcom/google/android/marvin/talkback/TalkBackPreferencesActivity;->findPreferenceByResId(I)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    .line 85
    .local v0, category:Landroid/preference/PreferenceGroup;
    const v3, 0x7f090011

    invoke-direct {p0, v3}, Lcom/google/android/marvin/talkback/TalkBackPreferencesActivity;->findPreferenceByResId(I)Landroid/preference/Preference;

    move-result-object v1

    .line 87
    .local v1, prefTutorial:Landroid/preference/Preference;
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-ge v3, v4, :cond_2

    .line 92
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 96
    :cond_2
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 97
    .local v2, tutorialIntent:Landroid/content/Intent;
    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private checkDeveloperOverlaySupport()V
    .locals 4

    .prologue
    .line 300
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v2, v3, :cond_1

    .line 313
    :cond_0
    :goto_0
    return-void

    .line 305
    :cond_1
    const v2, 0x7f090008

    invoke-direct {p0, v2}, Lcom/google/android/marvin/talkback/TalkBackPreferencesActivity;->findPreferenceByResId(I)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    .line 307
    .local v0, category:Landroid/preference/PreferenceGroup;
    const v2, 0x7f09000c

    invoke-direct {p0, v2}, Lcom/google/android/marvin/talkback/TalkBackPreferencesActivity;->findPreferenceByResId(I)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    .line 309
    .local v1, preference:Landroid/preference/CheckBoxPreference;
    if-eqz v1, :cond_0

    .line 310
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 311
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private checkInstalledBacks()V
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 322
    const v9, 0x7f090005

    invoke-direct {p0, v9}, Lcom/google/android/marvin/talkback/TalkBackPreferencesActivity;->findPreferenceByResId(I)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    .line 324
    .local v0, category:Landroid/preference/PreferenceGroup;
    const v9, 0x7f090006

    invoke-direct {p0, v9}, Lcom/google/android/marvin/talkback/TalkBackPreferencesActivity;->findPreferenceByResId(I)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    .line 326
    .local v4, prefVibration:Landroid/preference/CheckBoxPreference;
    const-string v9, "com.google.android.marvin.kickback"

    .line 325
    invoke-static {p0, v9}, Lcom/googlecode/eyesfree/utils/PackageManagerUtils;->getVersionCode(Landroid/content/Context;Ljava/lang/CharSequence;)I

    move-result v1

    .line 328
    .local v1, kickBackVersionCode:I
    const/4 v9, 0x5

    if-lt v1, v9, :cond_4

    move v5, v6

    .line 330
    .local v5, removeKickBack:Z
    :goto_0
    if-eqz v5, :cond_0

    .line 331
    if-eqz v4, :cond_0

    .line 332
    invoke-virtual {v0, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 337
    :cond_0
    const v9, 0x7f090007

    invoke-direct {p0, v9}, Lcom/google/android/marvin/talkback/TalkBackPreferencesActivity;->findPreferenceByResId(I)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    .line 339
    .local v2, prefSoundBack:Landroid/preference/CheckBoxPreference;
    const v9, 0x7f09000a

    invoke-direct {p0, v9}, Lcom/google/android/marvin/talkback/TalkBackPreferencesActivity;->findPreferenceByResId(I)Landroid/preference/Preference;

    move-result-object v3

    .line 341
    .local v3, prefSoundBackVolume:Landroid/preference/Preference;
    const-string v9, "com.google.android.marvin.soundback"

    .line 340
    invoke-static {p0, v9}, Lcom/googlecode/eyesfree/utils/PackageManagerUtils;->getVersionCode(Landroid/content/Context;Ljava/lang/CharSequence;)I

    move-result v7

    .line 343
    .local v7, soundBackVersionCode:I
    const/4 v9, 0x7

    if-lt v7, v9, :cond_5

    .line 345
    .local v6, removeSoundBack:Z
    :goto_1
    if-eqz v6, :cond_2

    .line 346
    if-eqz v3, :cond_1

    .line 347
    invoke-virtual {v0, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 350
    :cond_1
    if-eqz v2, :cond_2

    .line 351
    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 355
    :cond_2
    if-eqz v5, :cond_3

    if-eqz v6, :cond_3

    .line 356
    if-eqz v0, :cond_3

    .line 357
    invoke-virtual {p0}, Lcom/google/android/marvin/talkback/TalkBackPreferencesActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 360
    :cond_3
    return-void

    .end local v2           #prefSoundBack:Landroid/preference/CheckBoxPreference;
    .end local v3           #prefSoundBackVolume:Landroid/preference/Preference;
    .end local v5           #removeKickBack:Z
    .end local v6           #removeSoundBack:Z
    .end local v7           #soundBackVersionCode:I
    :cond_4
    move v5, v8

    .line 327
    goto :goto_0

    .restart local v2       #prefSoundBack:Landroid/preference/CheckBoxPreference;
    .restart local v3       #prefSoundBackVolume:Landroid/preference/Preference;
    .restart local v5       #removeKickBack:Z
    .restart local v7       #soundBackVersionCode:I
    :cond_5
    move v6, v8

    .line 342
    goto :goto_1
.end method

.method private checkProximitySupport()V
    .locals 5

    .prologue
    .line 277
    const-string v4, "sensor"

    invoke-virtual {p0, v4}, Lcom/google/android/marvin/talkback/TalkBackPreferencesActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    .line 278
    .local v1, manager:Landroid/hardware/SensorManager;
    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    .line 280
    .local v3, proximity:Landroid/hardware/Sensor;
    if-eqz v3, :cond_1

    .line 293
    :cond_0
    :goto_0
    return-void

    .line 285
    :cond_1
    const/high16 v4, 0x7f09

    invoke-direct {p0, v4}, Lcom/google/android/marvin/talkback/TalkBackPreferencesActivity;->findPreferenceByResId(I)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    .line 287
    .local v0, category:Landroid/preference/PreferenceGroup;
    const v4, 0x7f090003

    invoke-direct {p0, v4}, Lcom/google/android/marvin/talkback/TalkBackPreferencesActivity;->findPreferenceByResId(I)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    .line 289
    .local v2, prefProximity:Landroid/preference/CheckBoxPreference;
    if-eqz v2, :cond_0

    .line 290
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 291
    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private checkTelephonySupport()V
    .locals 6

    .prologue
    .line 229
    const-string v5, "phone"

    invoke-virtual {p0, v5}, Lcom/google/android/marvin/talkback/TalkBackPreferencesActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 230
    .local v4, telephony:Landroid/telephony/TelephonyManager;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    .line 232
    .local v1, phoneType:I
    if-eqz v1, :cond_1

    .line 248
    :cond_0
    :goto_0
    return-void

    .line 237
    :cond_1
    const/high16 v5, 0x7f09

    .line 236
    invoke-direct {p0, v5}, Lcom/google/android/marvin/talkback/TalkBackPreferencesActivity;->findPreferenceByResId(I)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    .line 238
    .local v0, category:Landroid/preference/PreferenceGroup;
    const v5, 0x7f09000e

    invoke-direct {p0, v5}, Lcom/google/android/marvin/talkback/TalkBackPreferencesActivity;->findPreferenceByResId(I)Landroid/preference/Preference;

    move-result-object v2

    .line 239
    .local v2, prefCallerId:Landroid/preference/Preference;
    const v5, 0x7f090001

    invoke-direct {p0, v5}, Lcom/google/android/marvin/talkback/TalkBackPreferencesActivity;->findPreferenceByResId(I)Landroid/preference/Preference;

    move-result-object v3

    .line 241
    .local v3, prefSpeakRinger:Landroid/preference/Preference;
    if-eqz v2, :cond_2

    .line 242
    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 245
    :cond_2
    if-eqz v3, :cond_0

    .line 246
    invoke-virtual {v0, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private checkTouchExplorationSupport()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 106
    .line 107
    const v3, 0x7f090013

    .line 106
    invoke-direct {p0, v3}, Lcom/google/android/marvin/talkback/TalkBackPreferencesActivity;->findPreferenceByResId(I)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    .line 109
    .local v0, category:Landroid/preference/PreferenceGroup;
    const v3, 0x7f090010

    .line 108
    invoke-direct {p0, v3}, Lcom/google/android/marvin/talkback/TalkBackPreferencesActivity;->findPreferenceByResId(I)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    .line 111
    .local v1, prefTouchExploration:Landroid/preference/CheckBoxPreference;
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-ge v3, v4, :cond_2

    .line 117
    invoke-virtual {p0}, Lcom/google/android/marvin/talkback/TalkBackPreferencesActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 123
    :cond_2
    invoke-virtual {v1, v5}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 126
    invoke-direct {p0}, Lcom/google/android/marvin/talkback/TalkBackPreferencesActivity;->updateTouchExplorationState()V

    .line 129
    const-string v3, "touch_exploration_enabled"

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 130
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/google/android/marvin/talkback/TalkBackPreferencesActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/marvin/talkback/TalkBackPreferencesActivity;->mTouchExploreObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v2, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 131
    iget-object v3, p0, Lcom/google/android/marvin/talkback/TalkBackPreferencesActivity;->mTouchExplorationChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method

.method private checkVibrationSupport()V
    .locals 4

    .prologue
    .line 255
    const-string v3, "vibrator"

    invoke-virtual {p0, v3}, Lcom/google/android/marvin/talkback/TalkBackPreferencesActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    .line 257
    .local v2, vibrator:Landroid/os/Vibrator;
    if-eqz v2, :cond_1

    invoke-static {v2}, Lcom/googlecode/eyesfree/compat/os/VibratorCompatUtils;->hasVibrator(Landroid/os/Vibrator;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 262
    :cond_1
    const v3, 0x7f090005

    invoke-direct {p0, v3}, Lcom/google/android/marvin/talkback/TalkBackPreferencesActivity;->findPreferenceByResId(I)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    .line 264
    .local v0, category:Landroid/preference/PreferenceGroup;
    const v3, 0x7f090006

    invoke-direct {p0, v3}, Lcom/google/android/marvin/talkback/TalkBackPreferencesActivity;->findPreferenceByResId(I)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    .line 266
    .local v1, prefVibration:Landroid/preference/CheckBoxPreference;
    if-eqz v1, :cond_0

    .line 267
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 268
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private findPreferenceByResId(I)Landroid/preference/Preference;
    .locals 1
    .parameter "resId"

    .prologue
    .line 370
    invoke-virtual {p0, p1}, Lcom/google/android/marvin/talkback/TalkBackPreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/marvin/talkback/TalkBackPreferencesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    return-object v0
.end method

.method private fixListSummaries(Landroid/preference/PreferenceGroup;)V
    .locals 5
    .parameter "group"

    .prologue
    .line 201
    if-nez p1, :cond_1

    .line 222
    :cond_0
    return-void

    .line 205
    :cond_1
    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    .line 207
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 208
    invoke-virtual {p1, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    .line 210
    .local v2, preference:Landroid/preference/Preference;
    instance-of v3, v2, Landroid/preference/PreferenceGroup;

    if-eqz v3, :cond_3

    .line 211
    check-cast v2, Landroid/preference/PreferenceGroup;

    .end local v2           #preference:Landroid/preference/Preference;
    invoke-direct {p0, v2}, Lcom/google/android/marvin/talkback/TalkBackPreferencesActivity;->fixListSummaries(Landroid/preference/PreferenceGroup;)V

    .line 207
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 212
    .restart local v2       #preference:Landroid/preference/Preference;
    :cond_3
    instance-of v3, v2, Landroid/preference/ListPreference;

    if-eqz v3, :cond_2

    .line 216
    iget-object v4, p0, Lcom/google/android/marvin/talkback/TalkBackPreferencesActivity;->mPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    move-object v3, v2

    .line 217
    check-cast v3, Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 216
    invoke-interface {v4, v2, v3}, Landroid/preference/Preference$OnPreferenceChangeListener;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 219
    iget-object v3, p0, Lcom/google/android/marvin/talkback/TalkBackPreferencesActivity;->mPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_1
.end method

.method private isAccessibilityEnabled(Landroid/content/ContentResolver;)Z
    .locals 3
    .parameter "resolver"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 183
    const-string v2, "accessibility_enabled"

    invoke-static {p1, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private isTouchExplorationEnabled(Landroid/content/ContentResolver;)Z
    .locals 3
    .parameter "resolver"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 192
    const-string v2, "touch_exploration_enabled"

    invoke-static {p1, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private updateTouchExplorationState()V
    .locals 9

    .prologue
    const v8, 0x7f09000f

    .line 140
    .line 141
    const v7, 0x7f090010

    .line 140
    invoke-direct {p0, v7}, Lcom/google/android/marvin/talkback/TalkBackPreferencesActivity;->findPreferenceByResId(I)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    .line 143
    .local v1, prefTouchExploration:Landroid/preference/CheckBoxPreference;
    if-nez v1, :cond_1

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/marvin/talkback/TalkBackPreferencesActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 148
    .local v6, resolver:Landroid/content/ContentResolver;
    invoke-virtual {p0}, Lcom/google/android/marvin/talkback/TalkBackPreferencesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 149
    .local v5, res:Landroid/content/res/Resources;
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 151
    .local v2, prefs:Landroid/content/SharedPreferences;
    const v7, 0x7f0b0008

    .line 150
    invoke-static {v2, v5, v8, v7}, Lcom/googlecode/eyesfree/utils/SharedPreferencesUtils;->getBooleanPref(Landroid/content/SharedPreferences;Landroid/content/res/Resources;II)Z

    move-result v4

    .line 152
    .local v4, requestedState:Z
    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    .line 157
    .local v3, reflectedState:Z
    invoke-direct {p0, v6}, Lcom/google/android/marvin/talkback/TalkBackPreferencesActivity;->isAccessibilityEnabled(Landroid/content/ContentResolver;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 158
    invoke-direct {p0, v6}, Lcom/google/android/marvin/talkback/TalkBackPreferencesActivity;->isTouchExplorationEnabled(Landroid/content/ContentResolver;)Z

    move-result v0

    .line 166
    .local v0, actualState:Z
    :goto_1
    if-eq v4, v0, :cond_2

    .line 167
    invoke-static {v2, v5, v8, v0}, Lcom/googlecode/eyesfree/utils/SharedPreferencesUtils;->putBooleanPref(Landroid/content/SharedPreferences;Landroid/content/res/Resources;IZ)V

    .line 173
    :cond_2
    if-eq v3, v0, :cond_0

    .line 174
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 160
    .end local v0           #actualState:Z
    :cond_3
    move v0, v4

    .restart local v0       #actualState:Z
    goto :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 63
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    const v0, 0x7f040001

    invoke-virtual {p0, v0}, Lcom/google/android/marvin/talkback/TalkBackPreferencesActivity;->addPreferencesFromResource(I)V

    .line 67
    invoke-virtual {p0}, Lcom/google/android/marvin/talkback/TalkBackPreferencesActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/marvin/talkback/TalkBackPreferencesActivity;->fixListSummaries(Landroid/preference/PreferenceGroup;)V

    .line 69
    invoke-direct {p0}, Lcom/google/android/marvin/talkback/TalkBackPreferencesActivity;->assignTutorialIntent()V

    .line 71
    invoke-direct {p0}, Lcom/google/android/marvin/talkback/TalkBackPreferencesActivity;->checkTouchExplorationSupport()V

    .line 72
    invoke-direct {p0}, Lcom/google/android/marvin/talkback/TalkBackPreferencesActivity;->checkTelephonySupport()V

    .line 73
    invoke-direct {p0}, Lcom/google/android/marvin/talkback/TalkBackPreferencesActivity;->checkVibrationSupport()V

    .line 74
    invoke-direct {p0}, Lcom/google/android/marvin/talkback/TalkBackPreferencesActivity;->checkProximitySupport()V

    .line 75
    invoke-direct {p0}, Lcom/google/android/marvin/talkback/TalkBackPreferencesActivity;->checkDeveloperOverlaySupport()V

    .line 76
    invoke-direct {p0}, Lcom/google/android/marvin/talkback/TalkBackPreferencesActivity;->checkInstalledBacks()V

    .line 77
    return-void
.end method
