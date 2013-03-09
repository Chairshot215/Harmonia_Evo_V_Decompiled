.class public Lcom/android/phone/OtaUtils;
.super Ljava/lang/Object;
.source "OtaUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/OtaUtils$CdmaOtaScreenState;,
        Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;,
        Lcom/android/phone/OtaUtils$CdmaOtaConfigData;,
        Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;,
        Lcom/android/phone/OtaUtils$OtaWidgetData;
    }
.end annotation


# static fields
.field public static final ACTION_PERFORM_CDMA_PROVISIONING:Ljava/lang/String; = "com.android.phone.PERFORM_CDMA_PROVISIONING"

.field public static final ACTION_PERFORM_VOICELESS_CDMA_PROVISIONING:Ljava/lang/String; = "com.android.phone.PERFORM_VOICELESS_CDMA_PROVISIONING"

.field private static final DBG:Z = true

.field public static final EXTRA_OTASP_RESULT_CODE:Ljava/lang/String; = "otasp_result_code"

.field public static final EXTRA_OTASP_RESULT_CODE_PENDING_INTENT:Ljava/lang/String; = "otasp_result_code_pending_intent"

.field public static final EXTRA_OVERRIDE_INTERACTIVE_MODE:Ljava/lang/String; = "ota_override_interactive_mode"

.field public static final EXTRA_VOICELESS_PROVISIONING_OFFER_DONTSHOW:Ljava/lang/String; = "com.android.phone.VOICELESS_PROVISIONING_OFFER_DONTSHOW"

.field private static final LOG_TAG:Ljava/lang/String; = "OtaUtils"

.field public static final OTASP_FAILURE:I = 0x3

.field public static final OTASP_FAILURE_SPC_RETRIES:I = 0x4

.field private static final OTASP_NUMBER:Ljava/lang/String; = "*228"

.field private static final OTASP_NUMBER_NON_INTERACTIVE:Ljava/lang/String; = "*22899"

.field public static final OTASP_SUCCESS:I = 0x2

.field public static final OTASP_UNKNOWN:I = 0x0

.field public static final OTASP_USER_SKIPPED:I = 0x1

.field public static final OTA_PLAY_SUCCESS_FAILURE_TONE_OFF:I = 0x0

.field public static final OTA_PLAY_SUCCESS_FAILURE_TONE_ON:I = 0x1

.field public static final OTA_SHOW_ACTIVATE_FAIL_COUNT_OFF:I = 0x0

.field public static final OTA_SHOW_ACTIVATE_FAIL_COUNT_THREE:I = 0x3

.field public static final OTA_SHOW_ACTIVATION_SCREEN_OFF:I = 0x0

.field public static final OTA_SHOW_ACTIVATION_SCREEN_ON:I = 0x1

.field public static final OTA_SHOW_LISTENING_SCREEN_OFF:I = 0x0

.field public static final OTA_SHOW_LISTENING_SCREEN_ON:I = 0x1

.field public static final RESULT_INTERACTIVE_OTASP_STARTED:I = 0x1

.field public static final RESULT_NONINTERACTIVE_OTASP_FAILED:I = 0x3

.field public static final RESULT_NONINTERACTIVE_OTASP_STARTED:I = 0x2

.field private static mIsWizardMode:Z


# instance fields
.field public final OTA_FAILURE_DIALOG_TIMEOUT:I

.field public final OTA_SPC_TIMEOUT:I

.field private mApplication:Lcom/android/phone/PhoneApp;

.field private mCallCard:Lcom/android/phone/CallCard;

.field private mContext:Landroid/content/Context;

.field private mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

.field private mInCallPanel:Landroid/view/ViewGroup;

.field private mInCallScreen:Lcom/android/phone/InCallScreen;

.field private mInteractive:Z

.field private mOtaCallCardDtmfDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

.field private mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/phone/OtaUtils;->mIsWizardMode:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/phone/InCallScreen;Landroid/view/ViewGroup;Lcom/android/phone/CallCard;Lcom/android/phone/DTMFTwelveKeyDialer;)V
    .locals 4
    .parameter "context"
    .parameter "inCallScreen"
    .parameter "inCallPanel"
    .parameter "callCard"
    .parameter "dialer"

    .prologue
    const/4 v1, 0x1

    .line 190
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/16 v2, 0x3c

    iput v2, p0, Lcom/android/phone/OtaUtils;->OTA_SPC_TIMEOUT:I

    .line 72
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/phone/OtaUtils;->OTA_FAILURE_DIALOG_TIMEOUT:I

    .line 157
    iput-boolean v1, p0, Lcom/android/phone/OtaUtils;->mInteractive:Z

    .line 192
    const-string v2, "Enter OtaUtil constructor"

    invoke-static {v2}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 194
    iput-object p2, p0, Lcom/android/phone/OtaUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 195
    iput-object p1, p0, Lcom/android/phone/OtaUtils;->mContext:Landroid/content/Context;

    .line 196
    iput-object p3, p0, Lcom/android/phone/OtaUtils;->mInCallPanel:Landroid/view/ViewGroup;

    .line 197
    iput-object p4, p0, Lcom/android/phone/OtaUtils;->mCallCard:Lcom/android/phone/CallCard;

    .line 198
    iput-object p5, p0, Lcom/android/phone/OtaUtils;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    .line 199
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    .line 200
    new-instance v2, Lcom/android/phone/OtaUtils$OtaWidgetData;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/phone/OtaUtils$OtaWidgetData;-><init>(Lcom/android/phone/OtaUtils;Lcom/android/phone/OtaUtils$1;)V

    iput-object v2, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    .line 203
    iget-object v2, p0, Lcom/android/phone/OtaUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v2, :cond_1

    :goto_0
    iput-boolean v1, p0, Lcom/android/phone/OtaUtils;->mInteractive:Z

    .line 205
    iget-boolean v1, p0, Lcom/android/phone/OtaUtils;->mInteractive:Z

    if-eqz v1, :cond_0

    .line 207
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f080105

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 208
    .local v0, otaCallCardStub:Landroid/view/ViewStub;
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 209
    invoke-direct {p0}, Lcom/android/phone/OtaUtils;->readXmlSettings()V

    .line 210
    invoke-direct {p0}, Lcom/android/phone/OtaUtils;->initOtaInCallScreen()V

    .line 212
    .end local v0           #otaCallCardStub:Landroid/view/ViewStub;
    :cond_0
    return-void

    .line 203
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-static {p0}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/OtaUtils;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/phone/OtaUtils;->otaPerformActivation()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/OtaUtils;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/phone/OtaUtils;->otaSkipActivation()V

    return-void
.end method

