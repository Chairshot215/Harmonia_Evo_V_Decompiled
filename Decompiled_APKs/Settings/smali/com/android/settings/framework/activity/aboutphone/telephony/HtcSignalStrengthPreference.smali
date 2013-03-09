.class public Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;
.super Lcom/htc/preference/HtcPreference;
.source "HtcSignalStrengthPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference$1;,
        Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference$MyHandler;
    }
.end annotation


# static fields
.field private static final EVENT_SERVICE_STATE_CHANGED:I = 0x12c

.field private static final EVENT_SIGNAL_STRENGTH_CHANGED:I = 0xc8


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

.field private mPhoneType:I

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;)V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 51
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;->mPhoneType:I

    .line 36
    invoke-direct {p0, p1}, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;->initial(Landroid/content/Context;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 51
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;->mPhoneType:I

    .line 41
    invoke-direct {p0, p1}, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;->initial(Landroid/content/Context;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 51
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;->mPhoneType:I

    .line 46
    invoke-direct {p0, p1}, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;->initial(Landroid/content/Context;)V

    .line 47
    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;)Lcom/android/internal/telephony/PhoneStateIntentReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;Landroid/telephony/ServiceState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;->updateServiceState(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method private initial(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;->mContext:Landroid/content/Context;

    .line 56
    new-instance v0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    new-instance v1, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference$MyHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference$MyHandler;-><init>(Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference$1;)V

    invoke-direct {v0, p1, v1}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    .line 57
    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifyServiceState(I)V

    .line 58
    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifySignalStrength(I)V

    .line 63
    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 65
    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    iput v0, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;->mPhoneType:I

    .line 67
    return-void
.end method

.method private updateServiceState(Landroid/telephony/ServiceState;)V
    .locals 1
    .parameter "serviceState"

    .prologue
    .line 95
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    .line 98
    .local v0, state:I
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;->updateSignalStrength()V

    .line 100
    return-void
.end method


# virtual methods
.method public registerIntent()V
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->registerIntent()V

    .line 180
    return-void
.end method

.method public unregisterIntent()V
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->unregisterIntent()V

    .line 184
    return-void
.end method

.method public updateSignalStrength()V
    .locals 9

    .prologue
    const v8, 0x7f0c077f

    const/4 v7, 0x2

    const/4 v6, -0x1

    .line 108
    iget-object v4, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    .line 110
    .local v3, state:I
    iget-object v4, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 119
    .local v0, r:Landroid/content/res/Resources;
    if-eqz v3, :cond_0

    .line 120
    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 176
    :goto_0
    return-void

    .line 125
    :cond_0
    iget-object v4, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v4

    const/16 v5, 0xe

    if-ne v4, v5, :cond_1

    .line 127
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f0c0616

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getSignalStregnthLteRSRP()I

    move-result v5

    mul-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "   "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f0c0617

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getSignalStregnthLteRSRQ()I

    move-result v5

    mul-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 146
    :cond_1
    iget v4, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;->mPhoneType:I

    if-ne v4, v7, :cond_4

    .line 147
    iget-object v4, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getSignalStrengthDbm()I

    move-result v2

    .line 148
    .local v2, signalDbm:I
    iget-object v4, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getSignalStrengthLevelAsu()I

    move-result v1

    .line 153
    .local v1, signalAsu:I
    :goto_1
    if-ne v6, v2, :cond_2

    const/4 v2, 0x0

    .line 154
    :cond_2
    if-ne v6, v1, :cond_3

    const/4 v1, 0x0

    .line 160
    :cond_3
    iget v4, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;->mPhoneType:I

    if-ne v4, v7, :cond_5

    .line 161
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 150
    .end local v1           #signalAsu:I
    .end local v2           #signalDbm:I
    :cond_4
    iget-object v4, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getHtcSignalStrengthDbm()I

    move-result v2

    .line 151
    .restart local v2       #signalDbm:I
    iget-object v4, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getHtcSignalStrengthLevelAsu()I

    move-result v1

    .restart local v1       #signalAsu:I
    goto :goto_1

    .line 167
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "   "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f0c0780

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method
