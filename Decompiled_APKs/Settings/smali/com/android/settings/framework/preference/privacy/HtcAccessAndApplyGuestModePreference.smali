.class public Lcom/android/settings/framework/preference/privacy/HtcAccessAndApplyGuestModePreference;
.super Lcom/android/settings/framework/preference/HtcAbstractActionPreference;
.source "HtcAccessAndApplyGuestModePreference.java"


# static fields
.field public static final KEY:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const-class v0, Lcom/android/settings/framework/preference/privacy/HtcAccessAndApplyGuestModePreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/privacy/HtcAccessAndApplyGuestModePreference;->TAG:Ljava/lang/String;

    .line 71
    sget-object v0, Lcom/android/settings/framework/preference/privacy/HtcAccessAndApplyGuestModePreference;->TAG:Ljava/lang/String;

    sput-object v0, Lcom/android/settings/framework/preference/privacy/HtcAccessAndApplyGuestModePreference;->KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/HtcAbstractActionPreference;-><init>(Landroid/content/Context;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 93
    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/preference/HtcAbstractActionPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 105
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/preference/HtcAbstractActionPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 106
    return-void
.end method


# virtual methods
.method protected getCustomActionType()Lcom/android/settings/framework/preference/HtcAbstractActionPreference$ActionType;
    .locals 1

    .prologue
    .line 133
    sget-object v0, Lcom/android/settings/framework/preference/HtcAbstractActionPreference$ActionType;->START_ACTIVITY:Lcom/android/settings/framework/preference/HtcAbstractActionPreference$ActionType;

    return-object v0
.end method

.method protected getCustomIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 126
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.htc.guestmode"

    const-string v2, "com.htc.guestmode.SettingsActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected getCustomKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    sget-object v0, Lcom/android/settings/framework/preference/privacy/HtcAccessAndApplyGuestModePreference;->KEY:Ljava/lang/String;

    return-object v0
.end method

.method protected getCustomTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/privacy/HtcAccessAndApplyGuestModePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c00be

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCustomTitleRes()I
    .locals 1

    .prologue
    .line 121
    const v0, 0x7f0c00be

    return v0
.end method