.method private getOtaSpcDisplayTime()I
    .locals 7

    .prologue
    .line 1076
    const-string v5, "getOtaSpcDisplayTime()..."

    invoke-static {v5}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 1077
    const/4 v4, 0x1

    .line 1078
    .local v4, tmpSpcTime:I
    iget-object v5, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iget-boolean v5, v5, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->inOtaSpcState:Z

    if-eqz v5, :cond_0

    .line 1079
    const-wide/16 v2, 0x0

    .line 1080
    .local v2, tmpOtaSpcRunningTime:J
    const-wide/16 v0, 0x0

    .line 1081
    .local v0, tmpOtaSpcLeftTime:J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 1082
    iget-object v5, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iget-wide v5, v5, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->otaSpcUptime:J

    sub-long v0, v2, v5

    .line 1084
    const-wide/32 v5, 0xea60

    cmp-long v5, v0, v5

    if-ltz v5, :cond_1

    .line 1085
    const/4 v4, 0x1

    .line 1090
    .end local v0           #tmpOtaSpcLeftTime:J
    .end local v2           #tmpOtaSpcRunningTime:J
    :cond_0
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getOtaSpcDisplayTime(), time for SPC error notice: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 1091
    return v4

    .line 1087
    .restart local v0       #tmpOtaSpcLeftTime:J
    .restart local v2       #tmpOtaSpcRunningTime:J
    :cond_1
    long-to-int v5, v0

    div-int/lit16 v5, v5, 0x3e8

    rsub-int/lit8 v4, v5, 0x3c

    goto :goto_0
.end method

.method public static final getOtaspNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1350
    const-string v0, "*228"

    return-object v0
.end method

.method private initOtaInCallScreen()V
    .locals 4

    .prologue
    .line 1098
    const-string v0, "initOtaInCallScreen()..."

    invoke-static {v0}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 1099
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f08011b

    invoke-virtual {v0, v2}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTitle:Landroid/widget/TextView;

    .line 1100
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f08011c

    invoke-virtual {v0, v2}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTextActivate:Landroid/widget/TextView;

    .line 1101
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTextActivate:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1102
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f08011d

    invoke-virtual {v0, v2}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, v1, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTextListenProgressContainer:Landroid/widget/ScrollView;

    .line 1104
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f08011e

    invoke-virtual {v0, v2}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTextListenProgress:Landroid/widget/TextView;

    .line 1106
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const/high16 v2, 0x101

    invoke-virtual {v0, v2}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, v1, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTextProgressBar:Landroid/widget/ProgressBar;

    .line 1108
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTextProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 1109
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f08011f

    invoke-virtual {v0, v2}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTextSuccessFail:Landroid/widget/TextView;

    .line 1112
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f08011a

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaCallCardBase:Landroid/view/View;

    .line 1113
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f080125

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->callCardOtaButtonsListenProgress:Landroid/view/View;

    .line 1115
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f080122

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->callCardOtaButtonsActivate:Landroid/view/View;

    .line 1117
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f080127

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->callCardOtaButtonsFailSuccess:Landroid/view/View;

    .line 1120
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f080126

    invoke-virtual {v0, v2}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v1, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaEndButton:Landroid/widget/Button;

    .line 1121
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaEndButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1122
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f080121

    invoke-virtual {v0, v2}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, v1, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaSpeakerButton:Landroid/widget/ToggleButton;

    .line 1124
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaSpeakerButton:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1125
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f080123

    invoke-virtual {v0, v2}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v1, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaActivateButton:Landroid/widget/Button;

    .line 1127
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaActivateButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1128
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f080124

    invoke-virtual {v0, v2}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v1, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaSkipButton:Landroid/widget/Button;

    .line 1129
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaSkipButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1130
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f080128

    invoke-virtual {v0, v2}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v1, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaNextButton:Landroid/widget/Button;

    .line 1131
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaNextButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1132
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f080129

    invoke-virtual {v0, v2}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v1, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTryAgainButton:Landroid/widget/Button;

    .line 1134
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTryAgainButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1136
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f080120

    invoke-virtual {v0, v2}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/DTMFTwelveKeyDialerView;

    iput-object v0, v1, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaDtmfDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    .line 1139
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaDtmfDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    if-nez v0, :cond_0

    .line 1140
    const-string v0, "OtaUtils"

    const-string v1, "onCreate: couldn\'t find otaDtmfDialer"

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1150
    :cond_0
    new-instance v0, Lcom/android/phone/DTMFTwelveKeyDialer;

    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    iget-object v2, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v2, v2, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaDtmfDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/phone/DTMFTwelveKeyDialer;-><init>(Lcom/android/phone/InCallScreen;Lcom/android/phone/DTMFTwelveKeyDialerView;Landroid/widget/SlidingDrawer;)V

    iput-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaCallCardDtmfDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    .line 1156
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaCallCardDtmfDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->startDialerSession()V

    .line 1158
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaDtmfDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mOtaCallCardDtmfDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0, v1}, Lcom/android/phone/DTMFTwelveKeyDialerView;->setDialer(Lcom/android/phone/DTMFTwelveKeyDialer;)V

    .line 1159
    return-void
.end method

.method private static isCdmaPhone()Z
    .locals 2

    .prologue
    .line 1343
    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 1339
    const-string v0, "OtaUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1340
    return-void
.end method

