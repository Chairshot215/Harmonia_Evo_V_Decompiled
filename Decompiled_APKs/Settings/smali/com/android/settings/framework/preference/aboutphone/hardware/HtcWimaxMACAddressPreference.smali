.class public Lcom/android/settings/framework/preference/aboutphone/hardware/HtcWimaxMACAddressPreference;
.super Lcom/android/settings/framework/preference/HtcAbstractStatusPreference;
.source "HtcWimaxMACAddressPreference.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/android/settings/framework/preference/aboutphone/hardware/HtcBluetoothInfoPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/aboutphone/hardware/HtcWimaxMACAddressPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/framework/preference/aboutphone/hardware/HtcWimaxMACAddressPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 45
    const v0, 0x7f0d0012

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/framework/preference/aboutphone/hardware/HtcWimaxMACAddressPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/preference/HtcAbstractStatusPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    return-void
.end method


# virtual methods
.method protected getCustomTitle()Ljava/lang/String;
    .locals 3

    .prologue
    .line 62
    const/4 v0, 0x0

    .line 63
    .local v0, resID:I
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0x51

    if-ne v1, v2, :cond_0

    .line 64
    const v0, 0x7f0c045e

    .line 70
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/hardware/HtcWimaxMACAddressPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 65
    :cond_0
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0x50

    if-ne v1, v2, :cond_1

    .line 66
    const v0, 0x7f0c045f

    goto :goto_0

    .line 68
    :cond_1
    const v0, 0x7f0c045d

    goto :goto_0
.end method

.method protected isConstantSummary()Z
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x1

    return v0
.end method

.method protected onGetSummary()Ljava/lang/String;
    .locals 4

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/hardware/HtcWimaxMACAddressPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "wimax"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/net/wimax/WimaxController;

    .line 84
    .local v0, mWimaxController:Lcom/htc/net/wimax/WimaxController;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/htc/net/wimax/WimaxController;->getWimaxState()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 86
    const-string v2, "persist.wimax.0.MAC"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 90
    .local v1, summary:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 88
    .end local v1           #summary:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/hardware/HtcWimaxMACAddressPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c0a0d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #summary:Ljava/lang/String;
    goto :goto_0
.end method
