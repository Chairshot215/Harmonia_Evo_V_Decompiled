.class public Lcom/android/phone/CdmaOperatingListPreference;
.super Lcom/htc/preference/HtcListPreference;
.source "CdmaOperatingListPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CdmaOperatingListPreference$1;,
        Lcom/android/phone/CdmaOperatingListPreference$MyHandler;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "CdmaRoamingListPreference"


# instance fields
.field private final CDMA_OPERATING_MODE_1XEVDO_ONLY:I

.field private final CDMA_OPERATING_MODE_1X_ONLY:I

.field private final CDMA_OPERATING_MODE_HYBRID:I

.field private final CDMA_OPERATING_MODE_QUASI_HYBRID:I

.field private mHandler:Lcom/android/phone/CdmaOperatingListPreference$MyHandler;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPreSettingOfOperatingMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CdmaOperatingListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/htc/preference/HtcListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    iput v2, p0, Lcom/android/phone/CdmaOperatingListPreference;->CDMA_OPERATING_MODE_HYBRID:I

    .line 49
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/phone/CdmaOperatingListPreference;->CDMA_OPERATING_MODE_QUASI_HYBRID:I

    .line 50
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/phone/CdmaOperatingListPreference;->CDMA_OPERATING_MODE_1XEVDO_ONLY:I

    .line 51
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/phone/CdmaOperatingListPreference;->CDMA_OPERATING_MODE_1X_ONLY:I

    .line 53
    iput v2, p0, Lcom/android/phone/CdmaOperatingListPreference;->mPreSettingOfOperatingMode:I

    .line 56
    new-instance v0, Lcom/android/phone/CdmaOperatingListPreference$MyHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/CdmaOperatingListPreference$MyHandler;-><init>(Lcom/android/phone/CdmaOperatingListPreference;Lcom/android/phone/CdmaOperatingListPreference$1;)V

    iput-object v0, p0, Lcom/android/phone/CdmaOperatingListPreference;->mHandler:Lcom/android/phone/CdmaOperatingListPreference$MyHandler;

    .line 61
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CdmaOperatingListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 62
    new-instance v0, Lcom/android/phone/CdmaOperatingListPreference$MyHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/CdmaOperatingListPreference$MyHandler;-><init>(Lcom/android/phone/CdmaOperatingListPreference;Lcom/android/phone/CdmaOperatingListPreference$1;)V

    iput-object v0, p0, Lcom/android/phone/CdmaOperatingListPreference;->mHandler:Lcom/android/phone/CdmaOperatingListPreference$MyHandler;

    .line 63
    iget-object v0, p0, Lcom/android/phone/CdmaOperatingListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/CdmaOperatingListPreference;->mHandler:Lcom/android/phone/CdmaOperatingListPreference$MyHandler;

    invoke-virtual {v1, v2}, Lcom/android/phone/CdmaOperatingListPreference$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->queryCdmaRoamingPreference(Landroid/os/Message;)V

    .line 65
    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/CdmaOperatingListPreference;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/phone/CdmaOperatingListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method


# virtual methods
.method protected onDialogClosed(Z)V
    .locals 6
    .parameter "positiveResult"

    .prologue
    .line 83
    invoke-super {p0, p1}, Lcom/htc/preference/HtcListPreference;->onDialogClosed(Z)V

    .line 85
    invoke-virtual {p0}, Lcom/android/phone/CdmaOperatingListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 86
    .local v2, value:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 87
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 91
    .local v0, buttonCdmaOperatingMode:I
    packed-switch v0, :pswitch_data_0

    .line 103
    const/4 v1, 0x0

    .line 107
    .local v1, statusCdmaOperatingMode:I
    :goto_0
    iget-object v3, p0, Lcom/android/phone/CdmaOperatingListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v4, p0, Lcom/android/phone/CdmaOperatingListPreference;->mHandler:Lcom/android/phone/CdmaOperatingListPreference$MyHandler;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/phone/CdmaOperatingListPreference$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Lcom/android/internal/telephony/Phone;->requesthTcSetHybridMode(ILandroid/os/Message;)V

    .line 111
    .end local v0           #buttonCdmaOperatingMode:I
    .end local v1           #statusCdmaOperatingMode:I
    :cond_0
    return-void

    .line 93
    .restart local v0       #buttonCdmaOperatingMode:I
    :pswitch_0
    const/4 v1, 0x1

    .line 94
    .restart local v1       #statusCdmaOperatingMode:I
    goto :goto_0

    .line 96
    .end local v1           #statusCdmaOperatingMode:I
    :pswitch_1
    const/4 v1, 0x2

    .line 97
    .restart local v1       #statusCdmaOperatingMode:I
    goto :goto_0

    .line 99
    .end local v1           #statusCdmaOperatingMode:I
    :pswitch_2
    const/4 v1, 0x3

    .line 100
    .restart local v1       #statusCdmaOperatingMode:I
    goto :goto_0

    .line 91
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 1
    .parameter "state"

    .prologue
    .line 73
    const-string v0, "ril.cdma.inecmmode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    :goto_0
    return-void

    .line 77
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/preference/HtcListPreference;->showDialog(Landroid/os/Bundle;)V

    goto :goto_0
.end method
