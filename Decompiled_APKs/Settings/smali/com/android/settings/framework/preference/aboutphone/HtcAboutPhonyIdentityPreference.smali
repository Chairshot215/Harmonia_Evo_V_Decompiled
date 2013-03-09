.class public Lcom/android/settings/framework/preference/aboutphone/HtcAboutPhonyIdentityPreference;
.super Lcom/android/settings/framework/preference/HtcAbstractActionPreference;
.source "HtcAboutPhonyIdentityPreference.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private bCDMAPhone:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/android/settings/framework/preference/aboutphone/HtcAboutPhonyIdentityPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/aboutphone/HtcAboutPhonyIdentityPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/HtcAbstractActionPreference;-><init>(Landroid/content/Context;)V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/framework/preference/aboutphone/HtcAboutPhonyIdentityPreference;->bCDMAPhone:Z

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/preference/HtcAbstractActionPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/framework/preference/aboutphone/HtcAboutPhonyIdentityPreference;->bCDMAPhone:Z

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/preference/HtcAbstractActionPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/framework/preference/aboutphone/HtcAboutPhonyIdentityPreference;->bCDMAPhone:Z

    .line 61
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/HtcAboutPhonyIdentityPreference;->initial()V

    .line 62
    return-void
.end method


# virtual methods
.method protected getCustomActionType()Lcom/android/settings/framework/preference/HtcAbstractActionPreference$ActionType;
    .locals 1

    .prologue
    .line 94
    sget-object v0, Lcom/android/settings/framework/preference/HtcAbstractActionPreference$ActionType;->START_FRAGMENT:Lcom/android/settings/framework/preference/HtcAbstractActionPreference$ActionType;

    return-object v0
.end method

.method protected getCustomIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 86
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 87
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/HtcAboutPhonyIdentityPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 89
    return-object v0
.end method

.method protected getCustomSummary()Ljava/lang/String;
    .locals 3

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/HtcAboutPhonyIdentityPreference;->initial()V

    .line 100
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/HtcAboutPhonyIdentityPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-boolean v0, p0, Lcom/android/settings/framework/preference/aboutphone/HtcAboutPhonyIdentityPreference;->bCDMAPhone:Z

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const v0, 0x7f0c0497

    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/HtcAboutPhonyIdentityPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/framework/flag/feature/HtcAboutPhoneFeatureFlags;->supportIMEI(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0c0494

    goto :goto_0

    :cond_1
    const v0, 0x7f0c0495

    goto :goto_0
.end method

.method protected getCustomTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/HtcAboutPhonyIdentityPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0493

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCustomTitleRes()I
    .locals 1

    .prologue
    .line 81
    const v0, 0x7f0c0493

    return v0
.end method

.method initial()V
    .locals 3

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/HtcAboutPhonyIdentityPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 68
    .local v0, nPhone:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 69
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/framework/preference/aboutphone/HtcAboutPhonyIdentityPreference;->bCDMAPhone:Z

    .line 71
    :cond_0
    return-void
.end method
