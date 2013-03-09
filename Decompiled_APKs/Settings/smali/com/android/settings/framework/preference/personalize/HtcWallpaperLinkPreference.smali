.class public final Lcom/android/settings/framework/preference/personalize/HtcWallpaperLinkPreference;
.super Lcom/android/settings/framework/preference/personalize/HtcLinkPreference;
.source "HtcWallpaperLinkPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    .line 30
    const/4 v2, 0x0

    const-string v3, "http://waprd.telstra.com/redirect?target=3glatestpics"

    const v4, 0x7f0c04dc

    const v5, 0x7f0c04dd

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/framework/preference/personalize/HtcLinkPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;II)V

    .line 31
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/personalize/HtcWallpaperLinkPreference;->initialize()V

    .line 32
    return-void
.end method


# virtual methods
.method public addToParent(Lcom/htc/preference/HtcPreferenceScreen;)Z
    .locals 2
    .parameter "parent"

    .prologue
    .line 70
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x9f

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_0

    .line 71
    invoke-virtual {p1, p0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 72
    const/4 v0, 0x1

    .line 74
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
