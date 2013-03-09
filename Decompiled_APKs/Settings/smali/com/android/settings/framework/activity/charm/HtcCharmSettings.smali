.class public Lcom/android/settings/framework/activity/charm/HtcCharmSettings;
.super Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;
.source "HtcCharmSettings.java"


# static fields
.field private static INDEX:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    sput v0, Lcom/android/settings/framework/activity/charm/HtcCharmSettings;->INDEX:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 19
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 21
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/charm/HtcCharmSettings;->getPreferenceManager()Lcom/htc/preference/HtcPreferenceManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/charm/HtcCharmSettings;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v1

    .line 23
    .local v1, root:Lcom/htc/preference/HtcPreferenceScreen;
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/charm/HtcCharmSettings;->setPreferenceScreen(Lcom/htc/preference/HtcPreferenceScreen;)V

    .line 25
    const/4 v0, 0x0

    .line 27
    .local v0, preference:Lcom/htc/preference/HtcPreference;
    new-instance v0, Lcom/android/settings/framework/preference/charm/HtcCharmMessagePreference;

    .end local v0           #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/charm/HtcCharmSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/settings/framework/preference/charm/HtcCharmMessagePreference;-><init>(Landroid/content/Context;)V

    .line 28
    .restart local v0       #preference:Lcom/htc/preference/HtcPreference;
    sget v2, Lcom/android/settings/framework/activity/charm/HtcCharmSettings;->INDEX:I

    add-int/lit8 v3, v2, 0x1

    sput v3, Lcom/android/settings/framework/activity/charm/HtcCharmSettings;->INDEX:I

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setOrder(I)V

    .line 29
    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 30
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/activity/charm/HtcCharmSettings;->addCallback(Lcom/htc/preference/HtcPreference;)V

    .line 32
    new-instance v0, Lcom/android/settings/framework/preference/charm/HtcCharmPhonePreference;

    .end local v0           #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/charm/HtcCharmSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/settings/framework/preference/charm/HtcCharmPhonePreference;-><init>(Landroid/content/Context;)V

    .line 33
    .restart local v0       #preference:Lcom/htc/preference/HtcPreference;
    sget v2, Lcom/android/settings/framework/activity/charm/HtcCharmSettings;->INDEX:I

    add-int/lit8 v3, v2, 0x1

    sput v3, Lcom/android/settings/framework/activity/charm/HtcCharmSettings;->INDEX:I

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setOrder(I)V

    .line 34
    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 35
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/activity/charm/HtcCharmSettings;->addCallback(Lcom/htc/preference/HtcPreference;)V

    .line 37
    const-string v2, "ro.HorizontalVVM"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 38
    new-instance v0, Lcom/android/settings/framework/preference/charm/HtcCharmVoiceMailPreference;

    .end local v0           #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/charm/HtcCharmSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/settings/framework/preference/charm/HtcCharmVoiceMailPreference;-><init>(Landroid/content/Context;)V

    .line 39
    .restart local v0       #preference:Lcom/htc/preference/HtcPreference;
    sget v2, Lcom/android/settings/framework/activity/charm/HtcCharmSettings;->INDEX:I

    add-int/lit8 v3, v2, 0x1

    sput v3, Lcom/android/settings/framework/activity/charm/HtcCharmSettings;->INDEX:I

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setOrder(I)V

    .line 40
    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 41
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/activity/charm/HtcCharmSettings;->addCallback(Lcom/htc/preference/HtcPreference;)V

    .line 44
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/charm/HtcCharmSettings;->requestHandlers()V

    .line 45
    return-void
.end method
