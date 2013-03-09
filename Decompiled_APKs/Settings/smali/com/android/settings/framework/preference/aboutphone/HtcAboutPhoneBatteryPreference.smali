.class public Lcom/android/settings/framework/preference/aboutphone/HtcAboutPhoneBatteryPreference;
.super Lcom/android/settings/framework/preference/HtcAbstractActionPreference;
.source "HtcAboutPhoneBatteryPreference.java"


# static fields
.field public static final KEY:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/android/settings/framework/preference/aboutphone/HtcAboutPhoneBatteryPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/aboutphone/HtcAboutPhoneBatteryPreference;->TAG:Ljava/lang/String;

    .line 25
    sget-object v0, Lcom/android/settings/framework/preference/aboutphone/HtcAboutPhoneBatteryPreference;->TAG:Ljava/lang/String;

    sput-object v0, Lcom/android/settings/framework/preference/aboutphone/HtcAboutPhoneBatteryPreference;->KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/HtcAbstractActionPreference;-><init>(Landroid/content/Context;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/preference/HtcAbstractActionPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/preference/HtcAbstractActionPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    return-void
.end method


# virtual methods
.method protected getCustomActionType()Lcom/android/settings/framework/preference/HtcAbstractActionPreference$ActionType;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/android/settings/framework/preference/HtcAbstractActionPreference$ActionType;->START_FRAGMENT:Lcom/android/settings/framework/preference/HtcAbstractActionPreference$ActionType;

    return-object v0
.end method

.method protected getCustomIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 73
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 74
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/HtcAboutPhoneBatteryPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneBattery;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 75
    return-object v0
.end method

.method protected getCustomSummary()Ljava/lang/String;
    .locals 2

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/HtcAboutPhoneBatteryPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0499

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCustomTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/HtcAboutPhoneBatteryPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0498

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCustomTitleRes()I
    .locals 1

    .prologue
    .line 68
    const v0, 0x7f0c0498

    return v0
.end method
