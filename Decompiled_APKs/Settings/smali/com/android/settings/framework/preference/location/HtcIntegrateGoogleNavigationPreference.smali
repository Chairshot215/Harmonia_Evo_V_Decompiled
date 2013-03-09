.class public final Lcom/android/settings/framework/preference/location/HtcIntegrateGoogleNavigationPreference;
.super Lcom/htc/preference/HtcCheckBoxPreference;
.source "HtcIntegrateGoogleNavigationPreference.java"


# static fields
.field private static final DEFAULT_VALUE:I = 0x0

.field public static final KEY:Ljava/lang/String; = "INTEGRATE_GOOGLE_NAVIGATION"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/htc/preference/HtcCheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 31
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/location/HtcIntegrateGoogleNavigationPreference;->initialize(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/htc/preference/HtcCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/location/HtcIntegrateGoogleNavigationPreference;->initialize(Landroid/content/Context;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/preference/HtcCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/location/HtcIntegrateGoogleNavigationPreference;->initialize(Landroid/content/Context;)V

    .line 53
    return-void
.end method

.method private initialize(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcIntegrateGoogleNavigationPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 60
    const-string v2, "INTEGRATE_GOOGLE_NAVIGATION"

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/preference/location/HtcIntegrateGoogleNavigationPreference;->setKey(Ljava/lang/String;)V

    .line 62
    :cond_0
    const v2, 0x7f0c00b2

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/preference/location/HtcIntegrateGoogleNavigationPreference;->setTitle(I)V

    .line 63
    const v2, 0x7f0c00b3

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/preference/location/HtcIntegrateGoogleNavigationPreference;->setSummary(I)V

    .line 66
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/location/HtcIntegrateGoogleNavigationPreference;->setPersistent(Z)V

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcIntegrateGoogleNavigationPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "integrate_google_navigation"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 73
    .local v0, value:I
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/location/HtcIntegrateGoogleNavigationPreference;->setChecked(Z)V

    .line 74
    return-void
.end method


# virtual methods
.method protected onClick()V
    .locals 3

    .prologue
    .line 78
    invoke-super {p0}, Lcom/htc/preference/HtcCheckBoxPreference;->onClick()V

    .line 79
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcIntegrateGoogleNavigationPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "integrate_google_navigation"

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcIntegrateGoogleNavigationPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 83
    return-void

    .line 79
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