.method public static maybeDoOtaCall(Landroid/content/Context;Landroid/os/Handler;I)Z
    .locals 10
    .parameter "context"
    .parameter "handler"
    .parameter "request"

    .prologue
    const/high16 v9, 0x1000

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 225
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 226
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v3, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    .line 228
    .local v3, phone:Lcom/android/internal/telephony/Phone;
    invoke-static {}, Landroid/app/ActivityManager;->isRunningInTestHarness()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 229
    const-string v6, "OtaUtils"

    const-string v7, "Don\'t run provisioning when in test harness"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    :goto_0
    return v5

    .line 233
    :cond_0
    invoke-static {}, Lcom/android/phone/OtaUtils;->isCdmaPhone()Z

    move-result v7

    if-nez v7, :cond_1

    .line 234
    const-string v6, "Can\'t run provisioning on a non-CDMA phone"

    invoke-static {v6}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 238
    :cond_1
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->isMinInfoReady()Z

    move-result v7

    if-nez v7, :cond_2

    .line 239
    const-string v5, "MIN is not ready. Registering to receive notification."

    invoke-static {v5}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 240
    const/4 v5, 0x0

    invoke-interface {v3, p1, p2, v5}, Lcom/android/internal/telephony/Phone;->registerForSubscriptionInfoReady(Landroid/os/Handler;ILjava/lang/Object;)V

    move v5, v6

    .line 241
    goto :goto_0

    .line 243
    :cond_2
    invoke-interface {v3, p1}, Lcom/android/internal/telephony/Phone;->unregisterForSubscriptionInfoReady(Landroid/os/Handler;)V

    .line 245
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->needsOtaServiceProvisioning()Z

    move-result v4

    .line 246
    .local v4, phoneNeedsActivation:Z
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "phoneNeedsActivation is set to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 248
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const/high16 v8, 0x7f0b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 251
    .local v2, otaShowActivationScreen:I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "otaShowActivationScreen: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 255
    sget-boolean v7, Lcom/android/phone/PhoneApp;->sVoiceCapable:Z

    if-eqz v7, :cond_4

    .line 256
    if-eqz v4, :cond_3

    if-ne v2, v5, :cond_3

    .line 258
    iget-object v7, v0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iput-boolean v6, v7, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->isOtaCallIntentProcessed:Z

    .line 259
    new-instance v1, Landroid/content/Intent;

    const-string v7, "com.android.phone.PERFORM_CDMA_PROVISIONING"

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 260
    .local v1, newIntent:Landroid/content/Intent;
    const-class v7, Lcom/android/phone/InCallScreen;

    invoke-virtual {v1, p0, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 261
    invoke-virtual {v1, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 262
    sput-boolean v6, Lcom/android/phone/OtaUtils;->mIsWizardMode:Z

    .line 263
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 264
    const-string v6, "maybeDoOtaCall: voice capable; activation intent sent."

    invoke-static {v6}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 266
    .end local v1           #newIntent:Landroid/content/Intent;
    :cond_3
    const-string v6, "maybeDoOtaCall: voice capable; activation intent NOT sent."

    invoke-static {v6}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 269
    :cond_4
    if-eqz v4, :cond_5

    .line 270
    iget-object v7, v0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iput-boolean v6, v7, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->isOtaCallIntentProcessed:Z

    .line 271
    new-instance v1, Landroid/content/Intent;

    const-string v6, "com.android.phone.PERFORM_VOICELESS_CDMA_PROVISIONING"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 272
    .restart local v1       #newIntent:Landroid/content/Intent;
    invoke-virtual {v1, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 273
    const-string v6, "com.android.phone.VOICELESS_PROVISIONING_OFFER_DONTSHOW"

    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 274
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 275
    const-string v6, "maybeDoOtaCall: non-interactive; activation intent sent."

    invoke-static {v6}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 277
    .end local v1           #newIntent:Landroid/content/Intent;
    :cond_5
    const-string v6, "maybeDoOtaCall: non-interactive, no need for OTASP."

    invoke-static {v6}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private onClickOtaActivateButton()V
    .locals 1

    .prologue
    .line 1017
    const-string v0, "Call Activation Clicked!"

    invoke-static {v0}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 1018
    invoke-direct {p0}, Lcom/android/phone/OtaUtils;->otaPerformActivation()V

    .line 1019
    return-void
.end method

.method private onClickOtaActivateNextButton()V
    .locals 2

    .prologue
    .line 1054
    const-string v0, "Dialog Next Clicked!"

    invoke-static {v0}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 1055
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iget-boolean v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->inOtaSpcState:Z

    if-nez v0, :cond_0

    .line 1056
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    sget-object v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_UNDEFINED:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    iput-object v1, v0, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    .line 1058
    invoke-direct {p0}, Lcom/android/phone/OtaUtils;->otaShowHome()V

    .line 1060
    :cond_0
    return-void
.end method

.method private onClickOtaActivateSkipButton()V
    .locals 5

    .prologue
    .line 1022
    const-string v1, "Activation Skip Clicked!"

    invoke-static {v1}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 1024
    new-instance v0, Lcom/android/phone/OtaUtils$2;

    invoke-direct {v0, p0}, Lcom/android/phone/OtaUtils$2;-><init>(Lcom/android/phone/OtaUtils;)V

    .line 1031
    .local v0, keyListener:Landroid/content/DialogInterface$OnKeyListener;
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/phone/OtaUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0e03e7

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0e03e8

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0e03e9

    new-instance v4, Lcom/android/phone/OtaUtils$4;

    invoke-direct {v4, p0}, Lcom/android/phone/OtaUtils$4;-><init>(Lcom/android/phone/OtaUtils;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0e03ea

    new-instance v4, Lcom/android/phone/OtaUtils$3;

    invoke-direct {v4, p0}, Lcom/android/phone/OtaUtils$3;-><init>(Lcom/android/phone/OtaUtils;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, v1, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaSkipConfirmationDialog:Landroid/app/AlertDialog;

    .line 1050
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v1, v1, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaSkipConfirmationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1051
    return-void
.end method

.method private onClickOtaEndButton()V
    .locals 1

    .prologue
    .line 996
    const-string v0, "Activation End Call Button Clicked!"

    invoke-static {v0}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 997
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iget-boolean v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->inOtaSpcState:Z

    if-nez v0, :cond_0

    .line 998
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/CallManager;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1002
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/phone/OtaUtils;->setSpeaker(Z)V

    .line 1003
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->handleOtaCallEnd()V

    .line 1006
    :cond_0
    return-void
.end method

.method private onClickOtaSpeakerButton()V
    .locals 2

    .prologue
    .line 1009
    const-string v1, "OTA Speaker button Clicked!"

    invoke-static {v1}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 1010
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iget-boolean v1, v1, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->inOtaSpcState:Z

    if-nez v1, :cond_0

    .line 1011
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 1012
    .local v0, isChecked:Z
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/phone/OtaUtils;->setSpeaker(Z)V

    .line 1014
    .end local v0           #isChecked:Z
    :cond_0
    return-void

    .line 1011
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onClickOtaTryAgainButton()V
    .locals 1

    .prologue
    .line 989
    const-string v0, "Activation Try Again Clicked!"

    invoke-static {v0}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 990
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iget-boolean v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->inOtaSpcState:Z

    if-nez v0, :cond_0

    .line 991
    invoke-virtual {p0}, Lcom/android/phone/OtaUtils;->otaShowActivateScreen()V

    .line 993
    :cond_0
    return-void
.end method

.method private otaPerformActivation()V
    .locals 3

    .prologue
    .line 458
    const-string v1, "otaPerformActivation()..."

    invoke-static {v1}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 459
    iget-boolean v1, p0, Lcom/android/phone/OtaUtils;->mInteractive:Z

    if-nez v1, :cond_1

    .line 461
    const-string v1, "OtaUtils"

    const-string v2, "otaPerformActivation: not interactive!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    :cond_0
    :goto_0
    return-void

    .line 465
    :cond_1
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iget-boolean v1, v1, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->inOtaSpcState:Z

    if-nez v1, :cond_0

    .line 466
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 467
    .local v0, newIntent:Landroid/content/Intent;
    const-string v1, "android.intent.extra.PHONE_NUMBER"

    const-string v2, "*228"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 468
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1, v0}, Lcom/android/phone/InCallScreen;->internalResolveIntent(Landroid/content/Intent;)Lcom/android/phone/InCallScreen$InCallInitStatus;

    .line 469
    invoke-direct {p0}, Lcom/android/phone/OtaUtils;->otaShowListeningScreen()V

    goto :goto_0
.end method

.method private static otaProvisionStatusToString(I)Ljava/lang/String;
    .locals 2
    .parameter "status"

    .prologue
    .line 1308
    packed-switch p0, :pswitch_data_0

    .line 1334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<unknown status"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1310
    :pswitch_0
    const-string v0, "SPL_UNLOCKED"

    goto :goto_0

    .line 1312
    :pswitch_1
    const-string v0, "SPC_RETRIES_EXCEEDED"

    goto :goto_0

    .line 1314
    :pswitch_2
    const-string v0, "A_KEY_EXCHANGED"

    goto :goto_0

    .line 1316
    :pswitch_3
    const-string v0, "SSD_UPDATED"

    goto :goto_0

    .line 1318
    :pswitch_4
    const-string v0, "NAM_DOWNLOADED"

    goto :goto_0

    .line 1320
    :pswitch_5
    const-string v0, "MDN_DOWNLOADED"

    goto :goto_0

    .line 1322
    :pswitch_6
    const-string v0, "IMSI_DOWNLOADED"

    goto :goto_0

    .line 1324
    :pswitch_7
    const-string v0, "PRL_DOWNLOADED"

    goto :goto_0

    .line 1326
    :pswitch_8
    const-string v0, "COMMITTED"

    goto :goto_0

    .line 1328
    :pswitch_9
    const-string v0, "OTAPA_STARTED"

    goto :goto_0

    .line 1330
    :pswitch_a
    const-string v0, "OTAPA_STOPPED"

    goto :goto_0

    .line 1332
    :pswitch_b
    const-string v0, "OTAPA_ABORTED"

    goto :goto_0

    .line 1308
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method private otaScreenInitialize()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 838
    const-string v0, "otaScreenInitialize()..."

    invoke-static {v0}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 840
    iget-boolean v0, p0, Lcom/android/phone/OtaUtils;->mInteractive:Z

    if-nez v0, :cond_0

    .line 843
    const-string v0, "OtaUtils"

    const-string v1, "otaScreenInitialize: not interactive!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    :goto_0
    return-void

    .line 847
    :cond_0
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mInCallPanel:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mInCallPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 848
    :cond_1
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mCallCard:Lcom/android/phone/CallCard;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mCallCard:Lcom/android/phone/CallCard;

    invoke-virtual {v0}, Lcom/android/phone/CallCard;->hideCallCardElements()V

    .line 849
    :cond_2
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0, v3}, Lcom/android/phone/DTMFTwelveKeyDialer;->setHandleVisible(Z)V

    .line 851
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTitle:Landroid/widget/TextView;

    const v1, 0x7f0e03e4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 852
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTextActivate:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 853
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTextListenProgressContainer:Landroid/widget/ScrollView;

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 854
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTextProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 855
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTextSuccessFail:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 856
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->callCardOtaButtonsActivate:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 857
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->callCardOtaButtonsListenProgress:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 858
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->callCardOtaButtonsFailSuccess:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 859
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaDtmfDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    invoke-virtual {v0, v2}, Lcom/android/phone/DTMFTwelveKeyDialerView;->setVisibility(I)V

    .line 860
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 861
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTryAgainButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 862
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaNextButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 863
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaCallCardBase:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 864
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaSkipButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method private otaShowHome()V
    .locals 3

    .prologue
    .line 433
    const-string v1, "OtaShowHome()..."

    invoke-static {v1}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 434
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    sget-object v2, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_UNDEFINED:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    iput-object v2, v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    .line 436
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->endInCallScreenSession()V

    .line 437
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 438
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 439
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 440
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 441
    return-void
.end method

.method private otaShowInProgressScreen()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 642
    const-string v1, "otaShowInProgressScreen()..."

    invoke-static {v1}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 643
    iget-boolean v1, p0, Lcom/android/phone/OtaUtils;->mInteractive:Z

    if-nez v1, :cond_0

    .line 645
    const-string v1, "OtaUtils"

    const-string v2, "otaShowInProgressScreen: not interactive!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    :goto_0
    return-void

    .line 649
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/OtaUtils;->isDialerOpened()Z

    move-result v1

    if-nez v1, :cond_1

    .line 650
    invoke-direct {p0}, Lcom/android/phone/OtaUtils;->otaScreenInitialize()V

    .line 651
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v1, v1, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTextListenProgressContainer:Landroid/widget/ScrollView;

    invoke-virtual {v1, v3}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 652
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v1, v1, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTextListenProgress:Landroid/widget/TextView;

    const v2, 0x7f0e03f1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 653
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v1, v1, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTextProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 654
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v1, v1, Lcom/android/phone/OtaUtils$OtaWidgetData;->callCardOtaButtonsListenProgress:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 655
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v1, v1, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v3}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 656
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v0

    .line 657
    .local v0, speakerOn:Z
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v1, v1, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 661
    .end local v0           #speakerOn:Z
    :goto_1
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    sget-object v2, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_PROGRESS:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    iput-object v2, v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    .line 665
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->updateMenuItems()V

    goto :goto_0

    .line 659
    :cond_1
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/phone/DTMFTwelveKeyDialer;->setHandleVisible(Z)V

    goto :goto_1
.end method

.method private otaShowListeningScreen()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 508
    const-string v1, "otaShowListeningScreen()..."

    invoke-static {v1}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 509
    iget-boolean v1, p0, Lcom/android/phone/OtaUtils;->mInteractive:Z

    if-nez v1, :cond_0

    .line 511
    const-string v1, "OtaUtils"

    const-string v2, "otaShowListeningScreen: not interactive!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    :goto_0
    return-void

    .line 515
    :cond_0
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->cdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    iget v1, v1, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;->otaShowListeningScreen:I

    if-ne v1, v2, :cond_2

    .line 517
    const-string v1, "OtaShowListeningScreen(): show listening screen"

    invoke-static {v1}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 518
    invoke-virtual {p0}, Lcom/android/phone/OtaUtils;->isDialerOpened()Z

    move-result v1

    if-nez v1, :cond_1

    .line 519
    invoke-direct {p0}, Lcom/android/phone/OtaUtils;->otaScreenInitialize()V

    .line 520
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v1, v1, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTextListenProgressContainer:Landroid/widget/ScrollView;

    invoke-virtual {v1, v3}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 521
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v1, v1, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTextListenProgress:Landroid/widget/TextView;

    const v2, 0x7f0e03ee

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 522
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v1, v1, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaDtmfDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    invoke-virtual {v1, v3}, Lcom/android/phone/DTMFTwelveKeyDialerView;->setVisibility(I)V

    .line 523
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v1, v1, Lcom/android/phone/OtaUtils$OtaWidgetData;->callCardOtaButtonsListenProgress:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 524
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v1, v1, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v3}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 525
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v0

    .line 526
    .local v0, speakerOn:Z
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v1, v1, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 530
    .end local v0           #speakerOn:Z
    :goto_1
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    sget-object v2, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_LISTENING:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    iput-object v2, v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    .line 534
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->updateMenuItems()V

    goto :goto_0

    .line 528
    :cond_1
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v1, v2}, Lcom/android/phone/DTMFTwelveKeyDialer;->setHandleVisible(Z)V

    goto :goto_1

    .line 536
    :cond_2
    const-string v1, "OtaShowListeningScreen(): show progress screen"

    invoke-static {v1}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 537
    invoke-direct {p0}, Lcom/android/phone/OtaUtils;->otaShowInProgressScreen()V

    goto :goto_0
