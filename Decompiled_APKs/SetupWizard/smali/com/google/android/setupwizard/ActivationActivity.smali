.class public Lcom/google/android/setupwizard/ActivationActivity;
.super Lcom/google/android/setupwizard/BaseActivity;
.source "ActivationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final GENERIC_TEST_SUCCESS_DELAY:I

.field private final STATE_ACTIVATING:I

.field private final STATE_CANCEL_COMPLETED:I

.field private final STATE_CANCEL_REQUESTED:I

.field private final STATE_FAILED:I

.field private final STATE_NOT_STARTED:I

.field private final STATE_SHUTTING_DOWN:I

.field private final STATE_SUCCESS:I

.field private final STATE_WAITING_FOR_ACTIVATION_STATE:I

.field private final WAITING_FOR_CANCEL_TIMEOUT:I

.field private mActivationText:Landroid/widget/TextView;

.field private mActivationTitle:Landroid/widget/TextView;

.field private mAllowDontShowMode:Z

.field private mCancelButton:Landroid/widget/Button;

.field private mCancelEndtime:J

.field private mContinueSkipButton:Landroid/widget/Button;

.field private mCountdownText:Landroid/widget/TextView;

.field private mDoExitToHome:Z

.field private mFilter:Landroid/content/IntentFilter;

.field private mGenericEndtime:J

.field private mGenericMode:Z

.field private mGenericOtaspDefinitelyNeeded:Z

.field private final mGenericTestSuccess:Ljava/lang/Runnable;

.field private final mHandler:Landroid/os/Handler;

.field private mNetworkBars:Landroid/widget/ImageView;

.field private mNetworkName:Ljava/lang/CharSequence;

.field private mNetworkNotifier:Landroid/view/View;

.field private mNextButton:Landroid/widget/Button;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mServiceState:Landroid/telephony/ServiceState;

.field private mSharedPrefs:Landroid/content/SharedPreferences;

.field private mSignalStrength:Landroid/telephony/SignalStrength;

.field private mSignalStrengthImages:Landroid/content/res/TypedArray;

.field private mSignalStrengthPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mSkipButton:Landroid/widget/Button;

.field private mSkipButtonForStandAlone:Landroid/widget/Button;

.field private mState:I

.field private final mTimeOutWaitingForCancel:Ljava/lang/Runnable;

