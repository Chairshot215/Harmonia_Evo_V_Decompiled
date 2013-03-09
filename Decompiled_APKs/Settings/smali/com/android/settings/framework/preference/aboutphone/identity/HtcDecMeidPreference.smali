.class public Lcom/android/settings/framework/preference/aboutphone/identity/HtcDecMeidPreference;
.super Lcom/android/settings/framework/preference/HtcAbstractStatusPreference;
.source "HtcDecMeidPreference.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/android/settings/framework/preference/aboutphone/identity/HtcDecMeidPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/aboutphone/identity/HtcDecMeidPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcDecMeidPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 48
    const v0, 0x7f0d0012

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcDecMeidPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/preference/HtcAbstractStatusPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    return-void
.end method


# virtual methods
.method protected getCustomTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcDecMeidPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c04e1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected isConstantSummary()Z
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x1

    return v0
.end method

.method protected onGetSummary()Ljava/lang/String;
    .locals 15

    .prologue
    const/16 v14, 0x10

    const/16 v13, 0xe

    const/16 v12, 0x8

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 71
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcDecMeidPreference;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "phone"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    .line 73
    .local v6, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, MEID:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcDecMeidPreference;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f0c0038

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, DecMEID:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 82
    const-string v7, "ro.gsm.imei"

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcDecMeidPreference;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0c075e

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 86
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v7, v13, :cond_1

    .line 88
    invoke-virtual {v1, v10, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 89
    .local v5, lowbits:Ljava/lang/Long;
    const-string v7, "%010d"

    new-array v8, v11, [Ljava/lang/Object;

    aput-object v5, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 90
    .local v4, lowValue:Ljava/lang/String;
    invoke-virtual {v1, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 91
    .local v3, highbits:Ljava/lang/Long;
    const-string v7, "%08d"

    new-array v8, v11, [Ljava/lang/Object;

    aput-object v3, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 92
    .local v2, highValue:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 95
    .end local v2           #highValue:Ljava/lang/String;
    .end local v3           #highbits:Ljava/lang/Long;
    .end local v4           #lowValue:Ljava/lang/String;
    .end local v5           #lowbits:Ljava/lang/Long;
    :cond_1
    return-object v0
.end method