.end method

.method private otaShowProgramFailure(I)V
    .locals 2
    .parameter "length"

    .prologue
    .line 675
    const-string v0, "OtaShowProgramFailure()..."

    invoke-static {v0}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 676
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iget v1, v0, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->activationCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->activationCount:I

    .line 677
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iget v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->activationCount:I

    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->cdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    iget v1, v1, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;->otaShowActivateFailTimes:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    iget v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;->otaShowActivationScreen:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 681
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OtaShowProgramFailure(): activationCount"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iget v1, v1, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->activationCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 683
    const-string v0, "OtaShowProgramFailure(): show failure notice"

    invoke-static {v0}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 684
    invoke-direct {p0, p1}, Lcom/android/phone/OtaUtils;->otaShowProgramFailureNotice(I)V

    .line 689
    :goto_0
    return-void

    .line 686
    :cond_0
    const-string v0, "OtaShowProgramFailure(): show failure dialog"

    invoke-static {v0}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 687
    invoke-direct {p0}, Lcom/android/phone/OtaUtils;->otaShowProgramFailureDialog()V

    goto :goto_0
.end method

.method private otaShowProgramFailureDialog()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 722
    const-string v0, "OtaShowProgramFailureDialog()..."

    invoke-static {v0}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 723
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    sget-object v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_SUCCESS_FAILURE_DLG:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    iput-object v1, v0, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    .line 725
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTitle:Landroid/widget/TextView;

    const v1, 0x7f0e03ed

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 726
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTextSuccessFail:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 727
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTextSuccessFail:Landroid/widget/TextView;

    const v1, 0x7f0e03f4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 728
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->callCardOtaButtonsFailSuccess:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 729
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTryAgainButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 731
    invoke-virtual {p0}, Lcom/android/phone/OtaUtils;->isDialerOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 732
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0, v2}, Lcom/android/phone/DTMFTwelveKeyDialer;->closeDialer(Z)V

    .line 734
    :cond_0
    return-void
