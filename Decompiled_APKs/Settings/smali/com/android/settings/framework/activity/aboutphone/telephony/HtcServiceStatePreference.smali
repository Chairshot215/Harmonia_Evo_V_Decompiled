.class public Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreference;
.super Lcom/htc/preference/HtcPreference;
.source "HtcServiceStatePreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreference$1;,
        Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreference$MyHandler;
    }
.end annotation


# static fields
.field private static final EVENT_SERVICE_STATE_CHANGED:I = 0x12c

.field private static final EVENT_SIGNAL_STRENGTH_CHANGED:I = 0xc8


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;)V

    .line 32
    invoke-direct {p0, p1}, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreference;->initial(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    invoke-direct {p0, p1}, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreference;->initial(Landroid/content/Context;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    invoke-direct {p0, p1}, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreference;->initial(Landroid/content/Context;)V

    .line 43
    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreference;)Lcom/android/internal/telephony/PhoneStateIntentReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreference;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreference;Landroid/telephony/ServiceState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreference;->updateServiceState(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method private initial(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreference;->mContext:Landroid/content/Context;

    .line 47
    new-instance v0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    new-instance v1, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreference$MyHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreference$MyHandler;-><init>(Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreference;Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreference$1;)V

    invoke-direct {v0, p1, v1}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreference;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    .line 48
    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreference;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifyServiceState(I)V

    .line 49
    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreference;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifySignalStrength(I)V

    .line 50
    return-void
.end method

.method private updateServiceState(Landroid/telephony/ServiceState;)V
    .locals 4
    .parameter "serviceState"

    .prologue
    .line 66
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    .line 67
    .local v1, state:I
    iget-object v2, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreference;->mContext:Landroid/content/Context;

    const v3, 0x7f0c077c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, display:Ljava/lang/String;
    packed-switch v1, :pswitch_data_0

    .line 82
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 83
    return-void

    .line 71
    :pswitch_0
    iget-object v2, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreference;->mContext:Landroid/content/Context;

    const v3, 0x7f0c076f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 72
    goto :goto_0

    .line 75
    :pswitch_1
    iget-object v2, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreference;->mContext:Landroid/content/Context;

    const v3, 0x7f0c0770

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 76
    goto :goto_0

    .line 78
    :pswitch_2
    iget-object v2, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreference;->mContext:Landroid/content/Context;

    const v3, 0x7f0c0772

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 69
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public registerIntent()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreference;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->registerIntent()V

    .line 87
    return-void
.end method

.method public unregisterIntent()V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreference;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->unregisterIntent()V

    .line 91
    return-void
.end method
