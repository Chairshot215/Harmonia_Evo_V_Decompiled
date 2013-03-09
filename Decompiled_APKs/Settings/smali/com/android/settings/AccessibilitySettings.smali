.class public Lcom/android/settings/AccessibilitySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AccessibilitySettings.java"

# interfaces
.implements Lcom/android/settings/DialogCreatable;
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;,
        Lcom/android/settings/AccessibilitySettings$ToggleTouchExplorationFragment;,
        Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServiceFragment;,
        Lcom/android/settings/AccessibilitySettings$SettingsPackageMonitor;
    }
.end annotation


# static fields
.field private static final DEFAULT_SCREENREADER_MARKET_LINK:Ljava/lang/String; = "market://search?q=pname:com.google.android.marvin.talkback"

.field private static final DELAY_UPDATE_SERVICES_MILLIS:J = 0x3e8L

.field private static final DIALOG_ID_NO_ACCESSIBILITY_SERVICES:I = 0x1

.field private static final ENABLED_ACCESSIBILITY_SERVICES_SEPARATOR:C = ':'

.field private static final EXTRA_CHECKED:Ljava/lang/String; = "checked"

.field private static final EXTRA_DISABLE_WARNING_MESSAGE:Ljava/lang/String; = "disable_warning_message"

.field private static final EXTRA_DISABLE_WARNING_TITLE:Ljava/lang/String; = "disable_warning_title"

.field private static final EXTRA_ENABLE_WARNING_MESSAGE:Ljava/lang/String; = "enable_warning_message"

.field private static final EXTRA_ENABLE_WARNING_TITLE:Ljava/lang/String; = "enable_warning_title"

.field private static final EXTRA_PREFERENCE_KEY:Ljava/lang/String; = "preference_key"

.field private static final EXTRA_SETTINGS_COMPONENT_NAME:Ljava/lang/String; = "settings_component_name"

.field private static final EXTRA_SETTINGS_TITLE:Ljava/lang/String; = "settings_title"

.field private static final EXTRA_SUMMARY:Ljava/lang/String; = "summary"

.field private static final EXTRA_TITLE:Ljava/lang/String; = "title"

.field private static final KEY_ACCESSIBILITY_TUTORIAL_LAUNCHED_ONCE:Ljava/lang/String; = "key_accessibility_tutorial_launched_once"

.field private static final KEY_INSTALL_ACCESSIBILITY_SERVICE_OFFERED_ONCE:Ljava/lang/String; = "key_install_accessibility_service_offered_once"

.field private static final LARGE_FONT_SCALE:F = 1.3f

.field private static final SELECT_LONG_PRESS_TIMEOUT_PREFERENCE:Ljava/lang/String; = "select_long_press_timeout_preference"

.field private static final SERVICES_CATEGORY:Ljava/lang/String; = "services_category"

.field private static final SYSTEM_CATEGORY:Ljava/lang/String; = "system_category"

.field private static final SYSTEM_PROPERTY_MARKET_URL:Ljava/lang/String; = "ro.screenreader.market"

.field private static final TAG:Ljava/lang/String; = "AccessibilitySettings"

.field private static final TOGGLE_AUTO_ROTATE_SCREEN_PREFERENCE:Ljava/lang/String; = "toggle_auto_rotate_screen_preference"

.field private static final TOGGLE_LARGE_TEXT_PREFERENCE:Ljava/lang/String; = "toggle_large_text_preference"

.field private static final TOGGLE_POWER_BUTTON_ENDS_CALL_PREFERENCE:Ljava/lang/String; = "toggle_power_button_ends_call_preference"

.field private static final TOGGLE_SCRIPT_INJECTION_PREFERENCE:Ljava/lang/String; = "toggle_script_injection_preference"

.field private static final TOGGLE_TOUCH_EXPLORATION_PREFERENCE:Ljava/lang/String; = "toggle_touch_exploration_preference"

.field private static final sInstalledServices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private static final sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mLongPressTimeoutDefault:I

.field private final mLongPressTimeoutValuetoTitleMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNoServicesMessagePreference:Lcom/htc/preference/HtcPreference;

