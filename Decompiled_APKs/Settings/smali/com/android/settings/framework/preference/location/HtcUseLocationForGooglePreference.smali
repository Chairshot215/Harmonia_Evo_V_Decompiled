.class public Lcom/android/settings/framework/preference/location/HtcUseLocationForGooglePreference;
.super Lcom/android/settings/framework/preference/location/HtcAbstractLocationCheckboxPreference;
.source "HtcUseLocationForGooglePreference.java"


# static fields
.field public static final KEY:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/android/settings/framework/preference/location/HtcUseLocationForGooglePreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/location/HtcUseLocationForGooglePreference;->KEY:Ljava/lang/String;

    .line 25
    sget-object v0, Lcom/android/settings/framework/preference/location/HtcUseLocationForGooglePreference;->KEY:Ljava/lang/String;

    sput-object v0, Lcom/android/settings/framework/preference/location/HtcUseLocationForGooglePreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/location/HtcAbstractLocationCheckboxPreference;-><init>(Landroid/content/Context;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/preference/location/HtcAbstractLocationCheckboxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/preference/location/HtcAbstractLocationCheckboxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    return-void
.end method


# virtual methods
.method protected getCustomKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/android/settings/framework/preference/location/HtcUseLocationForGooglePreference;->KEY:Ljava/lang/String;

    return-object v0
.end method

.method protected getCustomSummaryOff()Ljava/lang/String;
    .locals 2

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcUseLocationForGooglePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c063c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCustomSummaryOn()Ljava/lang/String;
    .locals 2

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcUseLocationForGooglePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c063d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCustomTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcUseLocationForGooglePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0a93

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onGetValue()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 87
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcUseLocationForGooglePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/GoogleLocationSettingHelper;->getUseLocationForServices(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onSetValue(Z)V
    .locals 1
    .parameter "value"

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcUseLocationForGooglePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/settings/GoogleLocationSettingHelper;->setUseLocationForServices(Landroid/content/Context;Z)V

    .line 106
    return-void
.end method
