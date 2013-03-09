.class public Lcom/android/internal/telephony/gsm/GsmCmasMessage;
.super Lcom/android/internal/telephony/CmasMessage;
.source "GsmCmasMessage.java"


# static fields
.field public static final CHANNEL_AMBER:I = 0x111b

.field public static final CHANNEL_EXERCISE:I = 0x111d

.field public static final CHANNEL_EXTREME_EXTREME_EXPECTED_LIKELY:I = 0x1116

.field public static final CHANNEL_EXTREME_EXTREME_EXPECTED_OBSERVED:I = 0x1115

.field public static final CHANNEL_EXTREME_EXTREME_IMMEDIATE_LIKELY:I = 0x1114

.field public static final CHANNEL_EXTREME_EXTREME_IMMEDIATE_OBSERVED:I = 0x1113

.field public static final CHANNEL_OPERATOR_DEFINED:I = 0x111e

.field public static final CHANNEL_PRESIDENTIAL:I = 0x1112

.field public static final CHANNEL_SEVERE_SEVERE_EXPECTED_LIKELY:I = 0x111a

.field public static final CHANNEL_SEVERE_SEVERE_EXPECTED_OBSERVED:I = 0x1119

.field public static final CHANNEL_SEVERE_SEVERE_IMMEDIATE_LIKELY:I = 0x1118

.field public static final CHANNEL_SEVERE_SEVERE_IMMEDIATE_OBSERVED:I = 0x1117

.field public static final CHANNEL_TEST_MONTHLY:I = 0x111c

.field public static final GS_IMMEDIATE_CELL_WIDE:I = 0x0

.field public static final GS_NORMAL_CELL_WIDE:I = 0x11

.field public static final GS_NORMAL_LOCATION_WIDE:I = 0x10

.field public static final GS_NORMAL_PLMN_WIDE:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "GSM"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/telephony/CmasMessage;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->cmasFormat:I

    return-void
.end method

.method public static getCertainty(I)Ljava/lang/String;
    .locals 2

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    packed-switch p0, :pswitch_data_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :pswitch_0
    const v1, 0x104052a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_1
    const v1, 0x104052b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1113
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getSeverity(I)Ljava/lang/String;
    .locals 2

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    packed-switch p0, :pswitch_data_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :pswitch_0
    const v1, 0x1040526

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_1
    const v1, 0x1040527

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1113
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static getUrgency(I)Ljava/lang/String;
    .locals 2

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    packed-switch p0, :pswitch_data_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :pswitch_0
    const v1, 0x1040528

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_1
    const v1, 0x1040529

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1113
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private setCmasType(I)V
    .locals 4

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->cmasType:I

    goto :goto_0

    :pswitch_1
    iput v2, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->cmasType:I

    iput v1, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->severity:I

    iput v1, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->urgency:I

    iput v1, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->certainty:I

    goto :goto_0

    :pswitch_2
    iput v2, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->cmasType:I

    iput v1, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->severity:I

    iput v1, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->urgency:I

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->certainty:I

    goto :goto_0

    :pswitch_3
    iput v2, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->cmasType:I

    iput v1, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->severity:I

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->urgency:I

    iput v1, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->certainty:I

    goto :goto_0

    :pswitch_4
    iput v2, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->cmasType:I

    iput v1, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->severity:I

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->urgency:I

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->certainty:I

    goto :goto_0

    :pswitch_5
    iput v3, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->cmasType:I

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->severity:I

    iput v1, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->urgency:I

    iput v1, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->certainty:I

    goto :goto_0

    :pswitch_6
    iput v3, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->cmasType:I

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->severity:I

    iput v1, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->urgency:I

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->certainty:I

    goto :goto_0

    :pswitch_7
    iput v3, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->cmasType:I

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->severity:I

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->urgency:I

    iput v1, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->certainty:I

    goto :goto_0

    :pswitch_8
    iput v3, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->cmasType:I

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->severity:I

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->urgency:I

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->certainty:I

    goto :goto_0

    :pswitch_9
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->cmasType:I

    goto :goto_0

    :pswitch_a
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->cmasType:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1112
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
    .end packed-switch
.end method


# virtual methods
.method public parseGsmPdu([B)V
    .locals 5

    :try_start_0
    const-string v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parse gsm cb:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/internal/telephony/gsm/CBMessage;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/CBMessage;-><init>()V

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/CBMessage;->parseCBPdu([B)V

    const/4 v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->cmasFormat:I

    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->mPdu:[B

    iget v2, v0, Lcom/android/internal/telephony/gsm/CBMessage;->sn:I

    iput v2, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->sn:I

    iget v2, v0, Lcom/android/internal/telephony/gsm/CBMessage;->gs:I

    iput v2, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->gs:I

    iget v2, v0, Lcom/android/internal/telephony/gsm/CBMessage;->msg_id:I

    iput v2, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->msgId:I

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/CBMessage;->getMessageClass()Landroid/telephony/SmsMessage$MessageClass;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->messageClass:Landroid/telephony/SmsMessage$MessageClass;

    iget v2, v0, Lcom/android/internal/telephony/gsm/CBMessage;->page:I

    iput v2, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->pageSeg:I

    iget v2, v0, Lcom/android/internal/telephony/gsm/CBMessage;->pages:I

    iput v2, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->pageCount:I

    iget v2, v0, Lcom/android/internal/telephony/gsm/CBMessage;->mEncodingType:I

    iput v2, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->charSetEncoding:I

    iget-boolean v2, v0, Lcom/android/internal/telephony/gsm/CBMessage;->mEncodingTypeSet:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->charSetEncodingSet:Z

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/CBMessage;->getUserData()[B

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->alertText:[B

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/CBMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->alertTextStr:Ljava/lang/String;

    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->msgId:I

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->setCmasType(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string v2, "GSM"

    const-string v3, "gsm cb parsing failed: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