.end method

.method private otaShowProgramFailureNotice(I)V
    .locals 5
    .parameter "length"

    .prologue
    .line 804
    const-string v2, "OtaShowProgramFailureNotice()..."

    invoke-static {v2}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 805
    iget-object v2, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v2, v2, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaFailureDialog:Landroid/app/AlertDialog;

    if-nez v2, :cond_0

    .line 806
    iget-object v2, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/phone/OtaUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0e03f2

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, v2, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaFailureDialog:Landroid/app/AlertDialog;

    .line 809
    iget-object v2, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v2, v2, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaFailureDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x90

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 812
    iget-object v2, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v2, v2, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaFailureDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 814
    mul-int/lit16 v2, p1, 0x3e8

    int-to-long v0, v2

    .line 815
    .local v0, noticeTime:J
    iget-object v2, p0, Lcom/android/phone/OtaUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2, v0, v1}, Lcom/android/phone/InCallScreen;->requestCloseOtaFailureNotice(J)V

    .line 817
    .end local v0           #noticeTime:J
    :cond_0
    return-void
.end method

.method private otaShowProgramSuccessDialog()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 740
    const-string v0, "OtaShowProgramSuccessDialog()..."

    invoke-static {v0}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 741
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    sget-object v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_SUCCESS_FAILURE_DLG:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    iput-object v1, v0, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    .line 743
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTitle:Landroid/widget/TextView;

    const v1, 0x7f0e03ec

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 744
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTextSuccessFail:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 745
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTextSuccessFail:Landroid/widget/TextView;

    const v1, 0x7f0e03f3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 746
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->callCardOtaButtonsFailSuccess:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 747
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaNextButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 749
    invoke-virtual {p0}, Lcom/android/phone/OtaUtils;->isDialerOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 750
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0, v2}, Lcom/android/phone/DTMFTwelveKeyDialer;->closeDialer(Z)V

    .line 752
    :cond_0
    return-void
.end method

.method private otaShowSpcErrorNotice(I)V
    .locals 6
    .parameter "length"

    .prologue
    .line 761
    const-string v3, "OtaShowSpcErrorNotice()..."

    invoke-static {v3}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 762
    iget-object v3, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v3, v3, Lcom/android/phone/OtaUtils$OtaWidgetData;->spcErrorDialog:Landroid/app/AlertDialog;

    if-nez v3, :cond_1

    .line 763
    iget-object v3, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->inOtaSpcState:Z

    .line 765
    new-instance v0, Lcom/android/phone/OtaUtils$1;

    invoke-direct {v0, p0}, Lcom/android/phone/OtaUtils$1;-><init>(Lcom/android/phone/OtaUtils;)V

    .line 770
    .local v0, keyListener:Landroid/content/DialogInterface$OnKeyListener;
    iget-object v3, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/phone/OtaUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0e03f5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, v3, Lcom/android/phone/OtaUtils$OtaWidgetData;->spcErrorDialog:Landroid/app/AlertDialog;

    .line 774
    iget-object v3, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v3, v3, Lcom/android/phone/OtaUtils$OtaWidgetData;->spcErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x90

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 777
    iget-object v3, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v3, v3, Lcom/android/phone/OtaUtils$OtaWidgetData;->spcErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 779
    invoke-virtual {p0}, Lcom/android/phone/OtaUtils;->isDialerOpened()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 780
    iget-object v3, p0, Lcom/android/phone/OtaUtils;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/phone/DTMFTwelveKeyDialer;->closeDialer(Z)V

    .line 782
    :cond_0
    mul-int/lit16 v3, p1, 0x3e8

    int-to-long v1, v3

    .line 783
    .local v1, noticeTime:J
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OtaShowSpcErrorNotice(), remaining SPC noticeTime"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 784
    iget-object v3, p0, Lcom/android/phone/OtaUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v3, v1, v2}, Lcom/android/phone/InCallScreen;->requestCloseSpcErrorNotice(J)V

    .line 786
    .end local v0           #keyListener:Landroid/content/DialogInterface$OnKeyListener;
    .end local v1           #noticeTime:J
    :cond_1
    return-void
.end method

