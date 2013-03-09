.class public Lcom/android/settings/framework/preference/aboutphone/network/HtcCdmaLifeDataRxPreference;
.super Lcom/android/settings/framework/preference/HtcAbstractCdmaStatusPreference;
.source "HtcCdmaLifeDataRxPreference.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/android/settings/framework/preference/aboutphone/network/HtcCdmaLifeDataRxPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/aboutphone/network/HtcCdmaLifeDataRxPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/framework/preference/aboutphone/network/HtcCdmaLifeDataRxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 43
    const v0, 0x7f0d0012

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/framework/preference/aboutphone/network/HtcCdmaLifeDataRxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/preference/HtcAbstractCdmaStatusPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    return-void
.end method


# virtual methods
.method protected getCustomTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/network/HtcCdmaLifeDataRxPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0726

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPhoneTask()Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;->CDMA_LIFE_TIME_TOTAL_DATA_RX:Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;

    return-object v0
.end method

.method protected isConstantSummary()Z
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method
