.class public final Lcom/android/settings/framework/preference/location/HtcLocatePreference;
.super Lcom/htc/preference/HtcCheckBoxPreference;
.source "HtcLocatePreference.java"


# static fields
.field public static final KEY:Ljava/lang/String; = "LOCATE"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/htc/preference/HtcCheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 28
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/location/HtcLocatePreference;->initialize(Landroid/content/Context;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/htc/preference/HtcCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/location/HtcLocatePreference;->initialize(Landroid/content/Context;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/preference/HtcCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/location/HtcLocatePreference;->initialize(Landroid/content/Context;)V

    .line 48
    return-void
.end method

.method private initialize(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 54
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcLocatePreference;->getKey()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 55
    const-string v3, "LOCATE"

    invoke-virtual {p0, v3}, Lcom/android/settings/framework/preference/location/HtcLocatePreference;->setKey(Ljava/lang/String;)V

    .line 57
    :cond_0
    const v3, 0x7f0c00af

    invoke-virtual {p0, v3}, Lcom/android/settings/framework/preference/location/HtcLocatePreference;->setTitle(I)V

    .line 58
    const v3, 0x7f0c00b0

    invoke-virtual {p0, v3}, Lcom/android/settings/framework/preference/location/HtcLocatePreference;->setSummary(I)V

    .line 61
    invoke-virtual {p0, v2}, Lcom/android/settings/framework/preference/location/HtcLocatePreference;->setPersistent(Z)V

    .line 64
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcLocatePreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "htc_locate_allowed"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 67
    .local v0, value:I
    if-eqz v0, :cond_1

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/location/HtcLocatePreference;->setChecked(Z)V

    .line 68
    return-void

    :cond_1
    move v1, v2

    .line 67
    goto :goto_0
.end method


# virtual methods
.method protected onClick()V
    .locals 3

    .prologue
    .line 72
    invoke-super {p0}, Lcom/htc/preference/HtcCheckBoxPreference;->onClick()V

    .line 73
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcLocatePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "htc_locate_allowed"

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcLocatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 77
    return-void

    .line 73
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