.field private mSelectLongPressTimeoutPreference:Lcom/htc/preference/HtcListPreference;

.field private mServicesCategory:Lcom/htc/preference/HtcPreferenceCategory;

.field private final mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private mSystemsCategory:Lcom/htc/preference/HtcPreferenceCategory;

.field private mToggleAutoRotateScreenPreference:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mTogglePowerButtonEndsCallPreference:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mToggleScriptInjectionPreference:Lcom/android/settings/AccessibilityEnableScriptInjectionPreference;

.field private mToggleTouchExplorationPreference:Lcom/htc/preference/HtcPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 137
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x3a

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    sput-object v0, Lcom/android/settings/AccessibilitySettings;->sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 140
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/settings/AccessibilitySettings;->sInstalledServices:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 142
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mLongPressTimeoutValuetoTitleMap:Ljava/util/Map;

    .line 149
    new-instance v0, Lcom/android/settings/AccessibilitySettings$SettingsPackageMonitor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/AccessibilitySettings$SettingsPackageMonitor;-><init>(Lcom/android/settings/AccessibilitySettings;Lcom/android/settings/AccessibilitySettings$1;)V

    iput-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 151
    new-instance v0, Lcom/android/settings/AccessibilitySettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/AccessibilitySettings$1;-><init>(Lcom/android/settings/AccessibilitySettings;)V

    iput-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mHandler:Landroid/os/Handler;

    .line 672
    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/AccessibilitySettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/settings/AccessibilitySettings;->loadInstalledServices()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/AccessibilitySettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/settings/AccessibilitySettings;->updateServicesPreferences()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/AccessibilitySettings;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Landroid/content/Context;)Ljava/util/Set;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    invoke-static {p0}, Lcom/android/settings/AccessibilitySettings;->getEnabledServicesFromSettings(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600()Ljava/util/Set;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/android/settings/AccessibilitySettings;->sInstalledServices:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$700(Landroid/app/Activity;)Lcom/android/settings/ToggleSwitch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    invoke-static {p0}, Lcom/android/settings/AccessibilitySettings;->createAndAddActionBarToggleSwitch(Landroid/app/Activity;)Lcom/android/settings/ToggleSwitch;

    move-result-object v0

    return-object v0
.end method

.method private static createAndAddActionBarToggleSwitch(Landroid/app/Activity;)Lcom/android/settings/ToggleSwitch;
    .locals 7
    .parameter "activity"

    .prologue
    const/16 v6, 0x10

    const/4 v5, -0x2

    const/4 v4, 0x0

    .line 588
    new-instance v1, Lcom/android/settings/ToggleSwitch;

    invoke-direct {v1, p0}, Lcom/android/settings/ToggleSwitch;-><init>(Landroid/content/Context;)V

    .line 589
    .local v1, toggleSwitch:Lcom/android/settings/ToggleSwitch;
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 591
    .local v0, padding:I
    invoke-virtual {v1, v4, v4, v0, v4}, Lcom/android/settings/ToggleSwitch;->setPadding(IIII)V

    .line 592
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v6, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 594
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    new-instance v3, Landroid/app/ActionBar$LayoutParams;

    const/16 v4, 0x15

    invoke-direct {v3, v5, v5, v4}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v1, v3}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 598
    return-object v1
.end method

.method private static getEnabledServicesFromSettings(Landroid/content/Context;)Ljava/util/Set;
    .locals 7
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 541
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "enabled_accessibility_services"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 543
    .local v4, enabledServicesSetting:Ljava/lang/String;
    if-nez v4, :cond_0

    .line 544
    const-string v4, ""

    .line 546
    :cond_0
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 547
    .local v3, enabledServices:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/ComponentName;>;"
    sget-object v0, Lcom/android/settings/AccessibilitySettings;->sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 548
    .local v0, colonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v0, v4}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 549
    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 550
    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v1

    .line 551
    .local v1, componentNameString:Ljava/lang/String;
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 553
    .local v2, enabledService:Landroid/content/ComponentName;
    if-eqz v2, :cond_1

    .line 554
    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 557
    .end local v1           #componentNameString:Ljava/lang/String;
    .end local v2           #enabledService:Landroid/content/ComponentName;
    :cond_2
    return-object v3
