.class public Lcom/android/phone/HtcCdmaCallForwardEditPreference;
.super Lcom/android/phone/EditPhoneNumberPreference;
.source "HtcCdmaCallForwardEditPreference.java"


# static fields
.field public static final APTG_FWD_COMMAND_DISABLE:[Ljava/lang/String; = null

.field public static final APTG_FWD_COMMAND_ENABLE:[Ljava/lang/String; = null

.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "HtcCdmaCallForwardEditPreference"

.field public static final REASON_BUSY:I = 0x1

.field public static final REASON_NOT_REACHABLE:I = 0x3

.field public static final REASON_NO_REPLY:I = 0x2

.field public static final REASON_UNCONDITIONAL:I

.field private static final SRC_TAGS:[Ljava/lang/String;


# instance fields
.field callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

.field private mButtonClicked:I

.field private mContext:Landroid/content/Context;

.field private mServiceClass:I

.field private mSummaryOnTemplate:Ljava/lang/CharSequence;

.field phone:Lcom/android/internal/telephony/Phone;

.field reason:I

.field tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 27
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "{0}"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/phone/HtcCdmaCallForwardEditPreference;->SRC_TAGS:[Ljava/lang/String;

    .line 42
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "*21#"

    aput-object v1, v0, v2

    const-string v1, "*67#"

    aput-object v1, v0, v3

    const-string v1, "*61#"

    aput-object v1, v0, v4

    const-string v1, "*65#"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/phone/HtcCdmaCallForwardEditPreference;->APTG_FWD_COMMAND_ENABLE:[Ljava/lang/String;

    .line 43
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "*210"

    aput-object v1, v0, v2

    const-string v1, "*670"

    aput-object v1, v0, v3

    const-string v1, "*610"

    aput-object v1, v0, v4

    const-string v1, "*650"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/phone/HtcCdmaCallForwardEditPreference;->APTG_FWD_COMMAND_DISABLE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/HtcCdmaCallForwardEditPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/android/phone/EditPhoneNumberPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    iput v3, p0, Lcom/android/phone/HtcCdmaCallForwardEditPreference;->mButtonClicked:I

    .line 32
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/HtcCdmaCallForwardEditPreference;->mContext:Landroid/content/Context;

    .line 49
    iput-object p1, p0, Lcom/android/phone/HtcCdmaCallForwardEditPreference;->mContext:Landroid/content/Context;

    .line 50
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/HtcCdmaCallForwardEditPreference;->phone:Lcom/android/internal/telephony/Phone;

    .line 52
    invoke-virtual {p0}, Lcom/android/phone/HtcCdmaCallForwardEditPreference;->getSummaryOn()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/HtcCdmaCallForwardEditPreference;->mSummaryOnTemplate:Ljava/lang/CharSequence;

    .line 54
    sget-object v1, Lcom/android/phone/R$styleable;->CallForwardEditPreference:[I

    const v2, 0x7f0d0034

    invoke-virtual {p1, p2, v1, v3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 56
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/phone/HtcCdmaCallForwardEditPreference;->reason:I

    .line 58
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 62
    invoke-virtual {p0, v4}, Lcom/android/phone/HtcCdmaCallForwardEditPreference;->setToggled(Z)Lcom/android/phone/EditPhoneNumberPreference;

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/HtcCdmaCallForwardEditPreference;IZLjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/android/phone/HtcCdmaCallForwardEditPreference;->dialSpecificNumberToForward(IZLjava/lang/String;)V

    return-void
.end method

.method private dialNumber(Ljava/lang/String;)V
    .locals 3
    .parameter "number"

    .prologue
    .line 165
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 166
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "tel"

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 167
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 168
    iget-object v1, p0, Lcom/android/phone/HtcCdmaCallForwardEditPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 169
    return-void
.end method

.method private dialSpecificNumberToForward(IZLjava/lang/String;)V
    .locals 6
    .parameter "actionType"
    .parameter "enable"
    .parameter "number"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x7

    .line 172
    packed-switch p1, :pswitch_data_0

    .line 237
    :goto_0
    return-void

    .line 176
    :pswitch_0
    if-eqz p2, :cond_1

    .line 177
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v0, v1, :cond_0

    sget-boolean v0, Lcom/android/phone/HtcFeatureList;->FEATURE_CDMA_CALL_FORWARDING:Z

    if-eqz v0, :cond_0

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/phone/HtcCdmaCallForwardEditPreference;->APTG_FWD_COMMAND_ENABLE:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/HtcCdmaCallForwardEditPreference;->dialNumber(Ljava/lang/String;)V

    goto :goto_0

    .line 181
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "*72"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/HtcCdmaCallForwardEditPreference;->dialNumber(Ljava/lang/String;)V

    goto :goto_0

    .line 183
    :cond_1
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v0, v1, :cond_2

    sget-boolean v0, Lcom/android/phone/HtcFeatureList;->FEATURE_CDMA_CALL_FORWARDING:Z

    if-eqz v0, :cond_2

    .line 185
    sget-object v0, Lcom/android/phone/HtcCdmaCallForwardEditPreference;->APTG_FWD_COMMAND_DISABLE:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-direct {p0, v0}, Lcom/android/phone/HtcCdmaCallForwardEditPreference;->dialNumber(Ljava/lang/String;)V

    goto :goto_0

    .line 187
    :cond_2
    const-string v0, "*720"

    invoke-direct {p0, v0}, Lcom/android/phone/HtcCdmaCallForwardEditPreference;->dialNumber(Ljava/lang/String;)V

    goto :goto_0

    .line 191
    :pswitch_1
    if-eqz p2, :cond_4

    .line 192
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v0, v1, :cond_3

    sget-boolean v0, Lcom/android/phone/HtcFeatureList;->FEATURE_CDMA_CALL_FORWARDING:Z

    if-eqz v0, :cond_3

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/phone/HtcCdmaCallForwardEditPreference;->APTG_FWD_COMMAND_ENABLE:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/HtcCdmaCallForwardEditPreference;->dialNumber(Ljava/lang/String;)V

    goto :goto_0

    .line 196
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "*90"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/HtcCdmaCallForwardEditPreference;->dialNumber(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 198
    :cond_4
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v0, v1, :cond_5

    sget-boolean v0, Lcom/android/phone/HtcFeatureList;->FEATURE_CDMA_CALL_FORWARDING:Z

    if-eqz v0, :cond_5

    .line 200
    sget-object v0, Lcom/android/phone/HtcCdmaCallForwardEditPreference;->APTG_FWD_COMMAND_DISABLE:[Ljava/lang/String;

    aget-object v0, v0, v3

    invoke-direct {p0, v0}, Lcom/android/phone/HtcCdmaCallForwardEditPreference;->dialNumber(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 202
    :cond_5
    const-string v0, "*900"

    invoke-direct {p0, v0}, Lcom/android/phone/HtcCdmaCallForwardEditPreference;->dialNumber(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 206
    :pswitch_2
    if-eqz p2, :cond_7

    .line 207
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v0, v1, :cond_6

    sget-boolean v0, Lcom/android/phone/HtcFeatureList;->FEATURE_CDMA_CALL_FORWARDING:Z

    if-eqz v0, :cond_6

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/phone/HtcCdmaCallForwardEditPreference;->APTG_FWD_COMMAND_ENABLE:[Ljava/lang/String;

    aget-object v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/HtcCdmaCallForwardEditPreference;->dialNumber(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 211
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "*92"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/HtcCdmaCallForwardEditPreference;->dialNumber(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 213
    :cond_7
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v0, v1, :cond_8

    sget-boolean v0, Lcom/android/phone/HtcFeatureList;->FEATURE_CDMA_CALL_FORWARDING:Z

    if-eqz v0, :cond_8

    .line 215
    sget-object v0, Lcom/android/phone/HtcCdmaCallForwardEditPreference;->APTG_FWD_COMMAND_DISABLE:[Ljava/lang/String;

    aget-object v0, v0, v4

    invoke-direct {p0, v0}, Lcom/android/phone/HtcCdmaCallForwardEditPreference;->dialNumber(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 217
    :cond_8
    const-string v0, "*920"

    invoke-direct {p0, v0}, Lcom/android/phone/HtcCdmaCallForwardEditPreference;->dialNumber(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 221
    :pswitch_3
    if-eqz p2, :cond_a

    .line 222
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v0, v1, :cond_9

    sget-boolean v0, Lcom/android/phone/HtcFeatureList;->FEATURE_CDMA_CALL_FORWARDING:Z

    if-eqz v0, :cond_9

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/phone/HtcCdmaCallForwardEditPreference;->APTG_FWD_COMMAND_ENABLE:[Ljava/lang/String;

    aget-object v1, v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/HtcCdmaCallForwardEditPreference;->dialNumber(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 226
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "*68"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/HtcCdmaCallForwardEditPreference;->dialNumber(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 228
    :cond_a
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v0, v1, :cond_b

    sget-boolean v0, Lcom/android/phone/HtcFeatureList;->FEATURE_CDMA_CALL_FORWARDING:Z

    if-eqz v0, :cond_b

    .line 230
    sget-object v0, Lcom/android/phone/HtcCdmaCallForwardEditPreference;->APTG_FWD_COMMAND_DISABLE:[Ljava/lang/String;

    aget-object v0, v0, v5

    invoke-direct {p0, v0}, Lcom/android/phone/HtcCdmaCallForwardEditPreference;->dialNumber(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 232
    :cond_b
    const-string v0, "*680"

    invoke-direct {p0, v0}, Lcom/android/phone/HtcCdmaCallForwardEditPreference;->dialNumber(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 172
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private showAlertDialog(IZLjava/lang/String;)V
    .locals 3
    .parameter "actionType"
    .parameter "enable"
    .parameter "number"

    .prologue
    .line 116
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/HtcCdmaCallForwardEditPreference;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v1, p0, Lcom/android/phone/HtcCdmaCallForwardEditPreference;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e0199

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e019a

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/phone/HtcCdmaCallForwardEditPreference$2;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/android/phone/HtcCdmaCallForwardEditPreference$2;-><init>(Lcom/android/phone/HtcCdmaCallForwardEditPreference;IZLjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    new-instance v2, Lcom/android/phone/HtcCdmaCallForwardEditPreference$1;

    invoke-direct {v2, p0}, Lcom/android/phone/HtcCdmaCallForwardEditPreference$1;-><init>(Lcom/android/phone/HtcCdmaCallForwardEditPreference;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    .line 137
    :goto_0
    return-void

    .line 133
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/phone/HtcCdmaCallForwardEditPreference;->dialSpecificNumberToForward(IZLjava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method init(Lcom/android/phone/TimeConsumingPreferenceListener;Z)V
    .locals 2
    .parameter "listener"
    .parameter "skipReading"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/phone/HtcCdmaCallForwardEditPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    .line 73
    if-nez p2, :cond_0

    .line 75
    iget-object v0, p0, Lcom/android/phone/HtcCdmaCallForwardEditPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/android/phone/HtcCdmaCallForwardEditPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Lcom/android/phone/TimeConsumingPreferenceListener;->onStarted(Lcom/htc/preference/HtcPreference;Z)V

    .line 79
    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 83
    invoke-super {p0, p1, p2}, Lcom/android/phone/EditPhoneNumberPreference;->onClick(Landroid/content/DialogInterface;I)V

    .line 84
    iput p2, p0, Lcom/android/phone/HtcCdmaCallForwardEditPreference;->mButtonClicked:I

    .line 85
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 5
    .parameter "positiveResult"

    .prologue
    const/4 v4, -0x1

    .line 89
    invoke-super {p0, p1}, Lcom/android/phone/EditPhoneNumberPreference;->onDialogClosed(Z)V

    .line 93
    iget v2, p0, Lcom/android/phone/HtcCdmaCallForwardEditPreference;->mButtonClicked:I

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/phone/HtcCdmaCallForwardEditPreference;->mButtonClicked:I

    if-eq v2, v4, :cond_0

    iget v2, p0, Lcom/android/phone/HtcCdmaCallForwardEditPreference;->mButtonClicked:I

    const/4 v3, -0x3

    if-ne v2, v3, :cond_2

    .line 96
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/HtcCdmaCallForwardEditPreference;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    .line 101
    .local v1, number:Ljava/lang/String;
    const/4 v0, 0x0

    .line 102
    .local v0, enabled:Z
    iget v2, p0, Lcom/android/phone/HtcCdmaCallForwardEditPreference;->mButtonClicked:I

    if-ne v2, v4, :cond_1

    .line 103
    const/4 v0, 0x1

    .line 108
    :cond_1
    iget v2, p0, Lcom/android/phone/HtcCdmaCallForwardEditPreference;->reason:I

    invoke-direct {p0, v2, v0, v1}, Lcom/android/phone/HtcCdmaCallForwardEditPreference;->showAlertDialog(IZLjava/lang/String;)V

    .line 111
    .end local v0           #enabled:Z
    .end local v1           #number:Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/phone/HtcCdmaCallForwardEditPreference;->mButtonClicked:I

    .line 112
    return-void
.end method
