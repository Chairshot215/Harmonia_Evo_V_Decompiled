.class public Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;
.super Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;
.source "InputMethodAndLanguageSettings.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;
    }
.end annotation


# static fields
.field private static final KEY_CURRENT_INPUT_METHOD:Ljava/lang/String; = "current_input_method"

.field private static final KEY_INPUT_METHOD_SELECTOR:Ljava/lang/String; = "input_method_selector"

.field private static final KEY_PHONE_LANGUAGE:Ljava/lang/String; = "phone_language"

.field private static final KEY_USER_DICTIONARY_SETTINGS:Ljava/lang/String; = "key_user_dictionary_settings"

.field private static final SHOW_INPUT_METHOD_SWITCHER_SETTINGS:Z

.field private static final sHardKeyboardKeys:[Ljava/lang/String;

.field private static final sSystemSettingNames:[Ljava/lang/String;


# instance fields
.field private mDefaultInputMethodSelectorVisibility:I

.field private mEnabledScis:[Landroid/view/textservice/SpellCheckerInfo;

.field private mHandler:Landroid/os/Handler;

.field private mHardKeyboardCategory:Lcom/htc/preference/HtcPreferenceCategory;

.field private mHaveHardKeyboard:Z

.field private mImis:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mImm:Landroid/view/inputmethod/InputMethodManager;

.field private mInputMethodPreferenceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/inputmethod/InputMethodPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mIsOnlyImeSettings:Z

.field private mLanguagePref:Lcom/htc/preference/HtcPreference;

.field private mSettingsObserver:Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;

.field private mShowInputMethodSelectorPref:Lcom/htc/preference/HtcListPreference;

.field private mTsm:Landroid/view/textservice/TextServicesManager;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 64
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "auto_replace"

    aput-object v1, v0, v2

    const-string v1, "auto_caps"

    aput-object v1, v0, v3

    const-string v1, "auto_punctuate"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->sSystemSettingNames:[Ljava/lang/String;

    .line 68
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "auto_replace"

    aput-object v1, v0, v2

    const-string v1, "auto_caps"

    aput-object v1, v0, v3

    const-string v1, "auto_punctuate"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->sHardKeyboardKeys:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;-><init>()V

    .line 72
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mDefaultInputMethodSelectorVisibility:I

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    .line 380
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->updateCurrentImeName()V

    return-void
.end method

.method private createImePreferenceHierarchy(Lcom/htc/preference/HtcPreferenceGroup;)V
    .locals 8
    .parameter "root"

    .prologue
    .line 338
    const-string v6, "hard_keyboard"

    invoke-virtual {p0, v6}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    .line 339
    .local v2, hardKeyPref:Lcom/htc/preference/HtcPreference;
    iget-boolean v6, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mIsOnlyImeSettings:Z

    if-eqz v6, :cond_1

    .line 340
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/preference/HtcPreferenceScreen;->removeAll()V

    .line 341
    if-eqz v2, :cond_0

    iget-boolean v6, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mHaveHardKeyboard:Z

    if-eqz v6, :cond_0

    .line 342
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 347
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 349
    :cond_1
    if-eqz v2, :cond_2

    .line 350
    iget-boolean v6, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mHaveHardKeyboard:Z

    if-eqz v6, :cond_4

    .line 351
    check-cast v2, Lcom/htc/preference/HtcPreferenceCategory;

    .end local v2           #hardKeyPref:Lcom/htc/preference/HtcPreference;
    iput-object v2, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardCategory:Lcom/htc/preference/HtcPreferenceCategory;

    .line 356
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/htc/preference/HtcPreferenceGroup;->removeAll()V

    .line 357
    iget-object v6, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 359
    iget-boolean v6, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mIsOnlyImeSettings:Z

    if-nez v6, :cond_3

    .line 361
    new-instance v1, Lcom/htc/preference/HtcPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v1, v6, v7}, Lcom/htc/preference/HtcPreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 362
    .local v1, currentIme:Lcom/htc/preference/HtcPreferenceScreen;
    const-string v6, "current_input_method"

    invoke-virtual {v1, v6}, Lcom/htc/preference/HtcPreferenceScreen;->setKey(Ljava/lang/String;)V

    .line 363
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0b76

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/htc/preference/HtcPreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 364
    invoke-virtual {p1, v1}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 367
    .end local v1           #currentIme:Lcom/htc/preference/HtcPreferenceScreen;
    :cond_3
    iget-object v6, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mImis:Ljava/util/List;

    if-nez v6, :cond_5

    const/4 v0, 0x0

    .line 368
    .local v0, N:I
    :goto_1
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    if-ge v3, v0, :cond_6

    .line 369
    iget-object v6, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mImis:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodInfo;

    .line 370
    .local v4, imi:Landroid/view/inputmethod/InputMethodInfo;
    invoke-direct {p0, v4, v0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getInputMethodPreference(Landroid/view/inputmethod/InputMethodInfo;I)Lcom/android/settings/inputmethod/InputMethodPreference;

    move-result-object v5

    .line 371
    .local v5, pref:Lcom/android/settings/inputmethod/InputMethodPreference;
    iget-object v6, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 368
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 353
    .end local v0           #N:I
    .end local v3           #i:I
    .end local v4           #imi:Landroid/view/inputmethod/InputMethodInfo;
    .end local v5           #pref:Lcom/android/settings/inputmethod/InputMethodPreference;
    .restart local v2       #hardKeyPref:Lcom/htc/preference/HtcPreference;
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    goto :goto_0

    .line 367
    .end local v2           #hardKeyPref:Lcom/htc/preference/HtcPreference;
    :cond_5
    iget-object v6, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mImis:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_1

    .line 374
    .restart local v0       #N:I
    .restart local v3       #i:I
    :cond_6
    iget-object v6, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 375
    const/4 v3, 0x0

    :goto_3
    if-ge v3, v0, :cond_7

    .line 376
    iget-object v6, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/preference/HtcPreference;

    invoke-virtual {p1, v6}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 375
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 378
    :cond_7
    return-void
.end method

.method private getInputMethodPreference(Landroid/view/inputmethod/InputMethodInfo;I)Lcom/android/settings/inputmethod/InputMethodPreference;
    .locals 9
    .parameter "imi"
    .parameter "imiSize"

    .prologue
    .line 318
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 319
    .local v7, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {p1, v7}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 322
    .local v6, label:Ljava/lang/CharSequence;
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getSettingsActivity()Ljava/lang/String;

    move-result-object v8

    .line 323
    .local v8, settingsActivity:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 324
    new-instance v2, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 325
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 331
    :goto_0
    new-instance v0, Lcom/android/settings/inputmethod/InputMethodPreference;

    iget-object v3, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mImm:Landroid/view/inputmethod/InputMethodManager;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/inputmethod/InputMethodPreference;-><init>(Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;Landroid/content/Intent;Landroid/view/inputmethod/InputMethodManager;Landroid/view/inputmethod/InputMethodInfo;I)V

    .line 332
    .local v0, pref:Lcom/android/settings/inputmethod/InputMethodPreference;
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/inputmethod/InputMethodPreference;->setKey(Ljava/lang/String;)V

    .line 333
    invoke-virtual {v0, v6}, Lcom/android/settings/inputmethod/InputMethodPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 334
    return-object v0

    .line 327
    .end local v0           #pref:Lcom/android/settings/inputmethod/InputMethodPreference;
    .end local v2           #intent:Landroid/content/Intent;
    :cond_0
    const/4 v2, 0x0

    .restart local v2       #intent:Landroid/content/Intent;
    goto :goto_0
.end method

.method private loadInputMethodSelectorVisibility()I
    .locals 3

    .prologue
    .line 276
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "input_method_selector_visibility"

    iget v2, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mDefaultInputMethodSelectorVisibility:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private saveInputMethodSelectorVisibility(Ljava/lang/String;)V
    .locals 3
    .parameter "value"

    .prologue
    .line 267
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 268
    .local v0, intValue:I
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "input_method_selector_visibility"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 270
    invoke-direct {p0, v0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->updateInputMethodSelectorSummary(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    .end local v0           #intValue:I
    :goto_0
    return-void

    .line 271
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private updateActiveInputMethodsSummary()V
    .locals 3

    .prologue
    .line 294
    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/inputmethod/InputMethodPreference;

    .line 295
    .local v1, pref:Lcom/htc/preference/HtcPreference;
    instance-of v2, v1, Lcom/android/settings/inputmethod/InputMethodPreference;

    if-eqz v2, :cond_0

    .line 296
    check-cast v1, Lcom/android/settings/inputmethod/InputMethodPreference;

    .end local v1           #pref:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v1}, Lcom/android/settings/inputmethod/InputMethodPreference;->updateSummary()V

    goto :goto_0

    .line 299
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->updateCurrentImeName()V

    .line 300
    return-void
.end method

.method private updateCurrentImeName()V
    .locals 7

    .prologue
    .line 303
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 304
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-nez v3, :cond_1

    .line 315
    :cond_0
    :goto_0
    return-void

    .line 305
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v3

    const-string v4, "current_input_method"

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    .line 306
    .local v2, curPref:Lcom/htc/preference/HtcPreference;
    if-eqz v2, :cond_0

    .line 307
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v5, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mImis:Ljava/util/List;

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-static {v0, v3, v4, v5, v6}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->getCurrentInputMethodName(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/view/inputmethod/InputMethodManager;Ljava/util/List;Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 309
    .local v1, curIme:Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 310
    monitor-enter p0

    .line 311
    :try_start_0
    invoke-virtual {v2, v1}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 312
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private updateInputMethodSelectorSummary(I)V
    .locals 3
    .parameter "value"

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070047

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, inputMethodSelectorTitles:[Ljava/lang/String;
    array-length v1, v0

    if-le v1, p1, :cond_0

    .line 156
    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mShowInputMethodSelectorPref:Lcom/htc/preference/HtcListPreference;

    aget-object v2, v0, p1

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 157
    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mShowInputMethodSelectorPref:Lcom/htc/preference/HtcListPreference;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    .line 159
    :cond_0
    return-void
.end method

.method private updateUserDictionaryPreference(Lcom/htc/preference/HtcPreference;)V
    .locals 6
    .parameter "userDictionaryPreference"

    .prologue
    const/4 v5, 0x1

    .line 162
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 163
    .local v0, activity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/settings/inputmethod/UserDictionaryList;->getUserDictionaryLocalesList(Landroid/app/Activity;)Ljava/util/Set;

    move-result-object v3

    .line 164
    .local v3, localeList:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v3, :cond_1

    .line 167
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v4

    if-gt v4, v5, :cond_2

    .line 169
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.settings.USER_DICTIONARY_SETTINGS"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 171
    .local v1, intent:Landroid/content/Intent;
    const v4, 0x7f0c0b5b

    invoke-virtual {p1, v4}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    .line 172
    invoke-virtual {p1, v1}, Lcom/htc/preference/HtcPreference;->setIntent(Landroid/content/Intent;)V

    .line 179
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v4

    if-ne v4, v5, :cond_0

    .line 180
    invoke-interface {v3}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v2, v4, v5

    check-cast v2, Ljava/lang/String;

    .line 181
    .local v2, locale:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "locale"

    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 184
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #locale:Ljava/lang/String;
    :cond_2
    const v4, 0x7f0c0b5c

    invoke-virtual {p1, v4}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    .line 185
    const-class v4, Lcom/android/settings/inputmethod/UserDictionaryList;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/htc/preference/HtcPreference;->setFragment(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method getCustomizeDisplayName(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "locale"
    .parameter "localeString"

    .prologue
    .line 397
    if-nez p1, :cond_1

    .line 411
    .end local p2
    :cond_0
    :goto_0
    return-object p2

    .line 401
    .restart local p2
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070061

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 402
    .local v0, aliasLocaleCodes:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070062

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 403
    .local v1, aliasLocaleNames:[Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    .line 405
    .local v2, code:Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    array-length v4, v0

    if-ge v3, v4, :cond_0

    .line 406
    aget-object v4, v0, v3

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 407
    aget-object p2, v1, v3

    goto :goto_0

    .line 405
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    .line 91
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 93
    const v2, 0x7f050019

    invoke-virtual {p0, v2}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->addPreferencesFromResource(I)V

    .line 96
    const v2, 0x7f0c0003

    :try_start_0
    invoke-virtual {p0, v2}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mDefaultInputMethodSelectorVisibility:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 103
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v2

    const-string v3, "phone_language"

    invoke-virtual {p0, v3}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 115
    :goto_1
    new-instance v2, Lcom/android/settings/VoiceInputOutputSettings;

    invoke-direct {v2, p0}, Lcom/android/settings/VoiceInputOutputSettings;-><init>(Lcom/android/settings/SettingsPreferenceFragment;)V

    invoke-virtual {v2}, Lcom/android/settings/VoiceInputOutputSettings;->onCreate()V

    .line 120
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mHaveHardKeyboard:Z

    .line 124
    const-string v2, "android.settings.INPUT_METHOD_SETTINGS"

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mIsOnlyImeSettings:Z

    .line 126
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    const-string v2, "input_method"

    invoke-virtual {p0, v2}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    iput-object v2, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 128
    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodList()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mImis:Ljava/util/List;

    .line 129
    const-string v2, "keyboard_settings_category"

    invoke-virtual {p0, v2}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcPreferenceGroup;

    invoke-direct {p0, v2}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->createImePreferenceHierarchy(Lcom/htc/preference/HtcPreferenceGroup;)V

    .line 132
    const-string v2, "textservices"

    invoke-virtual {p0, v2}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/textservice/TextServicesManager;

    iput-object v2, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mTsm:Landroid/view/textservice/TextServicesManager;

    .line 133
    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mTsm:Landroid/view/textservice/TextServicesManager;

    invoke-static {v2}, Lcom/android/settings/inputmethod/SpellCheckerUtils;->getEnabledSpellCheckers(Landroid/view/textservice/TextServicesManager;)[Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mEnabledScis:[Landroid/view/textservice/SpellCheckerInfo;

    .line 134
    const-string v2, "spellcheckers_settings"

    invoke-virtual {p0, v2}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/inputmethod/SpellCheckersPreference;

    .line 136
    .local v1, scp:Lcom/android/settings/inputmethod/SpellCheckersPreference;
    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mEnabledScis:[Landroid/view/textservice/SpellCheckerInfo;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mEnabledScis:[Landroid/view/textservice/SpellCheckerInfo;

    array-length v2, v2

    if-lez v2, :cond_2

    .line 137
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 138
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/settings/Settings$SpellCheckersSettingsActivity;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 139
    if-eqz v1, :cond_0

    .line 140
    invoke-virtual {v1, p0, v0}, Lcom/android/settings/inputmethod/SpellCheckersPreference;->setFragmentIntent(Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;Landroid/content/Intent;)V

    .line 148
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    :goto_2
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mHandler:Landroid/os/Handler;

    .line 149
    new-instance v2, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;

    iget-object v3, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;-><init>(Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;Landroid/os/Handler;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mSettingsObserver:Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;

    .line 150
    return-void

    .line 105
    .end local v1           #scp:Lcom/android/settings/inputmethod/SpellCheckersPreference;
    :cond_1
    const-string v2, "phone_language"

    invoke-virtual {p0, v2}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mLanguagePref:Lcom/htc/preference/HtcPreference;

    goto/16 :goto_1

    .line 143
    .restart local v1       #scp:Lcom/android/settings/inputmethod/SpellCheckersPreference;
    :cond_2
    if-eqz v1, :cond_0

    .line 144
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    goto :goto_2

    .line 98
    .end local v1           #scp:Lcom/android/settings/inputmethod/SpellCheckersPreference;
    :catch_0
    move-exception v2

    goto/16 :goto_0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 228
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onPause()V

    .line 232
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mImis:Ljava/util/List;

    iget-boolean v2, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mHaveHardKeyboard:Z

    invoke-static {p0, v0, v1, v2}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->saveInputMethodSubtypeList(Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;Landroid/content/ContentResolver;Ljava/util/List;Z)V

    .line 234
    return-void
.end method

.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 1
    .parameter "preference"
    .parameter "value"

    .prologue
    .line 290
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z
    .locals 8
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 239
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 262
    :goto_0
    return v3

    .line 242
    :cond_0
    instance-of v5, p2, Lcom/htc/preference/HtcPreferenceScreen;

    if-eqz v5, :cond_3

    .line 243
    invoke-virtual {p2}, Lcom/htc/preference/HtcPreference;->getFragment()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 262
    :cond_1
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z

    move-result v3

    goto :goto_0

    .line 245
    :cond_2
    const-string v3, "current_input_method"

    invoke-virtual {p2}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 246
    const-string v3, "input_method"

    invoke-virtual {p0, v3}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 248
    .local v2, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker()V

    goto :goto_1

    .line 250
    .end local v2           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_3
    instance-of v5, p2, Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v5, :cond_1

    move-object v0, p2

    .line 251
    check-cast v0, Lcom/htc/preference/HtcCheckBoxPreference;

    .line 252
    .local v0, chkPref:Lcom/htc/preference/HtcCheckBoxPreference;
    iget-boolean v5, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mHaveHardKeyboard:Z

    if-eqz v5, :cond_1

    .line 253
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    sget-object v5, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->sHardKeyboardKeys:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_1

    .line 254
    iget-object v5, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardCategory:Lcom/htc/preference/HtcPreferenceCategory;

    sget-object v6, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->sHardKeyboardKeys:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {v5, v6}, Lcom/htc/preference/HtcPreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v5

    if-ne v0, v5, :cond_5

    .line 255
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->sSystemSettingNames:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {v0}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_4

    move v3, v4

    :cond_4
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move v3, v4

    .line 257
    goto :goto_0

    .line 253
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public onResume()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 191
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onResume()V

    .line 192
    iget-boolean v4, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mIsOnlyImeSettings:Z

    if-nez v4, :cond_0

    .line 193
    iget-object v4, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mLanguagePref:Lcom/htc/preference/HtcPreference;

    if-eqz v4, :cond_0

    .line 194
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 195
    .local v1, conf:Landroid/content/res/Configuration;
    iget-object v4, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v7, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v4, v7}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 197
    .local v3, locale:Ljava/lang/String;
    iget-object v4, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p0, v4, v3}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getCustomizeDisplayName(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 198
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v5, :cond_0

    .line 199
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 200
    iget-object v4, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mLanguagePref:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v4, v3}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 211
    .end local v1           #conf:Landroid/content/res/Configuration;
    .end local v3           #locale:Ljava/lang/String;
    :cond_0
    iget-boolean v4, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mHaveHardKeyboard:Z

    if-eqz v4, :cond_2

    .line 212
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    sget-object v4, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->sHardKeyboardKeys:[Ljava/lang/String;

    array-length v4, v4

    if-ge v2, v4, :cond_2

    .line 213
    iget-object v4, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardCategory:Lcom/htc/preference/HtcPreferenceCategory;

    sget-object v7, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->sHardKeyboardKeys:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-virtual {v4, v7}, Lcom/htc/preference/HtcPreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcCheckBoxPreference;

    .line 215
    .local v0, chkPref:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v7, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->sSystemSettingNames:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-static {v4, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-lez v4, :cond_1

    move v4, v5

    :goto_1
    invoke-virtual {v0, v4}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 212
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v4, v6

    .line 215
    goto :goto_1

    .line 221
    .end local v0           #chkPref:Lcom/htc/preference/HtcCheckBoxPreference;
    .end local v2           #i:I
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mImis:Ljava/util/List;

    const/4 v6, 0x0

    invoke-static {p0, v4, v5, v6}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->loadInputMethodSubtypeList(Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;Landroid/content/ContentResolver;Ljava/util/List;Ljava/util/Map;)V

    .line 223
    invoke-direct {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->updateActiveInputMethodsSummary()V

    .line 224
    return-void
.end method