.method private otaSkipActivation()V
    .locals 1

    .prologue
    .line 445
    const-string v0, "otaSkipActivation()..."

    invoke-static {v0}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 447
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/phone/OtaUtils;->sendOtaspResult(I)V

    .line 449
    iget-boolean v0, p0, Lcom/android/phone/OtaUtils;->mInteractive:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->finish()V

    .line 450
    :cond_0
    return-void
.end method

.method private readXmlSettings()V
    .locals 6

    .prologue
    .line 922
    const-string v4, "readXmlSettings()..."

    invoke-static {v4}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 923
    iget-object v4, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->cdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    iget-boolean v4, v4, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;->configComplete:Z

    if-eqz v4, :cond_0

    .line 951
    :goto_0
    return-void

    .line 927
    :cond_0
    iget-object v4, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->cdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;->configComplete:Z

    .line 928
    iget-object v4, p0, Lcom/android/phone/OtaUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x7f0b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 930
    .local v2, tmpOtaShowActivationScreen:I
    iget-object v4, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->cdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    iput v2, v4, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;->otaShowActivationScreen:I

    .line 931
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readXmlSettings(), otaShowActivationScreen"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->cdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    iget v5, v5, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;->otaShowActivationScreen:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 934
    iget-object v4, p0, Lcom/android/phone/OtaUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0001

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 936
    .local v3, tmpOtaShowListeningScreen:I
    iget-object v4, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->cdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    iput v3, v4, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;->otaShowListeningScreen:I

    .line 937
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readXmlSettings(), otaShowListeningScreen"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->cdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    iget v5, v5, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;->otaShowListeningScreen:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 940
    iget-object v4, p0, Lcom/android/phone/OtaUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0002

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 942
    .local v1, tmpOtaShowActivateFailTimes:I
    iget-object v4, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->cdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    iput v1, v4, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;->otaShowActivateFailTimes:I

    .line 943
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readXmlSettings(), otaShowActivateFailTimes"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->cdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    iget v5, v5, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;->otaShowActivateFailTimes:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 946
    iget-object v4, p0, Lcom/android/phone/OtaUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0003

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 948
    .local v0, tmpOtaPlaySuccessFailureTone:I
    iget-object v4, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->cdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    iput v0, v4, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;->otaPlaySuccessFailureTone:I

    .line 949
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readXmlSettings(), otaPlaySuccessFailureTone"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->cdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    iget v5, v5, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;->otaPlaySuccessFailureTone:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private sendOtaspResult(I)V
    .locals 5
    .parameter "resultCode"

    .prologue
    .line 592
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendOtaspResult: resultCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 602
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 603
    .local v1, extraStuff:Landroid/content/Intent;
    const-string v2, "otasp_result_code"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 608
    iget-object v2, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    if-nez v2, :cond_0

    .line 609
    const-string v2, "OtaUtils"

    const-string v3, "updateNonInteractiveOtaSuccessFailure: no cdmaOtaScreenState object!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    :goto_0
    return-void

    .line 612
    :cond_0
    iget-object v2, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v2, v2, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaspResultCodePendingIntent:Landroid/app/PendingIntent;

    if-nez v2, :cond_1

    .line 613
    const-string v2, "OtaUtils"

    const-string v3, "updateNonInteractiveOtaSuccessFailure: null otaspResultCodePendingIntent!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 625
    :cond_1
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- sendOtaspResult:  SENDING PENDING INTENT: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v3, v3, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaspResultCodePendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 627
    iget-object v2, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v2, v2, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaspResultCodePendingIntent:Landroid/app/PendingIntent;

    iget-object v3, p0, Lcom/android/phone/OtaUtils;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 631
    :catch_0
    move-exception v0

    .line 633
    .local v0, e:Landroid/app/PendingIntent$CanceledException;
    const-string v2, "OtaUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PendingIntent send() failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setSpeaker(Z)V
    .locals 2
    .parameter "state"

    .prologue
    .line 343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSpeaker : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 345
    iget-boolean v0, p0, Lcom/android/phone/OtaUtils;->mInteractive:Z

    if-nez v0, :cond_0

    .line 346
    const-string v0, "non-interactive mode, ignoring setSpeaker."

    invoke-static {v0}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 360
    :goto_0
    return-void

    .line 350
    :cond_0
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v0

    if-ne p1, v0, :cond_1

    .line 351
    const-string v0, "no change. returning"

    invoke-static {v0}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 355
    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->isBluetoothAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 357
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->disconnectBluetoothAudio()V

    .line 359
    :cond_2
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    goto :goto_0
.end method

.method public static startNonInteractiveOtasp(Landroid/content/Context;)I
    .locals 10
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 295
    const-string v0, "startNonInteractiveOtasp()..."

    invoke-static {v0}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 296
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v6

    .line 298
    .local v6, app:Lcom/android/phone/PhoneApp;
    iget-object v0, v6, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v0, :cond_0

    .line 301
    const-string v0, "OtaUtils"

    const-string v1, "startNonInteractiveOtasp: OtaUtils already exists; nuking the old one and starting again..."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :cond_0
    new-instance v0, Lcom/android/phone/OtaUtils;

    move-object v1, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/OtaUtils;-><init>(Landroid/content/Context;Lcom/android/phone/InCallScreen;Landroid/view/ViewGroup;Lcom/android/phone/CallCard;Lcom/android/phone/DTMFTwelveKeyDialer;)V

    iput-object v0, v6, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- created OtaUtils: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v6, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 313
    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v9

    .line 314
    .local v9, phone:Lcom/android/internal/telephony/Phone;
    const-string v8, "*22899"

    .line 315
    .local v8, number:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- placing call to \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 316
    invoke-static {v9, v8, v2}, Lcom/android/phone/PhoneUtils;->placeCall(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;)I

    move-result v7

    .line 320
    .local v7, callStatus:I
    if-nez v7, :cond_1

    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  ==> successful return from placeCall(): callStatus = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 339
    :goto_0
    return v7

    .line 323
    :cond_1
    const-string v0, "OtaUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failure from placeCall() for OTA number \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\': code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateNonInteractiveOtaSuccessFailure()V
    .locals 3

    .prologue
    .line 578
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateNonInteractiveOtaSuccessFailure(): isOtaCallCommitted = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iget-boolean v2, v2, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->isOtaCallCommitted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 580
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iget-boolean v1, v1, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->isOtaCallCommitted:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    .line 583
    .local v0, resultCode:I
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/phone/OtaUtils;->sendOtaspResult(I)V

    .line 584
    return-void

    .line 580
    .end local v0           #resultCode:I
    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method

.method private updateOtaspProgress()V
    .locals 2

    .prologue
    .line 546
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateOtaspProgress()...  mInteractive = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/OtaUtils;->mInteractive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 547
    iget-boolean v0, p0, Lcom/android/phone/OtaUtils;->mInteractive:Z

    if-eqz v0, :cond_0

    .line 551
    invoke-direct {p0}, Lcom/android/phone/OtaUtils;->otaShowInProgressScreen()V

    .line 564
    :cond_0
    return-void
