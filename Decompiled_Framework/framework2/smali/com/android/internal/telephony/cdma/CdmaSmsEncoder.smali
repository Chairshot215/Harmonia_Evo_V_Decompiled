.class public Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;
.super Ljava/lang/Object;
.source "CdmaSmsEncoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/CdmaSmsEncoder$1;,
        Lcom/android/internal/telephony/cdma/CdmaSmsEncoder$Gsm7bitCodingResult;,
        Lcom/android/internal/telephony/cdma/CdmaSmsEncoder$CodingException;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CdmaSmsEncoder"

.field static final accepted_TRANSPORT_TYPE_param_list:[[B

.field static final accepted_param_ACKNOWLEDGE:[B

.field static final accepted_param_POINT_TO_POINT:[B

.field static final accepted_subparam_CARD_APPLICATION_TOOLKIT_submit:[B

.field static final accepted_subparam_CARD_APPLICATION_TOOLKIT_user_ack:[B

.field static final accepted_subparam_SERVICE_CATEGORY_PROGRAMMING:[B

.field static final accepted_subparam_WIRELESS_APPLICATION:[B

.field static final accepted_subparam_WIRELESS_ENHANCED_MESSAGING_cancellation:[B

.field static final accepted_subparam_WIRELESS_ENHANCED_MESSAGING_read_ack:[B

.field static final accepted_subparam_WIRELESS_ENHANCED_MESSAGING_submit:[B

.field static final accepted_subparam_WIRELESS_ENHANCED_MESSAGING_user_ack:[B

.field static final accepted_subparam_WIRELESS_MESSAGING_cancellation:[B

.field static final accepted_subparam_WIRELESS_MESSAGING_delivery:[B

.field static final accepted_subparam_WIRELESS_MESSAGING_read_ack:[B

.field static final accepted_subparam_WIRELESS_MESSAGING_submit:[B

.field static final accepted_subparam_WIRELESS_MESSAGING_user_ack:[B

.field static final accepted_subparam_WIRELESS_PAGING_submit:[B

.field static final accepted_subparam_WIRELESS_PAGING_user_ack:[B

.field static final accepted_subparam_delivery_report:[B

.field private static final ascIItoDtmfDigit:[B

.field private static final bitsMaskLeft:[S

.field private static final bitsMaskRight:[S

.field private static final dtmfDigitToAscII:[B

.field static final required_TRANSPORT_TYPE_param_list:[[B

.field static final required_param_ACKNOWLEDGE:[B

.field static final required_param_POINT_TO_POINT:[B

.field static final required_subparam_CARD_APPLICATION_TOOLKIT_submit:[B

.field static final required_subparam_CARD_APPLICATION_TOOLKIT_user_ack:[B

.field static final required_subparam_SERVICE_CATEGORY_PROGRAMMING:[B

.field static final required_subparam_WIRELESS_APPLICATION:[B

.field static final required_subparam_WIRELESS_ENHANCED_MESSAGING_cancellation:[B

.field static final required_subparam_WIRELESS_ENHANCED_MESSAGING_read_ack:[B

.field static final required_subparam_WIRELESS_ENHANCED_MESSAGING_submit:[B

.field static final required_subparam_WIRELESS_ENHANCED_MESSAGING_user_ack:[B

.field static final required_subparam_WIRELESS_MESSAGING_cancellation:[B

.field static final required_subparam_WIRELESS_MESSAGING_delivery:[B

.field static final required_subparam_WIRELESS_MESSAGING_read_ack:[B

.field static final required_subparam_WIRELESS_MESSAGING_submit:[B

.field static final required_subparam_WIRELESS_MESSAGING_user_ack:[B

.field static final required_subparam_WIRELESS_PAGING_submit:[B

.field static final required_subparam_WIRELESS_PAGING_user_ack:[B

.field static final required_subparam_delivery_report:[B


# instance fields
.field TeleserviceMsgType:B

.field TeleserviceParam_absoluteDelivery:[B

.field TeleserviceParam_absoluteValidity:[B

.field TeleserviceParam_alertOnDelivery:B

.field TeleserviceParam_deliveryAckRequest:Z

.field TeleserviceParam_deliveryReportRequest:Z

.field TeleserviceParam_encodingUserData:[[B

.field TeleserviceParam_encodingUserDataEncoding:[B

.field TeleserviceParam_gsmTpFailure:B

.field TeleserviceParam_language:B

.field TeleserviceParam_manualAckRequest:Z

.field TeleserviceParam_messageId:S

.field TeleserviceParam_messageIdInCenter:S

.field TeleserviceParam_priority:B

.field TeleserviceParam_privacy:B

.field TeleserviceParam_readAckRequest:Z

.field TeleserviceParam_relativeDelivery:B

.field TeleserviceParam_relativeValidity:B

.field TeleserviceParam_senderAddr:[B

.field TeleserviceParam_senderAddrPlan:B

.field TeleserviceParam_senderAddrType:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

.field TeleserviceParam_settingResult:[B

.field TeleserviceParam_settingTypeOfService:[S

.field TeleserviceParam_userData:[B

.field TeleserviceParam_userDataEncoding:B

.field TeleserviceParam_userDataEncodingExtended:S

.field TeleserviceParam_userDataHeader:[B

.field TeleserviceParam_userData_string:Ljava/lang/String;

.field TeleserviceParam_userResponseCode:S

.field TeleserviceParameters:[Z

.field TransportParam_bearerData:[B

.field TransportParam_errorClass:B

.field TransportParam_errorDetail:B

.field TransportParam_errorReplySeqNumber:B

.field TransportParam_replySeqNumber:B

.field TransportParam_subAddr:[B

.field TransportParam_subAddrType:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

.field TransportParam_teleserviceCategory:I

.field TransportParam_toAddr:[B

.field TransportParam_toAddrPlan:B

.field TransportParam_toAddrType:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

.field TransportParam_typeOfService:I

.field TransportParameters:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x5

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->accepted_param_POINT_TO_POINT:[B

    new-array v0, v3, [B

    aput-byte v2, v0, v2

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->required_param_POINT_TO_POINT:[B

    new-array v0, v5, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->accepted_param_ACKNOWLEDGE:[B

    new-array v0, v4, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->required_param_ACKNOWLEDGE:[B

    new-array v0, v5, [[B

    sget-object v1, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->accepted_param_POINT_TO_POINT:[B

    aput-object v1, v0, v2

    const/4 v1, 0x0

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->accepted_param_ACKNOWLEDGE:[B

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->accepted_TRANSPORT_TYPE_param_list:[[B

    new-array v0, v5, [[B

    sget-object v1, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->required_param_POINT_TO_POINT:[B

    aput-object v1, v0, v2

    const/4 v1, 0x0

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->required_param_ACKNOWLEDGE:[B

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->required_TRANSPORT_TYPE_param_list:[[B

    const/16 v0, 0xc

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->ascIItoDtmfDigit:[B

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->dtmfDigitToAscII:[B

    const/16 v0, 0x9

    new-array v0, v0, [S

    fill-array-data v0, :array_5

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->bitsMaskLeft:[S

    const/16 v0, 0x9

    new-array v0, v0, [S

    fill-array-data v0, :array_6

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->bitsMaskRight:[S

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_7

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->accepted_subparam_WIRELESS_PAGING_submit:[B

    new-array v0, v3, [B

    aput-byte v2, v0, v2

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->required_subparam_WIRELESS_PAGING_submit:[B

    new-array v0, v6, [B

    fill-array-data v0, :array_8

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->accepted_subparam_WIRELESS_PAGING_user_ack:[B

    new-array v0, v3, [B

    aput-byte v2, v0, v2

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->required_subparam_WIRELESS_PAGING_user_ack:[B

    const/16 v0, 0xe

    new-array v0, v0, [B

    fill-array-data v0, :array_9

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->accepted_subparam_WIRELESS_MESSAGING_submit:[B

    const/16 v0, 0xf

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->accepted_subparam_WIRELESS_MESSAGING_delivery:[B

    new-array v0, v3, [B

    aput-byte v2, v0, v2

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->required_subparam_WIRELESS_MESSAGING_submit:[B

    new-array v0, v3, [B

    aput-byte v2, v0, v2

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->required_subparam_WIRELESS_MESSAGING_delivery:[B

    new-array v0, v3, [B

    aput-byte v2, v0, v2

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->accepted_subparam_WIRELESS_MESSAGING_cancellation:[B

    new-array v0, v3, [B

    aput-byte v2, v0, v2

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->required_subparam_WIRELESS_MESSAGING_cancellation:[B

    new-array v0, v6, [B

    fill-array-data v0, :array_b

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->accepted_subparam_WIRELESS_MESSAGING_user_ack:[B

    new-array v0, v3, [B

    aput-byte v2, v0, v2

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->required_subparam_WIRELESS_MESSAGING_user_ack:[B

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_c

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->accepted_subparam_WIRELESS_MESSAGING_read_ack:[B

    new-array v0, v3, [B

    aput-byte v2, v0, v2

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->required_subparam_WIRELESS_MESSAGING_read_ack:[B

    new-array v0, v4, [B

    fill-array-data v0, :array_d

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->accepted_subparam_WIRELESS_APPLICATION:[B

    new-array v0, v4, [B

    fill-array-data v0, :array_e

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->required_subparam_WIRELESS_APPLICATION:[B

    const/16 v0, 0xe

    new-array v0, v0, [B

    fill-array-data v0, :array_f

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->accepted_subparam_WIRELESS_ENHANCED_MESSAGING_submit:[B

    new-array v0, v4, [B

    fill-array-data v0, :array_10

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->required_subparam_WIRELESS_ENHANCED_MESSAGING_submit:[B

    new-array v0, v3, [B

    aput-byte v2, v0, v2

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->accepted_subparam_WIRELESS_ENHANCED_MESSAGING_cancellation:[B

    new-array v0, v3, [B

    aput-byte v2, v0, v2

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->required_subparam_WIRELESS_ENHANCED_MESSAGING_cancellation:[B

    new-array v0, v6, [B

    fill-array-data v0, :array_11

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->accepted_subparam_WIRELESS_ENHANCED_MESSAGING_user_ack:[B

    new-array v0, v3, [B

    aput-byte v2, v0, v2

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->required_subparam_WIRELESS_ENHANCED_MESSAGING_user_ack:[B

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_12

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->accepted_subparam_WIRELESS_ENHANCED_MESSAGING_read_ack:[B

    new-array v0, v3, [B

    aput-byte v2, v0, v2

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->required_subparam_WIRELESS_ENHANCED_MESSAGING_read_ack:[B

    new-array v0, v4, [B

    fill-array-data v0, :array_13

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->accepted_subparam_SERVICE_CATEGORY_PROGRAMMING:[B

    new-array v0, v4, [B

    fill-array-data v0, :array_14

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->required_subparam_SERVICE_CATEGORY_PROGRAMMING:[B

    new-array v0, v4, [B

    fill-array-data v0, :array_15

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->accepted_subparam_CARD_APPLICATION_TOOLKIT_submit:[B

    new-array v0, v4, [B

    fill-array-data v0, :array_16

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->required_subparam_CARD_APPLICATION_TOOLKIT_submit:[B

    new-array v0, v5, [B

    fill-array-data v0, :array_17

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->accepted_subparam_CARD_APPLICATION_TOOLKIT_user_ack:[B

    new-array v0, v3, [B

    aput-byte v2, v0, v2

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->required_subparam_CARD_APPLICATION_TOOLKIT_user_ack:[B

    new-array v0, v6, [B

    fill-array-data v0, :array_18

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->accepted_subparam_delivery_report:[B

    new-array v0, v3, [B

    aput-byte v2, v0, v2

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->required_subparam_delivery_report:[B

    return-void

    nop

    :array_0
    .array-data 0x1
        0x0t
        0x1t
        0x4t
        0x5t
        0x2t
        0x3t
        0x6t
        0x8t
    .end array-data

    :array_1
    .array-data 0x1
        0x4t
        0x5t
        0x7t
    .end array-data

    :array_2
    .array-data 0x1
        0x4t
        0x7t
    .end array-data

    nop

    :array_3
    .array-data 0x1
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x30t
        0x2at
        0x23t
    .end array-data

    :array_4
    .array-data 0x1
        0x0t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x30t
        0x2at
        0x23t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_5
    .array-data 0x2
        0x0t 0x0t
        0x80t 0x0t
        0xc0t 0x0t
        0xe0t 0x0t
        0xf0t 0x0t
        0xf8t 0x0t
        0xfct 0x0t
        0xfet 0x0t
        0xfft 0x0t
    .end array-data

    nop

    :array_6
    .array-data 0x2
        0x0t 0x0t
        0x1t 0x0t
        0x3t 0x0t
        0x7t 0x0t
        0xft 0x0t
        0x1ft 0x0t
        0x3ft 0x0t
        0x7ft 0x0t
        0xfft 0x0t
    .end array-data

    nop

    :array_7
    .array-data 0x1
        0x0t
        0x1t
        0x8t
        0x9t
        0xat
        0xet
        0x10t
        0x11t
    .end array-data

    :array_8
    .array-data 0x1
        0x0t
        0x1t
        0x2t
        0x10t
        0x11t
    .end array-data

    nop

    :array_9
    .array-data 0x1
        0x0t
        0x1t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xct
        0xdt
        0xet
        0x10t
        0x11t
    .end array-data

    nop

    :array_a
    .array-data 0x1
        0x0t
        0x1t
        0x3t
        0x4t
        0x5t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
    .end array-data

    :array_b
    .array-data 0x1
        0x0t
        0x1t
        0x2t
        0x10t
        0x11t
    .end array-data

    nop

    :array_c
    .array-data 0x1
        0x0t
        0x1t
        0x10t
        0x11t
    .end array-data

    :array_d
    .array-data 0x1
        0x0t
        0x1t
    .end array-data

    nop

    :array_e
    .array-data 0x1
        0x0t
        0x1t
    .end array-data

    nop

    :array_f
    .array-data 0x1
        0x0t
        0x1t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xct
        0xdt
        0xet
        0x10t
        0x11t
    .end array-data

    nop

    :array_10
    .array-data 0x1
        0x0t
        0x1t
    .end array-data

    nop

    :array_11
    .array-data 0x1
        0x0t
        0x1t
        0x2t
        0x10t
        0x11t
    .end array-data

    nop

    :array_12
    .array-data 0x1
        0x0t
        0x1t
        0x10t
        0x11t
    .end array-data

    :array_13
    .array-data 0x1
        0x0t
        0x13t
    .end array-data

    nop

    :array_14
    .array-data 0x1
        0x0t
        0x13t
    .end array-data

    nop

    :array_15
    .array-data 0x1
        0x0t
        0x1t
    .end array-data

    nop

    :array_16
    .array-data 0x1
        0x0t
        0x1t
    .end array-data

    nop

    :array_17
    .array-data 0x1
        0x0t
        0x1t
        0x2t
    .end array-data

    :array_18
    .array-data 0x1
        0x0t
        0x1t
        0xdt
        0x10t
        0x15t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_userData_string:Ljava/lang/String;

    const/16 v0, 0x9

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TransportParameters:[Z

    const/16 v0, 0x18

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParameters:[Z

    return-void
.end method

.method private encode16bitEms(Lcom/android/internal/telephony/cdma/sms/UserData;[B)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/CdmaSmsEncoder$CodingException;
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v8, 0x0

    iget-object v5, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeUtf16(Ljava/lang/String;)[B

    move-result-object v0

    array-length v5, p2

    add-int/lit8 v2, v5, 0x1

    add-int/lit8 v5, v2, 0x1

    div-int/lit8 v3, v5, 0x2

    rem-int/lit8 v4, v2, 0x2

    array-length v5, v0

    div-int/lit8 v1, v5, 0x2

    const/4 v5, 0x4

    iput v5, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    iput-boolean v7, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    add-int v5, v3, v1

    iput v5, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    iget v5, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    mul-int/lit8 v5, v5, 0x2

    new-array v5, v5, [B

    iput-object v5, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iget-object v5, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v6, p2

    int-to-byte v6, v6

    aput-byte v6, v5, v8

    iget-object v5, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v6, p2

    invoke-static {p2, v8, v5, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v5, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    add-int v6, v2, v4

    array-length v7, v0

    invoke-static {v0, v8, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method private encode7bitAscii(Ljava/lang/String;Z)[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/CdmaSmsEncoder$CodingException;
        }
    .end annotation

    const/4 v8, -0x1

    :try_start_0
    new-instance v4, Lcom/android/internal/util/BitwiseOutputStream;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-direct {v4, v5}, Lcom/android/internal/util/BitwiseOutputStream;-><init>(I)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_2

    sget-object v5, Lcom/android/internal/telephony/cdma/sms/UserData;->charToAscii:Landroid/util/SparseIntArray;

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/4 v7, -0x1

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-ne v0, v8, :cond_1

    if-eqz p2, :cond_0

    const/4 v5, 0x7

    const/16 v6, 0x20

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v5, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder$CodingException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cannot ASCII encode ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder$CodingException;-><init>(Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Lcom/android/internal/util/BitwiseOutputStream$AccessException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    new-instance v5, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder$CodingException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "7bit ASCII encode failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder$CodingException;-><init>(Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;Ljava/lang/String;)V

    throw v5

    :cond_1
    const/4 v5, 0x7

    :try_start_1
    invoke-virtual {v4, v5, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    goto :goto_1

    :cond_2
    invoke-virtual {v4}, Lcom/android/internal/util/BitwiseOutputStream;->toByteArray()[B
    :try_end_1
    .catch Lcom/android/internal/util/BitwiseOutputStream$AccessException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    return-object v5
.end method

.method private encode7bitEms(Lcom/android/internal/telephony/cdma/sms/UserData;[BZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/CdmaSmsEncoder$CodingException;
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v5, 0x0

    array-length v3, p2

    add-int/lit8 v1, v3, 0x1

    mul-int/lit8 v3, v1, 0x8

    add-int/lit8 v3, v3, 0x6

    div-int/lit8 v2, v3, 0x7

    iget-object v3, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-direct {p0, v3, v2, p3}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encode7bitGsm(Ljava/lang/String;IZ)Lcom/android/internal/telephony/cdma/CdmaSmsEncoder$Gsm7bitCodingResult;

    move-result-object v0

    const/16 v3, 0x9

    iput v3, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    iput-boolean v6, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    iget v3, v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder$Gsm7bitCodingResult;->septets:I

    iput v3, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder$Gsm7bitCodingResult;->data:[B

    iput-object v3, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iget-object v3, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v4, p2

    int-to-byte v4, v4

    aput-byte v4, v3, v5

    iget-object v3, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v4, p2

    invoke-static {p2, v5, v3, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method private encode7bitGsm(Ljava/lang/String;IZ)Lcom/android/internal/telephony/cdma/CdmaSmsEncoder$Gsm7bitCodingResult;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/CdmaSmsEncoder$CodingException;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez p3, :cond_0

    :goto_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-static {p1, p2, v3, v4, v5}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;IZII)[B

    move-result-object v1

    new-instance v2, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder$Gsm7bitCodingResult;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder$Gsm7bitCodingResult;-><init>(Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;)V

    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    new-array v3, v3, [B

    iput-object v3, v2, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder$Gsm7bitCodingResult;->data:[B

    const/4 v3, 0x1

    iget-object v4, v2, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder$Gsm7bitCodingResult;->data:[B

    const/4 v5, 0x0

    array-length v6, v1

    add-int/lit8 v6, v6, -0x1

    invoke-static {v1, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v3, 0x0

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    iput v3, v2, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder$Gsm7bitCodingResult;->septets:I
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :cond_0
    move v3, v4

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v3, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder$CodingException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "7bit GSM encode failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder$CodingException;-><init>(Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;Ljava/lang/String;)V

    throw v3
.end method

.method private encodeBCDoctet(I)B
    .locals 2

    div-int/lit8 v0, p1, 0xa

    shl-int/lit8 v0, v0, 0x4

    rem-int/lit8 v1, p1, 0xa

    or-int/2addr v0, v1

    int-to-byte v0, v0

    return v0
.end method

.method private encodeBitStream([BIII)I
    .locals 8

    const/16 v7, 0x8

    if-lez p3, :cond_0

    shr-int/lit8 v2, p2, 0x3

    and-int/lit8 v0, p2, 0x7

    add-int v3, v0, p3

    if-gt v3, v7, :cond_1

    aget-byte v3, p1, v2

    sget-object v4, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->bitsMaskLeft:[S

    aget-short v4, v4, v0

    and-int/2addr v3, v4

    sget-object v4, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->bitsMaskRight:[S

    aget-short v4, v4, p3

    and-int/2addr v4, p4

    rsub-int/lit8 v5, v0, 0x8

    sub-int/2addr v5, p3

    shl-int/2addr v4, v5

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    :cond_0
    :goto_0
    add-int v3, p2, p3

    return v3

    :cond_1
    rsub-int/lit8 v3, v0, 0x8

    sub-int v1, p3, v3

    aget-byte v3, p1, v2

    sget-object v4, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->bitsMaskLeft:[S

    aget-short v4, v4, v0

    and-int/2addr v3, v4

    ushr-int v4, p4, v1

    sget-object v5, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->bitsMaskRight:[S

    rsub-int/lit8 v6, v0, 0x8

    aget-short v5, v5, v6

    and-int/2addr v4, v5

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    add-int/lit8 v2, v2, 0x1

    :goto_1
    if-lt v1, v7, :cond_2

    add-int/lit8 v1, v1, -0x8

    ushr-int v3, p4, v1

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    if-lez v1, :cond_0

    rsub-int/lit8 v3, v1, 0x8

    shl-int v3, p4, v3

    sget-object v4, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->bitsMaskLeft:[S

    aget-short v4, v4, v1

    and-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    goto :goto_0
.end method

.method private encodeBytesIntoBitStream([BII[B)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->lengthOfByteArray([B)I

    move-result v1

    if-ge v0, v1, :cond_0

    aget-byte v1, p4, v0

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeBitStream([BIII)I

    move-result p2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return p2
.end method

.method private encodeEmsUserDataPayload(Lcom/android/internal/telephony/cdma/sms/UserData;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/CdmaSmsEncoder$CodingException;
        }
    .end annotation

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_userDataHeader:[B

    iget-boolean v2, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    if-eqz v2, :cond_2

    iget v2, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    const/16 v3, 0x9

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encode7bitEms(Lcom/android/internal/telephony/cdma/sms/UserData;[BZ)V

    :goto_0
    return-void

    :cond_0
    iget v2, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encode16bitEms(Lcom/android/internal/telephony/cdma/sms/UserData;[B)V

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder$CodingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unsupported EMS user data encoding ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder$CodingException;-><init>(Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;Ljava/lang/String;)V

    throw v2

    :cond_2
    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0, p1, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encode7bitEms(Lcom/android/internal/telephony/cdma/sms/UserData;[BZ)V
    :try_end_0
    .catch Lcom/android/internal/telephony/cdma/CdmaSmsEncoder$CodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encode16bitEms(Lcom/android/internal/telephony/cdma/sms/UserData;[B)V

    goto :goto_0
.end method

.method private encodeTeleservice(IB)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->fillinTransportParamTeleserviceCategory(I)V

    iput-byte p2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceMsgType:B

    new-array v0, v5, [[B

    const/4 v1, 0x0

    const/4 v2, 0x7

    if-ne p2, v2, :cond_0

    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->accepted_subparam_delivery_report:[B

    aput-object v2, v0, v3

    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->required_subparam_delivery_report:[B

    aput-object v2, v0, v4

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeTeleserviceDeliveryReport([[B)[B

    move-result-object v1

    :goto_0
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->fillinTransportParamBearerData([B)V

    const/4 v1, 0x0

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeTransport(B)[B

    move-result-object v2

    return-object v2

    :cond_0
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    :pswitch_1
    packed-switch p2, :pswitch_data_1

    :pswitch_2
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    :pswitch_3
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->accepted_subparam_WIRELESS_PAGING_submit:[B

    aput-object v2, v0, v3

    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->required_subparam_WIRELESS_PAGING_submit:[B

    aput-object v2, v0, v4

    :goto_1
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeTeleserviceWirelessPaging([[B)[B

    move-result-object v1

    goto :goto_0

    :pswitch_4
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->accepted_subparam_WIRELESS_PAGING_user_ack:[B

    aput-object v2, v0, v3

    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->required_subparam_WIRELESS_PAGING_user_ack:[B

    aput-object v2, v0, v4

    goto :goto_1

    :pswitch_5
    packed-switch p2, :pswitch_data_2

    :pswitch_6
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    :pswitch_7
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->accepted_subparam_WIRELESS_MESSAGING_submit:[B

    aput-object v2, v0, v3

    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->required_subparam_WIRELESS_MESSAGING_submit:[B

    aput-object v2, v0, v4

    :goto_2
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeTeleserviceWirelessMessaging([[B)[B

    move-result-object v1

    goto :goto_0

    :pswitch_8
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->accepted_subparam_WIRELESS_MESSAGING_delivery:[B

    aput-object v2, v0, v3

    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->required_subparam_WIRELESS_MESSAGING_delivery:[B

    aput-object v2, v0, v4

    goto :goto_2

    :pswitch_9
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->accepted_subparam_WIRELESS_MESSAGING_cancellation:[B

    aput-object v2, v0, v3

    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->required_subparam_WIRELESS_MESSAGING_cancellation:[B

    aput-object v2, v0, v4

    goto :goto_2

    :pswitch_a
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->accepted_subparam_WIRELESS_MESSAGING_user_ack:[B

    aput-object v2, v0, v3

    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->required_subparam_WIRELESS_MESSAGING_user_ack:[B

    aput-object v2, v0, v4

    goto :goto_2

    :pswitch_b
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->accepted_subparam_WIRELESS_MESSAGING_read_ack:[B

    aput-object v2, v0, v3

    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->required_subparam_WIRELESS_MESSAGING_read_ack:[B

    aput-object v2, v0, v4

    goto :goto_2

    :pswitch_c
    if-ne p2, v5, :cond_1

    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->accepted_subparam_WIRELESS_APPLICATION:[B

    aput-object v2, v0, v3

    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->required_subparam_WIRELESS_APPLICATION:[B

    aput-object v2, v0, v4

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeTeleserviceWirelessApplication([[B)[B

    move-result-object v1

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    :pswitch_d
    packed-switch p2, :pswitch_data_3

    :pswitch_e
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    :pswitch_f
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->accepted_subparam_WIRELESS_ENHANCED_MESSAGING_submit:[B

    aput-object v2, v0, v3

    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->required_subparam_WIRELESS_ENHANCED_MESSAGING_submit:[B

    aput-object v2, v0, v4

    :goto_3
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeTeleserviceWirelessEnhancedMessaging([[B)[B

    move-result-object v1

    goto/16 :goto_0

    :pswitch_10
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->accepted_subparam_WIRELESS_ENHANCED_MESSAGING_cancellation:[B

    aput-object v2, v0, v3

    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->required_subparam_WIRELESS_ENHANCED_MESSAGING_cancellation:[B

    aput-object v2, v0, v4

    goto :goto_3

    :pswitch_11
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->accepted_subparam_WIRELESS_ENHANCED_MESSAGING_user_ack:[B

    aput-object v2, v0, v3

    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->required_subparam_WIRELESS_ENHANCED_MESSAGING_user_ack:[B

    aput-object v2, v0, v4

    goto :goto_3

    :pswitch_12
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->accepted_subparam_WIRELESS_ENHANCED_MESSAGING_read_ack:[B

    aput-object v2, v0, v3

    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->required_subparam_WIRELESS_ENHANCED_MESSAGING_read_ack:[B

    aput-object v2, v0, v4

    goto :goto_3

    :pswitch_13
    if-ne p2, v5, :cond_2

    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->accepted_subparam_SERVICE_CATEGORY_PROGRAMMING:[B

    aput-object v2, v0, v3

    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->required_subparam_SERVICE_CATEGORY_PROGRAMMING:[B

    aput-object v2, v0, v4

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeTeleserviceServiceCategoryProgramming([[B)[B

    move-result-object v1

    goto/16 :goto_0

    :cond_2
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    :pswitch_14
    packed-switch p2, :pswitch_data_4

    :pswitch_15
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    :pswitch_16
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->accepted_subparam_CARD_APPLICATION_TOOLKIT_submit:[B

    aput-object v2, v0, v3

    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->required_subparam_CARD_APPLICATION_TOOLKIT_submit:[B

    aput-object v2, v0, v4

    :goto_4
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeTeleserviceCardApplicationToolkit([[B)[B

    move-result-object v1

    goto/16 :goto_0

    :pswitch_17
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->accepted_subparam_CARD_APPLICATION_TOOLKIT_user_ack:[B

    aput-object v2, v0, v3

    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->required_subparam_CARD_APPLICATION_TOOLKIT_user_ack:[B

    aput-object v2, v0, v4

    goto :goto_4

    :pswitch_data_0
    .packed-switch 0x1001
        :pswitch_1
        :pswitch_5
        :pswitch_0
        :pswitch_c
        :pswitch_d
        :pswitch_13
        :pswitch_14
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_9
        :pswitch_6
        :pswitch_a
        :pswitch_b
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x2
        :pswitch_f
        :pswitch_10
        :pswitch_e
        :pswitch_11
        :pswitch_12
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x2
        :pswitch_16
        :pswitch_15
        :pswitch_15
        :pswitch_17
    .end packed-switch
.end method

.method private encodeTeleserviceCardApplicationToolkit([[B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeTeleserviceSubParam([[B)[B

    move-result-object v0

    return-object v0
.end method

.method private encodeTeleserviceDeliveryReport([[B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeTeleserviceSubParam([[B)[B

    move-result-object v0

    return-object v0
.end method

.method private encodeTeleserviceFixedLengthParameter(B[BI)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :pswitch_1
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeTeleserviceParamMessageID([BI)V

    :goto_0
    return-void

    :pswitch_2
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeTeleserviceParamUserResponseCode([BI)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeTeleserviceParamAbsoluteValidity([BI)V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeTeleserviceParamRelativeValidity([BI)V

    goto :goto_0

    :pswitch_5
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeTeleserviceParamAbsoluteDelivery([BI)V

    goto :goto_0

    :pswitch_6
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeTeleserviceParamRelativeDelivery([BI)V

    goto :goto_0

    :pswitch_7
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeTeleserviceParamPriority([BI)V

    goto :goto_0

    :pswitch_8
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeTeleserviceParamPrivacy([BI)V

    goto :goto_0

    :pswitch_9
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeTeleserviceParamReplyOption([BI)V

    goto :goto_0

    :pswitch_a
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeTeleserviceParamLanguage([BI)V

    goto :goto_0

    :pswitch_b
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeTeleserviceParamMessageIdInCenter([BI)V

    goto :goto_0

    :pswitch_c
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeTeleserviceParamGsmTpFailure([BI)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_c
    .end packed-switch
.end method

.method private encodeTeleserviceParamAbsoluteDelivery([BI)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_absoluteDelivery:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_absoluteDelivery:[B

    array-length v2, v2

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method private encodeTeleserviceParamAbsoluteValidity([BI)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_absoluteValidity:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_absoluteValidity:[B

    array-length v2, v2

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method private encodeTeleserviceParamAlertOnMessageDelivery([B)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x3

    invoke-direct {p0, p1, v2}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->extendByteArray([BI)[B

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->lengthOfByteArray([B)I

    move-result v0

    const/16 v2, 0xc

    aput-byte v2, v1, v0

    add-int/lit8 v2, v0, 0x1

    const/4 v3, 0x1

    aput-byte v3, v1, v2

    add-int/lit8 v2, v0, 0x2

    shl-int/lit8 v2, v2, 0x3

    const/4 v3, 0x2

    iget-byte v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_alertOnDelivery:B

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeBitStream([BIII)I

    return-object v1
.end method

.method private encodeTeleserviceParamBroadcastServiceSettingResult([B)[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v8, 0x4

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_settingResult:[B

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->lengthOfByteArray([B)I

    move-result v0

    mul-int/lit8 v2, v0, 0x3

    add-int/lit8 v6, v2, 0x2

    invoke-direct {p0, p1, v6}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->extendByteArray([BI)[B

    move-result-object v4

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->lengthOfByteArray([B)I

    move-result v3

    const/16 v6, 0x13

    aput-byte v6, v4, v3

    add-int/lit8 v6, v3, 0x1

    int-to-byte v7, v2

    aput-byte v7, v4, v6

    add-int/lit8 v6, v3, 0x2

    shl-int/lit8 v5, v6, 0x3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    const/16 v6, 0x10

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_settingTypeOfService:[S

    aget-short v7, v7, v1

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeBitStream([BIII)I

    move-result v5

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_settingResult:[B

    aget-byte v6, v6, v1

    invoke-direct {p0, v4, v5, v8, v6}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeBitStream([BIII)I

    move-result v5

    const/4 v6, 0x0

    invoke-direct {p0, v4, v5, v8, v6}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeBitStream([BIII)I

    move-result v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v4
.end method

.method private encodeTeleserviceParamCallBack([B)[B
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v12, 0x4

    const/16 v11, 0x8

    const/4 v10, 0x1

    const/4 v2, 0x0

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_senderAddrType:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    sget-object v9, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;->TYPE_UNKNOWN:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    if-ne v8, v9, :cond_0

    iget-byte v8, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_senderAddrPlan:B

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_senderAddr:[B

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->lengthOfByteArray([B)I

    move-result v8

    if-lez v8, :cond_1

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_senderAddr:[B

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->isDtmfAddress([B)Z

    move-result v2

    :cond_0
    :goto_0
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_senderAddr:[B

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->lengthOfByteArray([B)I

    move-result v3

    const/16 v4, 0x9

    const/4 v0, 0x0

    if-ne v2, v10, :cond_2

    shl-int/lit8 v8, v3, 0x2

    add-int/2addr v4, v8

    :goto_1
    add-int/lit8 v8, v4, 0x10

    add-int/lit8 v8, v8, 0x7

    shr-int/lit8 v8, v8, 0x3

    invoke-direct {p0, p1, v8}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->extendByteArray([BI)[B

    move-result-object v6

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->lengthOfByteArray([B)I

    move-result v5

    const/16 v8, 0xe

    aput-byte v8, v6, v5

    add-int/lit8 v8, v5, 0x1

    add-int/lit8 v9, v4, 0x7

    shr-int/lit8 v9, v9, 0x3

    int-to-byte v9, v9

    aput-byte v9, v6, v8

    add-int/lit8 v8, v5, 0x2

    shl-int/lit8 v7, v8, 0x3

    if-ne v2, v10, :cond_3

    const/4 v8, 0x0

    invoke-direct {p0, v6, v7, v10, v8}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeBitStream([BIII)I

    move-result v7

    :goto_2
    if-ne v2, v10, :cond_4

    invoke-direct {p0, v6, v7, v11, v3}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeBitStream([BIII)I

    move-result v7

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v3, :cond_5

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_senderAddr:[B

    aget-byte v8, v8, v1

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->getEncodedDtmf(B)I

    move-result v8

    invoke-direct {p0, v6, v7, v12, v8}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeBitStream([BIII)I

    move-result v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    sget-object v8, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder$1;->$SwitchMap$com$android$internal$telephony$cdma$CdmaSmsIdValue$AddrNumberType:[I

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_senderAddrType:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    :goto_4
    :pswitch_0
    shl-int/lit8 v8, v3, 0x2

    add-int/lit8 v8, v8, 0x7

    add-int/2addr v4, v8

    goto :goto_1

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_4

    :pswitch_2
    const/4 v0, 0x2

    goto :goto_4

    :pswitch_3
    const/4 v0, 0x3

    goto :goto_4

    :pswitch_4
    const/4 v0, 0x4

    goto :goto_4

    :pswitch_5
    const/4 v0, 0x6

    goto :goto_4

    :cond_3
    invoke-direct {p0, v6, v7, v10, v10}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeBitStream([BIII)I

    move-result v7

    goto :goto_2

    :cond_4
    const/4 v8, 0x3

    invoke-direct {p0, v6, v7, v8, v0}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeBitStream([BIII)I

    move-result v7

    iget-byte v8, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_senderAddrPlan:B

    invoke-direct {p0, v6, v7, v12, v8}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeBitStream([BIII)I

    move-result v7

    invoke-direct {p0, v6, v7, v11, v3}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeBitStream([BIII)I

    move-result v7

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_senderAddr:[B

    invoke-direct {p0, v6, v7, v11, v8}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeBytesIntoBitStream([BII[B)I

    move-result v7

    :cond_5
    return-object v6

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private encodeTeleserviceParamGsmTpFailure([BI)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-byte v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_gsmTpFailure:B

    aput-byte v0, p1, p2

    return-void
.end method

.method private encodeTeleserviceParamLanguage([BI)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-byte v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_language:B

    aput-byte v0, p1, p2

    return-void
.end method

.method private encodeTeleserviceParamMessageID([BI)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x1

    shl-int/lit8 v0, p2, 0x3

    const/4 v1, 0x4

    iget-byte v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceMsgType:B

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeBitStream([BIII)I

    move-result v0

    const/16 v1, 0x10

    iget-short v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_messageId:S

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeBitStream([BIII)I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParameters:[Z

    aget-boolean v1, v1, v3

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_userDataHeader:[B

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TransportParam_teleserviceCategory:I

    const/16 v2, 0x1005

    if-ne v1, v2, :cond_0

    invoke-direct {p0, p1, v0, v3, v3}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeBitStream([BIII)I

    move-result v0

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v3, v1}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeBitStream([BIII)I

    move-result v0

    goto :goto_0
.end method

.method private encodeTeleserviceParamMessageIdInCenter([BI)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    shl-int/lit8 v0, p2, 0x3

    const/16 v1, 0x10

    iget-short v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_messageIdInCenter:S

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeBitStream([BIII)I

    return-void
.end method

.method private encodeTeleserviceParamMultiEncodingUserData([B)[B
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v10, 0x8

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_encodingUserDataEncoding:[B

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->lengthOfByteArray([B)I

    move-result v1

    new-array v0, v1, [I

    const/4 v3, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_encodingUserDataEncoding:[B

    aget-byte v8, v8, v2

    packed-switch v8, :pswitch_data_0

    :pswitch_0
    new-instance v8, Ljava/io/IOException;

    invoke-direct {v8}, Ljava/io/IOException;-><init>()V

    throw v8

    :pswitch_1
    aput v10, v0, v2

    :goto_1
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_encodingUserData:[[B

    aget-object v8, v8, v2

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->lengthOfByteArray([B)I

    move-result v8

    aget v9, v0, v2

    mul-int/2addr v8, v9

    add-int/lit8 v8, v8, 0xd

    add-int/2addr v3, v8

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :pswitch_2
    const/4 v8, 0x7

    aput v8, v0, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v8, v3, 0x10

    add-int/lit8 v8, v8, 0x7

    shr-int/lit8 v8, v8, 0x3

    invoke-direct {p0, p1, v8}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->extendByteArray([BI)[B

    move-result-object v6

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->lengthOfByteArray([B)I

    move-result v5

    const/16 v8, 0x10

    aput-byte v8, v6, v5

    add-int/lit8 v8, v5, 0x1

    add-int/lit8 v9, v3, 0x7

    shr-int/lit8 v9, v9, 0x3

    int-to-byte v9, v9

    aput-byte v9, v6, v8

    add-int/lit8 v8, v5, 0x2

    shl-int/lit8 v7, v8, 0x3

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_2

    const/4 v8, 0x5

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_encodingUserDataEncoding:[B

    aget-byte v9, v9, v2

    invoke-direct {p0, v6, v7, v8, v9}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeBitStream([BIII)I

    move-result v7

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_encodingUserData:[[B

    aget-object v8, v8, v2

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->lengthOfByteArray([B)I

    move-result v4

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_encodingUserDataEncoding:[B

    aget-byte v8, v8, v2

    const/4 v9, 0x4

    if-ne v8, v9, :cond_1

    ushr-int/lit8 v4, v4, 0x1

    :cond_1
    invoke-direct {p0, v6, v7, v10, v4}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeBitStream([BIII)I

    move-result v7

    aget v8, v0, v2

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_encodingUserData:[[B

    aget-object v9, v9, v2

    invoke-direct {p0, v6, v7, v8, v9}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeBytesIntoBitStream([BII[B)I

    move-result v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    return-object v6

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private encodeTeleserviceParamPriority([BI)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    shl-int/lit8 v0, p2, 0x3

    const/4 v1, 0x2

    iget-byte v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_priority:B

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeBitStream([BIII)I

    return-void
.end method

.method private encodeTeleserviceParamPrivacy([BI)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    shl-int/lit8 v0, p2, 0x3

    const/4 v1, 0x2

    iget-byte v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_privacy:B

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeBitStream([BIII)I

    return-void
.end method

.method private encodeTeleserviceParamRelativeDelivery([BI)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-byte v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_relativeDelivery:B

    aput-byte v0, p1, p2

    return-void
.end method

.method private encodeTeleserviceParamRelativeValidity([BI)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-byte v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_relativeValidity:B

    aput-byte v0, p1, p2

    return-void
.end method

.method private encodeTeleserviceParamReplyOption([BI)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v2, 0x1

    shl-int/lit8 v0, p2, 0x3

    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_manualAckRequest:Z

    if-ne v1, v2, :cond_0

    invoke-direct {p0, p1, v0, v2, v2}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeBitStream([BIII)I

    move-result v0

    :goto_0
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_deliveryAckRequest:Z

    if-ne v1, v2, :cond_1

    invoke-direct {p0, p1, v0, v2, v2}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeBitStream([BIII)I

    move-result v0

    :goto_1
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_readAckRequest:Z

    if-ne v1, v2, :cond_2

    invoke-direct {p0, p1, v0, v2, v2}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeBitStream([BIII)I

    move-result v0

    :goto_2
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_deliveryReportRequest:Z

    if-ne v1, v2, :cond_3

    invoke-direct {p0, p1, v0, v2, v2}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeBitStream([BIII)I

    move-result v0

    :goto_3
    return-void

    :cond_0
    invoke-direct {p0, p1, v0, v2, v3}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeBitStream([BIII)I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, v0, v2, v3}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeBitStream([BIII)I

    move-result v0

    goto :goto_1

    :cond_2
    invoke-direct {p0, p1, v0, v2, v3}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeBitStream([BIII)I

    move-result v0

    goto :goto_2

    :cond_3
    invoke-direct {p0, p1, v0, v2, v3}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeBitStream([BIII)I

    move-result v0

    goto :goto_3
.end method

.method private encodeTeleserviceParamUserData([B)[B
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_userData_string:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1

    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeTeleserviceParamUserDataEx([B)[B

    move-result-object v17

    :cond_0
    :goto_0
    return-object v17

    :cond_1
    const/16 v5, 0x15

    const/4 v11, 0x0

    const/16 v7, 0x8

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_userDataEncoding:B

    move/from16 v19, v0

    packed-switch v19, :pswitch_data_0

    new-instance v19, Ljava/io/IOException;

    invoke-direct/range {v19 .. v19}, Ljava/io/IOException;-><init>()V

    throw v19

    :pswitch_0
    const/4 v7, 0x7

    :goto_1
    :pswitch_1
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v11, v0, :cond_2

    add-int/lit8 v5, v5, 0x8

    :cond_2
    add-int/lit8 v5, v5, 0x8

    const/4 v12, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_userDataHeader:[B

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->lengthOfByteArray([B)I

    move-result v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TransportParam_teleserviceCategory:I

    move/from16 v19, v0

    const/16 v20, 0x1005

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_3

    if-lez v14, :cond_3

    const/4 v12, 0x1

    :cond_3
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v12, v0, :cond_b

    shl-int/lit8 v19, v14, 0x3

    add-int v5, v5, v19

    shl-int/lit8 v19, v14, 0x3

    rem-int v8, v19, v7

    if-lez v8, :cond_4

    sub-int v19, v7, v8

    add-int v5, v5, v19

    :cond_4
    :goto_2
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_userDataEncoding:B

    move/from16 v19, v0

    const/16 v20, 0x9

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_userData:[B

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->lengthOfByteArray([B)I

    move-result v13

    mul-int v19, v13, v7

    add-int v5, v5, v19

    :cond_5
    :goto_3
    add-int/lit8 v19, v5, 0x7

    ushr-int/lit8 v19, v19, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->extendByteArray([BI)[B

    move-result-object v17

    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->lengthOfByteArray([B)I

    move-result v16

    const/16 v19, 0x1

    aput-byte v19, v17, v16

    add-int/lit8 v19, v16, 0x1

    add-int/lit8 v20, v5, -0x10

    add-int/lit8 v20, v20, 0x7

    ushr-int/lit8 v20, v20, 0x3

    move/from16 v0, v20

    int-to-byte v0, v0

    move/from16 v20, v0

    aput-byte v20, v17, v19

    add-int/lit8 v19, v16, 0x2

    shl-int/lit8 v18, v19, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TransportParam_teleserviceCategory:I

    move/from16 v19, v0

    const/16 v20, 0x1004

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_d

    const/4 v15, 0x0

    :goto_4
    const/16 v19, 0x5

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v3, v15}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeBitStream([BIII)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v11, v0, :cond_6

    const/16 v19, 0x8

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_userDataEncodingExtended:S

    move/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeBitStream([BIII)I

    move-result v18

    :cond_6
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_userDataEncoding:B

    move/from16 v19, v0

    const/16 v20, 0x4

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_7

    ushr-int/lit8 v13, v13, 0x1

    :cond_7
    const/16 v19, 0x8

    shl-int/lit8 v20, v14, 0x3

    add-int v20, v20, v8

    div-int v20, v20, v7

    add-int v20, v20, v13

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeBitStream([BIII)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v12, v0, :cond_8

    const/16 v19, 0x8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_userDataHeader:[B

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move-object/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeBytesIntoBitStream([BII[B)I

    move-result v18

    :cond_8
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_userDataEncoding:B

    move/from16 v19, v0

    const/16 v20, 0x9

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_e

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v8, v3}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeBitStream([BIII)I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_userData:[B

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v7, v3}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeBytesIntoBitStream([BII[B)I

    move-result v18

    goto/16 :goto_0

    :pswitch_2
    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_userDataEncodingExtended:S

    move/from16 v19, v0

    packed-switch v19, :pswitch_data_1

    const/4 v7, 0x6

    :goto_5
    const/4 v11, 0x1

    goto/16 :goto_1

    :pswitch_3
    const/4 v7, 0x4

    goto :goto_5

    :pswitch_4
    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_userDataEncodingExtended:S

    move/from16 v19, v0

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0x80

    move/from16 v19, v0

    if-nez v19, :cond_a

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_userDataEncodingExtended:S

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x2c

    if-nez v19, :cond_9

    const/4 v7, 0x7

    :cond_9
    :goto_6
    const/4 v11, 0x1

    goto/16 :goto_1

    :cond_a
    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_userDataEncodingExtended:S

    move/from16 v19, v0

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xf0

    move/from16 v19, v0

    sparse-switch v19, :sswitch_data_0

    goto :goto_6

    :sswitch_0
    const/4 v7, 0x7

    goto :goto_6

    :sswitch_1
    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_userDataEncodingExtended:S

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x4

    if-nez v19, :cond_9

    const/4 v7, 0x7

    goto :goto_6

    :cond_b
    const/4 v14, 0x0

    goto/16 :goto_2

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_userData:[B

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget-byte v19, v19, v20

    move/from16 v0, v19

    and-int/lit16 v13, v0, 0xff

    mul-int v19, v13, v7

    add-int v5, v5, v19

    mul-int v19, v13, v7

    add-int v19, v19, v8

    and-int/lit8 v9, v19, 0x7

    if-lez v9, :cond_5

    rsub-int/lit8 v9, v9, 0x8

    add-int/2addr v5, v9

    goto/16 :goto_3

    :cond_d
    move-object/from16 v0, p0

    iget-byte v15, v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_userDataEncoding:B

    goto/16 :goto_4

    :cond_e
    mul-int/lit8 v19, v13, 0x7

    add-int v19, v19, v8

    add-int v6, v19, v9

    const/4 v10, 0x1

    :goto_7
    if-lez v6, :cond_0

    const/16 v19, 0x8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_userData:[B

    move-object/from16 v20, v0

    aget-byte v20, v20, v10

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeBitStream([BIII)I

    move-result v18

    add-int/lit8 v6, v6, -0x8

    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x84
        :pswitch_3
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0xc0 -> :sswitch_0
        0xd0 -> :sswitch_0
        0xf0 -> :sswitch_1
    .end sparse-switch
.end method

.method private encodeTeleserviceParamUserDataEx([B)[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v4, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct {v4}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_userData_string:Ljava/lang/String;

    iput-object v6, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    iget-byte v6, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_userDataEncoding:B

    iput v6, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    const/4 v6, 0x1

    iput-boolean v6, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    const/4 v5, 0x0

    :try_start_0
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeUserData(Lcom/android/internal/telephony/cdma/sms/UserData;)[B
    :try_end_0
    .catch Lcom/android/internal/util/BitwiseOutputStream$AccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/internal/telephony/cdma/CdmaSmsEncoder$CodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    :goto_0
    if-nez v5, :cond_0

    const-string v6, "encodeTeleserviceParamUserDataEx"

    const-string v7, "user data encode fail!!!!!!!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    array-length v6, v5

    invoke-direct {p0, p1, v6}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->extendByteArray([BI)[B

    move-result-object v3

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->lengthOfByteArray([B)I

    move-result v2

    const/4 v6, 0x0

    array-length v7, v5

    invoke-static {v5, v6, v3, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v3

    :catch_0
    move-exception v0

    const-string v6, "encodeTeleserviceParamUserDataEx"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "encode user data fail : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v6, "encodeTeleserviceParamUserDataEx"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "encode user data fail : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private encodeTeleserviceParamUserResponseCode([BI)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-short v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_userResponseCode:S

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    return-void
.end method

.method private encodeTeleserviceServiceCategoryProgramming([[B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeTeleserviceSubParam([[B)[B

    move-result-object v0

    return-object v0
.end method

.method private encodeTeleserviceSubParam([[B)[B
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v9, 0x1

    aget-object v0, p1, v9

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-byte v5, v0, v1

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParameters:[Z

    aget-boolean v7, v7, v5

    if-nez v7, :cond_0

    new-instance v7, Ljava/io/IOException;

    invoke-direct {v7}, Ljava/io/IOException;-><init>()V

    throw v7

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    const/4 v6, 0x0

    :cond_2
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParameters:[Z

    aget-boolean v7, v7, v4

    if-ne v7, v9, :cond_3

    sget-object v7, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue;->fixedLengthSubparameter:[B

    aget-byte v3, v7, v4

    if-eqz v3, :cond_4

    add-int/lit8 v7, v3, 0x2

    invoke-direct {p0, v6, v7}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->extendByteArray([BI)[B

    move-result-object v6

    array-length v7, v6

    sub-int/2addr v7, v3

    add-int/lit8 v7, v7, -0x2

    aput-byte v4, v6, v7

    array-length v7, v6

    sub-int/2addr v7, v3

    add-int/lit8 v7, v7, -0x1

    int-to-byte v8, v3

    aput-byte v8, v6, v7

    array-length v7, v6

    sub-int/2addr v7, v3

    invoke-direct {p0, v4, v6, v7}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeTeleserviceFixedLengthParameter(B[BI)V

    :cond_3
    :goto_1
    add-int/lit8 v7, v4, 0x1

    int-to-byte v4, v7

    const/16 v7, 0x18

    if-lt v4, v7, :cond_2

    return-object v6

    :cond_4
    invoke-direct {p0, v4, v6}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeTeleserviceVariableLengthParameter(B[B)[B

    move-result-object v6

    goto :goto_1
.end method

.method private encodeTeleserviceVariableLengthParameter(B[B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sparse-switch p1, :sswitch_data_0

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :sswitch_0
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeTeleserviceParamUserData([B)[B

    move-result-object v0

    :goto_0
    return-object v0

    :sswitch_1
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeTeleserviceParamAlertOnMessageDelivery([B)[B

    move-result-object v0

    goto :goto_0

    :sswitch_2
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeTeleserviceParamCallBack([B)[B

    move-result-object v0

    goto :goto_0

    :sswitch_3
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeTeleserviceParamMultiEncodingUserData([B)[B

    move-result-object v0

    goto :goto_0

    :sswitch_4
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeTeleserviceParamBroadcastServiceSettingResult([B)[B

    move-result-object v0

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0xc -> :sswitch_1
        0xe -> :sswitch_2
        0x10 -> :sswitch_3
        0x13 -> :sswitch_4
    .end sparse-switch
.end method

.method private encodeTeleserviceWirelessApplication([[B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeTeleserviceSubParam([[B)[B

    move-result-object v0

    return-object v0
.end method

.method private encodeTeleserviceWirelessEnhancedMessaging([[B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeTeleserviceSubParam([[B)[B

    move-result-object v0

    return-object v0
.end method

.method private encodeTeleserviceWirelessMessaging([[B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeTeleserviceSubParam([[B)[B

    move-result-object v0

    return-object v0
.end method

.method private encodeTeleserviceWirelessPaging([[B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeTeleserviceSubParam([[B)[B

    move-result-object v0

    return-object v0
.end method

.method private encodeTimeRelative(Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$RelativeTime;I)B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v3, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$RelativeTime;->Fixed:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$RelativeTime;

    if-eq p1, v3, :cond_0

    sget-object v3, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$RelativeTime;->WhenMobileNextActive:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$RelativeTime;

    if-eq p1, v3, :cond_0

    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3}, Ljava/io/IOException;-><init>()V

    throw v3

    :cond_0
    sget-object v3, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$RelativeTime;->Fixed:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$RelativeTime;

    if-ne p1, v3, :cond_9

    if-gtz p2, :cond_1

    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3}, Ljava/io/IOException;-><init>()V

    throw v3

    :cond_1
    rem-int/lit8 v1, p2, 0x5

    div-int/lit8 v0, p2, 0x5

    if-eqz v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    const/16 v3, 0x90

    if-gt v0, v3, :cond_3

    add-int/lit8 v3, v0, -0x1

    int-to-byte v2, v3

    :goto_0
    return v2

    :cond_3
    rem-int/lit8 v1, v0, 0x6

    div-int/lit8 v0, v0, 0x6

    if-eqz v1, :cond_4

    add-int/lit8 v0, v0, 0x1

    :cond_4
    const/16 v3, 0x30

    if-gt v0, v3, :cond_5

    add-int/lit8 v3, v0, 0x77

    int-to-byte v2, v3

    goto :goto_0

    :cond_5
    rem-int/lit8 v1, v0, 0x30

    div-int/lit8 v0, v0, 0x30

    if-eqz v1, :cond_6

    add-int/lit8 v0, v0, 0x1

    :cond_6
    const/16 v3, 0x1e

    if-gt v0, v3, :cond_7

    add-int/lit16 v3, v0, 0xa6

    int-to-byte v2, v3

    goto :goto_0

    :cond_7
    rem-int/lit8 v1, v0, 0x7

    div-int/lit8 v0, v0, 0x7

    if-eqz v1, :cond_8

    add-int/lit8 v0, v0, 0x1

    :cond_8
    const/16 v3, 0xf4

    add-int/lit16 v4, v0, 0xc0

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-byte v2, v3

    goto :goto_0

    :cond_9
    const/16 v2, -0x9

    goto :goto_0
.end method

.method private encodeTimeStamp([S)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x6

    new-array v0, v1, [B

    aget-short v1, p1, v3

    const/16 v2, 0x7cc

    if-lt v1, v2, :cond_0

    aget-short v1, p1, v3

    const/16 v2, 0x82f

    if-le v1, v2, :cond_1

    :cond_0
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1

    :cond_1
    aget-short v1, p1, v3

    const/16 v2, 0x7d0

    if-ge v1, v2, :cond_3

    aget-short v1, p1, v3

    add-int/lit16 v1, v1, -0x76c

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeBCDoctet(I)B

    move-result v1

    aput-byte v1, v0, v3

    :goto_0
    aget-short v1, p1, v4

    if-lt v1, v4, :cond_2

    aget-short v1, p1, v4

    const/16 v2, 0xc

    if-le v1, v2, :cond_4

    :cond_2
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1

    :cond_3
    aget-short v1, p1, v3

    add-int/lit16 v1, v1, -0x7d0

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeBCDoctet(I)B

    move-result v1

    aput-byte v1, v0, v3

    goto :goto_0

    :cond_4
    aget-short v1, p1, v4

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeBCDoctet(I)B

    move-result v1

    aput-byte v1, v0, v4

    aget-short v1, p1, v5

    if-lt v1, v4, :cond_5

    aget-short v1, p1, v5

    const/16 v2, 0x1f

    if-le v1, v2, :cond_6

    :cond_5
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1

    :cond_6
    aget-short v1, p1, v5

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeBCDoctet(I)B

    move-result v1

    aput-byte v1, v0, v5

    aget-short v1, p1, v6

    if-ltz v1, :cond_7

    aget-short v1, p1, v6

    const/16 v2, 0x17

    if-le v1, v2, :cond_8

    :cond_7
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1

    :cond_8
    aget-short v1, p1, v6

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeBCDoctet(I)B

    move-result v1

    aput-byte v1, v0, v6

    aget-short v1, p1, v7

    if-ltz v1, :cond_9

    aget-short v1, p1, v7

    const/16 v2, 0x3b

    if-le v1, v2, :cond_a

    :cond_9
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1

    :cond_a
    aget-short v1, p1, v7

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeBCDoctet(I)B

    move-result v1

    aput-byte v1, v0, v7

    const/4 v1, 0x5

    aget-short v1, p1, v1

    if-ltz v1, :cond_b

    const/4 v1, 0x5

    aget-short v1, p1, v1

    const/16 v2, 0x3b

    if-le v1, v2, :cond_c

    :cond_b
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1

    :cond_c
    const/4 v1, 0x5

    const/4 v2, 0x5

    aget-short v2, p1, v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeBCDoctet(I)B

    move-result v2

    aput-byte v2, v0, v1

    return-object v0
.end method

.method private encodeTransport(B)[B
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v10, 0x0

    const/4 v9, 0x1

    if-eqz p1, :cond_0

    const/4 v8, 0x2

    if-eq p1, v8, :cond_0

    new-instance v8, Ljava/io/IOException;

    invoke-direct {v8}, Ljava/io/IOException;-><init>()V

    throw v8

    :cond_0
    sget-object v8, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->required_TRANSPORT_TYPE_param_list:[[B

    aget-object v6, v8, p1

    move-object v0, v6

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_2

    aget-byte v4, v0, v2

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TransportParameters:[Z

    aget-boolean v8, v8, v4

    if-nez v8, :cond_1

    new-instance v8, Ljava/io/IOException;

    invoke-direct {v8}, Ljava/io/IOException;-><init>()V

    throw v8

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    new-array v7, v9, [B

    aput-byte p1, v7, v10

    sget-object v8, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->accepted_TRANSPORT_TYPE_param_list:[[B

    aget-object v5, v8, p1

    const/4 v1, 0x0

    :goto_1
    const/16 v8, 0x9

    if-ge v1, v8, :cond_4

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TransportParameters:[Z

    aget-boolean v8, v8, v1

    if-ne v8, v9, :cond_3

    invoke-direct {p0, v1, v5}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->existInGivenList(B[B)Z

    move-result v8

    if-ne v8, v9, :cond_3

    packed-switch v1, :pswitch_data_0

    :cond_3
    :goto_2
    add-int/lit8 v8, v1, 0x1

    int-to-byte v1, v8

    goto :goto_1

    :pswitch_0
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeTransportParamTeleserviceId([B)[B

    move-result-object v7

    goto :goto_2

    :pswitch_1
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeTransportParamServiceCategory([B)[B

    move-result-object v7

    goto :goto_2

    :pswitch_2
    invoke-direct {p0, v9, v7}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeTransportParamAddress(Z[B)[B

    move-result-object v7

    goto :goto_2

    :pswitch_3
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeTransportParamSubAddress([B)[B

    move-result-object v7

    goto :goto_2

    :pswitch_4
    invoke-direct {p0, v10, v7}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeTransportParamAddress(Z[B)[B

    move-result-object v7

    goto :goto_2

    :pswitch_5
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeTransportParamSubAddress([B)[B

    move-result-object v7

    goto :goto_2

    :pswitch_6
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeTransportParamBearerReplyOption([B)[B

    move-result-object v7

    goto :goto_2

    :pswitch_7
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeTransportParamCauseCodes([B)[B

    move-result-object v7

    goto :goto_2

    :pswitch_8
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeTransportParamBearerData([B)[B

    move-result-object v7

    goto :goto_2

    :cond_4
    return-object v7

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private encodeTransportParamAddress(Z[B)[B
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TransportParam_toAddr:[B

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TransportParam_toAddrType:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TransportParam_toAddrType:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    sget-object v14, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;->TYPE_UNKNOWN:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    if-eq v13, v14, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TransportParam_toAddrType:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    sget-object v14, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;->TYPE_INTERNATIONAL:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    if-ne v13, v14, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TransportParam_toAddr:[B

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TransportParam_toAddr:[B

    array-length v13, v13

    if-lez v13, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TransportParam_toAddr:[B

    const/4 v14, 0x0

    aget-byte v13, v13, v14

    const/16 v14, 0x2b

    if-ne v13, v14, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TransportParam_toAddr:[B

    array-length v13, v13

    add-int/lit8 v13, v13, -0x1

    new-array v7, v13, [B

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TransportParam_toAddr:[B

    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TransportParam_toAddr:[B

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v16

    invoke-static {v13, v14, v7, v15, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget-object v6, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;->TYPE_INTERNATIONAL:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    :cond_1
    sget-object v13, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;->TYPE_UNKNOWN:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    if-eq v6, v13, :cond_2

    sget-object v13, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;->TYPE_INTERNATIONAL:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    if-eq v6, v13, :cond_2

    sget-object v13, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;->TYPE_UNKNOWN_DATA_NETWORK:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    if-ne v6, v13, :cond_3

    :cond_2
    move-object/from16 v0, p0

    iget-byte v13, v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TransportParam_toAddrPlan:B

    if-nez v13, :cond_3

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->lengthOfByteArray([B)I

    move-result v13

    if-lez v13, :cond_4

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->isDtmfAddress([B)Z

    move-result v5

    :cond_3
    :goto_0
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->lengthOfByteArray([B)I

    move-result v8

    const/16 v9, 0xa

    const/4 v2, 0x0

    const/4 v13, 0x1

    if-ne v5, v13, :cond_6

    shl-int/lit8 v13, v8, 0x2

    add-int/2addr v9, v13

    sget-object v13, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;->TYPE_UNKNOWN_DATA_NETWORK:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    if-eq v6, v13, :cond_5

    const/4 v4, 0x0

    :goto_1
    add-int/lit8 v13, v9, 0x10

    add-int/lit8 v13, v13, 0x7

    shr-int/lit8 v13, v13, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v13}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->extendByteArray([BI)[B

    move-result-object v11

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->lengthOfByteArray([B)I

    move-result v10

    const/4 v13, 0x1

    move/from16 v0, p1

    if-ne v0, v13, :cond_8

    const/4 v13, 0x4

    aput-byte v13, v11, v10

    :goto_2
    add-int/lit8 v13, v10, 0x1

    add-int/lit8 v14, v9, 0x7

    shr-int/lit8 v14, v14, 0x3

    int-to-byte v14, v14

    aput-byte v14, v11, v13

    add-int/lit8 v13, v10, 0x2

    shl-int/lit8 v12, v13, 0x3

    const/4 v13, 0x1

    if-ne v5, v13, :cond_9

    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12, v13, v14}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeBitStream([BIII)I

    move-result v12

    :goto_3
    if-nez v4, :cond_a

    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12, v13, v14}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeBitStream([BIII)I

    move-result v12

    :goto_4
    const/4 v13, 0x1

    if-ne v5, v13, :cond_b

    const/16 v13, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12, v13, v8}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeBitStream([BIII)I

    move-result v12

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v8, :cond_d

    const/4 v13, 0x4

    aget-byte v14, v7, v3

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->getEncodedDtmf(B)I

    move-result v14

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12, v13, v14}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeBitStream([BIII)I

    move-result v12

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_4
    const/4 v5, 0x1

    goto :goto_0

    :cond_5
    const/4 v4, 0x1

    goto :goto_1

    :cond_6
    sget-object v13, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder$1;->$SwitchMap$com$android$internal$telephony$cdma$CdmaSmsIdValue$AddrNumberType:[I

    invoke-virtual {v6}, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;->ordinal()I

    move-result v14

    aget v13, v13, v14

    packed-switch v13, :pswitch_data_0

    const/4 v4, 0x0

    :goto_6
    const/4 v13, 0x1

    if-ne v4, v13, :cond_7

    shl-int/lit8 v13, v8, 0x3

    add-int/lit8 v13, v13, 0x3

    add-int/2addr v9, v13

    goto :goto_1

    :pswitch_0
    const/4 v4, 0x0

    goto :goto_6

    :pswitch_1
    const/4 v4, 0x0

    const/4 v2, 0x1

    goto :goto_6

    :pswitch_2
    const/4 v4, 0x0

    const/4 v2, 0x2

    goto :goto_6

    :pswitch_3
    const/4 v4, 0x0

    const/4 v2, 0x3

    goto :goto_6

    :pswitch_4
    const/4 v4, 0x0

    const/4 v2, 0x4

    goto :goto_6

    :pswitch_5
    const/4 v4, 0x0

    const/4 v2, 0x6

    goto :goto_6

    :pswitch_6
    const/4 v4, 0x1

    goto :goto_6

    :pswitch_7
    const/4 v4, 0x1

    goto :goto_6

    :pswitch_8
    const/4 v4, 0x1

    goto :goto_6

    :cond_7
    shl-int/lit8 v13, v8, 0x3

    add-int/lit8 v13, v13, 0x7

    add-int/2addr v9, v13

    goto/16 :goto_1

    :cond_8
    const/4 v13, 0x2

    aput-byte v13, v11, v10

    goto :goto_2

    :cond_9
    const/4 v13, 0x1

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12, v13, v14}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeBitStream([BIII)I

    move-result v12

    goto :goto_3

    :cond_a
    const/4 v13, 0x1

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12, v13, v14}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeBitStream([BIII)I

    move-result v12

    goto :goto_4

    :cond_b
    const/4 v13, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12, v13, v2}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeBitStream([BIII)I

    move-result v12

    if-nez v4, :cond_c

    const/4 v13, 0x4

    move-object/from16 v0, p0

    iget-byte v14, v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TransportParam_toAddrPlan:B

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12, v13, v14}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeBitStream([BIII)I

    move-result v12

    :cond_c
    const/16 v13, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12, v13, v8}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeBitStream([BIII)I

    move-result v12

    const/16 v13, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12, v13, v7}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeBytesIntoBitStream([BII[B)I

    move-result v12

    :cond_d
    return-object v11

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_8
    .end packed-switch
.end method

.method private encodeTransportParamBearerData([B)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TransportParam_bearerData:[B

    if-nez v2, :cond_0

    :goto_0
    return-object p1

    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TransportParam_bearerData:[B

    array-length v2, v2

    add-int/lit8 v2, v2, 0x2

    invoke-direct {p0, p1, v2}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->extendByteArray([BI)[B

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->lengthOfByteArray([B)I

    move-result v0

    const/16 v2, 0x8

    aput-byte v2, v1, v0

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TransportParam_bearerData:[B

    array-length v3, v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TransportParam_bearerData:[B

    const/4 v3, 0x0

    add-int/lit8 v4, v0, 0x2

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TransportParam_bearerData:[B

    array-length v5, v5

    invoke-static {v2, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v1

    goto :goto_0
.end method

.method private encodeTransportParamBearerReplyOption([B)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x3

    invoke-direct {p0, p1, v2}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->extendByteArray([BI)[B

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->lengthOfByteArray([B)I

    move-result v0

    const/4 v2, 0x6

    aput-byte v2, v1, v0

    add-int/lit8 v2, v0, 0x1

    const/4 v3, 0x1

    aput-byte v3, v1, v2

    add-int/lit8 v2, v0, 0x2

    iget-byte v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TransportParam_replySeqNumber:B

    shl-int/lit8 v3, v3, 0x2

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    return-object v1
.end method

.method private encodeTransportParamCauseCodes([B)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    iget-byte v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TransportParam_errorClass:B

    if-eqz v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    add-int/lit8 v3, v0, 0x2

    invoke-direct {p0, p1, v3}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->extendByteArray([BI)[B

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->lengthOfByteArray([B)I

    move-result v1

    const/4 v3, 0x7

    aput-byte v3, v2, v1

    add-int/lit8 v3, v1, 0x1

    int-to-byte v4, v0

    aput-byte v4, v2, v3

    add-int/lit8 v3, v1, 0x2

    iget-byte v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TransportParam_errorReplySeqNumber:B

    shl-int/lit8 v4, v4, 0x2

    iget-byte v5, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TransportParam_errorClass:B

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    const/4 v3, 0x1

    if-le v0, v3, :cond_1

    add-int/lit8 v3, v1, 0x3

    iget-byte v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TransportParam_errorDetail:B

    aput-byte v4, v2, v3

    :cond_1
    return-object v2
.end method

.method private encodeTransportParamServiceCategory([B)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x4

    invoke-direct {p0, p1, v2}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->extendByteArray([BI)[B

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->lengthOfByteArray([B)I

    move-result v0

    const/4 v2, 0x1

    aput-byte v2, v1, v0

    add-int/lit8 v2, v0, 0x1

    const/4 v3, 0x2

    aput-byte v3, v1, v2

    add-int/lit8 v2, v0, 0x2

    iget v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TransportParam_typeOfService:I

    shr-int/lit8 v3, v3, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v0, 0x3

    iget v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TransportParam_typeOfService:I

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    return-object v1
.end method

.method private encodeTransportParamSubAddress([B)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x0

    const/16 v6, 0x8

    sget-object v4, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder$1;->$SwitchMap$com$android$internal$telephony$cdma$CdmaSmsIdValue$AddrNumberType:[I

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TransportParam_subAddrType:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    :goto_0
    return-object p1

    :pswitch_0
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TransportParam_subAddr:[B

    array-length v4, v4

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const/4 v0, 0x1

    :goto_1
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TransportParam_subAddr:[B

    array-length v4, v4

    add-int/lit8 v4, v4, 0x7

    invoke-direct {p0, p1, v4}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->extendByteArray([BI)[B

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->lengthOfByteArray([B)I

    move-result v1

    const/4 v4, 0x5

    aput-byte v4, v2, v1

    add-int/lit8 v4, v1, 0x1

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TransportParam_subAddr:[B

    array-length v5, v5

    add-int/lit8 v5, v5, 0x2

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    shl-int/lit8 v3, v1, 0x3

    const/4 v4, 0x3

    invoke-direct {p0, v2, v3, v4, v7}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeBitStream([BIII)I

    move-result v3

    const/4 v4, 0x1

    invoke-direct {p0, v2, v3, v4, v7}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeBitStream([BIII)I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TransportParam_subAddr:[B

    array-length v4, v4

    invoke-direct {p0, v2, v3, v6, v4}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeBitStream([BIII)I

    move-result v3

    const/16 v4, 0x35

    invoke-direct {p0, v2, v3, v6, v4}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeBitStream([BIII)I

    move-result v3

    const/16 v4, 0x10

    invoke-direct {p0, v2, v3, v4, v0}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeBitStream([BIII)I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TransportParam_subAddr:[B

    invoke-direct {p0, v2, v3, v6, v4}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeBytesIntoBitStream([BII[B)I

    move-result v3

    move-object p1, v2

    goto :goto_0

    :sswitch_1
    const/4 v0, 0x0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x10 -> :sswitch_1
    .end sparse-switch
.end method

.method private encodeTransportParamTeleserviceId([B)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x4

    invoke-direct {p0, p1, v2}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->extendByteArray([BI)[B

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->lengthOfByteArray([B)I

    move-result v0

    const/4 v2, 0x0

    aput-byte v2, v1, v0

    add-int/lit8 v2, v0, 0x1

    const/4 v3, 0x2

    aput-byte v3, v1, v2

    add-int/lit8 v2, v0, 0x2

    iget v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TransportParam_teleserviceCategory:I

    shr-int/lit8 v3, v3, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v0, 0x3

    iget v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TransportParam_teleserviceCategory:I

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    return-object v1
.end method

.method private encodeUserData(Lcom/android/internal/telephony/cdma/sms/UserData;)[B
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/CdmaSmsEncoder$CodingException;
        }
    .end annotation

    const/16 v9, 0x8c

    const/4 v8, 0x0

    const/16 v11, 0xa

    const/16 v10, 0x8

    const/4 v7, 0x1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeUserDataPayload(Lcom/android/internal/telephony/cdma/sms/UserData;)V

    iget-object v6, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v6, v6

    if-le v6, v9, :cond_0

    new-instance v6, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder$CodingException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "encoded user data too large ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v8, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " > "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " bytes)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, p0, v7}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder$CodingException;-><init>(Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;Ljava/lang/String;)V

    throw v6

    :cond_0
    iget-object v6, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v6, v6

    mul-int/lit8 v6, v6, 0x8

    iget v9, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->paddingBits:I

    sub-int v1, v6, v9

    add-int/lit8 v4, v1, 0xd

    iget v6, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    if-eq v6, v7, :cond_1

    iget v6, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    if-ne v6, v11, :cond_2

    :cond_1
    add-int/lit8 v4, v4, 0x8

    :cond_2
    div-int/lit8 v9, v4, 0x8

    rem-int/lit8 v6, v4, 0x8

    if-lez v6, :cond_8

    move v6, v7

    :goto_0
    add-int v5, v9, v6

    mul-int/lit8 v6, v5, 0x8

    sub-int v3, v6, v4

    const/4 v0, 0x0

    add-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x5

    iget v6, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    if-eq v6, v7, :cond_3

    iget v6, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    if-ne v6, v11, :cond_4

    :cond_3
    add-int/lit8 v0, v0, 0x8

    :cond_4
    add-int/lit8 v0, v0, 0x8

    add-int/2addr v0, v1

    add-int/2addr v0, v3

    new-instance v2, Lcom/android/internal/util/BitwiseOutputStream;

    div-int/lit8 v6, v0, 0x8

    invoke-direct {v2, v6}, Lcom/android/internal/util/BitwiseOutputStream;-><init>(I)V

    invoke-virtual {v2, v10, v7}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    invoke-virtual {v2, v10, v5}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    const/4 v6, 0x5

    iget v9, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    invoke-virtual {v2, v6, v9}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    iget v6, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    if-eq v6, v7, :cond_5

    iget v6, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    if-ne v6, v11, :cond_6

    :cond_5
    iget v6, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->msgType:I

    invoke-virtual {v2, v10, v6}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    :cond_6
    iget v6, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    invoke-virtual {v2, v10, v6}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    iget-object v6, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    invoke-virtual {v2, v1, v6}, Lcom/android/internal/util/BitwiseOutputStream;->writeByteArray(I[B)V

    if-lez v3, :cond_7

    invoke-virtual {v2, v3, v8}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    :cond_7
    invoke-virtual {v2}, Lcom/android/internal/util/BitwiseOutputStream;->toByteArray()[B

    move-result-object v6

    return-object v6

    :cond_8
    move v6, v8

    goto :goto_0
.end method

.method private encodeUserDataPayload(Lcom/android/internal/telephony/cdma/sms/UserData;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/CdmaSmsEncoder$CodingException;
        }
    .end annotation

    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v3, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    if-nez v3, :cond_0

    iget v3, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    if-eqz v3, :cond_0

    const-string v3, "Cdma"

    const-string v4, "user data with null payloadStr"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, ""

    iput-object v3, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_userDataHeader:[B

    if-eqz v3, :cond_1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeEmsUserDataPayload(Lcom/android/internal/telephony/cdma/sms/UserData;)V

    :goto_0
    return-void

    :cond_1
    iget-boolean v3, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    if-eqz v3, :cond_8

    iget v3, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    if-nez v3, :cond_3

    iget-object v3, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    if-nez v3, :cond_2

    const-string v3, "CdmaSmsEncoder"

    const-string v4, "user data with octet encoding but null payload"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-array v3, v5, [B

    iput-object v3, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iput v5, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    goto :goto_0

    :cond_2
    iget-object v3, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iput-object v3, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iget-object v3, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v3, v3

    iput v3, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    goto :goto_0

    :cond_3
    iget-object v3, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    if-nez v3, :cond_4

    const-string v3, "CdmaSmsEncoder"

    const-string v4, "non-octet user data with null payloadStr"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, ""

    iput-object v3, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    :cond_4
    iget v3, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    const/16 v4, 0x9

    if-ne v3, v4, :cond_5

    iget-object v3, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-direct {p0, v3, v5, v6}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encode7bitGsm(Ljava/lang/String;IZ)Lcom/android/internal/telephony/cdma/CdmaSmsEncoder$Gsm7bitCodingResult;

    move-result-object v2

    iget-object v3, v2, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder$Gsm7bitCodingResult;->data:[B

    iput-object v3, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iget v3, v2, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder$Gsm7bitCodingResult;->septets:I

    iput v3, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    goto :goto_0

    :cond_5
    iget v3, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    if-ne v3, v7, :cond_6

    iget-object v3, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-direct {p0, v3, v6}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encode7bitAscii(Ljava/lang/String;Z)[B

    move-result-object v3

    iput-object v3, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iget-object v3, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iput v3, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    goto :goto_0

    :cond_6
    iget v3, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    if-ne v3, v8, :cond_7

    iget-object v3, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeUtf16(Ljava/lang/String;)[B

    move-result-object v3

    iput-object v3, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iget-object v3, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iput v3, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    goto :goto_0

    :cond_7
    new-instance v3, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder$CodingException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unsupported user data encoding ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder$CodingException;-><init>(Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;Ljava/lang/String;)V

    throw v3

    :cond_8
    const/4 v1, 0x0

    :try_start_0
    iget-object v3, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-direct {p0, v3, v1}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encode7bitAscii(Ljava/lang/String;Z)[B

    move-result-object v3

    iput-object v3, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    const/4 v3, 0x2

    iput v3, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I
    :try_end_0
    .catch Lcom/android/internal/telephony/cdma/CdmaSmsEncoder$CodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v3, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iput v3, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    iput-boolean v6, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    goto/16 :goto_0

    :catch_0
    move-exception v0

    iget-object v3, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeUtf16(Ljava/lang/String;)[B

    move-result-object v3

    iput-object v3, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iput v8, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    goto :goto_1
.end method

.method private encodeUtf16(Ljava/lang/String;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/CdmaSmsEncoder$CodingException;
        }
    .end annotation

    :try_start_0
    const-string v1, "utf-16be"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder$CodingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UTF-16 encode failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder$CodingException;-><init>(Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;Ljava/lang/String;)V

    throw v1
.end method

.method private existInGivenList(B[B)Z
    .locals 5

    move-object v0, p2

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-byte v3, v0, v1

    if-ne v3, p1, :cond_0

    const/4 v4, 0x1

    :goto_1
    return v4

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private extendByteArray([BI)[B
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->lengthOfByteArray([B)I

    move-result v1

    add-int v2, v1, p2

    new-array v0, v2, [B

    if-lez v1, :cond_0

    invoke-static {p1, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-object v0
.end method

.method private extendByteArray([[BI)[[B
    .locals 4

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    array-length v2, p1

    :cond_0
    add-int v3, v2, p2

    new-array v1, v3, [[B

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, p1, v0

    aput-object v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private extendShortArray([SI)[S
    .locals 4

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    array-length v2, p1

    :cond_0
    add-int v3, v2, p2

    new-array v1, v3, [S

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-short v3, p1, v0

    aput-short v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private fillinTransportParamBearerData([B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TransportParameters:[Z

    const/16 v1, 0x8

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TransportParam_bearerData:[B

    return-void
.end method

.method private fillinTransportParamTeleserviceCategory(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    shr-int/lit8 v0, p1, 0x10

    const v1, 0xffff

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TransportParameters:[Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    iput p1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TransportParam_teleserviceCategory:I

    return-void
.end method

.method private getEncodedDtmf(B)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->dtmfDigitToAscII:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->dtmfDigitToAscII:[B

    aget-byte v1, v1, v0

    if-eq v1, p1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method private isDtmfAddress([B)Z
    .locals 6

    move-object v2, p1

    array-length v4, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_2

    aget-byte v1, v2, v3

    const/4 v0, 0x0

    :goto_1
    sget-object v5, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->ascIItoDtmfDigit:[B

    array-length v5, v5

    if-ge v0, v5, :cond_0

    sget-object v5, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->ascIItoDtmfDigit:[B

    aget-byte v5, v5, v0

    if-eq v1, v5, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    sget-object v5, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->ascIItoDtmfDigit:[B

    array-length v5, v5

    if-lt v0, v5, :cond_1

    const/4 v5, 0x0

    :goto_2
    return v5

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v5, 0x1

    goto :goto_2
.end method

.method private lengthOfByteArray([B)I
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    array-length v0, p1

    goto :goto_0
.end method


# virtual methods
.method public appendTeleserviceParamBroadcastServiceSettingResult(SB)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x1

    ushr-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_0

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParameters:[Z

    const/16 v2, 0x13

    aput-boolean v3, v1, v2

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_settingResult:[B

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->lengthOfByteArray([B)I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_settingTypeOfService:[S

    invoke-direct {p0, v1, v3}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->extendShortArray([SI)[S

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_settingTypeOfService:[S

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_settingResult:[B

    invoke-direct {p0, v1, v3}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->extendByteArray([BI)[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_settingResult:[B

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_settingTypeOfService:[S

    aput-short p1, v1, v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_settingResult:[B

    aput-byte p2, v1, v0

    return-void
.end method

.method public appendTeleserviceParamMultiEncodingUserData(B[B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1

    :pswitch_1
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->lengthOfByteArray([B)I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1

    :cond_0
    :pswitch_2
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParameters:[Z

    const/16 v2, 0x10

    aput-boolean v3, v1, v2

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_encodingUserDataEncoding:[B

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->lengthOfByteArray([B)I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_encodingUserDataEncoding:[B

    invoke-direct {p0, v1, v3}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->extendByteArray([BI)[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_encodingUserDataEncoding:[B

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_encodingUserData:[[B

    invoke-direct {p0, v1, v3}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->extendByteArray([[BI)[[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_encodingUserData:[[B

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_encodingUserDataEncoding:[B

    aput-byte p1, v1, v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_encodingUserData:[[B

    aput-object p2, v1, v0

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public encodePdu(IB)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeTeleservice(IB)[B

    move-result-object v0

    return-object v0
.end method

.method public fillinTeleserviceParamAbsoluteDelivery([S)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x6

    array-length v0, p1

    if-eq v0, v2, :cond_0

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParameters:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeTimeStamp([S)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_absoluteDelivery:[B

    return-void
.end method

.method public fillinTeleserviceParamAbsoluteValidity([S)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParameters:[Z

    const/4 v1, 0x4

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeTimeStamp([S)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_absoluteValidity:[B

    return-void
.end method

.method public fillinTeleserviceParamAlertOnMessageDelivery(B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    ushr-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParameters:[Z

    const/16 v1, 0xc

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    iput-byte p1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_alertOnDelivery:B

    return-void
.end method

.method public fillinTeleserviceParamCallBack(Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;B[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder$1;->$SwitchMap$com$android$internal$telephony$cdma$CdmaSmsIdValue$AddrNumberType:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParameters:[Z

    const/16 v1, 0xe

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_senderAddrType:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    iput-byte p2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_senderAddrPlan:B

    iput-object p3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_senderAddr:[B

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public fillinTeleserviceParamGsmTpFailure(S)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    ushr-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParameters:[Z

    const/16 v1, 0x15

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    int-to-byte v0, p1

    iput-byte v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_gsmTpFailure:B

    return-void
.end method

.method public fillinTeleserviceParamLanguage(S)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    ushr-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParameters:[Z

    const/16 v1, 0xd

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    int-to-byte v0, p1

    iput-byte v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_language:B

    return-void
.end method

.method public fillinTeleserviceParamMessageID(S)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParameters:[Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    iput-short p1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_messageId:S

    return-void
.end method

.method public fillinTeleserviceParamMessageIdInCenter(S)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParameters:[Z

    const/16 v1, 0x11

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    iput-short p1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_messageIdInCenter:S

    return-void
.end method

.method public fillinTeleserviceParamPriority(B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    ushr-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParameters:[Z

    const/16 v1, 0x8

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    iput-byte p1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_priority:B

    return-void
.end method

.method public fillinTeleserviceParamPrivacy(B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    ushr-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParameters:[Z

    const/16 v1, 0x9

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    iput-byte p1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_privacy:B

    return-void
.end method

.method public fillinTeleserviceParamRelativeDelivery(Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$RelativeTime;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParameters:[Z

    const/4 v1, 0x7

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeTimeRelative(Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$RelativeTime;I)B

    move-result v0

    iput-byte v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_relativeDelivery:B

    return-void
.end method

.method public fillinTeleserviceParamRelativeValidity(Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$RelativeTime;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParameters:[Z

    const/4 v1, 0x5

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeTimeRelative(Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$RelativeTime;I)B

    move-result v0

    iput-byte v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_relativeValidity:B

    return-void
.end method

.method public fillinTeleserviceParamReplyOption(ZZZZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParameters:[Z

    const/16 v1, 0xa

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    iput-boolean p1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_manualAckRequest:Z

    iput-boolean p2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_deliveryAckRequest:Z

    iput-boolean p3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_readAckRequest:Z

    iput-boolean p4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_deliveryReportRequest:Z

    goto :goto_0
.end method

.method public fillinTeleserviceParamUserData(BS[B[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :pswitch_0
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->lengthOfByteArray([B)I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :pswitch_1
    ushr-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_0
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParameters:[Z

    aput-boolean v1, v0, v1

    iput-byte p1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_userDataEncoding:B

    iput-short p2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_userDataEncodingExtended:S

    iput-object p3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_userDataHeader:[B

    iput-object p4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_userData:[B

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public fillinTeleserviceParamUserData(B[BLjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParameters:[Z

    aput-boolean v1, v0, v1

    iput-byte p1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_userDataEncoding:B

    iput-object p2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_userDataHeader:[B

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_userData:[B

    iput-object p3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_userData_string:Ljava/lang/String;

    return-void
.end method

.method public fillinTeleserviceParamUserData(B[B[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :pswitch_1
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->lengthOfByteArray([B)I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_0
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParameters:[Z

    aput-boolean v1, v0, v1

    iput-byte p1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_userDataEncoding:B

    iput-object p2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_userDataHeader:[B

    iput-object p3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_userData:[B

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public fillinTeleserviceParamUserResponseCode(S)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    ushr-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParameters:[Z

    const/4 v1, 0x2

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    iput-short p1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_userResponseCode:S

    return-void
.end method

.method public fillinTransportParamBearerReplyOption(B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit16 v0, p1, 0xc0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TransportParameters:[Z

    const/4 v1, 0x6

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    iput-byte p1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TransportParam_replySeqNumber:B

    return-void
.end method

.method public fillinTransportParamCauseCodes(BBB)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit16 v0, p1, 0xc0

    if-nez v0, :cond_0

    and-int/lit16 v0, p2, 0xfc

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TransportParameters:[Z

    const/4 v1, 0x7

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    iput-byte p1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TransportParam_errorReplySeqNumber:B

    iput-byte p2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TransportParam_errorClass:B

    iput-byte p3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TransportParam_errorDetail:B

    return-void
.end method

.method public fillinTransportParamDestAddress(Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;B[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;->TYPE_RESERVED:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    if-ne p1, v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TransportParameters:[Z

    const/4 v1, 0x4

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TransportParam_toAddrType:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    iput-byte p2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TransportParam_toAddrPlan:B

    iput-object p3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TransportParam_toAddr:[B

    return-void
.end method

.method public fillinTransportParamOrigAddress(Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;B[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;->TYPE_RESERVED:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    if-ne p1, v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TransportParameters:[Z

    const/4 v1, 0x2

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TransportParam_toAddrType:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    iput-byte p2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TransportParam_toAddrPlan:B

    iput-object p3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TransportParam_toAddr:[B

    return-void
.end method

.method public fillinTransportParamSubAddress(Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder$1;->$SwitchMap$com$android$internal$telephony$cdma$CdmaSmsIdValue$AddrNumberType:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TransportParameters:[Z

    const/4 v1, 0x5

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TransportParam_subAddrType:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    iput-object p2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TransportParam_subAddr:[B

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public fillinTransportParamTypeOfService(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x1

    shr-int/lit8 v0, p1, 0x10

    const v1, 0xffff

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TransportParameters:[Z

    aput-boolean v2, v0, v2

    iput p1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TransportParam_typeOfService:I

    return-void
.end method
