.class public Lcom/android/settings/framework/preference/location/HtcRecoverLocationsPreference;
.super Lcom/htc/preference/HtcPreferenceScreen;
.source "HtcRecoverLocationsPreference.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;


# static fields
.field protected static final INTENT_ACTION:Ljava/lang/String; = "com.htc.laputa.HtcLaputaInstaller.HLIRecoverLocations"

.field public static final KEY:Ljava/lang/String; = "RECOVER_LOCATIONS"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/preference/HtcPreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/location/HtcRecoverLocationsPreference;->initialize(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/htc/preference/HtcPreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/location/HtcRecoverLocationsPreference;->initialize(Landroid/content/Context;)V

    .line 44
    return-void
.end method

.method private initialize(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcRecoverLocationsPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 51
    const-string v0, "RECOVER_LOCATIONS"

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/location/HtcRecoverLocationsPreference;->setKey(Ljava/lang/String;)V

    .line 54
    :cond_0
    const v0, 0x7f0c00b4

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/location/HtcRecoverLocationsPreference;->setTitle(I)V

    .line 55
    const v0, 0x7f0c00b5

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/location/HtcRecoverLocationsPreference;->setSummary(I)V

    .line 57
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.laputa.HtcLaputaInstaller.HLIRecoverLocations"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/location/HtcRecoverLocationsPreference;->setIntent(Landroid/content/Intent;)V

    .line 58
    invoke-virtual {p0, p0}, Lcom/android/settings/framework/preference/location/HtcRecoverLocationsPreference;->setOnPreferenceClickListener(Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;)V

    .line 59
    return-void
.end method


# virtual methods
.method public onPreferenceClick(Lcom/htc/preference/HtcPreference;)Z
    .locals 4
    .parameter "preference"

    .prologue
    const/4 v3, 0x1

    .line 63
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcRecoverLocationsPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcRecoverLocationsPreference;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :goto_0
    return v3

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcRecoverLocationsPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c0064

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