.end method


# virtual methods
.method public cleanOtaScreen(Z)V
    .locals 5
    .parameter "disableSpeaker"

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 1167
    const-string v0, "OTA ends, cleanOtaScreen!"

    invoke-static {v0}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 1169
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    sget-object v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_UNDEFINED:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    iput-object v1, v0, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    .line 1171
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iput-boolean v4, v0, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->isOtaCallCommitted:Z

    .line 1172
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iput-boolean v4, v0, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->isOtaCallIntentProcessed:Z

    .line 1173
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iput-boolean v4, v0, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->inOtaSpcState:Z

    .line 1174
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iput v4, v0, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->activationCount:I

    .line 1175
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->otaSpcUptime:J

    .line 1176
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaInCallScreenUiState:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;

    sget-object v1, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;->UNDEFINED:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    iput-object v1, v0, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;->state:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    .line 1178
    iget-boolean v0, p0, Lcom/android/phone/OtaUtils;->mInteractive:Z

    if-eqz v0, :cond_3

    .line 1179
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mInCallPanel:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mInCallPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1180
    :cond_0
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mCallCard:Lcom/android/phone/CallCard;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mCallCard:Lcom/android/phone/CallCard;

    invoke-virtual {v0}, Lcom/android/phone/CallCard;->hideCallCardElements()V

    .line 1181
    :cond_1
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->setHandleVisible(Z)V

    .line 1185
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaCallCardDtmfDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    if-eqz v0, :cond_2

    .line 1186
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaCallCardDtmfDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->stopDialerSession()V

    .line 1189
    :cond_2
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTextActivate:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1190
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTextListenProgressContainer:Landroid/widget/ScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 1191
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTextProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1192
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTextSuccessFail:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1193
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->callCardOtaButtonsActivate:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1194
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->callCardOtaButtonsListenProgress:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1195
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->callCardOtaButtonsFailSuccess:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1196
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaCallCardBase:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1197
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaDtmfDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    invoke-virtual {v0, v3}, Lcom/android/phone/DTMFTwelveKeyDialerView;->setVisibility(I)V

    .line 1198
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaNextButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 1199
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTryAgainButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 1204
    :cond_3
    if-eqz p1, :cond_4

    .line 1205
    invoke-direct {p0, v4}, Lcom/android/phone/OtaUtils;->setSpeaker(Z)V

    .line 1207
    :cond_4
    return-void
.end method

.method public dismissAllOtaDialogs()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1063
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->spcErrorDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1064
    const-string v0, "- DISMISSING mSpcErrorDialog."

    invoke-static {v0}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 1065
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->spcErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1066
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iput-object v1, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->spcErrorDialog:Landroid/app/AlertDialog;

    .line 1068
    :cond_0
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaFailureDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 1069
    const-string v0, "- DISMISSING mOtaFailureDialog."

    invoke-static {v0}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 1070
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaFailureDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1071
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iput-object v1, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaFailureDialog:Landroid/app/AlertDialog;

    .line 1073
    :cond_1
    return-void
.end method

.method public getCdmaOtaInCallScreenUiState()Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;
    .locals 2

    .prologue
    .line 1270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCdmaOtaInCallScreenState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->cdmaOtaInCallScreenUiState:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;

    iget-object v1, v1, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;->state:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 1272
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaInCallScreenUiState:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;->state:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    return-object v0
.end method

.method public hideOtaScreen()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 868
    const-string v0, "hideOtaScreen()..."

    invoke-static {v0}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 870
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->callCardOtaButtonsActivate:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 871
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->callCardOtaButtonsListenProgress:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 872
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->callCardOtaButtonsFailSuccess:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 873
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaCallCardBase:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 874
    return-void
.end method