.end method

.method private handleToggleAutoRotateScreenPreferenceClick()V
    .locals 4

    .prologue
    .line 251
    :try_start_0
    const-string v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    .line 253
    .local v1, wm:Landroid/view/IWindowManager;
    iget-object v2, p0, Lcom/android/settings/AccessibilitySettings;->mToggleAutoRotateScreenPreference:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v2}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 254
    invoke-interface {v1}, Landroid/view/IWindowManager;->thawRotation()V

    .line 261
    .end local v1           #wm:Landroid/view/IWindowManager;
    :goto_0
    return-void

    .line 256
    .restart local v1       #wm:Landroid/view/IWindowManager;
    :cond_0
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->freezeRotation(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 258
    .end local v1           #wm:Landroid/view/IWindowManager;
    :catch_0
    move-exception v0

    .line 259
    .local v0, exc:Landroid/os/RemoteException;
    const-string v2, "AccessibilitySettings"

    const-string v3, "Unable to save auto-rotate setting"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleTogglePowerButtonEndsCallPreferenceClick()V
    .locals 3

    .prologue
    .line 242
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "incall_power_button_behavior"

    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mTogglePowerButtonEndsCallPreference:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v0}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 247
    return-void

    .line 242
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private initializeAllPreferences()V
    .locals 7

    .prologue
    .line 264
    const-string v4, "services_category"

    invoke-virtual {p0, v4}, Lcom/android/settings/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v4

    check-cast v4, Lcom/htc/preference/HtcPreferenceCategory;

    iput-object v4, p0, Lcom/android/settings/AccessibilitySettings;->mServicesCategory:Lcom/htc/preference/HtcPreferenceCategory;

    .line 265
    const-string v4, "system_category"

    invoke-virtual {p0, v4}, Lcom/android/settings/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v4

    check-cast v4, Lcom/htc/preference/HtcPreferenceCategory;

    iput-object v4, p0, Lcom/android/settings/AccessibilitySettings;->mSystemsCategory:Lcom/htc/preference/HtcPreferenceCategory;

    .line 274
    const-string v4, "toggle_power_button_ends_call_preference"

    invoke-virtual {p0, v4}, Lcom/android/settings/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v4

    check-cast v4, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v4, p0, Lcom/android/settings/AccessibilitySettings;->mTogglePowerButtonEndsCallPreference:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 276
    const/16 v4, 0x1a

    invoke-static {v4}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 278
    :cond_0
    iget-object v4, p0, Lcom/android/settings/AccessibilitySettings;->mSystemsCategory:Lcom/htc/preference/HtcPreferenceCategory;

    iget-object v5, p0, Lcom/android/settings/AccessibilitySettings;->mTogglePowerButtonEndsCallPreference:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 282
    :cond_1
    const-string v4, "toggle_auto_rotate_screen_preference"

    invoke-virtual {p0, v4}, Lcom/android/settings/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v4

    check-cast v4, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v4, p0, Lcom/android/settings/AccessibilitySettings;->mToggleAutoRotateScreenPreference:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 286
    const-string v4, "toggle_touch_exploration_preference"

    invoke-virtual {p0, v4}, Lcom/android/settings/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/AccessibilitySettings;->mToggleTouchExplorationPreference:Lcom/htc/preference/HtcPreference;

    .line 289
    const-string v4, "select_long_press_timeout_preference"

    invoke-virtual {p0, v4}, Lcom/android/settings/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v4

    check-cast v4, Lcom/htc/preference/HtcListPreference;

    iput-object v4, p0, Lcom/android/settings/AccessibilitySettings;->mSelectLongPressTimeoutPreference:Lcom/htc/preference/HtcListPreference;

    .line 291
    iget-object v4, p0, Lcom/android/settings/AccessibilitySettings;->mSelectLongPressTimeoutPreference:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v4, p0}, Lcom/htc/preference/HtcListPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 292
    iget-object v4, p0, Lcom/android/settings/AccessibilitySettings;->mLongPressTimeoutValuetoTitleMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    if-nez v4, :cond_2

    .line 293
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070034

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 295
    .local v3, timeoutValues:[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/settings/AccessibilitySettings;->mLongPressTimeoutDefault:I

    .line 296
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070033

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 298
    .local v1, timeoutTitles:[Ljava/lang/String;
    array-length v2, v3

    .line 299
    .local v2, timeoutValueCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 300
    iget-object v4, p0, Lcom/android/settings/AccessibilitySettings;->mLongPressTimeoutValuetoTitleMap:Ljava/util/Map;

    aget-object v5, v3, v0

    aget-object v6, v1, v0

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 305
    .end local v0           #i:I
    .end local v1           #timeoutTitles:[Ljava/lang/String;
    .end local v2           #timeoutValueCount:I
    .end local v3           #timeoutValues:[Ljava/lang/String;
    :cond_2
    const-string v4, "toggle_script_injection_preference"

    invoke-virtual {p0, v4}, Lcom/android/settings/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v4

    check-cast v4, Lcom/android/settings/AccessibilityEnableScriptInjectionPreference;

    iput-object v4, p0, Lcom/android/settings/AccessibilitySettings;->mToggleScriptInjectionPreference:Lcom/android/settings/AccessibilityEnableScriptInjectionPreference;

    .line 307
    return-void
.end method

.method private loadInstalledServices()V
    .locals 8

    .prologue
    .line 525
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v3

    .line 528
    .local v3, installedServiceInfos:Ljava/util/List;,"Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    sget-object v4, Lcom/android/settings/AccessibilitySettings;->sInstalledServices:Ljava/util/Set;

    .line 529
    .local v4, installedServices:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-interface {v4}, Ljava/util/Set;->clear()V

    .line 530
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 531
    .local v2, installedServiceInfoCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 532
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v6}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v5

    .line 533
    .local v5, resolveInfo:Landroid/content/pm/ResolveInfo;
    new-instance v1, Landroid/content/ComponentName;

    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    .local v1, installedService:Landroid/content/ComponentName;
    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 531
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 538
    .end local v1           #installedService:Landroid/content/ComponentName;
    .end local v5           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_0
    return-void
.end method

.method private offerInstallAccessibilitySerivceOnce()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 480
    iget-object v3, p0, Lcom/android/settings/AccessibilitySettings;->mServicesCategory:Lcom/htc/preference/HtcPreferenceCategory;

    invoke-virtual {v3, v0}, Lcom/htc/preference/HtcPreferenceCategory;->getPreference(I)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/AccessibilitySettings;->mNoServicesMessagePreference:Lcom/htc/preference/HtcPreference;

    if-eq v3, v4, :cond_1

    .line 493
    :cond_0
    :goto_0
    return-void

    .line 483
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 484
    .local v1, preferences:Landroid/content/SharedPreferences;
    const-string v3, "key_install_accessibility_service_offered_once"

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_2

    move v0, v2

    .line 486
    .local v0, offerInstallService:Z
    :cond_2
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/settings/framework/flag/HtcSkuFlags;->supportGoogleMobileServices()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 487
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "key_install_accessibility_service_offered_once"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 491
    invoke-virtual {p0, v2}, Lcom/android/settings/AccessibilitySettings;->showDialog(I)V

    goto :goto_0
.end method

.method private updateAllPreferences()V
    .locals 0

    .prologue
    .line 310
    invoke-direct {p0}, Lcom/android/settings/AccessibilitySettings;->updateServicesPreferences()V

    .line 311
    invoke-direct {p0}, Lcom/android/settings/AccessibilitySettings;->updateSystemPreferences()V

    .line 312
    return-void
.end method

.method private updateServicesPreferences()V
    .locals 23

    .prologue
    .line 320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/AccessibilitySettings;->mServicesCategory:Lcom/htc/preference/HtcPreferenceCategory;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/htc/preference/HtcPreferenceCategory;->removeAll()V

    .line 322
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v4

    .line 324
    .local v4, accessibilityManager:Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v13

    .line 326
    .local v13, installedServices:Ljava/util/List;,"Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/settings/AccessibilitySettings;->getEnabledServicesFromSettings(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v9

    .line 328
    .local v9, enabledServices:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "accessibility_enabled"

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2

    const/4 v3, 0x1

    .line 331
    .local v3, accessibilityEnabled:Z
    :goto_0
    const/4 v11, 0x0

    .local v11, i:I
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v7

    .local v7, count:I
    :goto_1
    if-ge v11, v7, :cond_5

    .line 332
    invoke-interface {v13, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 334
    .local v12, info:Landroid/accessibilityservice/AccessibilityServiceInfo;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/AccessibilitySettings;->getPreferenceManager()Lcom/htc/preference/HtcPreferenceManager;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/htc/preference/HtcPreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v14

    .line 336
    .local v14, preference:Lcom/htc/preference/HtcPreferenceScreen;
    invoke-virtual {v12}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/AccessibilitySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    .line 338
    .local v18, title:Ljava/lang/String;
    invoke-virtual {v12}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v16, v0

    .line 339
    .local v16, serviceInfo:Landroid/content/pm/ServiceInfo;
    new-instance v6, Landroid/content/ComponentName;

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v6, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    .local v6, componentName:Landroid/content/ComponentName;
    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Lcom/htc/preference/HtcPreferenceScreen;->setKey(Ljava/lang/String;)V

    .line 344
    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Lcom/htc/preference/HtcPreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 345
    if-eqz v3, :cond_3

    invoke-interface {v9, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3

    const/4 v15, 0x1

    .line 347
    .local v15, serviceEnabled:Z
    :goto_2
    if-eqz v15, :cond_4

    .line 348
    const v19, 0x7f0c0ba9

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Lcom/htc/preference/HtcPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 353
    :goto_3
    invoke-virtual {v14, v11}, Lcom/htc/preference/HtcPreferenceScreen;->setOrder(I)V

    .line 354
    const-class v19, Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServiceFragment;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Lcom/htc/preference/HtcPreferenceScreen;->setFragment(Ljava/lang/String;)V

    .line 355
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Lcom/htc/preference/HtcPreferenceScreen;->setPersistent(Z)V

    .line 357
    invoke-virtual {v14}, Lcom/htc/preference/HtcPreferenceScreen;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    .line 358
    .local v10, extras:Landroid/os/Bundle;
    const-string v19, "preference_key"

    invoke-virtual {v14}, Lcom/htc/preference/HtcPreferenceScreen;->getKey()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    const-string v19, "checked"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0, v15}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 360
    const-string v19, "title"

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    invoke-virtual {v12}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getDescription()Ljava/lang/String;

    move-result-object v8

    .line 363
    .local v8, description:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 364
    const v19, 0x7f0c0bb9

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 366
    :cond_0
    const-string v19, "summary"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    invoke-virtual {v12}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/AccessibilitySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 370
    .local v5, applicationLabel:Ljava/lang/CharSequence;
    const-string v19, "enable_warning_title"

    const v20, 0x7f0c0baf

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v5, v21, v22

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/AccessibilitySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    const-string v19, "enable_warning_message"

    const v20, 0x7f0c0bb0

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v5, v21, v22

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/AccessibilitySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    const-string v19, "disable_warning_title"

    const v20, 0x7f0c0bb1

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v5, v21, v22

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/AccessibilitySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    const-string v19, "disable_warning_message"

    const v20, 0x7f0c0bb2

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v5, v21, v22

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/AccessibilitySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    invoke-virtual {v12}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getSettingsActivityName()Ljava/lang/String;

    move-result-object v17

    .line 383
    .local v17, settingsClassName:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_1

    .line 384
    const-string v19, "settings_title"

    const v20, 0x7f0c0ba7

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    const-string v19, "settings_component_name"

    new-instance v20, Landroid/content/ComponentName;

    invoke-virtual {v12}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v21

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v20}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/AccessibilitySettings;->mServicesCategory:Lcom/htc/preference/HtcPreferenceCategory;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Lcom/htc/preference/HtcPreferenceCategory;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 331
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 328
    .end local v3           #accessibilityEnabled:Z
    .end local v5           #applicationLabel:Ljava/lang/CharSequence;
    .end local v6           #componentName:Landroid/content/ComponentName;
    .end local v7           #count:I
    .end local v8           #description:Ljava/lang/String;
    .end local v10           #extras:Landroid/os/Bundle;
    .end local v11           #i:I
    .end local v12           #info:Landroid/accessibilityservice/AccessibilityServiceInfo;
    .end local v14           #preference:Lcom/htc/preference/HtcPreferenceScreen;
    .end local v15           #serviceEnabled:Z
    .end local v16           #serviceInfo:Landroid/content/pm/ServiceInfo;
    .end local v17           #settingsClassName:Ljava/lang/String;
    .end local v18           #title:Ljava/lang/String;
    :cond_2
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 345
    .restart local v3       #accessibilityEnabled:Z
    .restart local v6       #componentName:Landroid/content/ComponentName;
    .restart local v7       #count:I
    .restart local v11       #i:I
    .restart local v12       #info:Landroid/accessibilityservice/AccessibilityServiceInfo;
    .restart local v14       #preference:Lcom/htc/preference/HtcPreferenceScreen;
    .restart local v16       #serviceInfo:Landroid/content/pm/ServiceInfo;
    .restart local v18       #title:Ljava/lang/String;
    :cond_3
    const/4 v15, 0x0

    goto/16 :goto_2

    .line 350
    .restart local v15       #serviceEnabled:Z
    :cond_4
    const v19, 0x7f0c0baa

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Lcom/htc/preference/HtcPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 394
    .end local v6           #componentName:Landroid/content/ComponentName;
    .end local v12           #info:Landroid/accessibilityservice/AccessibilityServiceInfo;
    .end local v14           #preference:Lcom/htc/preference/HtcPreferenceScreen;
    .end local v15           #serviceEnabled:Z
    .end local v16           #serviceInfo:Landroid/content/pm/ServiceInfo;
    .end local v18           #title:Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/AccessibilitySettings;->mServicesCategory:Lcom/htc/preference/HtcPreferenceCategory;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/htc/preference/HtcPreferenceCategory;->getPreferenceCount()I

    move-result v19

    if-nez v19, :cond_7

    .line 395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/AccessibilitySettings;->mNoServicesMessagePreference:Lcom/htc/preference/HtcPreference;

    move-object/from16 v19, v0

    if-nez v19, :cond_6

    .line 396
    new-instance v19, Lcom/android/settings/AccessibilitySettings$2;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/settings/AccessibilitySettings$2;-><init>(Lcom/android/settings/AccessibilitySettings;Landroid/content/Context;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/AccessibilitySettings;->mNoServicesMessagePreference:Lcom/htc/preference/HtcPreference;

    .line 410
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/AccessibilitySettings;->mNoServicesMessagePreference:Lcom/htc/preference/HtcPreference;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/htc/preference/HtcPreference;->setPersistent(Z)V

    .line 411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/AccessibilitySettings;->mNoServicesMessagePreference:Lcom/htc/preference/HtcPreference;

    move-object/from16 v19, v0

    const v20, 0x7f04008a

    invoke-virtual/range {v19 .. v20}, Lcom/htc/preference/HtcPreference;->setLayoutResource(I)V

    .line 413
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/AccessibilitySettings;->mNoServicesMessagePreference:Lcom/htc/preference/HtcPreference;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/htc/preference/HtcPreference;->setSelectable(Z)V

    .line 415
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/AccessibilitySettings;->mServicesCategory:Lcom/htc/preference/HtcPreferenceCategory;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/AccessibilitySettings;->mNoServicesMessagePreference:Lcom/htc/preference/HtcPreference;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/htc/preference/HtcPreferenceCategory;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 417
    :cond_7
    return-void
.end method

.method private updateSystemPreferences()V
    .locals 12

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 431
    const/16 v7, 0x1a

    invoke-static {v7}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 433
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v10, "incall_power_button_behavior"

    invoke-static {v7, v10, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 436
    .local v1, incallPowerBehavior:I
    const/4 v7, 0x2

    if-ne v1, v7, :cond_1

    move v3, v8

    .line 438
    .local v3, powerButtonEndsCall:Z
    :goto_0
    iget-object v7, p0, Lcom/android/settings/AccessibilitySettings;->mTogglePowerButtonEndsCallPreference:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v7, v3}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 442
    .end local v1           #incallPowerBehavior:I
    .end local v3           #powerButtonEndsCall:Z
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v10, "accelerometer_rotation"

    invoke-static {v7, v10, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_2

    move v0, v8

    .line 444
    .local v0, autoRotationEnabled:Z
    :goto_1
    iget-object v7, p0, Lcom/android/settings/AccessibilitySettings;->mToggleAutoRotateScreenPreference:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v7, v0}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 447
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 448
    iget-object v7, p0, Lcom/android/settings/AccessibilitySettings;->mSystemsCategory:Lcom/htc/preference/HtcPreferenceCategory;

    iget-object v10, p0, Lcom/android/settings/AccessibilitySettings;->mToggleTouchExplorationPreference:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v7, v10}, Lcom/htc/preference/HtcPreferenceCategory;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 449
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v10, "touch_exploration_enabled"

    invoke-static {v7, v10, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v8, :cond_3

    move v5, v8

    .line 451
    .local v5, touchExplorationEnabled:Z
    :goto_2
    if-eqz v5, :cond_4

    .line 452
    iget-object v7, p0, Lcom/android/settings/AccessibilitySettings;->mToggleTouchExplorationPreference:Lcom/htc/preference/HtcPreference;

    const v10, 0x7f0c0ba9

    invoke-virtual {p0, v10}, Lcom/android/settings/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 454
    iget-object v7, p0, Lcom/android/settings/AccessibilitySettings;->mToggleTouchExplorationPreference:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v7}, Lcom/htc/preference/HtcPreference;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    const-string v10, "checked"

    invoke-virtual {v7, v10, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 466
    .end local v5           #touchExplorationEnabled:Z
    :goto_3
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v10, "long_press_timeout"

    iget v11, p0, Lcom/android/settings/AccessibilitySettings;->mLongPressTimeoutDefault:I

    invoke-static {v7, v10, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 468
    .local v2, longPressTimeout:I
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 469
    .local v6, value:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings/AccessibilitySettings;->mSelectLongPressTimeoutPreference:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v7, v6}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    .line 470
    iget-object v10, p0, Lcom/android/settings/AccessibilitySettings;->mSelectLongPressTimeoutPreference:Lcom/htc/preference/HtcListPreference;

    iget-object v7, p0, Lcom/android/settings/AccessibilitySettings;->mLongPressTimeoutValuetoTitleMap:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v10, v7}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 473
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v10, "accessibility_script_injection"

    invoke-static {v7, v10, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v8, :cond_6

    move v4, v8

    .line 475
    .local v4, scriptInjectionAllowed:Z
    :goto_4
    iget-object v7, p0, Lcom/android/settings/AccessibilitySettings;->mToggleScriptInjectionPreference:Lcom/android/settings/AccessibilityEnableScriptInjectionPreference;

    invoke-virtual {v7, v4}, Lcom/android/settings/AccessibilityEnableScriptInjectionPreference;->setInjectionAllowed(Z)V

    .line 476
    return-void

    .end local v0           #autoRotationEnabled:Z
    .end local v2           #longPressTimeout:I
    .end local v4           #scriptInjectionAllowed:Z
    .end local v6           #value:Ljava/lang/String;
    .restart local v1       #incallPowerBehavior:I
    :cond_1
    move v3, v9

    .line 436
    goto/16 :goto_0

    .end local v1           #incallPowerBehavior:I
    :cond_2
    move v0, v9

    .line 442
    goto :goto_1

    .restart local v0       #autoRotationEnabled:Z
    :cond_3
    move v5, v9

    .line 449
    goto :goto_2

    .line 456
    .restart local v5       #touchExplorationEnabled:Z
    :cond_4
    iget-object v7, p0, Lcom/android/settings/AccessibilitySettings;->mToggleTouchExplorationPreference:Lcom/htc/preference/HtcPreference;

    const v10, 0x7f0c0baa

    invoke-virtual {p0, v10}, Lcom/android/settings/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 458
    iget-object v7, p0, Lcom/android/settings/AccessibilitySettings;->mToggleTouchExplorationPreference:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v7}, Lcom/htc/preference/HtcPreference;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    const-string v10, "checked"

    invoke-virtual {v7, v10, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_3

    .line 462
    .end local v5           #touchExplorationEnabled:Z
    :cond_5
    iget-object v7, p0, Lcom/android/settings/AccessibilitySettings;->mSystemsCategory:Lcom/htc/preference/HtcPreferenceCategory;

    iget-object v10, p0, Lcom/android/settings/AccessibilitySettings;->mToggleTouchExplorationPreference:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v7, v10}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    goto :goto_3

    .restart local v2       #longPressTimeout:I
    .restart local v6       #value:Ljava/lang/String;
    :cond_6
    move v4, v9

    .line 473
    goto :goto_4
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 178
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 179
    const/high16 v0, 0x7f05

    invoke-virtual {p0, v0}, Lcom/android/settings/AccessibilitySettings;->addPreferencesFromResource(I)V

    .line 180
    invoke-direct {p0}, Lcom/android/settings/AccessibilitySettings;->initializeAllPreferences()V

    .line 181
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "dialogId"

    .prologue
    const/4 v0, 0x0

    .line 497
    packed-switch p1, :pswitch_data_0

    .line 520
    :goto_0
    return-object v0

    .line 499
    :pswitch_0
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c0bb4

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0bb5

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/settings/AccessibilitySettings$3;

    invoke-direct {v3, p0}, Lcom/android/settings/AccessibilitySettings$3;-><init>(Lcom/android/settings/AccessibilitySettings;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    invoke-virtual {v1, v2, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    goto :goto_0

    .line 497
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 197
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 198
    return-void
.end method

.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 4
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 201
    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings;->mSelectLongPressTimeoutPreference:Lcom/htc/preference/HtcListPreference;

    if-ne p1, v1, :cond_0

    move-object v0, p2

    .line 202
    check-cast v0, Ljava/lang/String;

    .line 203
    .local v0, stringValue:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "long_press_timeout"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 205
    iget-object v2, p0, Lcom/android/settings/AccessibilitySettings;->mSelectLongPressTimeoutPreference:Lcom/htc/preference/HtcListPreference;

    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings;->mLongPressTimeoutValuetoTitleMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 207
    const/4 v1, 0x1

    .line 209
    .end local v0           #stringValue:Ljava/lang/String;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z
    .locals 2
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v0, 0x1

    .line 220
    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings;->mTogglePowerButtonEndsCallPreference:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne v1, p2, :cond_0

    .line 221
    invoke-direct {p0}, Lcom/android/settings/AccessibilitySettings;->handleTogglePowerButtonEndsCallPreferenceClick()V

    .line 227
    :goto_0
    return v0

    .line 223
    :cond_0
    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings;->mToggleAutoRotateScreenPreference:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne v1, p2, :cond_1

    .line 224
    invoke-direct {p0}, Lcom/android/settings/AccessibilitySettings;->handleToggleAutoRotateScreenPreferenceClick()V

    goto :goto_0

    .line 227
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 185
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 186
    invoke-direct {p0}, Lcom/android/settings/AccessibilitySettings;->loadInstalledServices()V

    .line 187
    invoke-direct {p0}, Lcom/android/settings/AccessibilitySettings;->updateAllPreferences()V

    .line 188
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mServicesCategory:Lcom/htc/preference/HtcPreferenceCategory;

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceCategory;->getPreference(I)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings;->mNoServicesMessagePreference:Lcom/htc/preference/HtcPreference;

    if-ne v0, v1, :cond_0

    .line 189
    invoke-direct {p0}, Lcom/android/settings/AccessibilitySettings;->offerInstallAccessibilitySerivceOnce()V

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Z)V

    .line 192
    return-void
.end method
