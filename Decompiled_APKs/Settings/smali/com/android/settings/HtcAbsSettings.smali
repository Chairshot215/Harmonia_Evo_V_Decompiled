.class public Lcom/android/settings/HtcAbsSettings;
.super Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;
.source "HtcAbsSettings.java"


# static fields
.field protected static final EXTRA_IS_SWITCH_PREFERENCE:Ljava/lang/String; = "com.android.settings.Settings.EXTRA_IS_SWITCH_PREFERENCE"


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;-><init>()V

    .line 22
    const-class v0, Lcom/android/settings/HtcAbsSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/HtcAbsSettings;->TAG:Ljava/lang/String;

    return-void
.end method

.method private Log(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/settings/HtcAbsSettings;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    return-void
.end method

.method public static isPluginSwitchPreference(Lcom/htc/preference/HtcPreferenceActivity$Header;)Z
    .locals 2
    .parameter "header"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceActivity$Header;->extras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 30
    const/4 v0, 0x0

    .line 32
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v1, "com.android.settings.Settings.EXTRA_IS_SWITCH_PREFERENCE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;
    .locals 1
    .parameter "fragmentName"
    .parameter "args"
    .parameter "titleRes"
    .parameter "shortTitleRes"

    .prologue
    .line 59
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method