.method public isDialerOpened()Z
    .locals 1

    .prologue
    .line 877
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClickHandler(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 957
    packed-switch p1, :pswitch_data_0

    .line 983
    :pswitch_0
    const-string v0, "onClickHandler: received a click event for unrecognized id"

    invoke-static {v0}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 986
    :goto_0
    return-void

    .line 959
    :pswitch_1
    invoke-direct {p0}, Lcom/android/phone/OtaUtils;->onClickOtaEndButton()V

    goto :goto_0

    .line 963
    :pswitch_2
    invoke-direct {p0}, Lcom/android/phone/OtaUtils;->onClickOtaSpeakerButton()V

    goto :goto_0

    .line 967
    :pswitch_3
    invoke-direct {p0}, Lcom/android/phone/OtaUtils;->onClickOtaActivateButton()V

    goto :goto_0

    .line 971
    :pswitch_4
    invoke-direct {p0}, Lcom/android/phone/OtaUtils;->onClickOtaActivateSkipButton()V

    goto :goto_0

    .line 975
    :pswitch_5
    invoke-direct {p0}, Lcom/android/phone/OtaUtils;->onClickOtaActivateNextButton()V

    goto :goto_0

    .line 979
    :pswitch_6
    invoke-direct {p0}, Lcom/android/phone/OtaUtils;->onClickOtaTryAgainButton()V

    goto :goto_0

    .line 957
    nop

    :pswitch_data_0
    .packed-switch 0x7f080121
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public onOtaCloseFailureNotice()V
    .locals 2

    .prologue
    .line 824
    const-string v0, "onOtaCloseFailureNotice()..."

    invoke-static {v0}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 825
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaFailureDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 826
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaFailureDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 827
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaFailureDialog:Landroid/app/AlertDialog;

    .line 829
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/OtaUtils;->otaShowActivateScreen()V

    .line 830
    return-void
.end method

.method public onOtaCloseSpcNotice()V
    .locals 3

    .prologue
    .line 792
    const-string v1, "onOtaCloseSpcNotice(), send shutdown intent"

    invoke-static {v1}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 793
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_REQUEST_SHUTDOWN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 794
    .local v0, shutdown:Landroid/content/Intent;
    const-string v1, "android.intent.extra.KEY_CONFIRM"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 795
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 796
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 797
    return-void
.end method

.method public onOtaProvisionStatusChanged(Landroid/os/AsyncResult;)V
    .locals 4
    .parameter "r"

    .prologue
    const/4 v3, 0x0

    .line 369
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    move-object v0, v1

    check-cast v0, [I

    .line 370
    .local v0, OtaStatus:[I
    const-string v1, "Provision status event!"

    invoke-static {v1}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 371
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOtaProvisionStatusChanged(): status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ==> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, v0, v3

    invoke-static {v2}, Lcom/android/phone/OtaUtils;->otaProvisionStatusToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 379
    aget v1, v0, v3

    packed-switch v1, :pswitch_data_0

    .line 413
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOtaProvisionStatusChanged(): Ignoring OtaStatus "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 416
    :goto_0
    return-void

    .line 381
    :pswitch_0
    const-string v1, "onOtaProvisionStatusChanged(): RETRIES EXCEEDED"

    invoke-static {v1}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 382
    invoke-direct {p0}, Lcom/android/phone/OtaUtils;->updateOtaspProgress()V

    .line 383
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->otaSpcUptime:J

    .line 384
    iget-boolean v1, p0, Lcom/android/phone/OtaUtils;->mInteractive:Z

    if-eqz v1, :cond_0

    .line 385
    const/16 v1, 0x3c

    invoke-direct {p0, v1}, Lcom/android/phone/OtaUtils;->otaShowSpcErrorNotice(I)V

    goto :goto_0

    .line 387
    :cond_0
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/android/phone/OtaUtils;->sendOtaspResult(I)V

    goto :goto_0

    .line 393
    :pswitch_1
    const-string v1, "onOtaProvisionStatusChanged(): DONE, isOtaCallCommitted set to true"

    invoke-static {v1}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 394
    invoke-direct {p0}, Lcom/android/phone/OtaUtils;->updateOtaspProgress()V

    .line 395
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->isOtaCallCommitted:Z

    goto :goto_0

    .line 408
    :pswitch_2
    const-string v1, "onOtaProvisionStatusChanged(): change to ProgressScreen"

    invoke-static {v1}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 409
    invoke-direct {p0}, Lcom/android/phone/OtaUtils;->updateOtaspProgress()V

    goto :goto_0

    .line 379
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public onOtaspDisconnect()V
    .locals 1

    .prologue
    .line 422
    const-string v0, "onOtaspDisconnect()..."

    invoke-static {v0}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 426
    iget-boolean v0, p0, Lcom/android/phone/OtaUtils;->mInteractive:Z

    if-nez v0, :cond_0

    .line 428
    invoke-direct {p0}, Lcom/android/phone/OtaUtils;->updateNonInteractiveOtaSuccessFailure()V

    .line 430
    :cond_0
    return-void
.end method

.method public otaShowActivateScreen()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 481
    const-string v0, "OtaShowActivationScreen()..."

    invoke-static {v0}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 482
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    iget v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;->otaShowActivationScreen:I

    if-ne v0, v2, :cond_2

    .line 484
    const-string v0, "OtaShowActivationScreen(): show activation screen"

    invoke-static {v0}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 485
    invoke-virtual {p0}, Lcom/android/phone/OtaUtils;->isDialerOpened()Z

    move-result v0

    if-nez v0, :cond_1

    .line 486
    invoke-direct {p0}, Lcom/android/phone/OtaUtils;->otaScreenInitialize()V

    .line 487
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v2, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaSkipButton:Landroid/widget/Button;

    sget-boolean v0, Lcom/android/phone/OtaUtils;->mIsWizardMode:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 489
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTextActivate:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 490
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->callCardOtaButtonsActivate:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 494
    :goto_1
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    sget-object v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_ACTIVATION:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    iput-object v1, v0, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    .line 500
    :goto_2
    return-void

    .line 487
    :cond_0
    const/4 v0, 0x4

    goto :goto_0

    .line 492
    :cond_1
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0, v2}, Lcom/android/phone/DTMFTwelveKeyDialer;->setHandleVisible(Z)V

    goto :goto_1

    .line 497
    :cond_2
    const-string v0, "OtaShowActivationScreen(): show home screen"

    invoke-static {v0}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 498
    invoke-direct {p0}, Lcom/android/phone/OtaUtils;->otaShowHome()V

    goto :goto_2
.end method

.method public otaShowProperScreen()V
    .locals 2

    .prologue
    .line 887
    const-string v0, "otaShowProperScreen()..."

    invoke-static {v0}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 888
    iget-boolean v0, p0, Lcom/android/phone/OtaUtils;->mInteractive:Z

    if-nez v0, :cond_1

    .line 890
    const-string v0, "OtaUtils"

    const-string v1, "otaShowProperScreen: not interactive!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    :cond_0
    :goto_0
    return-void

    .line 894
    :cond_1
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->isForegroundActivity()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 895
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "otaShowProperScreen(), OTA is foreground activity, currentstate ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v1, v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 897
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mInCallPanel:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 898
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mInCallPanel:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 900
    :cond_2
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_ACTIVATION:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-ne v0, v1, :cond_4

    .line 902
    invoke-virtual {p0}, Lcom/android/phone/OtaUtils;->otaShowActivateScreen()V

    .line 911
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iget-boolean v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->inOtaSpcState:Z

    if-eqz v0, :cond_0

    .line 912
    invoke-direct {p0}, Lcom/android/phone/OtaUtils;->getOtaSpcDisplayTime()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/phone/OtaUtils;->otaShowSpcErrorNotice(I)V

    goto :goto_0

    .line 903
    :cond_4
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_LISTENING:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-ne v0, v1, :cond_5

    .line 905
    invoke-direct {p0}, Lcom/android/phone/OtaUtils;->otaShowListeningScreen()V

    goto :goto_1

    .line 906
    :cond_5
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_PROGRESS:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-ne v0, v1, :cond_3

    .line 908
    invoke-direct {p0}, Lcom/android/phone/OtaUtils;->otaShowInProgressScreen()V

    goto :goto_1
.end method

.method public otaShowSuccessFailure()V
    .locals 2

    .prologue
    .line 697
    const-string v0, "otaShowSuccessFailure()..."

    invoke-static {v0}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 698
    iget-boolean v0, p0, Lcom/android/phone/OtaUtils;->mInteractive:Z

    if-nez v0, :cond_0

    .line 700
    const-string v0, "OtaUtils"

    const-string v1, "otaShowSuccessFailure: not interactive!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    :goto_0
    return-void

    .line 704
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/OtaUtils;->otaScreenInitialize()V

    .line 705
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OtaShowSuccessFailure(): isOtaCallCommitted"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iget-boolean v1, v1, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->isOtaCallCommitted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 707
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iget-boolean v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->isOtaCallCommitted:Z

    if-eqz v0, :cond_1

    .line 708
    const-string v0, "OtaShowSuccessFailure(), show success dialog"

    invoke-static {v0}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 709
    invoke-direct {p0}, Lcom/android/phone/OtaUtils;->otaShowProgramSuccessDialog()V

    goto :goto_0

    .line 711
    :cond_1
    const-string v0, "OtaShowSuccessFailure(), show failure dialog"

    invoke-static {v0}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 712
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/phone/OtaUtils;->otaShowProgramFailure(I)V

    goto :goto_0
.end method

.method public setCdmaOtaInCallScreenUiState(Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 1262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCdmaOtaInCallScreenState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 1263
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaInCallScreenUiState:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;

    iput-object p1, v0, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;->state:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    .line 1264
    return-void
.end method