.field private final mTimeOutWaitingForGenericActivation:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x2710

    const/4 v1, 0x0

    .line 58
    invoke-direct {p0}, Lcom/google/android/setupwizard/BaseActivity;-><init>()V

    .line 114
    iput-boolean v1, p0, Lcom/google/android/setupwizard/ActivationActivity;->mAllowDontShowMode:Z

    .line 128
    iput-boolean v1, p0, Lcom/google/android/setupwizard/ActivationActivity;->mGenericOtaspDefinitelyNeeded:Z

    .line 138
    new-instance v0, Lcom/google/android/setupwizard/ActivationActivity$1;

    invoke-direct {v0, p0}, Lcom/google/android/setupwizard/ActivationActivity$1;-><init>(Lcom/google/android/setupwizard/ActivationActivity;)V

    iput-object v0, p0, Lcom/google/android/setupwizard/ActivationActivity;->mTimeOutWaitingForGenericActivation:Ljava/lang/Runnable;

    .line 156
    iput v2, p0, Lcom/google/android/setupwizard/ActivationActivity;->GENERIC_TEST_SUCCESS_DELAY:I

    .line 157
    new-instance v0, Lcom/google/android/setupwizard/ActivationActivity$2;

    invoke-direct {v0, p0}, Lcom/google/android/setupwizard/ActivationActivity$2;-><init>(Lcom/google/android/setupwizard/ActivationActivity;)V

    iput-object v0, p0, Lcom/google/android/setupwizard/ActivationActivity;->mGenericTestSuccess:Ljava/lang/Runnable;

    .line 167
    iput v1, p0, Lcom/google/android/setupwizard/ActivationActivity;->STATE_NOT_STARTED:I

    .line 169
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/setupwizard/ActivationActivity;->STATE_WAITING_FOR_ACTIVATION_STATE:I

    .line 171
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/setupwizard/ActivationActivity;->STATE_ACTIVATING:I

    .line 173
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/setupwizard/ActivationActivity;->STATE_CANCEL_REQUESTED:I

    .line 175
    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/setupwizard/ActivationActivity;->STATE_CANCEL_COMPLETED:I

    .line 177
    const/4 v0, 0x5

    iput v0, p0, Lcom/google/android/setupwizard/ActivationActivity;->STATE_SUCCESS:I

    .line 179
    const/4 v0, 0x6

    iput v0, p0, Lcom/google/android/setupwizard/ActivationActivity;->STATE_FAILED:I

    .line 184
    const/4 v0, 0x7

    iput v0, p0, Lcom/google/android/setupwizard/ActivationActivity;->STATE_SHUTTING_DOWN:I

    .line 185
    iput v1, p0, Lcom/google/android/setupwizard/ActivationActivity;->mState:I

    .line 204
    new-instance v0, Lcom/google/android/setupwizard/ActivationActivity$3;

    invoke-direct {v0, p0}, Lcom/google/android/setupwizard/ActivationActivity$3;-><init>(Lcom/google/android/setupwizard/ActivationActivity;)V

    iput-object v0, p0, Lcom/google/android/setupwizard/ActivationActivity;->mSignalStrengthPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 223
    iput v2, p0, Lcom/google/android/setupwizard/ActivationActivity;->WAITING_FOR_CANCEL_TIMEOUT:I

    .line 224
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/setupwizard/ActivationActivity;->mHandler:Landroid/os/Handler;

    .line 225
    new-instance v0, Lcom/google/android/setupwizard/ActivationActivity$4;

    invoke-direct {v0, p0}, Lcom/google/android/setupwizard/ActivationActivity$4;-><init>(Lcom/google/android/setupwizard/ActivationActivity;)V

    iput-object v0, p0, Lcom/google/android/setupwizard/ActivationActivity;->mTimeOutWaitingForCancel:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$002(Lcom/google/android/setupwizard/ActivationActivity;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-wide p1, p0, Lcom/google/android/setupwizard/ActivationActivity;->mGenericEndtime:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/google/android/setupwizard/ActivationActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget v0, p0, Lcom/google/android/setupwizard/ActivationActivity;->mState:I

    return v0
.end method

.method static synthetic access$1000(Landroid/content/Intent;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    invoke-static {p0}, Lcom/google/android/setupwizard/ActivationActivity;->getNetworkNameFromIntent(Landroid/content/Intent;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/android/setupwizard/ActivationActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/google/android/setupwizard/ActivationActivity;->shouldChangeTitleUsingNetworkName()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/google/android/setupwizard/ActivationActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/setupwizard/ActivationActivity;->mActivationTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/google/android/setupwizard/ActivationActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/setupwizard/ActivationActivity;->mCountdownText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/google/android/setupwizard/ActivationActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/google/android/setupwizard/ActivationActivity;->doShutdown()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/setupwizard/ActivationActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/google/android/setupwizard/ActivationActivity;->onFailure()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/setupwizard/ActivationActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/google/android/setupwizard/ActivationActivity;->onSuccess()V

    return-void
.end method

.method static synthetic access$402(Lcom/google/android/setupwizard/ActivationActivity;Landroid/telephony/SignalStrength;)Landroid/telephony/SignalStrength;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/google/android/setupwizard/ActivationActivity;->mSignalStrength:Landroid/telephony/SignalStrength;

    return-object p1
.end method

.method static synthetic access$500(Lcom/google/android/setupwizard/ActivationActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/google/android/setupwizard/ActivationActivity;->updateSignalStrength()V

    return-void
.end method

.method static synthetic access$602(Lcom/google/android/setupwizard/ActivationActivity;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/google/android/setupwizard/ActivationActivity;->mServiceState:Landroid/telephony/ServiceState;

    return-object p1
.end method

.method static synthetic access$702(Lcom/google/android/setupwizard/ActivationActivity;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-wide p1, p0, Lcom/google/android/setupwizard/ActivationActivity;->mCancelEndtime:J

    return-wide p1
.end method

.method static synthetic access$800(Lcom/google/android/setupwizard/ActivationActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/google/android/setupwizard/ActivationActivity;->onCancelCompleted()V

    return-void
.end method

.method static synthetic access$900(Lcom/google/android/setupwizard/ActivationActivity;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/setupwizard/ActivationActivity;->mNetworkName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$902(Lcom/google/android/setupwizard/ActivationActivity;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/google/android/setupwizard/ActivationActivity;->mNetworkName:Ljava/lang/CharSequence;

    return-object p1
.end method

.method private static calculateSignalStrength(Landroid/telephony/SignalStrength;Landroid/telephony/ServiceState;I)I
    .locals 1
    .parameter "signalStrength"
    .parameter "serviceState"
    .parameter "phoneState"

    .prologue
    .line 1040
    invoke-static {p0}, Lcom/google/android/setupwizard/ActivationActivity;->isCdma(Landroid/telephony/SignalStrength;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1041
    invoke-static {p0}, Lcom/google/android/setupwizard/ActivationActivity;->getGsmLevel(Landroid/telephony/SignalStrength;)I

    move-result v0

    .line 1049
    :goto_0
    return v0

    .line 1046
    :cond_0
    if-nez p2, :cond_1

    invoke-static {p1}, Lcom/google/android/setupwizard/ActivationActivity;->isEvdo(Landroid/telephony/ServiceState;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1047
    invoke-static {p0}, Lcom/google/android/setupwizard/ActivationActivity;->getEvdoLevel(Landroid/telephony/SignalStrength;)I

    move-result v0

    goto :goto_0

    .line 1049
    :cond_1
    invoke-static {p0}, Lcom/google/android/setupwizard/ActivationActivity;->getCdmaLevel(Landroid/telephony/SignalStrength;)I

    move-result v0

    goto :goto_0
.end method

.method private doShutdown()V
    .locals 3

    .prologue
    .line 980
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_REQUEST_SHUTDOWN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 981
    const-string v1, "android.intent.extra.KEY_CONFIRM"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 982
    invoke-virtual {p0, v0}, Lcom/google/android/setupwizard/ActivationActivity;->startActivity(Landroid/content/Intent;)V

    .line 983
    return-void
.end method

.method private static getCdmaLevel(Landroid/telephony/SignalStrength;)I
    .locals 5
    .parameter "signalStrength"

    .prologue
    .line 1092
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    .line 1093
    .local v0, cdmaDbm:I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result v1

    .line 1094
    .local v1, cdmaEcio:I
    const/4 v2, 0x0

    .line 1095
    .local v2, levelDbm:I
    const/4 v3, 0x0

    .line 1097
    .local v3, levelEcio:I
    const/16 v4, -0x4b

    if-lt v0, v4, :cond_0

    .line 1098
    const/4 v2, 0x4

    .line 1109
    :goto_0
    const/16 v4, -0x5a

    if-lt v1, v4, :cond_4

    .line 1110
    const/4 v3, 0x4

    .line 1120
    :goto_1
    if-ge v2, v3, :cond_8

    .end local v2           #levelDbm:I
    :goto_2
    return v2

    .line 1099
    .restart local v2       #levelDbm:I
    :cond_0
    const/16 v4, -0x55

    if-lt v0, v4, :cond_1

    .line 1100
    const/4 v2, 0x3

    goto :goto_0

    .line 1101
    :cond_1
    const/16 v4, -0x5f

    if-lt v0, v4, :cond_2

    .line 1102
    const/4 v2, 0x2

    goto :goto_0

    .line 1103
    :cond_2
    const/16 v4, -0x64

    if-lt v0, v4, :cond_3

    .line 1104
    const/4 v2, 0x1

    goto :goto_0

    .line 1106
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 1111
    :cond_4
    const/16 v4, -0x6e

    if-lt v1, v4, :cond_5

    .line 1112
    const/4 v3, 0x3

    goto :goto_1

    .line 1113
    :cond_5
    const/16 v4, -0x82

    if-lt v1, v4, :cond_6

    .line 1114
    const/4 v3, 0x2

    goto :goto_1

    .line 1115
    :cond_6
    const/16 v4, -0x96

    if-lt v1, v4, :cond_7

    .line 1116
    const/4 v3, 0x1

    goto :goto_1

    .line 1118
    :cond_7
    const/4 v3, 0x0

    goto :goto_1

    :cond_8
    move v2, v3

    .line 1120
    goto :goto_2
.end method

.method private static getEvdoLevel(Landroid/telephony/SignalStrength;)I
    .locals 5
    .parameter "signalStrength"

    .prologue
    .line 1127
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v0

    .line 1128
    .local v0, evdoDbm:I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoSnr()I

    move-result v1

    .line 1129
    .local v1, evdoSnr:I
    const/4 v2, 0x0

    .line 1130
    .local v2, levelEvdoDbm:I
    const/4 v3, 0x0

    .line 1132
    .local v3, levelEvdoSnr:I
    const/16 v4, -0x41

    if-lt v0, v4, :cond_0

    .line 1133
    const/4 v2, 0x4

    .line 1143
    :goto_0
    const/4 v4, 0x7

    if-lt v1, v4, :cond_4

    .line 1144
    const/4 v3, 0x4

    .line 1154
    :goto_1
    if-ge v2, v3, :cond_8

    .end local v2           #levelEvdoDbm:I
    :goto_2
    return v2

    .line 1134
    .restart local v2       #levelEvdoDbm:I
    :cond_0
    const/16 v4, -0x4b

    if-lt v0, v4, :cond_1

    .line 1135
    const/4 v2, 0x3

    goto :goto_0

    .line 1136
    :cond_1
    const/16 v4, -0x5a

    if-lt v0, v4, :cond_2

    .line 1137
    const/4 v2, 0x2

    goto :goto_0

    .line 1138
    :cond_2
    const/16 v4, -0x69

    if-lt v0, v4, :cond_3

    .line 1139
    const/4 v2, 0x1

    goto :goto_0

    .line 1141
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 1145
    :cond_4
    const/4 v4, 0x5

    if-lt v1, v4, :cond_5

    .line 1146
    const/4 v3, 0x3

    goto :goto_1

    .line 1147
    :cond_5
    const/4 v4, 0x3

    if-lt v1, v4, :cond_6

    .line 1148
    const/4 v3, 0x2

    goto :goto_1

    .line 1149
    :cond_6
    const/4 v4, 0x1

    if-lt v1, v4, :cond_7

    .line 1150
    const/4 v3, 0x1

    goto :goto_1

    .line 1152
    :cond_7
    const/4 v3, 0x0

    goto :goto_1

    :cond_8
    move v2, v3

    .line 1154
    goto :goto_2
.end method

.method private getGenericActivationTimeout()I
    .locals 2

    .prologue
    .line 1021
    invoke-virtual {p0}, Lcom/google/android/setupwizard/ActivationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f0a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 1022
    const-string v1, "ro.activation.timeout.millis"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static getGsmLevel(Landroid/telephony/SignalStrength;)I
    .locals 3
    .parameter "signalStrength"

    .prologue
    const/4 v1, 0x2

    .line 1070
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    .line 1076
    .local v0, asu:I
    if-le v0, v1, :cond_0

    const/16 v2, 0x63

    if-ne v0, v2, :cond_2

    .line 1077
    :cond_0
    const/4 v1, 0x0

    .line 1085
    :cond_1
    :goto_0
    return v1

    .line 1078
    :cond_2
    const/16 v2, 0xc

    if-lt v0, v2, :cond_3

    .line 1079
    const/4 v1, 0x4

    goto :goto_0

    .line 1080
    :cond_3
    const/16 v2, 0x8

    if-lt v0, v2, :cond_4

    .line 1081
    const/4 v1, 0x3

    goto :goto_0

    .line 1082
    :cond_4
    const/4 v2, 0x5

    if-ge v0, v2, :cond_1

    .line 1085
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static getNetworkNameFromIntent(Landroid/content/Intent;)Ljava/lang/CharSequence;
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1162
    const-string v0, "showPlmn"

    const-string v3, "plmn"

    invoke-static {p0, v0, v3}, Lcom/google/android/setupwizard/ActivationActivity;->getSpecificNetworkName(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1163
    const-string v0, "showSpn"

    const-string v4, "spn"

    invoke-static {p0, v0, v4}, Lcom/google/android/setupwizard/ActivationActivity;->getSpecificNetworkName(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 1164
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 1165
    :goto_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1167
    :goto_1
    if-eqz v0, :cond_2

    if-nez v1, :cond_2

    move-object v0, v3

    .line 1174
    :goto_2
    return-object v0

    :cond_0
    move v0, v2

    .line 1164
    goto :goto_0

    :cond_1
    move v1, v2

    .line 1165
    goto :goto_1

    .line 1169
    :cond_2
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 1170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 1171
    :cond_3
    if-nez v0, :cond_4

    if-eqz v1, :cond_4

    move-object v0, v4

    .line 1172
    goto :goto_2

    .line 1174
    :cond_4
    const-string v0, ""

    goto :goto_2
.end method

.method private static getSpecificNetworkName(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "intent"
    .parameter "showNameParam"
    .parameter "nameParam"

    .prologue
    .line 1186
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1187
    invoke-virtual {p0, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1189
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private goNextOrFinish(I)V
    .locals 3
    .parameter

    .prologue
    .line 989
    const-string v0, "ActivationActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "goNextOrFinish("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    iget-boolean v0, p0, Lcom/google/android/setupwizard/ActivationActivity;->mDoExitToHome:Z

    if-eqz v0, :cond_0

    .line 991
    invoke-virtual {p0, p1}, Lcom/google/android/setupwizard/ActivationActivity;->setResult(I)V

    .line 992
    invoke-virtual {p0}, Lcom/google/android/setupwizard/ActivationActivity;->finish()V

    .line 993
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x1020

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/setupwizard/ActivationActivity;->startActivity(Landroid/content/Intent;)V

    .line 1001
    :goto_0
    return-void

    .line 998
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/setupwizard/ActivationActivity;->setResult(I)V

    .line 999
    invoke-virtual {p0}, Lcom/google/android/setupwizard/ActivationActivity;->finish()V

    goto :goto_0
.end method

.method private initStandaloneView()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 717
    invoke-virtual {p0}, Lcom/google/android/setupwizard/ActivationActivity;->overrideAllowBackHardkey()V

    .line 718
    iget-object v0, p0, Lcom/google/android/setupwizard/ActivationActivity;->mActivationText:Landroid/widget/TextView;

    const v1, 0x7f09003a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 719
    iget-object v0, p0, Lcom/google/android/setupwizard/ActivationActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 720
    iget-object v0, p0, Lcom/google/android/setupwizard/ActivationActivity;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 721
    iget-object v0, p0, Lcom/google/android/setupwizard/ActivationActivity;->mNextButton:Landroid/widget/Button;

    const v1, 0x7f09003f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 722
    iget-object v0, p0, Lcom/google/android/setupwizard/ActivationActivity;->mSkipButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 723
    iget-object v0, p0, Lcom/google/android/setupwizard/ActivationActivity;->mSkipButtonForStandAlone:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 724
    iget-object v0, p0, Lcom/google/android/setupwizard/ActivationActivity;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 725
    return-void
.end method

.method private static isCdma(Landroid/telephony/SignalStrength;)Z
    .locals 1
    .parameter "signalStrength"

    .prologue
    .line 1055
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isEvdo(Landroid/telephony/ServiceState;)Z
    .locals 2
    .parameter "serviceState"

    .prologue
    .line 1059
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeActivateOrExit()V
    .locals 3

    .prologue
    .line 297
    sget-boolean v0, Lcom/google/android/setupwizard/ActivationActivity;->LOCAL_LOGV:Z

    if-eqz v0, :cond_0

    .line 298
    const-string v0, "ActivationActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maybeActivateOrExit() mState == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/setupwizard/ActivationActivity;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :cond_0
    iget v0, p0, Lcom/google/android/setupwizard/ActivationActivity;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 323
    :cond_1
    :goto_0
    return-void

    .line 307
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/setupwizard/ActivationActivity;->otaspStateIsKnown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 310
    invoke-virtual {p0}, Lcom/google/android/setupwizard/ActivationActivity;->otaspIsNeeded()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/google/android/setupwizard/ActivationActivity;->isFirstRun()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 311
    const-string v0, "ActivationActivity"

    const-string v1, "maybeActivateOrExit(): activation not needed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    invoke-virtual {p0}, Lcom/google/android/setupwizard/ActivationActivity;->isPessimisticMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 313
    const-string v0, "ActivationActivity"

    const-string v1, "Be pessimistic. Show failure screen anyway."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    invoke-direct {p0}, Lcom/google/android/setupwizard/ActivationActivity;->onFailure()V

    goto :goto_0

    .line 316
    :cond_3
    invoke-direct {p0}, Lcom/google/android/setupwizard/ActivationActivity;->onSuccess()V

    goto :goto_0

    .line 318
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/setupwizard/ActivationActivity;->canActivate()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 319
    const-string v0, "ActivationActivity"

    const-string v1, "maybeActivateOrExit(): activation required"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    invoke-direct {p0}, Lcom/google/android/setupwizard/ActivationActivity;->performActivationCall()V

    goto :goto_0
.end method

.method private maybeEndGenericActivation()V
    .locals 3

    .prologue
    .line 331
    sget-boolean v0, Lcom/google/android/setupwizard/ActivationActivity;->LOCAL_LOGV:Z

    if-eqz v0, :cond_0

    .line 332
    const-string v0, "ActivationActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maybeEndGenericActivation() mState == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/setupwizard/ActivationActivity;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/setupwizard/ActivationActivity;->mGenericMode:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/setupwizard/ActivationActivity;->otaspIsNeeded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 335
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/setupwizard/ActivationActivity;->mGenericOtaspDefinitelyNeeded:Z

    .line 337
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/setupwizard/ActivationActivity;->mGenericMode:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/google/android/setupwizard/ActivationActivity;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/setupwizard/ActivationActivity;->otaspIsNotNeeded()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 338
    invoke-direct {p0}, Lcom/google/android/setupwizard/ActivationActivity;->onSuccess()V

    .line 340
    :cond_2
    return-void
.end method

.method private onActualSkip()V
    .locals 3

    .prologue
    .line 728
    const-string v0, "ActivationActivity"

    const-string v1, "onActualSkip"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    iget-boolean v0, p0, Lcom/google/android/setupwizard/ActivationActivity;->mAllowDontShowMode:Z

    if-eqz v0, :cond_0

    .line 732
    iget-object v0, p0, Lcom/google/android/setupwizard/ActivationActivity;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "dont_show_again"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 734
    :cond_0
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/google/android/setupwizard/ActivationActivity;->goNextOrFinish(I)V

    .line 735
    return-void
.end method

.method private onCancelCompleted()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    .line 896
    iget v0, p0, Lcom/google/android/setupwizard/ActivationActivity;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 897
    const-string v0, "ActivationActivity"

    const-string v1, "Unexpected state migration request (%d -> %d)."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/google/android/setupwizard/ActivationActivity;->mState:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    :cond_0
    const-string v0, "onCancelCompleted()"

    invoke-direct {p0, v5, v0}, Lcom/google/android/setupwizard/ActivationActivity;->setState(ILjava/lang/String;)V

    .line 904
    invoke-direct {p0}, Lcom/google/android/setupwizard/ActivationActivity;->showCancelCompletedScreen()V

    .line 905
    return-void
.end method

.method private onCancelRequested()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v2, 0x2

    const/4 v5, 0x1

    .line 853
    iget v0, p0, Lcom/google/android/setupwizard/ActivationActivity;->mState:I

    if-eq v0, v5, :cond_0

    iget v0, p0, Lcom/google/android/setupwizard/ActivationActivity;->mState:I

    if-eq v0, v2, :cond_0

    .line 855
    const-string v0, "ActivationActivity"

    const-string v1, "Unexpected state migration request (%d -> %d). Ignored."

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/google/android/setupwizard/ActivationActivity;->mState:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    :goto_0
    return-void

    .line 860
    :cond_0
    const-string v0, "onCancelRequested()"

    invoke-direct {p0, v6, v0}, Lcom/google/android/setupwizard/ActivationActivity;->setState(ILjava/lang/String;)V

    .line 862
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 865
    :try_start_0
    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->endCall()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 869
    :goto_1
    invoke-direct {p0}, Lcom/google/android/setupwizard/ActivationActivity;->showCancelRequestedScreen()V

    goto :goto_0

    .line 866
    :catch_0
    move-exception v0

    .line 867
    const-string v1, "ActivationActivity"

    const-string v2, "Exception hanging up activation call: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private onFailure()V
    .locals 2

    .prologue
    .line 813
    sget-boolean v0, Lcom/google/android/setupwizard/ActivationActivity;->LOCAL_LOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "ActivationActivity"

    const-string v1, "onFailure"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    :cond_0
    const/4 v0, 0x6

    const-string v1, "onFailure()"

    invoke-direct {p0, v0, v1}, Lcom/google/android/setupwizard/ActivationActivity;->setState(ILjava/lang/String;)V

    .line 815
    invoke-direct {p0}, Lcom/google/android/setupwizard/ActivationActivity;->showFailureScreen()V

    .line 816
    return-void
.end method

.method private onSpcRetriesFailure()V
    .locals 6

    .prologue
    .line 930
    sget-boolean v0, Lcom/google/android/setupwizard/ActivationActivity;->LOCAL_LOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "ActivationActivity"

    const-string v1, "onSpcRetriesFailure"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    :cond_0
    const/4 v0, 0x7

    const-string v1, "onSpcRetriesFailure()"

    invoke-direct {p0, v0, v1}, Lcom/google/android/setupwizard/ActivationActivity;->setState(ILjava/lang/String;)V

    .line 933
    invoke-direct {p0}, Lcom/google/android/setupwizard/ActivationActivity;->showShuttingDownScreen()V

    .line 935
    new-instance v0, Lcom/google/android/setupwizard/ActivationActivity$6;

    const-wide/32 v2, 0xea60

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/setupwizard/ActivationActivity$6;-><init>(Lcom/google/android/setupwizard/ActivationActivity;JJ)V

    invoke-virtual {v0}, Lcom/google/android/setupwizard/ActivationActivity$6;->start()Landroid/os/CountDownTimer;

    .line 947
    return-void
.end method

.method private onStateChanges()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 349
    sget-boolean v0, Lcom/google/android/setupwizard/ActivationActivity;->LOCAL_LOGV:Z

    if-eqz v0, :cond_0

    .line 350
    const-string v0, "ActivationActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStateChanges() mState == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/setupwizard/ActivationActivity;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/setupwizard/ActivationActivity;->mGenericMode:Z

    if-eqz v0, :cond_3

    .line 353
    invoke-virtual {p0}, Lcom/google/android/setupwizard/ActivationActivity;->otaspIsNeeded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 354
    const-string v0, "ActivationActivity"

    const-string v1, "onStateChanges(): generic otasp definitely needed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    iput-boolean v3, p0, Lcom/google/android/setupwizard/ActivationActivity;->mGenericOtaspDefinitelyNeeded:Z

    .line 357
    :cond_1
    iget v0, p0, Lcom/google/android/setupwizard/ActivationActivity;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/setupwizard/ActivationActivity;->otaspIsNotNeeded()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 358
    const-string v0, "ActivationActivity"

    const-string v1, "onStateChanges(): generic otasp succeeded"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    invoke-direct {p0}, Lcom/google/android/setupwizard/ActivationActivity;->onSuccess()V

    .line 373
    :cond_2
    :goto_0
    return-void

    .line 361
    :cond_3
    iget v0, p0, Lcom/google/android/setupwizard/ActivationActivity;->mState:I

    if-ne v0, v3, :cond_2

    invoke-virtual {p0}, Lcom/google/android/setupwizard/ActivationActivity;->otaspStateIsKnown()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 365
    invoke-virtual {p0}, Lcom/google/android/setupwizard/ActivationActivity;->otaspIsNeeded()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/google/android/setupwizard/ActivationActivity;->isFirstRun()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 366
    const-string v0, "ActivationActivity"

    const-string v1, "onStateChanges(): activation not needed after all"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    invoke-direct {p0}, Lcom/google/android/setupwizard/ActivationActivity;->onSuccess()V

    goto :goto_0

    .line 368
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/setupwizard/ActivationActivity;->canActivate()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 369
    const-string v0, "ActivationActivity"

    const-string v1, "onStateChanges(): activation call now possible"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    invoke-direct {p0}, Lcom/google/android/setupwizard/ActivationActivity;->performActivationCall()V

    goto :goto_0
.end method

.method private onSuccess()V
    .locals 2

    .prologue
    .line 785
    sget-boolean v0, Lcom/google/android/setupwizard/ActivationActivity;->LOCAL_LOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "ActivationActivity"

    const-string v1, "onSuccess"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    :cond_0
    const/4 v0, 0x5

    const-string v1, "onSuccess"

    invoke-direct {p0, v0, v1}, Lcom/google/android/setupwizard/ActivationActivity;->setState(ILjava/lang/String;)V

    .line 787
    invoke-direct {p0}, Lcom/google/android/setupwizard/ActivationActivity;->showSuccessScreen()V

    .line 788
    return-void
.end method

.method private performActivationCall()V
    .locals 7

    .prologue
    .line 698
    sget-boolean v4, Lcom/google/android/setupwizard/ActivationActivity;->LOCAL_LOGV:Z

    if-eqz v4, :cond_0

    const-string v4, "ActivationActivity"

    const-string v5, "startActivationCall"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    :cond_0
    const/4 v4, 0x2

    const-string v5, "performActivationCall()"

    invoke-direct {p0, v4, v5}, Lcom/google/android/setupwizard/ActivationActivity;->setState(ILjava/lang/String;)V

    .line 703
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.android.phone.PERFORM_CDMA_PROVISIONING"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 704
    .local v1, otaspIntent:Landroid/content/Intent;
    new-instance v3, Landroid/content/Intent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 705
    .local v3, resultIntent:Landroid/content/Intent;
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {p0, v4, v3, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 706
    .local v2, pendingResultIntent:Landroid/app/PendingIntent;
    const-string v4, "otasp_result_code_pending_intent"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 707
    const/16 v4, 0x4e21

    invoke-virtual {p0, v1, v4}, Lcom/google/android/setupwizard/ActivationActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 711
    .end local v1           #otaspIntent:Landroid/content/Intent;
    .end local v2           #pendingResultIntent:Landroid/app/PendingIntent;
    .end local v3           #resultIntent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 708
    :catch_0
    move-exception v0

    .line 709
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v4, "ActivationActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t start activation call; ActivityNotFoundException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private registerOtaspListener()V
    .locals 2

    .prologue
    .line 1201
    sget-boolean v0, Lcom/google/android/setupwizard/ActivationActivity;->LOCAL_LOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "ActivationActivity"

    const-string v1, "registering otasp listener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/setupwizard/ActivationActivity;->maybeRegisterOtaspPhoneStateListener()V

    .line 1203
    return-void
.end method

.method private setState(ILjava/lang/String;)V
    .locals 3
    .parameter "state"
    .parameter "functionName"

    .prologue
    .line 187
    const-string v0, "ActivationActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setState(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p2, :cond_0

    .end local p2
    :goto_0
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " changing mState from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/setupwizard/ActivationActivity;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iput p1, p0, Lcom/google/android/setupwizard/ActivationActivity;->mState:I

    .line 190
    return-void

    .line 187
    .restart local p2
    :cond_0
    const-string p2, ""

    goto :goto_0
.end method

.method private shouldChangeTitleUsingNetworkName()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1014
    iget v1, p0, Lcom/google/android/setupwizard/ActivationActivity;->mState:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/google/android/setupwizard/ActivationActivity;->mState:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/google/android/setupwizard/ActivationActivity;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showActivationProcessScreen()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const v2, 0x7f090038

    const/4 v5, 0x1

    const/16 v4, 0x8

    .line 738
    sget-boolean v0, Lcom/google/android/setupwizard/ActivationActivity;->LOCAL_LOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "ActivationActivity"

    const-string v1, "showProgress()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    :cond_0
    iget-object v0, p0, Lcom/google/android/setupwizard/ActivationActivity;->mNetworkName:Ljava/lang/CharSequence;

    invoke-virtual {p0, v2}, Lcom/google/android/setupwizard/ActivationActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 743
    iget-object v0, p0, Lcom/google/android/setupwizard/ActivationActivity;->mActivationTitle:Landroid/widget/TextView;

    const v1, 0x7f090036

    invoke-virtual {p0, v1}, Lcom/google/android/setupwizard/ActivationActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 747
    :goto_0
    iget-object v0, p0, Lcom/google/android/setupwizard/ActivationActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 748
    iget-object v0, p0, Lcom/google/android/setupwizard/ActivationActivity;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 749
    iget-object v0, p0, Lcom/google/android/setupwizard/ActivationActivity;->mSkipButtonForStandAlone:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 750
    iget-boolean v0, p0, Lcom/google/android/setupwizard/ActivationActivity;->mGenericMode:Z

    if-eqz v0, :cond_3

    .line 751
    iget-object v0, p0, Lcom/google/android/setupwizard/ActivationActivity;->mSkipButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 752
    iget-object v0, p0, Lcom/google/android/setupwizard/ActivationActivity;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 763
    :cond_1
    :goto_1
    monitor-enter p0

    .line 764
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/setupwizard/ActivationActivity;->mGenericMode:Z

    if-eqz v0, :cond_4

    .line 765
    iget-object v0, p0, Lcom/google/android/setupwizard/ActivationActivity;->mActivationText:Landroid/widget/TextView;

    const v1, 0x7f090042

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 781
    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 782
    return-void

    .line 745
    :cond_2
    iget-object v0, p0, Lcom/google/android/setupwizard/ActivationActivity;->mActivationTitle:Landroid/widget/TextView;

    const v1, 0x7f090037

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/setupwizard/ActivationActivity;->mNetworkName:Ljava/lang/CharSequence;

    aput-object v3, v2, v6

    invoke-virtual {p0, v1, v2}, Lcom/google/android/setupwizard/ActivationActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 754
    :cond_3
    iget-object v0, p0, Lcom/google/android/setupwizard/ActivationActivity;->mSkipButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 755
    iget-object v0, p0, Lcom/google/android/setupwizard/ActivationActivity;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 756
    iget-object v0, p0, Lcom/google/android/setupwizard/ActivationActivity;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 757
    invoke-virtual {p0}, Lcom/google/android/setupwizard/ActivationActivity;->isFirstRun()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 758
    iget-object v0, p0, Lcom/google/android/setupwizard/ActivationActivity;->mCancelButton:Landroid/widget/Button;

    const v1, 0x7f09000a

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_1

    .line 766
    :cond_4
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/setupwizard/ActivationActivity;->isFirstRun()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 767
    iget-object v0, p0, Lcom/google/android/setupwizard/ActivationActivity;->mNetworkName:Ljava/lang/CharSequence;

    const v1, 0x7f090038

    invoke-virtual {p0, v1}, Lcom/google/android/setupwizard/ActivationActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 768
    iget-object v0, p0, Lcom/google/android/setupwizard/ActivationActivity;->mActivationText:Landroid/widget/TextView;

    const v1, 0x7f090040

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 781
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 771
    :cond_5
    :try_start_2
    iget-object v0, p0, Lcom/google/android/setupwizard/ActivationActivity;->mActivationText:Landroid/widget/TextView;

    const v1, 0x7f090041

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 774
    :cond_6
    iget-object v0, p0, Lcom/google/android/setupwizard/ActivationActivity;->mNetworkName:Ljava/lang/CharSequence;

    const v1, 0x7f090038

    invoke-virtual {p0, v1}, Lcom/google/android/setupwizard/ActivationActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 775
    iget-object v0, p0, Lcom/google/android/setupwizard/ActivationActivity;->mActivationText:Landroid/widget/TextView;

    const v1, 0x7f090043

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 778
    :cond_7
    iget-object v0, p0, Lcom/google/android/setupwizard/ActivationActivity;->mActivationText:Landroid/widget/TextView;

    const v1, 0x7f090044

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method private showCancelCompletedScreen()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 910
    iget-object v0, p0, Lcom/google/android/setupwizard/ActivationActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 911
    iget-object v0, p0, Lcom/google/android/setupwizard/ActivationActivity;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 912
    iget-object v0, p0, Lcom/google/android/setupwizard/ActivationActivity;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 913
    iget-object v0, p0, Lcom/google/android/setupwizard/ActivationActivity;->mActivationTitle:Landroid/widget/TextView;

    const v1, 0x7f09004f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 914
    invoke-virtual {p0}, Lcom/google/android/setupwizard/ActivationActivity;->isFirstRun()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 916
    iget-object v0, p0, Lcom/google/android/setupwizard/ActivationActivity;->mNextButton:Landroid/widget/Button;

    const v1, 0x7f090009

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 917
    iget-object v0, p0, Lcom/google/android/setupwizard/ActivationActivity;->mSkipButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 918
    iget-object v0, p0, Lcom/google/android/setupwizard/ActivationActivity;->mSkipButton:Landroid/widget/Button;

    const v1, 0x7f090007

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 919
    iget-object v0, p0, Lcom/google/android/setupwizard/ActivationActivity;->mSkipButtonForStandAlone:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 920
    iget-object v0, p0, Lcom/google/android/setupwizard/ActivationActivity;->mActivationText:Landroid/widget/TextView;

    const v1, 0x7f090050

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 927
    :goto_0
    return-void

    .line 922
    :cond_0
    iget-object v0, p0, Lcom/google/android/setupwizard/ActivationActivity;->mNextButton:Landroid/widget/Button;

    const v1, 0x7f09003f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 923
    iget-object v0, p0, Lcom/google/android/setupwizard/ActivationActivity;->mSkipButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 924
    iget-object v0, p0, Lcom/google/android/setupwizard/ActivationActivity;->mSkipButtonForStandAlone:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 925
    iget-object v0, p0, Lcom/google/android/setupwizard/ActivationActivity;->mActivationText:Landroid/widget/TextView;

    const v1, 0x7f090051

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private showCancelRequestedScreen()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x2710

    const/16 v2, 0x8

    .line 877
    iget-object v0, p0, Lcom/google/android/setupwizard/ActivationActivity;->mActivationTitle:Landroid/widget/TextView;

    const v1, 0x7f09004d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 878
    iget-object v0, p0, Lcom/google/android/setupwizard/ActivationActivity;->mActivationText:Landroid/widget/TextView;

    const v1, 0x7f09004e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 879
    iget-object v0, p0, Lcom/google/android/setupwizard/ActivationActivity;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 880
    iget-object v0, p0, Lcom/google/android/setupwizard/ActivationActivity;->mSkipButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 881
    iget-object v0, p0, Lcom/google/android/setupwizard/ActivationActivity;->mSkipButtonForStandAlone:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 882
    iget-object v0, p0, Lcom/google/android/setupwizard/ActivationActivity;->mCancelButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 888
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    add-long/2addr v0, v3

    iput-wide v0, p0, Lcom/google/android/setupwizard/ActivationActivity;->mCancelEndtime:J

    .line 889
    iget-object v0, p0, Lcom/google/android/setupwizard/ActivationActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/setupwizard/ActivationActivity;->mTimeOutWaitingForCancel:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 890
    return-void
.end method

.method private showFailureScreen()V
    .locals 5

    .prologue
    const v1, 0x7f09004b

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 819
    const-string v0, "ActivationActivity"

    const-string v2, "showFailureScreen()"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    iget-object v0, p0, Lcom/google/android/setupwizard/ActivationActivity;->mNetworkNotifier:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 823
    iget-object v0, p0, Lcom/google/android/setupwizard/ActivationActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 824
    iget-object v0, p0, Lcom/google/android/setupwizard/ActivationActivity;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 825
    iget-object v0, p0, Lcom/google/android/setupwizard/ActivationActivity;->mActivationTitle:Landroid/widget/TextView;

    const v2, 0x7f090049

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 826
    iget-object v0, p0, Lcom/google/android/setupwizard/ActivationActivity;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 827
    invoke-virtual {p0}, Lcom/google/android/setupwizard/ActivationActivity;->isFirstRun()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 829
    iget-object v2, p0, Lcom/google/android/setupwizard/ActivationActivity;->mNextButton:Landroid/widget/Button;

    iget-boolean v0, p0, Lcom/google/android/setupwizard/ActivationActivity;->mGenericMode:Z

    if-eqz v0, :cond_0

    const v0, 0x7f09000f

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(I)V

    .line 833
    iget-object v0, p0, Lcom/google/android/setupwizard/ActivationActivity;->mSkipButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 834
    iget-object v2, p0, Lcom/google/android/setupwizard/ActivationActivity;->mSkipButton:Landroid/widget/Button;

    iget-boolean v0, p0, Lcom/google/android/setupwizard/ActivationActivity;->mGenericMode:Z

    if-eqz v0, :cond_1

    const v0, 0x7f09000a

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(I)V

    .line 836
    iget-object v0, p0, Lcom/google/android/setupwizard/ActivationActivity;->mSkipButtonForStandAlone:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 837
    iget-object v2, p0, Lcom/google/android/setupwizard/ActivationActivity;->mActivationText:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/google/android/setupwizard/ActivationActivity;->mGenericMode:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 846
    :goto_3
    return-void

    .line 829
    :cond_0
    const v0, 0x7f090009

    goto :goto_0

    .line 834
    :cond_1
    const v0, 0x7f090007

    goto :goto_1

    .line 837
    :cond_2
    const v0, 0x7f09004a

    goto :goto_2

    .line 840
    :cond_3
    iget-object v0, p0, Lcom/google/android/setupwizard/ActivationActivity;->mNextButton:Landroid/widget/Button;

    const v2, 0x7f090011

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 841
    iget-object v0, p0, Lcom/google/android/setupwizard/ActivationActivity;->mSkipButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 842
    iget-object v0, p0, Lcom/google/android/setupwizard/ActivationActivity;->mSkipButtonForStandAlone:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 843
    iget-object v0, p0, Lcom/google/android/setupwizard/ActivationActivity;->mActivationText:Landroid/widget/TextView;

    iget-boolean v2, p0, Lcom/google/android/setupwizard/ActivationActivity;->mGenericMode:Z

    if-eqz v2, :cond_4

    :goto_4
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    :cond_4
    const v1, 0x7f09004c

    goto :goto_4
.end method

.method private showShuttingDownScreen()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 951
    iget-object v0, p0, Lcom/google/android/setupwizard/ActivationActivity;->mNetworkNotifier:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 952
    iget-object v0, p0, Lcom/google/android/setupwizard/ActivationActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 953
    iget-object v0, p0, Lcom/google/android/setupwizard/ActivationActivity;->mNextButton:Landroid/widget/Button;

    const v1, 0x7f090053

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 954
    iget-object v0, p0, Lcom/google/android/setupwizard/ActivationActivity;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 955
    iget-object v0, p0, Lcom/google/android/setupwizard/ActivationActivity;->mSkipButtonForStandAlone:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 956
    iget-object v0, p0, Lcom/google/android/setupwizard/ActivationActivity;->mSkipButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 957
    iget-object v0, p0, Lcom/google/android/setupwizard/ActivationActivity;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 958
    iget-object v0, p0, Lcom/google/android/setupwizard/ActivationActivity;->mActivationTitle:Landroid/widget/TextView;

    const v1, 0x7f090049

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 959
    iget-object v0, p0, Lcom/google/android/setupwizard/ActivationActivity;->mActivationText:Landroid/widget/TextView;

    const v1, 0x7f090052

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 961
    const-string v0, "statusbar"

    invoke-virtual {p0, v0}, Lcom/google/android/setupwizard/ActivationActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 963
    if-eqz v0, :cond_0

    .line 964
    const/high16 v1, 0x137

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 975
    :goto_0
    const v0, 0x7f0e0009

    invoke-virtual {p0, v0}, Lcom/google/android/setupwizard/ActivationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/setupwizard/ActivationActivity;->mCountdownText:Landroid/widget/TextView;

    .line 976
    iget-object v0, p0, Lcom/google/android/setupwizard/ActivationActivity;->mCountdownText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 977
    return-void

    .line 971
    :cond_0
    const-string v0, "ActivationActivity"

    const-string v1, "Unable to instantiate status bar manager"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showSuccessScreen()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 791
    const-string v0, "ActivationActivity"

    const-string v1, "showSuccessScreen"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    iget-object v0, p0, Lcom/google/android/setupwizard/ActivationActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 796
    iget-object v0, p0, Lcom/google/android/setupwizard/ActivationActivity;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 797
    iget-object v1, p0, Lcom/google/android/setupwizard/ActivationActivity;->mNextButton:Landroid/widget/Button;

    iget-boolean v0, p0, Lcom/google/android/setupwizard/ActivationActivity;->mGenericMode:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/setupwizard/ActivationActivity;->mGenericOtaspDefinitelyNeeded:Z

    if-eqz v0, :cond_0

    const v0, 0x7f090054

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(I)V

    .line 799
    iget-object v0, p0, Lcom/google/android/setupwizard/ActivationActivity;->mSkipButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 800
    iget-object v0, p0, Lcom/google/android/setupwizard/ActivationActivity;->mSkipButtonForStandAlone:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 801
    iget-object v0, p0, Lcom/google/android/setupwizard/ActivationActivity;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 802
    iget-object v0, p0, Lcom/google/android/setupwizard/ActivationActivity;->mActivationTitle:Landroid/widget/TextView;

    const v1, 0x7f090045

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 803
    invoke-virtual {p0}, Lcom/google/android/setupwizard/ActivationActivity;->isFirstRun()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 804
    iget-object v1, p0, Lcom/google/android/setupwizard/ActivationActivity;->mActivationText:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/google/android/setupwizard/ActivationActivity;->mGenericMode:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/setupwizard/ActivationActivity;->mGenericOtaspDefinitelyNeeded:Z

    if-eqz v0, :cond_1

    const v0, 0x7f090047

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 810
    :goto_2
    return-void

    .line 797
    :cond_0
    const v0, 0x7f090007

    goto :goto_0

    .line 804
    :cond_1
    const v0, 0x7f090046

    goto :goto_1

    .line 807
    :cond_2
    iget-object v0, p0, Lcom/google/android/setupwizard/ActivationActivity;->mActivationText:Landroid/widget/TextView;

    const v1, 0x7f090048

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2
.end method

.method private startActivationProcess()V
    .locals 5

    .prologue
    .line 669
    iget-boolean v1, p0, Lcom/google/android/setupwizard/ActivationActivity;->mGenericMode:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    :goto_0
    const-string v2, "startActivationProcess()"

    invoke-direct {p0, v1, v2}, Lcom/google/android/setupwizard/ActivationActivity;->setState(ILjava/lang/String;)V

    .line 672
    iget-boolean v1, p0, Lcom/google/android/setupwizard/ActivationActivity;->mGenericMode:Z

    if-eqz v1, :cond_0

    .line 675
    invoke-direct {p0}, Lcom/google/android/setupwizard/ActivationActivity;->getGenericActivationTimeout()I

    move-result v0

    .line 676
    .local v0, genericTimeout:I
    const-string v1, "SetupWizard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setting generic timeout in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/android/setupwizard/ActivationActivity;->mGenericEndtime:J

    .line 678
    iget-object v1, p0, Lcom/google/android/setupwizard/ActivationActivity;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/setupwizard/ActivationActivity;->mTimeOutWaitingForGenericActivation:Ljava/lang/Runnable;

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 688
    .end local v0           #genericTimeout:I
    :cond_0
    invoke-direct {p0}, Lcom/google/android/setupwizard/ActivationActivity;->showActivationProcessScreen()V

    .line 691
    invoke-direct {p0}, Lcom/google/android/setupwizard/ActivationActivity;->onStateChanges()V

    .line 692
    return-void

    .line 669
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private unregisterOtaspListener()V
    .locals 2

    .prologue
    .line 1205
    sget-boolean v0, Lcom/google/android/setupwizard/ActivationActivity;->LOCAL_LOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "ActivationActivity"

    const-string v1, "unregistering otasp listener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/setupwizard/ActivationActivity;->maybeUnregisterOtaspPhoneStateListener()V

    .line 1207
    return-void
.end method

.method private updateSignalStrength()V
    .locals 5

    .prologue
    .line 1008
    iget-object v0, p0, Lcom/google/android/setupwizard/ActivationActivity;->mNetworkBars:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/setupwizard/ActivationActivity;->mSignalStrengthImages:Landroid/content/res/TypedArray;

    iget-object v2, p0, Lcom/google/android/setupwizard/ActivationActivity;->mSignalStrength:Landroid/telephony/SignalStrength;

    iget-object v3, p0, Lcom/google/android/setupwizard/ActivationActivity;->mServiceState:Landroid/telephony/ServiceState;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/google/android/setupwizard/ActivationActivity;->calculateSignalStrength(Landroid/telephony/SignalStrength;Landroid/telephony/ServiceState;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1011
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/16 v2, 0x4e21

    .line 653
    if-ne p1, v2, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    iget v0, p0, Lcom/google/android/setupwizard/ActivationActivity;->mState:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    .line 656
    invoke-direct {p0}, Lcom/google/android/setupwizard/ActivationActivity;->onFailure()V

    .line 660
    :cond_0
    :goto_0
    return-void

    .line 657
    :cond_1
    if-eq p1, v2, :cond_0

    .line 658
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/setupwizard/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    const/4 v3, 0x5

    .line 237
    iget v1, p0, Lcom/google/android/setupwizard/ActivationActivity;->mState:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_1

    .line 238
    iget-object v1, p0, Lcom/google/android/setupwizard/ActivationActivity;->mNextButton:Landroid/widget/Button;

    if-ne p1, v1, :cond_0

    .line 239
    invoke-direct {p0}, Lcom/google/android/setupwizard/ActivationActivity;->doShutdown()V

    .line 268
    :cond_0
    :goto_0
    return-void

    .line 244
    :cond_1
    iget-object v1, p0, Lcom/google/android/setupwizard/ActivationActivity;->mSkipButton:Landroid/widget/Button;

    if-eq p1, v1, :cond_2

    iget-object v1, p0, Lcom/google/android/setupwizard/ActivationActivity;->mSkipButtonForStandAlone:Landroid/widget/Button;

    if-ne p1, v1, :cond_3

    .line 245
    :cond_2
    const-string v1, "ActivationActivity"

    const-string v2, "onClickView: Activiting is not needed, skipping"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    invoke-direct {p0}, Lcom/google/android/setupwizard/ActivationActivity;->onActualSkip()V

    goto :goto_0

    .line 247
    :cond_3
    iget-object v1, p0, Lcom/google/android/setupwizard/ActivationActivity;->mNextButton:Landroid/widget/Button;

    if-ne p1, v1, :cond_8

    .line 248
    iget-boolean v1, p0, Lcom/google/android/setupwizard/ActivationActivity;->mGenericMode:Z

    if-eqz v1, :cond_6

    iget v1, p0, Lcom/google/android/setupwizard/ActivationActivity;->mState:I

    if-ne v1, v3, :cond_4

    iget-boolean v1, p0, Lcom/google/android/setupwizard/ActivationActivity;->mGenericOtaspDefinitelyNeeded:Z

    if-nez v1, :cond_5

    :cond_4
    iget v1, p0, Lcom/google/android/setupwizard/ActivationActivity;->mState:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_6

    .line 250
    :cond_5
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lcom/google/android/setupwizard/ActivationActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 251
    .local v0, powerManager:Landroid/os/PowerManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    goto :goto_0

    .line 252
    .end local v0           #powerManager:Landroid/os/PowerManager;
    :cond_6
    iget v1, p0, Lcom/google/android/setupwizard/ActivationActivity;->mState:I

    if-ne v1, v3, :cond_7

    .line 253
    const-string v1, "ActivationActivity"

    const-string v2, "onClickView: exiting after success"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    const/4 v1, -0x1

    invoke-direct {p0, v1}, Lcom/google/android/setupwizard/ActivationActivity;->goNextOrFinish(I)V

    goto :goto_0

    .line 256
    :cond_7
    const-string v1, "ActivationActivity"

    const-string v2, "onClickView: Activiting, next button pressed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    invoke-direct {p0}, Lcom/google/android/setupwizard/ActivationActivity;->startActivationProcess()V

    goto :goto_0

    .line 259
    :cond_8
    iget-object v1, p0, Lcom/google/android/setupwizard/ActivationActivity;->mContinueSkipButton:Landroid/widget/Button;

    if-ne p1, v1, :cond_9

    .line 260
    const-string v1, "ActivationActivity"

    const-string v2, "onClickView: Skip button"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    invoke-direct {p0}, Lcom/google/android/setupwizard/ActivationActivity;->onActualSkip()V

    goto :goto_0

    .line 262
    :cond_9
    iget-object v1, p0, Lcom/google/android/setupwizard/ActivationActivity;->mCancelButton:Landroid/widget/Button;

    if-ne p1, v1, :cond_a

    .line 263
    const-string v1, "ActivationActivity"

    const-string v2, "onClickView: cancel button"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    invoke-direct {p0}, Lcom/google/android/setupwizard/ActivationActivity;->onCancelRequested()V

    goto :goto_0

    .line 266
    :cond_a
    const-string v1, "ActivationActivity"

    const-string v2, "onClickView: ignorning"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "icicle"

    .prologue
    .line 377
    invoke-super {p0, p1}, Lcom/google/android/setupwizard/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 384
    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/setupwizard/ActivationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f080001

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 385
    const-string v8, "SetupWizard"

    const-string v9, "CDMA always: launching CDMA_PROVISIONING from ActivationActivity"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    new-instance v3, Landroid/content/Intent;

    const-string v8, "com.android.phone.PERFORM_CDMA_PROVISIONING"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 387
    .local v3, newIntent:Landroid/content/Intent;
    const/high16 v8, 0x1000

    invoke-virtual {v3, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 388
    invoke-virtual {p0, v3}, Lcom/google/android/setupwizard/ActivationActivity;->startActivity(Landroid/content/Intent;)V

    .line 389
    invoke-virtual {p0}, Lcom/google/android/setupwizard/ActivationActivity;->finish()V

    .line 562
    .end local v3           #newIntent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 393
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/setupwizard/ActivationActivity;->getContentView()Landroid/view/View;

    move-result-object v7

    .line 394
    .local v7, view:Landroid/view/View;
    const/high16 v8, 0x167

    invoke-virtual {v7, v8}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 402
    sget-boolean v8, Lcom/google/android/setupwizard/ActivationActivity;->LOCAL_LOGV:Z

    if-eqz v8, :cond_2

    const-string v8, "ActivationActivity"

    const-string v9, "onCreate: E"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/setupwizard/ActivationActivity;->isLTE()Z

    move-result v8

    iput-boolean v8, p0, Lcom/google/android/setupwizard/ActivationActivity;->mGenericMode:Z

    .line 405
    const/4 v8, 0x0

    const-string v9, "onCreate()"

    invoke-direct {p0, v8, v9}, Lcom/google/android/setupwizard/ActivationActivity;->setState(ILjava/lang/String;)V

    .line 417
    if-nez p1, :cond_6

    .line 418
    invoke-virtual {p0}, Lcom/google/android/setupwizard/ActivationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "exitToHome"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/google/android/setupwizard/ActivationActivity;->mDoExitToHome:Z

    .line 419
    invoke-virtual {p0}, Lcom/google/android/setupwizard/ActivationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "com.android.phone.VOICELESS_PROVISIONING_OFFER_DONTSHOW"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/google/android/setupwizard/ActivationActivity;->mAllowDontShowMode:Z

    .line 422
    sget-boolean v8, Lcom/google/android/setupwizard/ActivationActivity;->LOCAL_LOGV:Z

    if-eqz v8, :cond_3

    .line 423
    const-string v8, "ActivationActivity"

    const-string v9, "onCreate: mDoExitToHome: %b, mAllowDontShowMode: %b"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-boolean v12, p0, Lcom/google/android/setupwizard/ActivationActivity;->mDoExitToHome:Z

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    iget-boolean v12, p0, Lcom/google/android/setupwizard/ActivationActivity;->mAllowDontShowMode:Z

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    :cond_3
    :goto_1
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    iput-object v8, p0, Lcom/google/android/setupwizard/ActivationActivity;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 454
    iget-boolean v8, p0, Lcom/google/android/setupwizard/ActivationActivity;->mAllowDontShowMode:Z

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/google/android/setupwizard/ActivationActivity;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v9, "dont_show_again"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 455
    const-string v8, "SetupWizard"

    const-string v9, "skipping due to don\'t show mode"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    const/4 v8, 0x7

    invoke-direct {p0, v8}, Lcom/google/android/setupwizard/ActivationActivity;->goNextOrFinish(I)V

    .line 459
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/setupwizard/ActivationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f060001

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v8

    iput-object v8, p0, Lcom/google/android/setupwizard/ActivationActivity;->mSignalStrengthImages:Landroid/content/res/TypedArray;

    .line 461
    invoke-virtual {p0}, Lcom/google/android/setupwizard/ActivationActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 462
    .local v2, inflater:Landroid/view/LayoutInflater;
    const/high16 v8, 0x7f03

    const/4 v9, 0x0

    invoke-virtual {v2, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 463
    .local v1, contentView:Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/google/android/setupwizard/ActivationActivity;->setContentView(Landroid/view/View;)V

    .line 465
    const v8, 0x7f0e000d

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/google/android/setupwizard/ActivationActivity;->mSkipButton:Landroid/widget/Button;

    .line 466
    iget-object v8, p0, Lcom/google/android/setupwizard/ActivationActivity;->mSkipButton:Landroid/widget/Button;

    invoke-virtual {v8, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 467
    const v8, 0x7f0e000b

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/google/android/setupwizard/ActivationActivity;->mSkipButtonForStandAlone:Landroid/widget/Button;

    .line 469
    iget-object v8, p0, Lcom/google/android/setupwizard/ActivationActivity;->mSkipButtonForStandAlone:Landroid/widget/Button;

    invoke-virtual {v8, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 470
    const v8, 0x7f0e000c

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/google/android/setupwizard/ActivationActivity;->mNextButton:Landroid/widget/Button;

    .line 471
    iget-object v8, p0, Lcom/google/android/setupwizard/ActivationActivity;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v8, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 472
    const v8, 0x7f0e000a

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/google/android/setupwizard/ActivationActivity;->mCancelButton:Landroid/widget/Button;

    .line 473
    iget-object v8, p0, Lcom/google/android/setupwizard/ActivationActivity;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v8, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 475
    const/high16 v8, 0x7f0e

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/google/android/setupwizard/ActivationActivity;->mActivationTitle:Landroid/widget/TextView;

    .line 476
    const v8, 0x7f0e0007

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/google/android/setupwizard/ActivationActivity;->mActivationText:Landroid/widget/TextView;

    .line 477
    const v8, 0x7f0e0002

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ProgressBar;

    iput-object v8, p0, Lcom/google/android/setupwizard/ActivationActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 478
    iget-object v8, p0, Lcom/google/android/setupwizard/ActivationActivity;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 479
    iget-object v8, p0, Lcom/google/android/setupwizard/ActivationActivity;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 481
    const v8, 0x7f0e0003

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/google/android/setupwizard/ActivationActivity;->mNetworkNotifier:Landroid/view/View;

    .line 482
    const v8, 0x7f0e0004

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lcom/google/android/setupwizard/ActivationActivity;->mNetworkBars:Landroid/widget/ImageView;

    .line 483
    const v8, 0x7f090038

    invoke-virtual {p0, v8}, Lcom/google/android/setupwizard/ActivationActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/google/android/setupwizard/ActivationActivity;->mNetworkName:Ljava/lang/CharSequence;

    .line 485
    const v8, 0x7f0e000e

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/google/android/setupwizard/ActivationActivity;->mContinueSkipButton:Landroid/widget/Button;

    .line 486
    iget-object v8, p0, Lcom/google/android/setupwizard/ActivationActivity;->mContinueSkipButton:Landroid/widget/Button;

    invoke-virtual {v8, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 489
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    iput-object v8, p0, Lcom/google/android/setupwizard/ActivationActivity;->mFilter:Landroid/content/IntentFilter;

    .line 490
    iget-object v8, p0, Lcom/google/android/setupwizard/ActivationActivity;->mFilter:Landroid/content/IntentFilter;

    const-string v9, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v8, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 491
    new-instance v8, Lcom/google/android/setupwizard/ActivationActivity$5;

    invoke-direct {v8, p0}, Lcom/google/android/setupwizard/ActivationActivity$5;-><init>(Lcom/google/android/setupwizard/ActivationActivity;)V

    iput-object v8, p0, Lcom/google/android/setupwizard/ActivationActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 503
    const-string v8, "phone"

    invoke-virtual {p0, v8}, Lcom/google/android/setupwizard/ActivationActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    .line 505
    .local v6, telephonyManager:Landroid/telephony/TelephonyManager;
    if-eqz v6, :cond_a

    .line 506
    iget-object v8, p0, Lcom/google/android/setupwizard/ActivationActivity;->mSignalStrengthPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v9, 0x100

    invoke-virtual {v6, v8, v9}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 514
    :goto_2
    if-nez p1, :cond_c

    .line 515
    invoke-virtual {p0}, Lcom/google/android/setupwizard/ActivationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "autoStart"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 516
    .local v0, autoStart:Z
    invoke-virtual {p0}, Lcom/google/android/setupwizard/ActivationActivity;->isFirstRun()Z

    move-result v8

    if-nez v8, :cond_5

    if-nez v0, :cond_5

    iget-boolean v8, p0, Lcom/google/android/setupwizard/ActivationActivity;->mGenericMode:Z

    if-eqz v8, :cond_b

    .line 517
    :cond_5
    invoke-direct {p0}, Lcom/google/android/setupwizard/ActivationActivity;->startActivationProcess()V

    .line 560
    .end local v0           #autoStart:Z
    :goto_3
    invoke-direct {p0}, Lcom/google/android/setupwizard/ActivationActivity;->registerOtaspListener()V

    .line 561
    sget-boolean v8, Lcom/google/android/setupwizard/ActivationActivity;->LOCAL_LOGV:Z

    if-eqz v8, :cond_0

    const-string v8, "ActivationActivity"

    const-string v9, "onCreate: X"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 428
    .end local v1           #contentView:Landroid/view/View;
    .end local v2           #inflater:Landroid/view/LayoutInflater;
    .end local v6           #telephonyManager:Landroid/telephony/TelephonyManager;
    :cond_6
    const-string v8, "exitToHome"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/google/android/setupwizard/ActivationActivity;->mDoExitToHome:Z

    .line 429
    const-string v8, "com.android.phone.VOICELESS_PROVISIONING_OFFER_DONTSHOW"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/google/android/setupwizard/ActivationActivity;->mAllowDontShowMode:Z

    .line 431
    const-string v8, "prevState"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    const-string v9, "onCreate() icicle"

    invoke-direct {p0, v8, v9}, Lcom/google/android/setupwizard/ActivationActivity;->setState(ILjava/lang/String;)V

    .line 432
    const-string v8, "isGenMode"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/google/android/setupwizard/ActivationActivity;->mGenericMode:Z

    .line 433
    const-string v8, "cancelEndtime"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/google/android/setupwizard/ActivationActivity;->mCancelEndtime:J

    .line 434
    const-string v8, "genericEndtime"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/google/android/setupwizard/ActivationActivity;->mGenericEndtime:J

    .line 435
    const-string v8, "genericActivationNeeded"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/google/android/setupwizard/ActivationActivity;->mGenericOtaspDefinitelyNeeded:Z

    .line 437
    iget-wide v8, p0, Lcom/google/android/setupwizard/ActivationActivity;->mCancelEndtime:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_7

    .line 438
    iget-wide v8, p0, Lcom/google/android/setupwizard/ActivationActivity;->mCancelEndtime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    sub-long v4, v8, v10

    .line 439
    .local v4, newTimeout:J
    iget-object v8, p0, Lcom/google/android/setupwizard/ActivationActivity;->mHandler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/google/android/setupwizard/ActivationActivity;->mTimeOutWaitingForCancel:Ljava/lang/Runnable;

    const-wide/16 v10, 0x0

    cmp-long v10, v4, v10

    if-lez v10, :cond_9

    .end local v4           #newTimeout:J
    :goto_4
    invoke-virtual {v8, v9, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 441
    :cond_7
    iget-wide v8, p0, Lcom/google/android/setupwizard/ActivationActivity;->mGenericEndtime:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_3

    .line 442
    iget-wide v8, p0, Lcom/google/android/setupwizard/ActivationActivity;->mGenericEndtime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    sub-long v4, v8, v10

    .line 443
    .restart local v4       #newTimeout:J
    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-gez v8, :cond_8

    .line 444
    const-wide/16 v4, 0x0

    .line 446
    :cond_8
    const-string v8, "SetupWizard"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setting generic timeout in "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ms"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    iget-object v8, p0, Lcom/google/android/setupwizard/ActivationActivity;->mHandler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/google/android/setupwizard/ActivationActivity;->mTimeOutWaitingForGenericActivation:Ljava/lang/Runnable;

    invoke-virtual {v8, v9, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    .line 439
    :cond_9
    const-wide/16 v4, 0x0

    goto :goto_4

    .line 511
    .end local v4           #newTimeout:J
    .restart local v1       #contentView:Landroid/view/View;
    .restart local v2       #inflater:Landroid/view/LayoutInflater;
    .restart local v6       #telephonyManager:Landroid/telephony/TelephonyManager;
    :cond_a
    const-string v8, "ActivationActivity"

    const-string v9, "telephony manager null"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 519
    .restart local v0       #autoStart:Z
    :cond_b
    invoke-direct {p0}, Lcom/google/android/setupwizard/ActivationActivity;->initStandaloneView()V

    goto/16 :goto_3

    .line 523
    .end local v0           #autoStart:Z
    :cond_c
    const-string v8, "ActivationActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "restoring UI state to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/google/android/setupwizard/ActivationActivity;->mState:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    iget v8, p0, Lcom/google/android/setupwizard/ActivationActivity;->mState:I

    packed-switch v8, :pswitch_data_0

    .line 554
    const-string v8, "ActivationActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "unknown state: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/google/android/setupwizard/ActivationActivity;->mState:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    invoke-direct {p0}, Lcom/google/android/setupwizard/ActivationActivity;->initStandaloneView()V

    goto/16 :goto_3

    .line 526
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/setupwizard/ActivationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "autoStart"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 528
    .restart local v0       #autoStart:Z
    invoke-virtual {p0}, Lcom/google/android/setupwizard/ActivationActivity;->isFirstRun()Z

    move-result v8

    if-nez v8, :cond_d

    if-eqz v0, :cond_e

    .line 529
    :cond_d
    invoke-direct {p0}, Lcom/google/android/setupwizard/ActivationActivity;->startActivationProcess()V

    goto/16 :goto_3

    .line 531
    :cond_e
    invoke-direct {p0}, Lcom/google/android/setupwizard/ActivationActivity;->initStandaloneView()V

    goto/16 :goto_3

    .line 536
    .end local v0           #autoStart:Z
    :pswitch_1
    invoke-direct {p0}, Lcom/google/android/setupwizard/ActivationActivity;->showActivationProcessScreen()V

    goto/16 :goto_3

    .line 539
    :pswitch_2
    invoke-direct {p0}, Lcom/google/android/setupwizard/ActivationActivity;->showCancelRequestedScreen()V

    goto/16 :goto_3

    .line 542
    :pswitch_3
    invoke-direct {p0}, Lcom/google/android/setupwizard/ActivationActivity;->showCancelCompletedScreen()V

    goto/16 :goto_3

    .line 545
    :pswitch_4
    invoke-direct {p0}, Lcom/google/android/setupwizard/ActivationActivity;->onSuccess()V

    goto/16 :goto_3

    .line 548
    :pswitch_5
    invoke-direct {p0}, Lcom/google/android/setupwizard/ActivationActivity;->showFailureScreen()V

    goto/16 :goto_3

    .line 551
    :pswitch_6
    invoke-direct {p0}, Lcom/google/android/setupwizard/ActivationActivity;->showShuttingDownScreen()V

    goto/16 :goto_3

    .line 524
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 632
    invoke-super {p0}, Lcom/google/android/setupwizard/BaseActivity;->onDestroy()V

    .line 633
    invoke-direct {p0}, Lcom/google/android/setupwizard/ActivationActivity;->unregisterOtaspListener()V

    .line 634
    iget-object v0, p0, Lcom/google/android/setupwizard/ActivationActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/setupwizard/ActivationActivity;->mTimeOutWaitingForGenericActivation:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 635
    iget-object v0, p0, Lcom/google/android/setupwizard/ActivationActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/setupwizard/ActivationActivity;->mTimeOutWaitingForCancel:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 636
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    const/4 v4, 0x4

    .line 569
    invoke-super {p0, p1}, Lcom/google/android/setupwizard/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 571
    const-string v1, "ActivationActivity"

    const-string v2, "onNewIntent: E"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    const-string v1, "otasp_result_code"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget v1, p0, Lcom/google/android/setupwizard/ActivationActivity;->mState:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_6

    .line 574
    const-string v1, "otasp_result_code"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 576
    .local v0, resultCode:I
    sget-boolean v1, Lcom/google/android/setupwizard/ActivationActivity;->LOCAL_LOGV:Z

    if-eqz v1, :cond_0

    const-string v1, "ActivationActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got OTASP result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    :cond_0
    iget v1, p0, Lcom/google/android/setupwizard/ActivationActivity;->mState:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/google/android/setupwizard/ActivationActivity;->mState:I

    if-ne v1, v4, :cond_5

    .line 579
    :cond_1
    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 580
    const-string v1, "ActivationActivity"

    const-string v2, "OTASP_USER_SKIPPED not returned."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    :cond_2
    iget v1, p0, Lcom/google/android/setupwizard/ActivationActivity;->mState:I

    if-ne v1, v4, :cond_3

    .line 583
    const-string v1, "ActivationActivity"

    const-string v2, "mState is already STATE_CANCEL_COMPLETED"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    :cond_3
    iget-object v1, p0, Lcom/google/android/setupwizard/ActivationActivity;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/setupwizard/ActivationActivity;->mTimeOutWaitingForCancel:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 586
    invoke-direct {p0}, Lcom/google/android/setupwizard/ActivationActivity;->onCancelCompleted()V

    .line 614
    .end local v0           #resultCode:I
    :cond_4
    :goto_0
    return-void

    .line 590
    .restart local v0       #resultCode:I
    :cond_5
    packed-switch v0, :pswitch_data_0

    .line 609
    const-string v1, "ActivationActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown otasp activation result"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    .end local v0           #resultCode:I
    :cond_6
    :goto_1
    sget-boolean v1, Lcom/google/android/setupwizard/ActivationActivity;->LOCAL_LOGV:Z

    if-eqz v1, :cond_4

    const-string v1, "ActivationActivity"

    const-string v2, "onNewIntent: X"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 592
    .restart local v0       #resultCode:I
    :pswitch_0
    invoke-direct {p0}, Lcom/google/android/setupwizard/ActivationActivity;->onActualSkip()V

    goto :goto_1

    .line 595
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/setupwizard/ActivationActivity;->isPessimisticMode()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 596
    const-string v1, "ActivationActivity"

    const-string v2, "Be pessimistic. Show failure screen anyway."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    invoke-direct {p0}, Lcom/google/android/setupwizard/ActivationActivity;->onFailure()V

    goto :goto_1

    .line 599
    :cond_7
    invoke-direct {p0}, Lcom/google/android/setupwizard/ActivationActivity;->onSuccess()V

    goto :goto_1

    .line 603
    :pswitch_2
    invoke-direct {p0}, Lcom/google/android/setupwizard/ActivationActivity;->onFailure()V

    goto :goto_1

    .line 606
    :pswitch_3
    invoke-direct {p0}, Lcom/google/android/setupwizard/ActivationActivity;->onSpcRetriesFailure()V

    goto :goto_1

    .line 590
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onOtaspChanged()V
    .locals 3

    .prologue
    .line 280
    const-string v0, "ActivationActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOtaspChanged() mState == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/setupwizard/ActivationActivity;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", otasp state == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/setupwizard/ActivationActivity;->getOtaspMode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    iget-boolean v0, p0, Lcom/google/android/setupwizard/ActivationActivity;->mGenericMode:Z

    if-eqz v0, :cond_0

    .line 283
    invoke-direct {p0}, Lcom/google/android/setupwizard/ActivationActivity;->maybeEndGenericActivation()V

    .line 287
    :goto_0
    return-void

    .line 285
    :cond_0
    invoke-direct {p0}, Lcom/google/android/setupwizard/ActivationActivity;->maybeActivateOrExit()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 618
    invoke-super {p0}, Lcom/google/android/setupwizard/BaseActivity;->onPause()V

    .line 619
    sget-boolean v0, Lcom/google/android/setupwizard/ActivationActivity;->LOCAL_LOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "ActivationActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    :cond_0
    iget-object v0, p0, Lcom/google/android/setupwizard/ActivationActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/google/android/setupwizard/ActivationActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 621
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 625
    invoke-super {p0}, Lcom/google/android/setupwizard/BaseActivity;->onResume()V

    .line 626
    sget-boolean v0, Lcom/google/android/setupwizard/ActivationActivity;->LOCAL_LOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "ActivationActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    :cond_0
    iget-object v0, p0, Lcom/google/android/setupwizard/ActivationActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/google/android/setupwizard/ActivationActivity;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/setupwizard/ActivationActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 628
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 640
    const-string v0, "ActivationActivity"

    const-string v1, "onSaveInstanceState()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    invoke-super {p0, p1}, Lcom/google/android/setupwizard/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 642
    const-string v0, "exitToHome"

    iget-boolean v1, p0, Lcom/google/android/setupwizard/ActivationActivity;->mDoExitToHome:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 643
    const-string v0, "com.android.phone.VOICELESS_PROVISIONING_OFFER_DONTSHOW"

    iget-boolean v1, p0, Lcom/google/android/setupwizard/ActivationActivity;->mAllowDontShowMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 644
    const-string v0, "prevState"

    iget v1, p0, Lcom/google/android/setupwizard/ActivationActivity;->mState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 645
    const-string v0, "isGenMode"

    iget-boolean v1, p0, Lcom/google/android/setupwizard/ActivationActivity;->mGenericMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 646
    const-string v0, "cancelEndtime"

    iget-wide v1, p0, Lcom/google/android/setupwizard/ActivationActivity;->mCancelEndtime:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 647
    const-string v0, "genericEndtime"

    iget-wide v1, p0, Lcom/google/android/setupwizard/ActivationActivity;->mGenericEndtime:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 648
    const-string v0, "genericActivationNeeded"

    iget-boolean v1, p0, Lcom/google/android/setupwizard/ActivationActivity;->mGenericOtaspDefinitelyNeeded:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 649
    return-void
.end method

.method protected onServiceStateChanged()V
    .locals 3

    .prologue
    .line 272
    sget-boolean v0, Lcom/google/android/setupwizard/ActivationActivity;->LOCAL_LOGV:Z

    if-eqz v0, :cond_0

    .line 273
    const-string v0, "ActivationActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceStateChanged() mState == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/setupwizard/ActivationActivity;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :cond_0
    invoke-direct {p0}, Lcom/google/android/setupwizard/ActivationActivity;->maybeActivateOrExit()V

    .line 276
    return-void
.end method
