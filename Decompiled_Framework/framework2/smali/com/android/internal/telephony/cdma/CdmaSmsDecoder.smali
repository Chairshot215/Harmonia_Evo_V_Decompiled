.class public Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;
.super Ljava/lang/Object;
.source "CdmaSmsDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$1;,
        Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final DBG_TAG:Ljava/lang/String; = "CDMA"

.field static final accepted_TRANSPORT_TYPE:[B

.field static final accepted_TRANSPORT_TYPE_param_list:[[B

.field static final accepted_param_ACKNOWLEDGE:[B

.field static final accepted_param_BROADCAST:[B

.field static final accepted_param_POINT_TO_POINT:[B

.field static final accepted_subparam_CARD_APPLICATION_TOOLKIT_delivery:[B

.field static final accepted_subparam_CARD_APPLICATION_TOOLKIT_user_ack:[B

.field static final accepted_subparam_IS91_EXTENDED:[B

.field static final accepted_subparam_SERVICE_CATEGORY_PROGRAMMING:[B

.field static final accepted_subparam_VOICE_MAIL_NOTIFICATION:[B

.field static final accepted_subparam_WIRELESS_APPLICATION:[B

.field static final accepted_subparam_WIRELESS_ENHANCED_MESSAGING_delivery:[B

.field static final accepted_subparam_WIRELESS_ENHANCED_MESSAGING_delivery_ack:[B

.field static final accepted_subparam_WIRELESS_ENHANCED_MESSAGING_read_ack:[B

.field static final accepted_subparam_WIRELESS_ENHANCED_MESSAGING_user_ack:[B

.field static final accepted_subparam_WIRELESS_MESSAGING_delivery:[B

.field static final accepted_subparam_WIRELESS_MESSAGING_delivery_ack:[B

.field static final accepted_subparam_WIRELESS_MESSAGING_read_ack:[B

.field static final accepted_subparam_WIRELESS_MESSAGING_user_ack:[B

.field static final accepted_subparam_WIRELESS_PAGING_delivery:[B

.field static final accepted_subparam_WIRELESS_PAGING_delivery_ack:[B

.field static final accepted_subparam_WIRELESS_PAGING_user_ack:[B

.field static final accepted_subparam_broadcast:[B

.field static final accepted_subparam_raw_message_waiting_indication:[B

.field static final accepted_subparam_submit_report:[B

.field private static final bitsMaskRight:[S

.field private static final dtmfDigitToAscII:[B

.field static final required_TRANSPORT_TYPE_param_list:[[B

.field static final required_param_ACKNOWLEDGE:[B

.field static final required_param_BROADCAST:[B

.field static final required_param_POINT_TO_POINT:[B

.field static final required_subparam_CARD_APPLICATION_TOOLKIT_delivery:[B

.field static final required_subparam_CARD_APPLICATION_TOOLKIT_user_ack:[B

.field static final required_subparam_IS91_EXTENDED:[B

.field static final required_subparam_SERVICE_CATEGORY_PROGRAMMING:[B

.field static final required_subparam_VOICE_MAIL_NOTIFICATION:[B

.field static final required_subparam_WIRELESS_APPLICATION:[B

.field static final required_subparam_WIRELESS_ENHANCED_MESSAGING_delivery:[B

.field static final required_subparam_WIRELESS_ENHANCED_MESSAGING_delivery_ack:[B

.field static final required_subparam_WIRELESS_ENHANCED_MESSAGING_read_ack:[B

.field static final required_subparam_WIRELESS_ENHANCED_MESSAGING_user_ack:[B

.field static final required_subparam_WIRELESS_MESSAGING_delivery:[B

.field static final required_subparam_WIRELESS_MESSAGING_delivery_ack:[B

.field static final required_subparam_WIRELESS_MESSAGING_read_ack:[B

.field static final required_subparam_WIRELESS_MESSAGING_user_ack:[B

.field static final required_subparam_WIRELESS_PAGING_delivery:[B

.field static final required_subparam_WIRELESS_PAGING_delivery_ack:[B

.field static final required_subparam_WIRELESS_PAGING_user_ack:[B

.field static final required_subparam_broadcast:[B

.field static final required_subparam_raw_message_waiting_indication:[B

.field static final required_subparam_submit_report:[B


# instance fields
.field final BODY_EMPTY:I

.field final BODY_ENCODING_CHAR:I

.field final BODY_ENCODING_RAW_DATA:I

.field final BODY_ENCODING_UNICODE:I

.field final BODY_ENCODING_UNKNOWN:I

.field TeleserviceMsgType:B

.field TeleserviceParam_absoluteValidity:[S

.field TeleserviceParam_alertOnDelivery:B

.field TeleserviceParam_callbackAddr:[B

.field TeleserviceParam_callbackAddrPlan:B

.field TeleserviceParam_callbackAddrType:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

.field TeleserviceParam_displayMode:B

.field TeleserviceParam_downloadMode:B

.field TeleserviceParam_encodingUserData:[[B

.field TeleserviceParam_encodingUserDataEncoding:[B

.field TeleserviceParam_errorClass:B

.field TeleserviceParam_errorDetail:B

.field TeleserviceParam_gsmTpFailure:B

.field TeleserviceParam_language:B

.field TeleserviceParam_messageCenterTimeStamp:[S

.field TeleserviceParam_messageId:S

.field TeleserviceParam_messageIdInCenter:S

.field TeleserviceParam_priority:B

.field TeleserviceParam_privacy:B

.field TeleserviceParam_relativeValidity:[B

.field TeleserviceParam_relativeValidityType:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$RelativeTime;

.field TeleserviceParam_replyManualAck:Z

.field TeleserviceParam_replyReadAck:Z

.field TeleserviceParam_replySubmitReport:Z

.field TeleserviceParam_settingAlertForTypeOfService:[B

.field TeleserviceParam_settingData:[[B

.field TeleserviceParam_settingEncoding:B

.field TeleserviceParam_settingLanguage:[B

.field TeleserviceParam_settingMaxMessagesForTypeOfService:[S

.field TeleserviceParam_settingOperation:[B

.field TeleserviceParam_settingTypeOfService:[S

.field TeleserviceParam_userData:[B

.field TeleserviceParam_userDataEncoding:B

.field TeleserviceParam_userDataEncodingExtended:S

.field TeleserviceParam_userDataHeader:[B

.field TeleserviceParam_userDataHeaderExisted:Z

.field TeleserviceParam_userResponseCode:S

.field TeleserviceParam_vmnAccessNumber:[B

.field TeleserviceParam_vmnAccessNumberPlan:B

.field TeleserviceParam_vmnAccessNumberType:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

.field TeleserviceParam_vmnAckDeletedAcks:[S

.field TeleserviceParam_vmnAckMailboxId:S

.field TeleserviceParam_vmnAckPlayedAcks:[S

.field TeleserviceParam_vmnAckUnheardMessages:S

.field TeleserviceParam_vmnAllowReply:Z

.field TeleserviceParam_vmnCallingPartyNumber:[B

.field TeleserviceParam_vmnCallingPartyNumberPlan:B

.field TeleserviceParam_vmnCallingPartyNumberType:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

.field TeleserviceParam_vmnChangePassword:Z

.field TeleserviceParam_vmnIncludeFax:Z

.field TeleserviceParam_vmnLengthInSeconds:S

.field TeleserviceParam_vmnMailboxId:S

.field TeleserviceParam_vmnMessageId:S

.field TeleserviceParam_vmnPasswordExisted:Z

.field TeleserviceParam_vmnPasswordMaxLen:B

.field TeleserviceParam_vmnPasswordMinLen:B

.field TeleserviceParam_vmnPriority:B

.field TeleserviceParam_vmnRetentionDays:B

.field TeleserviceParam_vmnServerAlmostFull:Z

.field TeleserviceParam_vmnServerFull:Z

.field TeleserviceParam_vmnSetupInitUserPrompt:Z

.field TeleserviceParam_vmnUnheardMessages:S

.field TeleserviceParam_voiceMailsInServer:B

.field TeleserviceParameters:[Z

.field TransportMsgType:B

.field TransportParam_causeDetail:B

.field TransportParam_destAddr:[B

.field TransportParam_destAddrPlan:B

.field TransportParam_destAddrType:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

.field TransportParam_errorClass:B

.field TransportParam_fromAddr:[B

.field TransportParam_fromAddrDigitMode:B

.field TransportParam_fromAddrNumberMode:B

.field TransportParam_fromAddrNumberOfDigits:I

.field TransportParam_fromAddrPlan:B

.field TransportParam_fromAddrType:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

.field TransportParam_replySeqNumber:B

.field TransportParam_subAddr:[B

.field TransportParam_subAddrType:B

.field TransportParam_teleserviceCategory:I

.field TransportParam_typeOfService:I

.field TransportParameters:[Z

.field dataEnd:I

.field dataEnd_bearerData:I

.field dataEnd_userData:I

.field param_len:S

.field smsData:[B

.field startBitIndex_decodeAddress:I

.field startIndex:I

.field startIndex_bearerData:I

.field startIndex_userData:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v6, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_TRANSPORT_TYPE:[B

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_param_POINT_TO_POINT:[B

    new-array v0, v3, [B

    aput-byte v2, v0, v2

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_param_POINT_TO_POINT:[B

    new-array v0, v4, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_param_BROADCAST:[B

    new-array v0, v3, [B

    aput-byte v3, v0, v2

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_param_BROADCAST:[B

    new-array v0, v4, [B

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_param_ACKNOWLEDGE:[B

    new-array v0, v3, [B

    const/4 v1, 0x7

    aput-byte v1, v0, v2

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_param_ACKNOWLEDGE:[B

    new-array v0, v6, [[B

    sget-object v1, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_param_POINT_TO_POINT:[B

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_param_BROADCAST:[B

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_param_ACKNOWLEDGE:[B

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_TRANSPORT_TYPE_param_list:[[B

    new-array v0, v6, [[B

    sget-object v1, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_param_POINT_TO_POINT:[B

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_param_BROADCAST:[B

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_param_ACKNOWLEDGE:[B

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_TRANSPORT_TYPE_param_list:[[B

    const/16 v0, 0x9

    new-array v0, v0, [S

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->bitsMaskRight:[S

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_5

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dtmfDigitToAscII:[B

    const/16 v0, 0xb

    new-array v0, v0, [B

    fill-array-data v0, :array_6

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_broadcast:[B

    new-array v0, v3, [B

    aput-byte v2, v0, v2

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_broadcast:[B

    new-array v0, v4, [B

    fill-array-data v0, :array_7

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_IS91_EXTENDED:[B

    new-array v0, v4, [B

    fill-array-data v0, :array_8

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_IS91_EXTENDED:[B

    const/16 v0, 0xb

    new-array v0, v0, [B

    fill-array-data v0, :array_9

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_WIRELESS_PAGING_delivery:[B

    new-array v0, v3, [B

    aput-byte v2, v0, v2

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_WIRELESS_PAGING_delivery:[B

    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_WIRELESS_PAGING_user_ack:[B

    new-array v0, v3, [B

    aput-byte v2, v0, v2

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_WIRELESS_PAGING_user_ack:[B

    new-array v0, v5, [B

    fill-array-data v0, :array_b

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_WIRELESS_PAGING_delivery_ack:[B

    new-array v0, v3, [B

    aput-byte v2, v0, v2

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_WIRELESS_PAGING_delivery_ack:[B

    const/16 v0, 0xf

    new-array v0, v0, [B

    fill-array-data v0, :array_c

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_WIRELESS_MESSAGING_delivery:[B

    new-array v0, v3, [B

    aput-byte v2, v0, v2

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_WIRELESS_MESSAGING_delivery:[B

    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_d

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_WIRELESS_MESSAGING_user_ack:[B

    new-array v0, v3, [B

    aput-byte v2, v0, v2

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_WIRELESS_MESSAGING_user_ack:[B

    new-array v0, v5, [B

    fill-array-data v0, :array_e

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_WIRELESS_MESSAGING_read_ack:[B

    new-array v0, v3, [B

    aput-byte v2, v0, v2

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_WIRELESS_MESSAGING_read_ack:[B

    new-array v0, v5, [B

    fill-array-data v0, :array_f

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_WIRELESS_MESSAGING_delivery_ack:[B

    new-array v0, v3, [B

    aput-byte v2, v0, v2

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_WIRELESS_MESSAGING_delivery_ack:[B

    const/16 v0, 0xb

    new-array v0, v0, [B

    fill-array-data v0, :array_10

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_VOICE_MAIL_NOTIFICATION:[B

    new-array v0, v4, [B

    fill-array-data v0, :array_11

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_VOICE_MAIL_NOTIFICATION:[B

    new-array v0, v4, [B

    fill-array-data v0, :array_12

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_WIRELESS_APPLICATION:[B

    new-array v0, v4, [B

    fill-array-data v0, :array_13

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_WIRELESS_APPLICATION:[B

    const/16 v0, 0xf

    new-array v0, v0, [B

    fill-array-data v0, :array_14

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_WIRELESS_ENHANCED_MESSAGING_delivery:[B

    new-array v0, v4, [B

    fill-array-data v0, :array_15

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_WIRELESS_ENHANCED_MESSAGING_delivery:[B

    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_16

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_WIRELESS_ENHANCED_MESSAGING_user_ack:[B

    new-array v0, v3, [B

    aput-byte v2, v0, v2

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_WIRELESS_ENHANCED_MESSAGING_user_ack:[B

    new-array v0, v5, [B

    fill-array-data v0, :array_17

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_WIRELESS_ENHANCED_MESSAGING_read_ack:[B

    new-array v0, v3, [B

    aput-byte v2, v0, v2

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_WIRELESS_ENHANCED_MESSAGING_read_ack:[B

    new-array v0, v5, [B

    fill-array-data v0, :array_18

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_WIRELESS_ENHANCED_MESSAGING_delivery_ack:[B

    new-array v0, v3, [B

    aput-byte v2, v0, v2

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_WIRELESS_ENHANCED_MESSAGING_delivery_ack:[B

    new-array v0, v6, [B

    fill-array-data v0, :array_19

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_SERVICE_CATEGORY_PROGRAMMING:[B

    new-array v0, v4, [B

    fill-array-data v0, :array_1a

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_SERVICE_CATEGORY_PROGRAMMING:[B

    new-array v0, v4, [B

    fill-array-data v0, :array_1b

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_CARD_APPLICATION_TOOLKIT_delivery:[B

    new-array v0, v4, [B

    fill-array-data v0, :array_1c

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_CARD_APPLICATION_TOOLKIT_delivery:[B

    new-array v0, v6, [B

    fill-array-data v0, :array_1d

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_CARD_APPLICATION_TOOLKIT_user_ack:[B

    new-array v0, v3, [B

    aput-byte v2, v0, v2

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_CARD_APPLICATION_TOOLKIT_user_ack:[B

    new-array v0, v5, [B

    fill-array-data v0, :array_1e

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_submit_report:[B

    new-array v0, v3, [B

    aput-byte v2, v0, v2

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_submit_report:[B

    new-array v0, v4, [B

    fill-array-data v0, :array_1f

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_raw_message_waiting_indication:[B

    new-array v0, v4, [B

    fill-array-data v0, :array_20

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_raw_message_waiting_indication:[B

    return-void

    nop

    :array_0
    .array-data 0x1
        0x0t
        0x1t
        0x2t
    .end array-data

    :array_1
    .array-data 0x1
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x8t
    .end array-data

    :array_2
    .array-data 0x1
        0x1t
        0x8t
    .end array-data

    nop

    :array_3
    .array-data 0x1
        0x5t
        0x7t
    .end array-data

    nop

    :array_4
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

    :array_5
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

    :array_6
    .array-data 0x1
        0x0t
        0x1t
        0x3t
        0x4t
        0x5t
        0x8t
        0xct
        0xdt
        0xet
        0xft
        0x10t
    .end array-data

    :array_7
    .array-data 0x1
        0x0t
        0x1t
    .end array-data

    nop

    :array_8
    .array-data 0x1
        0x0t
        0x1t
    .end array-data

    nop

    :array_9
    .array-data 0x1
        0x0t
        0x1t
        0x3t
        0x8t
        0x9t
        0xat
        0xbt
        0xet
        0xft
        0x10t
        0x11t
    .end array-data

    :array_a
    .array-data 0x1
        0x0t
        0x1t
        0x2t
        0x3t
        0x10t
        0x11t
    .end array-data

    nop

    :array_b
    .array-data 0x1
        0x0t
        0x1t
        0x3t
        0x10t
        0x14t
    .end array-data

    nop

    :array_c
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

    :array_d
    .array-data 0x1
        0x0t
        0x1t
        0x2t
        0x3t
        0x10t
        0x11t
    .end array-data

    nop

    :array_e
    .array-data 0x1
        0x0t
        0x1t
        0x3t
        0x10t
        0x11t
    .end array-data

    nop

    :array_f
    .array-data 0x1
        0x0t
        0x1t
        0x3t
        0x10t
        0x14t
    .end array-data

    nop

    :array_10
    .array-data 0x1
        0x0t
        0x1t
        0x3t
        0x8t
        0x9t
        0xbt
        0xct
        0xet
        0x10t
        0x16t
        0x17t
    .end array-data

    :array_11
    .array-data 0x1
        0x0t
        0xbt
    .end array-data

    nop

    :array_12
    .array-data 0x1
        0x0t
        0x1t
    .end array-data

    nop

    :array_13
    .array-data 0x1
        0x0t
        0x1t
    .end array-data

    nop

    :array_14
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
        0x2t
        0x3t
        0x10t
        0x11t
    .end array-data

    nop

    :array_17
    .array-data 0x1
        0x0t
        0x1t
        0x3t
        0x10t
        0x11t
    .end array-data

    nop

    :array_18
    .array-data 0x1
        0x0t
        0x1t
        0x3t
        0x10t
        0x14t
    .end array-data

    nop

    :array_19
    .array-data 0x1
        0x0t
        0x3t
        0x12t
    .end array-data

    :array_1a
    .array-data 0x1
        0x0t
        0x12t
    .end array-data

    nop

    :array_1b
    .array-data 0x1
        0x0t
        0x1t
    .end array-data

    nop

    :array_1c
    .array-data 0x1
        0x0t
        0x1t
    .end array-data

    nop

    :array_1d
    .array-data 0x1
        0x0t
        0x1t
        0x2t
    .end array-data

    :array_1e
    .array-data 0x1
        0x0t
        0x1t
        0xdt
        0x10t
        0x15t
    .end array-data

    nop

    :array_1f
    .array-data 0x1
        0x0t
        0xbt
    .end array-data

    nop

    :array_20
    .array-data 0x1
        0x0t
        0xbt
    .end array-data
.end method

.method public constructor <init>([B)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->BODY_EMPTY:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->BODY_ENCODING_UNKNOWN:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->BODY_ENCODING_RAW_DATA:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->BODY_ENCODING_UNICODE:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->BODY_ENCODING_CHAR:I

    iput-byte v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_fromAddrDigitMode:B

    iput-byte v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_fromAddrNumberMode:B

    iput v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_fromAddrNumberOfDigits:I

    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iput v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    array-length v0, v0

    iput v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    return-void
.end method

.method private decodeAddress(IZLcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;)[B
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v9, 0x4

    const/4 v8, 0x0

    const/16 v7, 0x8

    iget v5, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    add-int/lit8 v6, p1, 0x8

    add-int/lit8 v6, v6, 0x7

    shr-int/lit8 v6, v6, 0x3

    if-ge v5, v6, :cond_0

    const-string v5, "CDMA"

    const-string v6, "DecodeSMS address size"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5}, Ljava/io/IOException;-><init>()V

    throw v5

    :cond_0
    invoke-direct {p0, p1, v7}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v4

    add-int/lit8 p1, p1, 0x8

    if-nez v4, :cond_1

    const-string v5, "CDMA"

    const-string v6, "DecodeSMS address size 0"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startBitIndex_decodeAddress:I

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    if-eqz p2, :cond_4

    iget v5, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    shl-int/lit8 v6, v4, 0x2

    add-int/2addr v6, p1

    add-int/lit8 v6, v6, 0x7

    shr-int/lit8 v6, v6, 0x3

    if-ge v5, v6, :cond_2

    const-string v5, "CDMA"

    const-string v6, "DecodeSMS address size"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5}, Ljava/io/IOException;-><init>()V

    throw v5

    :cond_2
    new-array v1, v4, [B

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v4, :cond_6

    sget-object v5, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dtmfDigitToAscII:[B

    invoke-direct {p0, p1, v9}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v6

    aget-byte v5, v5, v6

    aput-byte v5, v1, v0

    invoke-direct {p0, p1, v9}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v3

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableRUIMCard()Z

    move-result v5

    if-eqz v5, :cond_3

    if-nez v3, :cond_3

    const/16 v3, 0xa

    :cond_3
    sget-object v5, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dtmfDigitToAscII:[B

    aget-byte v5, v5, v3

    aput-byte v5, v1, v0

    add-int/lit8 p1, p1, 0x4

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    iget v5, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    shl-int/lit8 v6, v4, 0x3

    add-int/2addr v6, p1

    add-int/lit8 v6, v6, 0x7

    shr-int/lit8 v6, v6, 0x3

    if-ge v5, v6, :cond_5

    const-string v5, "CDMA"

    const-string v6, "DecodeSMS address size"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5}, Ljava/io/IOException;-><init>()V

    throw v5

    :cond_5
    sget-object v5, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$1;->$SwitchMap$com$android$internal$telephony$cdma$CdmaSmsIdValue$AddrNumberType:[I

    invoke-virtual {p3}, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    new-array v1, v4, [B

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v4, :cond_6

    invoke-direct {p0, p1, v7}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v5

    and-int/lit8 v5, v5, 0x7f

    int-to-byte v5, v5

    aput-byte v5, v1, v0

    add-int/lit8 p1, p1, 0x8

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :pswitch_0
    invoke-direct {p0, p1, v7, v4}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStreamIntoBytes(III)[B

    move-result-object v1

    shl-int/lit8 v5, v4, 0x3

    add-int/2addr p1, v5

    :cond_6
    sget-object v5, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;->TYPE_INTERNATIONAL:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    if-ne p3, v5, :cond_7

    array-length v5, v1

    add-int/lit8 v5, v5, 0x1

    new-array v2, v5, [B

    const/16 v5, 0x2b

    aput-byte v5, v2, v8

    const/4 v5, 0x1

    array-length v6, v1

    invoke-static {v1, v8, v2, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v2

    :cond_7
    iput p1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startBitIndex_decodeAddress:I

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private decodeBCDnumber(I)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v3, 0x9

    shr-int/lit8 v2, p1, 0x4

    and-int/lit8 v0, v2, 0xf

    and-int/lit8 v1, p1, 0xf

    if-gt v0, v3, :cond_0

    if-le v1, v3, :cond_1

    :cond_0
    const-string v2, "CDMA"

    const-string v3, "DecodeSMS BCD number"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    :cond_1
    mul-int/lit8 v2, v0, 0xa

    add-int/2addr v2, v1

    return v2
.end method

.method private decodeBitStream(II)I
    .locals 8

    const/16 v7, 0x8

    shr-int/lit8 v2, p1, 0x3

    and-int/lit8 v0, p1, 0x7

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    aget-byte v5, v5, v2

    and-int/lit16 v4, v5, 0xff

    add-int v5, v0, p2

    if-gt v5, v7, :cond_1

    rsub-int/lit8 v5, v0, 0x8

    sub-int/2addr v5, p2

    shr-int v5, v4, v5

    sget-object v6, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->bitsMaskRight:[S

    aget-short v6, v6, p2

    and-int v4, v5, v6

    :cond_0
    :goto_0
    return v4

    :cond_1
    sget-object v5, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->bitsMaskRight:[S

    rsub-int/lit8 v6, v0, 0x8

    aget-short v5, v5, v6

    and-int/2addr v4, v5

    add-int/lit8 v3, v2, 0x1

    rsub-int/lit8 v5, v0, 0x8

    sub-int v1, p2, v5

    :goto_1
    if-le v1, v7, :cond_2

    shl-int/lit8 v5, v4, 0x8

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    aget-byte v6, v6, v3

    and-int/lit16 v6, v6, 0xff

    or-int v4, v5, v6

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v1, v1, -0x8

    goto :goto_1

    :cond_2
    if-lez v1, :cond_0

    shl-int v5, v4, v1

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    aget-byte v6, v6, v3

    rsub-int/lit8 v7, v1, 0x8

    shr-int/2addr v6, v7

    sget-object v7, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->bitsMaskRight:[S

    aget-short v7, v7, v1

    and-int/2addr v6, v7

    or-int v4, v5, v6

    goto :goto_0
.end method

.method private decodeBitStreamIntoBytes(III)[B
    .locals 3

    new-array v0, p3, [B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/2addr p1, p2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private decodeBitStreamIntoShorts(III)[S
    .locals 3

    new-array v1, p3, [S

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v2

    int-to-short v2, v2

    aput-short v2, v1, v0

    add-int/2addr p1, p2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private decodeParameter_header()B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    sub-int/2addr v1, v2

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    const-string v1, "CDMA"

    const-string v2, "DecodeSMS parmHeader size"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    aget-byte v0, v1, v2

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    add-int/lit8 v2, v2, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    int-to-short v1, v1

    iput-short v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->param_len:S

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    sub-int/2addr v1, v2

    iget-short v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->param_len:S

    if-ge v1, v2, :cond_1

    const-string v1, "CDMA"

    const-string v2, "DecodeSMS parmHeader size"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1

    :cond_1
    return v0
.end method

.method private decodePeriodRelative(I)[B
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x3

    const/4 v3, 0x0

    const/16 v2, 0xf4

    if-le p1, v2, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const/4 v2, 0x4

    new-array v1, v2, [B

    const/16 v2, 0xa7

    if-ge p1, v2, :cond_3

    aput-byte v3, v1, v3

    aput-byte v3, v1, v5

    const/16 v2, 0x8f

    if-ge p1, v2, :cond_1

    add-int/lit8 v2, p1, 0x1

    mul-int/lit8 v0, v2, 0x5

    div-int/lit8 v2, v0, 0x3c

    int-to-byte v2, v2

    aput-byte v2, v1, v6

    rem-int/lit8 v2, v0, 0x3c

    int-to-byte v2, v2

    aput-byte v2, v1, v4

    goto :goto_0

    :cond_1
    add-int/lit16 v0, p1, -0x8f

    shr-int/lit8 v2, v0, 0x1

    add-int/lit8 v2, v2, 0xc

    int-to-byte v2, v2

    aput-byte v2, v1, v6

    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_2

    const/16 v2, 0x1e

    aput-byte v2, v1, v4

    goto :goto_0

    :cond_2
    aput-byte v3, v1, v4

    goto :goto_0

    :cond_3
    const/16 v2, 0xc5

    if-ge p1, v2, :cond_4

    aput-byte v3, v1, v3

    add-int/lit16 v2, p1, -0xa6

    int-to-byte v2, v2

    aput-byte v2, v1, v5

    :goto_1
    aput-byte v3, v1, v6

    aput-byte v3, v1, v4

    goto :goto_0

    :cond_4
    add-int/lit16 v2, p1, -0xc0

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    aput-byte v3, v1, v5

    goto :goto_1
.end method

.method private decodeTeleservice()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v6, 0x10

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    iput-byte v6, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceMsgType:B

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeParameter_header()B

    move-result v2

    if-nez v2, :cond_3

    iget-short v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->param_len:S

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    iget v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    sub-int/2addr v2, v3

    iget-short v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->param_len:S

    if-ge v2, v3, :cond_2

    :cond_1
    const-string v2, "CDMA"

    const-string v3, "DecodeSMS subparm-id size"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    aget-byte v2, v2, v3

    shr-int/lit8 v2, v2, 0x4

    and-int/lit8 v2, v2, 0xf

    int-to-byte v2, v2

    iput-byte v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceMsgType:B

    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    iput v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    :goto_0
    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    iget v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    if-gt v2, v3, :cond_0

    iget-byte v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceMsgType:B

    if-ne v2, v6, :cond_4

    const-string v2, "CDMA"

    const-string v3, "DecodeSMS subparm-id not existed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    :cond_3
    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    iget-short v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->param_len:S

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    goto :goto_0

    :cond_4
    iput v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    const/4 v2, 0x2

    new-array v0, v2, [[B

    const/16 v2, 0x18

    new-array v2, v2, [Z

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParameters:[Z

    iget-byte v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportMsgType:B

    if-ne v2, v4, :cond_6

    iget-byte v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceMsgType:B

    if-ne v2, v4, :cond_5

    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_broadcast:[B

    aput-object v2, v0, v5

    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_broadcast:[B

    aput-object v2, v0, v4

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleserviceDeliveryBroadcast([[B)V

    :goto_1
    return-void

    :cond_5
    const-string v2, "CDMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DecodeSMS broadcast but not delivery : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-byte v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceMsgType:B

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    :cond_6
    iget-byte v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceMsgType:B

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    const-string v2, "CDMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DecodeSMS unsupported msg-type : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-byte v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceMsgType:B

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    :pswitch_1
    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_teleserviceCategory:I

    packed-switch v2, :pswitch_data_1

    :pswitch_2
    const-string v2, "CDMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DecodeSMS unsupported submit-category : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_teleserviceCategory:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    :pswitch_3
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_WIRELESS_MESSAGING_delivery:[B

    aput-object v2, v0, v5

    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_WIRELESS_MESSAGING_delivery:[B

    aput-object v2, v0, v4

    :goto_2
    :pswitch_4
    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_teleserviceCategory:I

    packed-switch v2, :pswitch_data_2

    const-string v2, "CDMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DecodeSMS unsupported delivery-category : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_teleserviceCategory:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    :pswitch_5
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_WIRELESS_APPLICATION:[B

    aput-object v2, v0, v5

    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_WIRELESS_APPLICATION:[B

    aput-object v2, v0, v4

    goto :goto_2

    :pswitch_6
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_WIRELESS_ENHANCED_MESSAGING_delivery:[B

    aput-object v2, v0, v5

    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_WIRELESS_ENHANCED_MESSAGING_delivery:[B

    aput-object v2, v0, v4

    goto :goto_2

    :pswitch_7
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_IS91_EXTENDED:[B

    aput-object v2, v0, v5

    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_IS91_EXTENDED:[B

    aput-object v2, v0, v4

    :goto_3
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleserviceDelivery([[B)V

    goto/16 :goto_1

    :pswitch_8
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_WIRELESS_PAGING_delivery:[B

    aput-object v2, v0, v5

    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_WIRELESS_PAGING_delivery:[B

    aput-object v2, v0, v4

    goto :goto_3

    :pswitch_9
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_WIRELESS_MESSAGING_delivery:[B

    aput-object v2, v0, v5

    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_WIRELESS_MESSAGING_delivery:[B

    aput-object v2, v0, v4

    goto :goto_3

    :pswitch_a
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_VOICE_MAIL_NOTIFICATION:[B

    aput-object v2, v0, v5

    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_VOICE_MAIL_NOTIFICATION:[B

    aput-object v2, v0, v4

    goto :goto_3

    :pswitch_b
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_WIRELESS_APPLICATION:[B

    aput-object v2, v0, v5

    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_WIRELESS_APPLICATION:[B

    aput-object v2, v0, v4

    goto :goto_3

    :pswitch_c
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_WIRELESS_ENHANCED_MESSAGING_delivery:[B

    aput-object v2, v0, v5

    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_WIRELESS_ENHANCED_MESSAGING_delivery:[B

    aput-object v2, v0, v4

    goto :goto_3

    :pswitch_d
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_SERVICE_CATEGORY_PROGRAMMING:[B

    aput-object v2, v0, v5

    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_SERVICE_CATEGORY_PROGRAMMING:[B

    aput-object v2, v0, v4

    goto :goto_3

    :pswitch_e
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_CARD_APPLICATION_TOOLKIT_delivery:[B

    aput-object v2, v0, v5

    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_CARD_APPLICATION_TOOLKIT_delivery:[B

    aput-object v2, v0, v4

    goto :goto_3

    :pswitch_f
    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_teleserviceCategory:I

    packed-switch v2, :pswitch_data_3

    :pswitch_10
    const-string v2, "CDMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DecodeSMS unsupported deliveryAck-category : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_teleserviceCategory:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    :pswitch_11
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_WIRELESS_PAGING_delivery_ack:[B

    aput-object v2, v0, v5

    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_WIRELESS_PAGING_delivery_ack:[B

    aput-object v2, v0, v4

    :goto_4
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleserviceDeliveryAck([[B)V

    goto/16 :goto_1

    :pswitch_12
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_WIRELESS_MESSAGING_delivery_ack:[B

    aput-object v2, v0, v5

    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_WIRELESS_MESSAGING_delivery_ack:[B

    aput-object v2, v0, v4

    goto :goto_4

    :pswitch_13
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_WIRELESS_ENHANCED_MESSAGING_delivery_ack:[B

    aput-object v2, v0, v5

    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_WIRELESS_ENHANCED_MESSAGING_delivery_ack:[B

    aput-object v2, v0, v4

    goto :goto_4

    :pswitch_14
    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_teleserviceCategory:I

    packed-switch v2, :pswitch_data_4

    :pswitch_15
    const-string v2, "CDMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DecodeSMS unsupported userAck-category : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_teleserviceCategory:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    :pswitch_16
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_WIRELESS_PAGING_user_ack:[B

    aput-object v2, v0, v5

    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_WIRELESS_PAGING_user_ack:[B

    aput-object v2, v0, v4

    :goto_5
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleserviceUserAck([[B)V

    goto/16 :goto_1

    :pswitch_17
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_WIRELESS_MESSAGING_user_ack:[B

    aput-object v2, v0, v5

    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_WIRELESS_MESSAGING_user_ack:[B

    aput-object v2, v0, v4

    goto :goto_5

    :pswitch_18
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_WIRELESS_ENHANCED_MESSAGING_user_ack:[B

    aput-object v2, v0, v5

    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_WIRELESS_ENHANCED_MESSAGING_user_ack:[B

    aput-object v2, v0, v4

    goto :goto_5

    :pswitch_19
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_CARD_APPLICATION_TOOLKIT_user_ack:[B

    aput-object v2, v0, v5

    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_CARD_APPLICATION_TOOLKIT_user_ack:[B

    aput-object v2, v0, v4

    goto :goto_5

    :pswitch_1a
    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_teleserviceCategory:I

    packed-switch v2, :pswitch_data_5

    :pswitch_1b
    const-string v2, "CDMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DecodeSMS unsupported readAck-category : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_teleserviceCategory:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    :pswitch_1c
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_WIRELESS_MESSAGING_read_ack:[B

    aput-object v2, v0, v5

    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_WIRELESS_MESSAGING_read_ack:[B

    aput-object v2, v0, v4

    :goto_6
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleserviceReadAck([[B)V

    goto/16 :goto_1

    :pswitch_1d
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_WIRELESS_ENHANCED_MESSAGING_read_ack:[B

    aput-object v2, v0, v5

    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_WIRELESS_ENHANCED_MESSAGING_read_ack:[B

    aput-object v2, v0, v4

    goto :goto_6

    :pswitch_1e
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_submit_report:[B

    aput-object v2, v0, v5

    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_submit_report:[B

    aput-object v2, v0, v4

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleserviceSubmitReport([[B)V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_f
        :pswitch_14
        :pswitch_1a
        :pswitch_0
        :pswitch_1e
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1002
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_6
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1000
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1001
        :pswitch_11
        :pswitch_12
        :pswitch_10
        :pswitch_10
        :pswitch_13
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1001
        :pswitch_16
        :pswitch_17
        :pswitch_15
        :pswitch_15
        :pswitch_18
        :pswitch_15
        :pswitch_19
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x1002
        :pswitch_1c
        :pswitch_1b
        :pswitch_1b
        :pswitch_1d
    .end packed-switch
.end method

.method private decodeTeleserviceDelivery([[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleserviceSubParam([[B)V

    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_teleserviceCategory:I

    const/16 v1, 0x1003

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParameters:[Z

    const/16 v1, 0x16

    aget-boolean v0, v0, v1

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParameters:[Z

    const/16 v1, 0x17

    aget-boolean v0, v0, v1

    if-ne v0, v2, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParameters:[Z

    const/16 v1, 0x8

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    :cond_1
    return-void
.end method

.method private decodeTeleserviceDeliveryAck([[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleserviceSubParam([[B)V

    return-void
.end method

.method private decodeTeleserviceDeliveryBroadcast([[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v2, 0x8

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleserviceSubParam([[B)V

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParameters:[Z

    aget-boolean v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_priority:B

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParameters:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    :cond_0
    return-void
.end method

.method private decodeTeleserviceParamAbsoluteValidity()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTimeStamp()[S

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_absoluteValidity:[S

    return-void
.end method

.method private decodeTeleserviceParamAlertOnMessageDelivery()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_alertOnDelivery:B

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    aget-byte v0, v0, v1

    shr-int/lit8 v0, v0, 0x6

    and-int/lit8 v0, v0, 0x3

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_alertOnDelivery:B

    goto :goto_0
.end method

.method private decodeTeleserviceParamBroadcastServiceSetting()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x4

    const/16 v6, 0x8

    iget v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    shl-int/lit8 v3, v4, 0x3

    iget v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    add-int/lit8 v5, v3, 0x5

    add-int/lit8 v5, v5, 0x7

    shr-int/lit8 v5, v5, 0x3

    if-ge v4, v5, :cond_0

    const-string v4, "CDMA"

    const-string v5, "DecodeSMS subparm-setting size"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4}, Ljava/io/IOException;-><init>()V

    throw v4

    :cond_0
    const/4 v4, 0x5

    invoke-direct {p0, v3, v4}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v4

    int-to-byte v4, v4

    iput-byte v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_settingEncoding:B

    add-int/lit8 v3, v3, 0x5

    const/4 v1, 0x0

    :cond_1
    iget v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    add-int/lit8 v5, v3, 0x30

    add-int/lit8 v5, v5, 0x7

    shr-int/lit8 v5, v5, 0x3

    if-ge v4, v5, :cond_2

    const-string v4, "CDMA"

    const-string v5, "DecodeSMS subparm-setting size"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4}, Ljava/io/IOException;-><init>()V

    throw v4

    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_settingOperation:[B

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->extendArray([B)[B

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_settingOperation:[B

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_settingTypeOfService:[S

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->extendArray([S)[S

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_settingTypeOfService:[S

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_settingLanguage:[B

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->extendArray([B)[B

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_settingLanguage:[B

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_settingMaxMessagesForTypeOfService:[S

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->extendArray([S)[S

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_settingMaxMessagesForTypeOfService:[S

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_settingAlertForTypeOfService:[B

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->extendArray([B)[B

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_settingAlertForTypeOfService:[B

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_settingData:[[B

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->extendArray([[B)[[B

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_settingData:[[B

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_settingOperation:[B

    invoke-direct {p0, v3, v7}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v4, v1

    add-int/lit8 v3, v3, 0x4

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_settingTypeOfService:[S

    const/16 v5, 0x10

    invoke-direct {p0, v3, v5}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v5

    int-to-short v5, v5

    aput-short v5, v4, v1

    add-int/lit8 v3, v3, 0x10

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_settingLanguage:[B

    invoke-direct {p0, v3, v6}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v4, v1

    add-int/lit8 v3, v3, 0x8

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_settingMaxMessagesForTypeOfService:[S

    invoke-direct {p0, v3, v6}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v5

    int-to-short v5, v5

    aput-short v5, v4, v1

    add-int/lit8 v3, v3, 0x8

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_settingAlertForTypeOfService:[B

    invoke-direct {p0, v3, v7}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v4, v1

    add-int/lit8 v3, v3, 0x4

    invoke-direct {p0, v3, v6}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v2

    add-int/lit8 v3, v3, 0x8

    const/16 v0, 0x8

    iget-byte v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_settingEncoding:B

    packed-switch v4, :pswitch_data_0

    :goto_0
    :pswitch_0
    iget v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    mul-int v5, v2, v0

    add-int/2addr v5, v3

    add-int/lit8 v5, v5, 0x7

    shr-int/lit8 v5, v5, 0x3

    if-ge v4, v5, :cond_3

    const-string v4, "CDMA"

    const-string v5, "DecodeSMS subparm-setting size"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4}, Ljava/io/IOException;-><init>()V

    throw v4

    :pswitch_1
    const/4 v0, 0x7

    goto :goto_0

    :pswitch_2
    shl-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_settingData:[[B

    invoke-direct {p0, v3, v0, v2}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStreamIntoBytes(III)[B

    move-result-object v5

    aput-object v5, v4, v1

    mul-int v4, v2, v0

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    add-int/lit8 v5, v3, 0x7

    shr-int/lit8 v5, v5, 0x3

    if-gt v4, v5, :cond_1

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private decodeTeleserviceParamCallBack()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    iget v5, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    sub-int/2addr v4, v5

    if-ge v4, v2, :cond_0

    const-string v2, "CDMA"

    const-string v3, "DecodeSMS subparm-callback size"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v5, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0x80

    shr-int/lit8 v0, v4, 0x7

    iget v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    shl-int/lit8 v4, v4, 0x3

    add-int/lit8 v1, v4, 0x1

    if-eqz v0, :cond_1

    const/4 v4, 0x3

    invoke-direct {p0, v1, v4}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v4

    int-to-byte v4, v4

    invoke-direct {p0, v3, v4}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->translateAddrNumberType(ZB)Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_callbackAddrType:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    add-int/lit8 v1, v1, 0x3

    const/4 v4, 0x4

    invoke-direct {p0, v1, v4}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v4

    int-to-byte v4, v4

    iput-byte v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_callbackAddrPlan:B

    add-int/lit8 v1, v1, 0x4

    :goto_0
    if-nez v0, :cond_2

    :goto_1
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_callbackAddrType:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeAddress(IZLcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_callbackAddr:[B

    return-void

    :cond_1
    sget-object v4, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;->TYPE_UNKNOWN:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_callbackAddrType:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    iput-byte v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_callbackAddrPlan:B

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1
.end method

.method private decodeTeleserviceParamDisplayMode()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    aget-byte v0, v0, v1

    shr-int/lit8 v0, v0, 0x6

    and-int/lit8 v0, v0, 0x3

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_displayMode:B

    iget-byte v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_displayMode:B

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    aget-byte v0, v0, v1

    and-int/lit8 v0, v0, 0x3f

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_downloadMode:B

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_downloadMode:B

    goto :goto_0
.end method

.method private decodeTeleserviceParamErrorCode()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    aget-byte v0, v0, v1

    shr-int/lit8 v0, v0, 0x6

    and-int/lit8 v0, v0, 0x3

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_errorClass:B

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    aget-byte v0, v0, v1

    and-int/lit8 v0, v0, 0x3f

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_errorDetail:B

    return-void
.end method

.method private decodeTeleserviceParamGsmTpFailure()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    aget-byte v0, v0, v1

    iput-byte v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_gsmTpFailure:B

    return-void
.end method

.method private decodeTeleserviceParamLanguage()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    aget-byte v0, v0, v1

    iput-byte v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_language:B

    return-void
.end method

.method private decodeTeleserviceParamMessageCenterTimeStamp()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTimeStamp()[S

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_messageCenterTimeStamp:[S

    return-void
.end method

.method private decodeTeleserviceParamMessageID()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    aget-byte v0, v0, v1

    shr-int/lit8 v0, v0, 0x4

    and-int/lit8 v0, v0, 0xf

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceMsgType:B

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    aget-byte v0, v0, v1

    and-int/lit8 v0, v0, 0xf

    shl-int/lit8 v0, v0, 0xc

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    add-int/lit8 v2, v2, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x4

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    add-int/lit8 v2, v2, 0x2

    aget-byte v1, v1, v2

    shr-int/lit8 v1, v1, 0x4

    and-int/lit8 v1, v1, 0xf

    or-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_messageId:S

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    add-int/lit8 v1, v1, 0x2

    aget-byte v0, v0, v1

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_userDataHeaderExisted:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private decodeTeleserviceParamMessageIdInCenter()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    aget-byte v0, v0, v1

    and-int/lit8 v0, v0, 0xf

    shl-int/lit8 v0, v0, 0xc

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    add-int/lit8 v2, v2, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x4

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    add-int/lit8 v2, v2, 0x2

    aget-byte v1, v1, v2

    shr-int/lit8 v1, v1, 0x4

    and-int/lit8 v1, v1, 0xf

    or-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_messageIdInCenter:S

    return-void
.end method

.method private decodeTeleserviceParamMultiEncodingUserData()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    shl-int/lit8 v3, v4, 0x3

    const/4 v1, 0x0

    :cond_0
    iget v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    add-int/lit8 v5, v3, 0xd

    add-int/lit8 v5, v5, 0x7

    shr-int/lit8 v5, v5, 0x3

    if-ge v4, v5, :cond_1

    const-string v4, "CDMA"

    const-string v5, "DecodeSMS subparm-multiUser size"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4}, Ljava/io/IOException;-><init>()V

    throw v4

    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_encodingUserDataEncoding:[B

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->extendArray([B)[B

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_encodingUserDataEncoding:[B

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_encodingUserData:[[B

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->extendArray([[B)[[B

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_encodingUserData:[[B

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_encodingUserDataEncoding:[B

    const/4 v5, 0x5

    invoke-direct {p0, v3, v5}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v4, v1

    add-int/lit8 v3, v3, 0x5

    const/16 v4, 0x8

    invoke-direct {p0, v3, v4}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v2

    add-int/lit8 v3, v3, 0x8

    const/16 v0, 0x8

    iget-byte v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_userDataEncoding:B

    packed-switch v4, :pswitch_data_0

    :goto_0
    :pswitch_0
    iget v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    mul-int v5, v2, v0

    add-int/2addr v5, v3

    add-int/lit8 v5, v5, 0x7

    shr-int/lit8 v5, v5, 0x3

    if-ge v4, v5, :cond_2

    const-string v4, "CDMA"

    const-string v5, "DecodeSMS subparm-multiUser size"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4}, Ljava/io/IOException;-><init>()V

    throw v4

    :pswitch_1
    const/4 v0, 0x7

    goto :goto_0

    :pswitch_2
    shl-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_encodingUserData:[[B

    invoke-direct {p0, v3, v0, v2}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStreamIntoBytes(III)[B

    move-result-object v5

    aput-object v5, v4, v1

    mul-int v4, v2, v0

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    add-int/lit8 v5, v3, 0x7

    shr-int/lit8 v5, v5, 0x3

    if-gt v4, v5, :cond_0

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private decodeTeleserviceParamPriority()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    aget-byte v0, v0, v1

    shr-int/lit8 v0, v0, 0x6

    and-int/lit8 v0, v0, 0x3

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_priority:B

    return-void
.end method

.method private decodeTeleserviceParamPrivacy()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    aget-byte v0, v0, v1

    shr-int/lit8 v0, v0, 0x6

    and-int/lit8 v0, v0, 0x3

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_privacy:B

    return-void
.end method

.method private decodeTeleserviceParamRelativeValidity()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    aget-byte v1, v1, v2

    and-int/lit16 v0, v1, 0xff

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodePeriodRelative(I)[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_relativeValidity:[B

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_relativeValidity:[B

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$RelativeTime;->Fixed:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$RelativeTime;

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_relativeValidityType:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$RelativeTime;

    :goto_0
    return-void

    :cond_0
    packed-switch v0, :pswitch_data_0

    const-string v1, "CDMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DecodeSMS subparm-relaValid peroid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1

    :pswitch_0
    sget-object v1, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$RelativeTime;->Indefinite:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$RelativeTime;

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_relativeValidityType:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$RelativeTime;

    goto :goto_0

    :pswitch_1
    sget-object v1, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$RelativeTime;->UntilMessageDisplayed:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$RelativeTime;

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_relativeValidityType:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$RelativeTime;

    goto :goto_0

    :pswitch_2
    sget-object v1, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$RelativeTime;->UntilMobileInactive:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$RelativeTime;

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_relativeValidityType:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$RelativeTime;

    goto :goto_0

    :pswitch_3
    sget-object v1, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$RelativeTime;->UntilLeavingThisRegistrationArea:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$RelativeTime;

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_relativeValidityType:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$RelativeTime;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xf5
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private decodeTeleserviceParamReplyOption()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    aget-byte v0, v1, v4

    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_replyManualAck:Z

    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_replyReadAck:Z

    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_2

    :goto_2
    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_replySubmitReport:Z

    return-void

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1

    :cond_2
    move v2, v3

    goto :goto_2
.end method

.method private decodeTeleserviceParamUserData()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v9, 0x8

    const/4 v8, 0x1

    iget v6, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    shl-int/lit8 v3, v6, 0x3

    iget v6, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    add-int/lit8 v7, v3, 0x5

    add-int/lit8 v7, v7, 0x7

    shr-int/lit8 v7, v7, 0x3

    if-ge v6, v7, :cond_0

    const-string v6, "CDMA"

    const-string v7, "DecodeSMS subparm-user size"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Ljava/io/IOException;

    invoke-direct {v6}, Ljava/io/IOException;-><init>()V

    throw v6

    :cond_0
    const/4 v6, 0x5

    invoke-direct {p0, v3, v6}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v6

    int-to-byte v6, v6

    iput-byte v6, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_userDataEncoding:B

    add-int/lit8 v3, v3, 0x5

    const/4 v2, 0x0

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParameters:[Z

    const/4 v7, 0x0

    aget-boolean v6, v6, v7

    if-ne v6, v8, :cond_1

    iget v6, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_teleserviceCategory:I

    packed-switch v6, :pswitch_data_0

    :cond_1
    :goto_0
    :pswitch_0
    iget-byte v6, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_userDataEncoding:B

    sparse-switch v6, :sswitch_data_0

    const/4 v6, -0x1

    iput-short v6, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_userDataEncodingExtended:S

    :goto_1
    iget v6, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    add-int/lit8 v7, v3, 0x8

    add-int/lit8 v7, v7, 0x7

    shr-int/lit8 v7, v7, 0x3

    if-ge v6, v7, :cond_3

    const-string v6, "CDMA"

    const-string v7, "DecodeSMS subparm-user size"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Ljava/io/IOException;

    invoke-direct {v6}, Ljava/io/IOException;-><init>()V

    throw v6

    :pswitch_1
    iget-byte v6, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_userDataEncoding:B

    if-eq v6, v8, :cond_1

    const-string v6, "CDMA"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DecodeSMS subparm-user is91 encoding : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-byte v8, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_userDataEncoding:B

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Ljava/io/IOException;

    invoke-direct {v6}, Ljava/io/IOException;-><init>()V

    throw v6

    :pswitch_2
    iget-byte v6, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_userDataEncoding:B

    if-eqz v6, :cond_1

    const-string v6, "CDMA"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DecodeSMS subparm-user wap encoding : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-byte v8, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_userDataEncoding:B

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Ljava/io/IOException;

    invoke-direct {v6}, Ljava/io/IOException;-><init>()V

    throw v6

    :pswitch_3
    iget-boolean v6, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_userDataHeaderExisted:Z

    if-ne v6, v8, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :sswitch_0
    iget v6, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    add-int/lit8 v7, v3, 0x8

    add-int/lit8 v7, v7, 0x7

    shr-int/lit8 v7, v7, 0x3

    if-ge v6, v7, :cond_2

    const-string v6, "CDMA"

    const-string v7, "DecodeSMS subparm-user size"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Ljava/io/IOException;

    invoke-direct {v6}, Ljava/io/IOException;-><init>()V

    throw v6

    :cond_2
    invoke-direct {p0, v3, v9}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v6

    int-to-short v6, v6

    iput-short v6, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_userDataEncodingExtended:S

    add-int/lit8 v3, v3, 0x8

    goto/16 :goto_1

    :cond_3
    invoke-direct {p0, v3, v9}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v1

    add-int/lit8 v3, v3, 0x8

    const/16 v0, 0x8

    iget-byte v6, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_userDataEncoding:B

    packed-switch v6, :pswitch_data_1

    :cond_4
    :goto_2
    :pswitch_4
    if-ne v2, v8, :cond_a

    iget v6, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    add-int/lit8 v7, v3, 0x8

    add-int/lit8 v7, v7, 0x7

    shr-int/lit8 v7, v7, 0x3

    if-ge v6, v7, :cond_6

    const-string v6, "CDMA"

    const-string v7, "DecodeSMS subparm-user size"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Ljava/io/IOException;

    invoke-direct {v6}, Ljava/io/IOException;-><init>()V

    throw v6

    :pswitch_5
    iget-short v6, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_userDataEncodingExtended:S

    packed-switch v6, :pswitch_data_2

    const/4 v0, 0x6

    goto :goto_2

    :pswitch_6
    const/4 v0, 0x4

    goto :goto_2

    :pswitch_7
    const/4 v0, 0x7

    goto :goto_2

    :pswitch_8
    shl-int/lit8 v1, v1, 0x1

    goto :goto_2

    :pswitch_9
    iget-short v6, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_userDataEncodingExtended:S

    and-int/lit16 v6, v6, 0x80

    if-nez v6, :cond_5

    iget-short v6, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_userDataEncodingExtended:S

    and-int/lit8 v6, v6, 0x2c

    if-nez v6, :cond_4

    const/4 v0, 0x7

    goto :goto_2

    :cond_5
    iget-short v6, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_userDataEncodingExtended:S

    and-int/lit16 v6, v6, 0xf0

    sparse-switch v6, :sswitch_data_1

    goto :goto_2

    :sswitch_1
    const/4 v0, 0x7

    goto :goto_2

    :sswitch_2
    iget-short v6, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_userDataEncodingExtended:S

    and-int/lit8 v6, v6, 0x4

    if-nez v6, :cond_4

    const/4 v0, 0x7

    goto :goto_2

    :cond_6
    invoke-direct {p0, v3, v9}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v5

    add-int/lit8 v3, v3, 0x8

    if-lez v5, :cond_8

    iget v6, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    shl-int/lit8 v7, v5, 0x3

    add-int/2addr v7, v3

    add-int/lit8 v7, v7, 0x7

    shr-int/lit8 v7, v7, 0x3

    if-ge v6, v7, :cond_7

    const-string v6, "CDMA"

    const-string v7, "DecodeSMS subparm-user size"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Ljava/io/IOException;

    invoke-direct {v6}, Ljava/io/IOException;-><init>()V

    throw v6

    :cond_7
    invoke-direct {p0, v3, v9, v5}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStreamIntoBytes(III)[B

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_userDataHeader:[B

    shl-int/lit8 v6, v5, 0x3

    add-int/2addr v3, v6

    :cond_8
    mul-int v6, v1, v0

    add-int/lit8 v7, v5, 0x1

    shl-int/lit8 v7, v7, 0x3

    sub-int/2addr v6, v7

    rem-int v4, v6, v0

    iget v6, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    add-int v7, v3, v4

    add-int/lit8 v7, v7, 0x7

    shr-int/lit8 v7, v7, 0x3

    if-ge v6, v7, :cond_9

    const-string v6, "CDMA"

    const-string v7, "DecodeSMS subparm-user size"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Ljava/io/IOException;

    invoke-direct {v6}, Ljava/io/IOException;-><init>()V

    throw v6

    :cond_9
    add-int/2addr v3, v4

    add-int/lit8 v6, v5, 0x1

    shl-int/lit8 v6, v6, 0x3

    add-int/2addr v6, v4

    div-int/2addr v6, v0

    sub-int/2addr v1, v6

    :cond_a
    if-lez v1, :cond_c

    iget v6, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    mul-int v7, v1, v0

    add-int/2addr v7, v3

    add-int/lit8 v7, v7, 0x7

    shr-int/lit8 v7, v7, 0x3

    if-ge v6, v7, :cond_b

    const-string v6, "CDMA"

    const-string v7, "DecodeSMS subparm-user size"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Ljava/io/IOException;

    invoke-direct {v6}, Ljava/io/IOException;-><init>()V

    throw v6

    :cond_b
    invoke-direct {p0, v3, v0, v1}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStreamIntoBytes(III)[B

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_userData:[B

    mul-int v6, v1, v0

    add-int/2addr v3, v6

    :cond_c
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1000
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0xa -> :sswitch_0
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_7
        :pswitch_9
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x84
        :pswitch_6
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0xc0 -> :sswitch_1
        0xd0 -> :sswitch_1
        0xf0 -> :sswitch_2
    .end sparse-switch
.end method

.method private decodeTeleserviceParamUserResponseCode()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    iput-short v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_userResponseCode:S

    return-void
.end method

.method private decodeTeleserviceParamVoiceMailMessages()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBCDnumber(I)I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_voiceMailsInServer:B

    return-void
.end method

.method private decodeTeleserviceParamVoiceMailNotification()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v8, 0x10

    const/4 v7, 0x3

    const/4 v6, 0x4

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    shl-int/lit8 v1, v2, 0x3

    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    add-int/lit8 v5, v1, 0x5

    add-int/lit8 v5, v5, 0x7

    shr-int/lit8 v5, v5, 0x3

    if-ge v2, v5, :cond_0

    const-string v2, "CDMA"

    const-string v3, "DecodeSMS subparm-vmailNoti size"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    :cond_0
    const/4 v2, 0x2

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v2

    int-to-byte v2, v2

    iput-byte v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_vmnPriority:B

    add-int/lit8 v1, v1, 0x2

    invoke-direct {p0, v1, v3}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_vmnPasswordExisted:Z

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1, v3}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_vmnSetupInitUserPrompt:Z

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1, v3}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v2

    if-eqz v2, :cond_3

    move v2, v3

    :goto_2
    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_vmnChangePassword:Z

    add-int/lit8 v1, v1, 0x1

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_vmnSetupInitUserPrompt:Z

    if-nez v2, :cond_5

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_vmnChangePassword:Z

    if-nez v2, :cond_5

    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    add-int/lit8 v5, v1, 0x8

    add-int/lit8 v5, v5, 0x7

    shr-int/lit8 v5, v5, 0x3

    if-ge v2, v5, :cond_4

    const-string v2, "CDMA"

    const-string v3, "DecodeSMS subparm-vmailNoti size"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    :cond_1
    move v2, v4

    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_1

    :cond_3
    move v2, v4

    goto :goto_2

    :cond_4
    invoke-direct {p0, v1, v6}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v2

    int-to-byte v2, v2

    iput-byte v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_vmnPasswordMinLen:B

    add-int/lit8 v1, v1, 0x4

    invoke-direct {p0, v1, v6}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v2

    int-to-byte v2, v2

    iput-byte v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_vmnPasswordMaxLen:B

    add-int/lit8 v1, v1, 0x4

    :cond_5
    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    add-int/lit8 v5, v1, 0x43

    add-int/lit8 v5, v5, 0x7

    shr-int/lit8 v5, v5, 0x3

    if-ge v2, v5, :cond_6

    const-string v2, "CDMA"

    const-string v3, "DecodeSMS subparm-vmailNoti size"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    :cond_6
    const/16 v2, 0x8

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v2

    int-to-short v2, v2

    iput-short v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_vmnUnheardMessages:S

    add-int/lit8 v1, v1, 0x8

    invoke-direct {p0, v1, v3}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v2

    if-eqz v2, :cond_7

    move v2, v3

    :goto_3
    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_vmnServerAlmostFull:Z

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1, v3}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v2

    if-eqz v2, :cond_8

    move v2, v3

    :goto_4
    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_vmnServerFull:Z

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1, v3}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v2

    if-eqz v2, :cond_9

    move v2, v3

    :goto_5
    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_vmnAllowReply:Z

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1, v3}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v2

    if-eqz v2, :cond_a

    move v2, v3

    :goto_6
    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_vmnIncludeFax:Z

    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0xc

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v2

    int-to-short v2, v2

    iput-short v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_vmnLengthInSeconds:S

    add-int/lit8 v1, v1, 0xc

    const/4 v2, 0x7

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v2

    int-to-byte v2, v2

    iput-byte v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_vmnRetentionDays:B

    add-int/lit8 v1, v1, 0x7

    invoke-direct {p0, v1, v8}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v2

    int-to-short v2, v2

    iput-short v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_vmnMessageId:S

    add-int/lit8 v1, v1, 0x10

    invoke-direct {p0, v1, v8}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v2

    int-to-short v2, v2

    iput-short v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_vmnMailboxId:S

    add-int/lit8 v1, v1, 0x10

    invoke-direct {p0, v1, v3}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v0

    invoke-direct {p0, v1, v7}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v2

    int-to-byte v2, v2

    invoke-direct {p0, v4, v2}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->translateAddrNumberType(ZB)Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_vmnAccessNumberType:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    add-int/lit8 v1, v1, 0x3

    if-eqz v0, :cond_c

    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    add-int/lit8 v5, v1, 0x4

    add-int/lit8 v5, v5, 0x7

    shr-int/lit8 v5, v5, 0x3

    if-ge v2, v5, :cond_b

    const-string v2, "CDMA"

    const-string v3, "DecodeSMS subparm-vmailNoti size"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    :cond_7
    move v2, v4

    goto :goto_3

    :cond_8
    move v2, v4

    goto :goto_4

    :cond_9
    move v2, v4

    goto :goto_5

    :cond_a
    move v2, v4

    goto :goto_6

    :cond_b
    invoke-direct {p0, v1, v6}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v2

    int-to-byte v2, v2

    iput-byte v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_vmnAccessNumberPlan:B

    add-int/lit8 v1, v1, 0x4

    :goto_7
    if-nez v0, :cond_d

    move v2, v3

    :goto_8
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_vmnAccessNumberType:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    invoke-direct {p0, v1, v2, v5}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeAddress(IZLcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_vmnAccessNumber:[B

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startBitIndex_decodeAddress:I

    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    add-int/lit8 v5, v1, 0x4

    add-int/lit8 v5, v5, 0x7

    shr-int/lit8 v5, v5, 0x3

    if-ge v2, v5, :cond_e

    const-string v2, "CDMA"

    const-string v3, "DecodeSMS subparm-vmailNoti size"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    :cond_c
    iput-byte v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_vmnAccessNumberPlan:B

    goto :goto_7

    :cond_d
    move v2, v4

    goto :goto_8

    :cond_e
    invoke-direct {p0, v1, v3}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v0

    invoke-direct {p0, v1, v7}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v2

    int-to-byte v2, v2

    invoke-direct {p0, v4, v2}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->translateAddrNumberType(ZB)Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_vmnCallingPartyNumberType:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    add-int/lit8 v1, v1, 0x3

    if-eqz v0, :cond_10

    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    add-int/lit8 v5, v1, 0x4

    add-int/lit8 v5, v5, 0x7

    shr-int/lit8 v5, v5, 0x3

    if-ge v2, v5, :cond_f

    const-string v2, "CDMA"

    const-string v3, "DecodeSMS subparm-vmailNoti size"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    :cond_f
    invoke-direct {p0, v1, v6}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v2

    int-to-byte v2, v2

    iput-byte v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_vmnCallingPartyNumberPlan:B

    add-int/lit8 v1, v1, 0x4

    :goto_9
    if-nez v0, :cond_11

    :goto_a
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_vmnCallingPartyNumberType:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    invoke-direct {p0, v1, v3, v2}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeAddress(IZLcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_vmnCallingPartyNumber:[B

    return-void

    :cond_10
    iput-byte v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_vmnCallingPartyNumberPlan:B

    goto :goto_9

    :cond_11
    move v3, v4

    goto :goto_a
.end method

.method private decodeTeleserviceParamVoiceMailNotificationAck()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x3

    const/16 v6, 0x10

    iget v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    shl-int/lit8 v2, v3, 0x3

    iget v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    add-int/lit8 v4, v2, 0x1e

    add-int/lit8 v4, v4, 0x7

    shr-int/lit8 v4, v4, 0x3

    if-ge v3, v4, :cond_0

    const-string v3, "CDMA"

    const-string v4, "DecodeSMS subparm-vmailNotiAck size"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3}, Ljava/io/IOException;-><init>()V

    throw v3

    :cond_0
    invoke-direct {p0, v2, v6}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v3

    int-to-short v3, v3

    iput-short v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_vmnAckMailboxId:S

    add-int/lit8 v2, v2, 0x10

    const/16 v3, 0x8

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v3

    int-to-short v3, v3

    iput-short v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_vmnAckUnheardMessages:S

    add-int/lit8 v2, v2, 0x8

    invoke-direct {p0, v2, v5}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v3

    int-to-short v0, v3

    add-int/lit8 v2, v2, 0x3

    invoke-direct {p0, v2, v5}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v3

    int-to-short v1, v3

    add-int/lit8 v2, v2, 0x3

    iget v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    shl-int/lit8 v4, v0, 0x4

    add-int/2addr v4, v2

    shl-int/lit8 v5, v1, 0x4

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x7

    shr-int/lit8 v4, v4, 0x3

    if-ge v3, v4, :cond_1

    const-string v3, "CDMA"

    const-string v4, "DecodeSMS subparm-vmailNotiAck size"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3}, Ljava/io/IOException;-><init>()V

    throw v3

    :cond_1
    invoke-direct {p0, v2, v6, v0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStreamIntoShorts(III)[S

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_vmnAckDeletedAcks:[S

    shl-int/lit8 v3, v0, 0x4

    add-int/2addr v2, v3

    invoke-direct {p0, v2, v6, v1}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStreamIntoShorts(III)[S

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_vmnAckPlayedAcks:[S

    shl-int/lit8 v3, v1, 0x4

    add-int/2addr v2, v3

    return-void
.end method

.method private decodeTeleserviceRawMessageWaitingIndication([[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleserviceSubParam([[B)V

    return-void
.end method

.method private decodeTeleserviceReadAck([[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleserviceSubParam([[B)V

    return-void
.end method

.method private decodeTeleserviceSingleParameter(B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleserviceParamMessageID()V

    goto :goto_0

    :pswitch_2
    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    iput v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex_userData:I

    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    iput v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd_userData:I

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleserviceParamUserResponseCode()V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleserviceParamMessageCenterTimeStamp()V

    goto :goto_0

    :pswitch_5
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleserviceParamAbsoluteValidity()V

    goto :goto_0

    :pswitch_6
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleserviceParamRelativeValidity()V

    goto :goto_0

    :pswitch_7
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleserviceParamPriority()V

    goto :goto_0

    :pswitch_8
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleserviceParamPrivacy()V

    goto :goto_0

    :pswitch_9
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleserviceParamReplyOption()V

    goto :goto_0

    :pswitch_a
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleserviceParamVoiceMailMessages()V

    goto :goto_0

    :pswitch_b
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleserviceParamAlertOnMessageDelivery()V

    goto :goto_0

    :pswitch_c
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleserviceParamLanguage()V

    goto :goto_0

    :pswitch_d
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleserviceParamCallBack()V

    goto :goto_0

    :pswitch_e
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleserviceParamDisplayMode()V

    goto :goto_0

    :pswitch_f
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleserviceParamMultiEncodingUserData()V

    goto :goto_0

    :pswitch_10
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleserviceParamMessageIdInCenter()V

    goto :goto_0

    :pswitch_11
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleserviceParamBroadcastServiceSetting()V

    goto :goto_0

    :pswitch_12
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleserviceParamErrorCode()V

    goto :goto_0

    :pswitch_13
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleserviceParamGsmTpFailure()V

    goto :goto_0

    :pswitch_14
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleserviceParamVoiceMailNotification()V

    goto :goto_0

    :pswitch_15
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleserviceParamVoiceMailNotificationAck()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_0
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
    .end packed-switch
.end method

.method private decodeTeleserviceSubParam([[B)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v9, 0x1

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeParameter_header()B

    move-result v4

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParameters:[Z

    const/4 v8, 0x0

    aget-object v8, p1, v8

    invoke-direct {p0, v4, v8}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->existInGivenList(B[B)Z

    move-result v8

    aput-boolean v8, v7, v4

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParameters:[Z

    aget-boolean v7, v7, v4

    if-ne v7, v9, :cond_3

    sget-object v7, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue;->fixedLengthSubparameter:[B

    aget-byte v6, v7, v4

    if-eqz v6, :cond_1

    iget-short v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->param_len:S

    if-ne v6, v7, :cond_2

    :cond_1
    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    iget v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    iget-short v8, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->param_len:S

    add-int/2addr v7, v8

    iput v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleserviceSingleParameter(B)V

    iget v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    iput v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    iput v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    :goto_0
    iget v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    iget v8, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    if-gt v7, v8, :cond_0

    aget-object v0, p1, v9

    array-length v3, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_5

    aget-byte v5, v0, v2

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParameters:[Z

    aget-boolean v7, v7, v5

    if-eq v7, v9, :cond_4

    const-string v7, "CDMA"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DecodeSMS required subparm "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " not existed"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Ljava/io/IOException;

    invoke-direct {v7}, Ljava/io/IOException;-><init>()V

    throw v7

    :cond_2
    const-string v7, "CDMA"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DecodeSMS subparm-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " id size"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Ljava/io/IOException;

    invoke-direct {v7}, Ljava/io/IOException;-><init>()V

    throw v7

    :cond_3
    iget v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    iget-short v8, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->param_len:S

    add-int/2addr v7, v8

    iput v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    goto :goto_0

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParameters:[Z

    aget-boolean v7, v7, v9

    if-ne v7, v9, :cond_6

    iget v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex_userData:I

    iput v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    iget v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd_userData:I

    iput v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleserviceParamUserData()V

    :cond_6
    return-void
.end method

.method private decodeTeleserviceSubmitReport([[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleserviceSubParam([[B)V

    return-void
.end method

.method private decodeTeleserviceUserAck([[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleserviceSubParam([[B)V

    return-void
.end method

.method private decodeTimeStamp()[S
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    const/16 v5, 0x8

    const/4 v3, 0x6

    new-array v0, v3, [S

    iget v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    shl-int/lit8 v1, v3, 0x3

    invoke-direct {p0, v1, v5}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBCDnumber(I)I

    move-result v3

    add-int/lit16 v3, v3, 0x76c

    int-to-short v3, v3

    aput-short v3, v0, v7

    add-int/lit8 v1, v1, 0x8

    aget-short v3, v0, v7

    const/16 v4, 0x7cc

    if-ge v3, v4, :cond_0

    aget-short v3, v0, v7

    add-int/lit8 v3, v3, 0x64

    int-to-short v3, v3

    aput-short v3, v0, v7

    :cond_0
    invoke-direct {p0, v1, v5}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBCDnumber(I)I

    move-result v3

    int-to-short v3, v3

    aput-short v3, v0, v6

    add-int/lit8 v1, v1, 0x8

    aget-short v3, v0, v6

    if-lt v3, v6, :cond_1

    aget-short v3, v0, v6

    const/16 v4, 0xc

    if-le v3, v4, :cond_3

    :cond_1
    move-object v0, v2

    :cond_2
    :goto_0
    return-object v0

    :cond_3
    invoke-direct {p0, v1, v5}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBCDnumber(I)I

    move-result v3

    int-to-short v3, v3

    aput-short v3, v0, v8

    add-int/lit8 v1, v1, 0x8

    aget-short v3, v0, v8

    if-lt v3, v6, :cond_4

    aget-short v3, v0, v8

    const/16 v4, 0x1f

    if-le v3, v4, :cond_5

    :cond_4
    move-object v0, v2

    goto :goto_0

    :cond_5
    const/4 v3, 0x3

    invoke-direct {p0, v1, v5}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBCDnumber(I)I

    move-result v4

    int-to-short v4, v4

    aput-short v4, v0, v3

    add-int/lit8 v1, v1, 0x8

    const/4 v3, 0x3

    aget-short v3, v0, v3

    const/16 v4, 0x17

    if-le v3, v4, :cond_6

    move-object v0, v2

    goto :goto_0

    :cond_6
    const/4 v3, 0x4

    invoke-direct {p0, v1, v5}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBCDnumber(I)I

    move-result v4

    int-to-short v4, v4

    aput-short v4, v0, v3

    add-int/lit8 v1, v1, 0x8

    const/4 v3, 0x4

    aget-short v3, v0, v3

    const/16 v4, 0x3b

    if-le v3, v4, :cond_7

    move-object v0, v2

    goto :goto_0

    :cond_7
    const/4 v3, 0x5

    invoke-direct {p0, v1, v5}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBCDnumber(I)I

    move-result v4

    int-to-short v4, v4

    aput-short v4, v0, v3

    add-int/lit8 v1, v1, 0x8

    const/4 v3, 0x5

    aget-short v3, v0, v3

    const/16 v4, 0x3b

    if-le v3, v4, :cond_2

    move-object v0, v2

    goto :goto_0
.end method

.method private decodeTransport()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v13, 0x8

    const/4 v12, 0x0

    const/4 v11, 0x1

    iget v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    iget v10, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    sub-int/2addr v9, v10

    const/4 v10, 0x3

    if-ge v9, v10, :cond_0

    const-string v9, "CDMA"

    const-string v10, "DecodeSMS Transport size"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v9, Ljava/io/IOException;

    invoke-direct {v9}, Ljava/io/IOException;-><init>()V

    throw v9

    :cond_0
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v10, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    aget-byte v9, v9, v10

    iput-byte v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportMsgType:B

    iget v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    iget-byte v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportMsgType:B

    sget-object v10, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_TRANSPORT_TYPE:[B

    invoke-direct {p0, v9, v10}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->existInGivenList(B[B)Z

    move-result v9

    if-nez v9, :cond_1

    const-string v9, "CDMA"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "DecodeSMS Transport type "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-byte v11, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportMsgType:B

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " not allowed"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v9, Ljava/io/IOException;

    invoke-direct {v9}, Ljava/io/IOException;-><init>()V

    throw v9

    :cond_1
    const/16 v9, 0x9

    new-array v9, v9, [Z

    iput-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParameters:[Z

    sget-object v9, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_TRANSPORT_TYPE_param_list:[[B

    iget-byte v10, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportMsgType:B

    aget-object v6, v9, v10

    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeParameter_header()B

    move-result v7

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParameters:[Z

    aget-boolean v9, v9, v7

    if-nez v9, :cond_5

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParameters:[Z

    invoke-direct {p0, v7, v6}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->existInGivenList(B[B)Z

    move-result v10

    aput-boolean v10, v9, v7

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParameters:[Z

    aget-boolean v9, v9, v7

    if-ne v9, v11, :cond_4

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    iget v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    iget-short v10, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->param_len:S

    add-int/2addr v9, v10

    iput v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTransportParameter(B)V

    iget v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    iput v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    iput v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    :goto_0
    iget v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    iget v10, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    if-gt v9, v10, :cond_2

    const/4 v2, 0x1

    sget-object v9, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_TRANSPORT_TYPE_param_list:[[B

    iget-byte v10, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportMsgType:B

    aget-object v0, v9, v10

    array-length v5, v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v5, :cond_6

    aget-byte v8, v0, v4

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParameters:[Z

    aget-boolean v9, v9, v8

    if-eq v9, v11, :cond_3

    const/4 v2, 0x0

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    iget v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    iget-short v10, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->param_len:S

    add-int/2addr v9, v10

    iput v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    goto :goto_0

    :cond_5
    iget v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    iget-short v10, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->param_len:S

    add-int/2addr v9, v10

    iput v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    goto :goto_0

    :cond_6
    if-eqz v2, :cond_8

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParameters:[Z

    aget-boolean v9, v9, v13

    if-ne v9, v11, :cond_7

    iget v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex_bearerData:I

    iput v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    iget v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd_bearerData:I

    iput v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleservice()V

    :cond_7
    :goto_2
    return-void

    :cond_8
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParameters:[Z

    aget-boolean v9, v9, v12

    if-ne v9, v11, :cond_9

    iget v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_teleserviceCategory:I

    const/16 v10, 0x1003

    if-ne v9, v10, :cond_9

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParameters:[Z

    aget-boolean v9, v9, v13

    if-ne v9, v11, :cond_9

    iget v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex_bearerData:I

    iput v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    iget v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd_bearerData:I

    iput v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    const/4 v9, 0x2

    new-array v3, v9, [[B

    const/16 v9, 0x18

    new-array v9, v9, [Z

    iput-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParameters:[Z

    sget-object v9, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_raw_message_waiting_indication:[B

    aput-object v9, v3, v12

    sget-object v9, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_raw_message_waiting_indication:[B

    aput-object v9, v3, v11

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleserviceRawMessageWaitingIndication([[B)V

    goto :goto_2

    :cond_9
    const-string v9, "CDMA"

    const-string v10, "DecodeSMS required parms not existed"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v9, Ljava/io/IOException;

    invoke-direct {v9}, Ljava/io/IOException;-><init>()V

    throw v9
.end method

.method private decodeTransportParamBearerReplyOption()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const-string v0, "CDMA"

    const-string v1, "DecodeSMS parm-reply size"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    aget-byte v0, v0, v1

    shr-int/lit8 v0, v0, 0x2

    and-int/lit8 v0, v0, 0x3f

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_replySeqNumber:B

    return-void
.end method

.method private decodeTransportParamCauseCodes()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v7, 0x6b

    const/16 v6, 0x42

    const/16 v5, 0x30

    const/16 v4, 0x27

    const/4 v3, 0x5

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    sub-int/2addr v1, v2

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    const-string v1, "CDMA"

    const-string v2, "DecodeSMS parm-cause size"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    aget-byte v1, v1, v2

    shr-int/lit8 v1, v1, 0x2

    and-int/lit8 v1, v1, 0x3f

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_replySeqNumber:B

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    aget-byte v1, v1, v2

    and-int/lit8 v1, v1, 0x3

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_errorClass:B

    iget-byte v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_errorClass:B

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    sub-int/2addr v1, v2

    const/4 v2, 0x2

    if-ge v1, v2, :cond_2

    const/16 v1, 0x6a

    iput-byte v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_causeDetail:B

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    add-int/lit8 v2, v2, 0x1

    aget-byte v1, v1, v2

    iput-byte v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_causeDetail:B

    iget-byte v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_causeDetail:B

    and-int/lit16 v0, v1, 0xff

    if-le v0, v3, :cond_3

    const/16 v1, 0x20

    if-ge v0, v1, :cond_3

    iput-byte v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_causeDetail:B

    goto :goto_0

    :cond_3
    if-le v0, v4, :cond_4

    if-ge v0, v5, :cond_4

    iput-byte v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_causeDetail:B

    goto :goto_0

    :cond_4
    if-lt v0, v5, :cond_5

    const/16 v1, 0x40

    if-ge v0, v1, :cond_5

    const/16 v1, 0x24

    iput-byte v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_causeDetail:B

    goto :goto_0

    :cond_5
    if-le v0, v6, :cond_6

    const/16 v1, 0x60

    if-ge v0, v1, :cond_6

    iput-byte v6, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_causeDetail:B

    goto :goto_0

    :cond_6
    if-le v0, v7, :cond_1

    iput-byte v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_causeDetail:B

    goto :goto_0
.end method

.method private decodeTransportParamDestAddress()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    iget v6, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    sub-int/2addr v3, v6

    if-ge v3, v4, :cond_0

    const-string v3, "CDMA"

    const-string v4, "DecodeSMS parm-address size"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3}, Ljava/io/IOException;-><init>()V

    throw v3

    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v6, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    aget-byte v3, v3, v6

    and-int/lit16 v3, v3, 0x80

    shr-int/lit8 v0, v3, 0x7

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v6, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    aget-byte v3, v3, v6

    and-int/lit8 v3, v3, 0x40

    shr-int/lit8 v1, v3, 0x6

    iget v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    shl-int/lit8 v3, v3, 0x3

    add-int/lit8 v2, v3, 0x2

    if-eqz v0, :cond_4

    if-eqz v1, :cond_1

    move v3, v4

    :goto_0
    const/4 v6, 0x3

    invoke-direct {p0, v2, v6}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v6

    int-to-byte v6, v6

    invoke-direct {p0, v3, v6}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->translateAddrNumberType(ZB)Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_destAddrType:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    add-int/lit8 v2, v2, 0x3

    if-nez v1, :cond_3

    iget v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    add-int/lit8 v6, v2, 0x4

    add-int/lit8 v6, v6, 0x7

    shr-int/lit8 v6, v6, 0x3

    if-ge v3, v6, :cond_2

    const-string v3, "CDMA"

    const-string v4, "DecodeSMS parm-address size"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3}, Ljava/io/IOException;-><init>()V

    throw v3

    :cond_1
    move v3, v5

    goto :goto_0

    :cond_2
    const/4 v3, 0x4

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v3

    int-to-byte v3, v3

    iput-byte v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_destAddrPlan:B

    add-int/lit8 v2, v2, 0x4

    :goto_1
    if-nez v0, :cond_5

    :goto_2
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_destAddrType:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    invoke-direct {p0, v2, v4, v3}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeAddress(IZLcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;)[B

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_destAddr:[B

    return-void

    :cond_3
    iput-byte v5, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_destAddrPlan:B

    goto :goto_1

    :cond_4
    sget-object v3, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;->TYPE_UNKNOWN:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_destAddrType:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    iput-byte v5, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_destAddrPlan:B

    goto :goto_1

    :cond_5
    move v4, v5

    goto :goto_2
.end method

.method private decodeTransportParamOrigAddress()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    iget v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    sub-int/2addr v1, v4

    if-ge v1, v2, :cond_0

    const-string v1, "CDMA"

    const-string v2, "DecodeSMS parm-address size"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0x80

    shr-int/lit8 v1, v1, 0x7

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_fromAddrDigitMode:B

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    aget-byte v1, v1, v4

    and-int/lit8 v1, v1, 0x40

    shr-int/lit8 v1, v1, 0x6

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_fromAddrNumberMode:B

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    shl-int/lit8 v1, v1, 0x3

    add-int/lit8 v0, v1, 0x2

    iget-byte v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_fromAddrDigitMode:B

    if-eqz v1, :cond_4

    iget-byte v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_fromAddrNumberMode:B

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    const/4 v4, 0x3

    invoke-direct {p0, v0, v4}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v4

    int-to-byte v4, v4

    invoke-direct {p0, v1, v4}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->translateAddrNumberType(ZB)Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_fromAddrType:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    add-int/lit8 v0, v0, 0x3

    iget-byte v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_fromAddrNumberMode:B

    if-nez v1, :cond_3

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    add-int/lit8 v4, v0, 0x4

    add-int/lit8 v4, v4, 0x7

    shr-int/lit8 v4, v4, 0x3

    if-ge v1, v4, :cond_2

    const-string v1, "CDMA"

    const-string v2, "DecodeSMS parm-address size"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v1

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_fromAddrPlan:B

    add-int/lit8 v0, v0, 0x4

    :goto_1
    const/16 v1, 0x8

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_fromAddrNumberOfDigits:I

    iget-byte v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_fromAddrDigitMode:B

    if-nez v1, :cond_5

    :goto_2
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_fromAddrType:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    invoke-direct {p0, v0, v2, v1}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeAddress(IZLcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_fromAddr:[B

    return-void

    :cond_3
    iput-byte v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_fromAddrPlan:B

    goto :goto_1

    :cond_4
    sget-object v1, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;->TYPE_UNKNOWN:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_fromAddrType:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    iput-byte v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_fromAddrPlan:B

    goto :goto_1

    :cond_5
    move v2, v3

    goto :goto_2
.end method

.method private decodeTransportParamServiceCategory()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    sub-int/2addr v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const-string v0, "CDMA"

    const-string v1, "DecodeSMS parm-category size"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    add-int/lit8 v2, v2, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_typeOfService:I

    return-void
.end method

.method private decodeTransportParamSubAddress()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v11, 0x4

    const/16 v10, 0x8

    iget v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    iget v8, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    sub-int/2addr v7, v8

    const/4 v8, 0x2

    if-ge v7, v8, :cond_0

    const-string v7, "CDMA"

    const-string v8, "DecodeSMS parm-subaddress size"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Ljava/io/IOException;

    invoke-direct {v7}, Ljava/io/IOException;-><init>()V

    throw v7

    :cond_0
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v8, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xe0

    shr-int/lit8 v7, v7, 0x5

    int-to-byte v7, v7

    iput-byte v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_subAddrType:B

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v8, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    aget-byte v7, v7, v8

    and-int/lit8 v7, v7, 0x10

    shr-int/lit8 v5, v7, 0x4

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v8, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    aget-byte v7, v7, v8

    and-int/lit8 v7, v7, 0xf

    shl-int/lit8 v7, v7, 0x4

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    add-int/lit8 v9, v9, 0x1

    aget-byte v8, v8, v9

    shr-int/lit8 v8, v8, 0x4

    and-int/lit8 v8, v8, 0xf

    or-int v4, v7, v8

    if-nez v4, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    shl-int/lit8 v7, v4, 0x1

    sub-int v4, v7, v5

    iget v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    iget v8, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    sub-int/2addr v7, v8

    shr-int/lit8 v8, v4, 0x1

    add-int/lit8 v8, v8, 0x2

    if-ge v7, v8, :cond_3

    const-string v7, "CDMA"

    const-string v8, "DecodeSMS parm-subaddress size"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Ljava/io/IOException;

    invoke-direct {v7}, Ljava/io/IOException;-><init>()V

    throw v7

    :cond_3
    iget v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    shl-int/lit8 v7, v7, 0x3

    add-int/lit8 v6, v7, 0xc

    iget-byte v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_subAddrType:B

    packed-switch v7, :pswitch_data_0

    const-string v7, "CDMA"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DecodeSMS unknown parm-subaddress : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-byte v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_subAddrType:B

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Ljava/io/IOException;

    invoke-direct {v7}, Ljava/io/IOException;-><init>()V

    throw v7

    :pswitch_0
    iget v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    add-int/lit8 v8, v6, 0x8

    add-int/lit8 v8, v8, 0x7

    shr-int/lit8 v8, v8, 0x3

    if-ge v7, v8, :cond_4

    const-string v7, "CDMA"

    const-string v8, "DecodeSMS parm-subaddress size"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Ljava/io/IOException;

    invoke-direct {v7}, Ljava/io/IOException;-><init>()V

    throw v7

    :cond_4
    invoke-direct {p0, v6, v10}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v2

    add-int/lit8 v6, v6, 0x8

    add-int/lit8 v4, v4, -0x2

    sparse-switch v2, :sswitch_data_0

    const-string v7, "CDMA"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DecodeSMS unknown parm-subaddress-NSAP : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Ljava/io/IOException;

    invoke-direct {v7}, Ljava/io/IOException;-><init>()V

    throw v7

    :sswitch_0
    iget v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    add-int/lit8 v8, v6, 0x10

    add-int/lit8 v8, v8, 0x7

    shr-int/lit8 v8, v8, 0x3

    if-ge v7, v8, :cond_5

    const-string v7, "CDMA"

    const-string v8, "DecodeSMS parm-subaddress size"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Ljava/io/IOException;

    invoke-direct {v7}, Ljava/io/IOException;-><init>()V

    throw v7

    :cond_5
    invoke-direct {p0, v6, v10}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBCDnumber(I)I

    move-result v7

    mul-int/lit8 v7, v7, 0x64

    add-int/lit8 v8, v6, 0x8

    invoke-direct {p0, v8, v10}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBCDnumber(I)I

    move-result v8

    add-int/2addr v7, v8

    int-to-short v0, v7

    add-int/lit8 v6, v6, 0x10

    packed-switch v0, :pswitch_data_1

    const-string v7, "CDMA"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DecodeSMS unknown parm-subaddress-NSAP-IP : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Ljava/io/IOException;

    invoke-direct {v7}, Ljava/io/IOException;-><init>()V

    throw v7

    :pswitch_1
    iget v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    add-int/lit16 v8, v6, 0x80

    add-int/lit8 v8, v8, 0x7

    shr-int/lit8 v8, v8, 0x3

    if-ge v7, v8, :cond_6

    const-string v7, "CDMA"

    const-string v8, "DecodeSMS parm-subaddress size"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Ljava/io/IOException;

    invoke-direct {v7}, Ljava/io/IOException;-><init>()V

    throw v7

    :cond_6
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v10, :cond_8

    const/16 v7, 0x10

    invoke-direct {p0, v6, v7}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v6, v6, 0x10

    const/4 v7, 0x7

    if-ge v1, v7, :cond_7

    new-instance v7, Ljava/lang/String;

    const-string v8, ":"

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_8
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_subAddr:[B

    goto/16 :goto_0

    :pswitch_2
    iget v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    add-int/lit8 v8, v6, 0x20

    add-int/lit8 v8, v8, 0x7

    shr-int/lit8 v8, v8, 0x3

    if-ge v7, v8, :cond_9

    const-string v7, "CDMA"

    const-string v8, "DecodeSMS parm-subaddress size"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Ljava/io/IOException;

    invoke-direct {v7}, Ljava/io/IOException;-><init>()V

    throw v7

    :cond_9
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v11, :cond_b

    invoke-direct {p0, v6, v10}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toOctalString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v6, v6, 0x8

    const/4 v7, 0x3

    if-ge v1, v7, :cond_a

    new-instance v7, Ljava/lang/String;

    const-string v8, "."

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_b
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_subAddr:[B

    goto/16 :goto_0

    :sswitch_1
    shr-int/lit8 v4, v4, 0x1

    const/16 v7, 0x13

    if-le v4, v7, :cond_c

    const/16 v4, 0x13

    :cond_c
    new-array v7, v4, [B

    iput-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_subAddr:[B

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v4, :cond_1

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_subAddr:[B

    invoke-direct {p0, v6, v10}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v8

    and-int/lit8 v8, v8, 0x7f

    int-to-byte v8, v8

    aput-byte v8, v7, v1

    add-int/lit8 v6, v6, 0x8

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :sswitch_2
    shr-int/lit8 v4, v4, 0x1

    const/16 v7, 0x9

    if-le v4, v7, :cond_d

    const/16 v4, 0x9

    :cond_d
    new-array v7, v4, [B

    iput-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_subAddr:[B

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v4, :cond_1

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_subAddr:[B

    invoke-direct {p0, v6, v10}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v8

    and-int/lit8 v8, v8, 0x7f

    int-to-byte v8, v8

    aput-byte v8, v7, v1

    add-int/lit8 v6, v6, 0x8

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :pswitch_3
    invoke-direct {p0, v6, v11, v4}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStreamIntoBytes(III)[B

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_subAddr:[B

    shl-int/lit8 v7, v4, 0x2

    add-int/2addr v6, v7

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x35 -> :sswitch_0
        0x50 -> :sswitch_1
        0x51 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private decodeTransportParamTeleserviceId()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    sub-int/2addr v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const-string v0, "CDMA"

    const-string v1, "DecodeSMS parm-id size"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    add-int/lit8 v2, v2, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_teleserviceCategory:I

    return-void
.end method

.method private decodeTransportParameter(B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    packed-switch p1, :pswitch_data_0

    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DecodeSMS unknown parms : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :pswitch_0
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTransportParamTeleserviceId()V

    :goto_0
    return-void

    :pswitch_1
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTransportParamServiceCategory()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTransportParamOrigAddress()V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTransportParamSubAddress()V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTransportParamDestAddress()V

    goto :goto_0

    :pswitch_5
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTransportParamSubAddress()V

    goto :goto_0

    :pswitch_6
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTransportParamBearerReplyOption()V

    goto :goto_0

    :pswitch_7
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTransportParamCauseCodes()V

    goto :goto_0

    :pswitch_8
    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    iput v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex_bearerData:I

    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    iput v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd_bearerData:I

    goto :goto_0

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
    .end packed-switch
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

.method private existInGivenList(I[I)Z
    .locals 5

    move-object v0, p2

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget v3, v0, v1

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

.method private extendArray([B)[B
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_0

    const/4 v1, 0x1

    new-array v0, v1, [B

    :goto_0
    return-object v0

    :cond_0
    array-length v1, p1

    add-int/lit8 v1, v1, 0x1

    new-array v0, v1, [B

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method private extendArray([S)[S
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_0

    const/4 v1, 0x1

    new-array v0, v1, [S

    :goto_0
    return-object v0

    :cond_0
    array-length v1, p1

    add-int/lit8 v1, v1, 0x1

    new-array v0, v1, [S

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method private extendArray([[B)[[B
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_0

    const/4 v1, 0x1

    new-array v0, v1, [[B

    :goto_0
    return-object v0

    :cond_0
    array-length v1, p1

    add-int/lit8 v1, v1, 0x1

    new-array v0, v1, [[B

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method private isFieldExistedInMessage(Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;B)Z
    .locals 3

    sget-object v1, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$1;->$SwitchMap$com$android$internal$telephony$cdma$CdmaSmsDecoder$messageLayer:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParameters:[Z

    :goto_1
    aget-boolean v1, v0, p2

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParameters:[Z

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private translateAddrNumberType(ZB)Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;
    .locals 2

    sget-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;->TYPE_RESERVED:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;->TYPE_UNKNOWN_DATA_NETWORK:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;->TYPE_INTERNET_PROTOCOL:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;->TYPE_INTERNET_EMAIL_ADDRESS:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    goto :goto_0

    :cond_0
    packed-switch p2, :pswitch_data_1

    :pswitch_3
    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;->TYPE_UNKNOWN:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    goto :goto_0

    :pswitch_5
    sget-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;->TYPE_INTERNATIONAL:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    goto :goto_0

    :pswitch_6
    sget-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;->TYPE_NATIONAL:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    goto :goto_0

    :pswitch_7
    sget-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;->TYPE_NETWORK_SPECIFIC:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    goto :goto_0

    :pswitch_8
    sget-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;->TYPE_SUBSCRIBER:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    goto :goto_0

    :pswitch_9
    sget-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;->TYPE_ABBREVIATED:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_3
        :pswitch_9
    .end packed-switch
.end method


# virtual methods
.method public absoluteValidatyPeriodInMilliSeconds()J
    .locals 8

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_absoluteValidity:[S

    const/4 v2, 0x0

    aget-short v1, v1, v2

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_absoluteValidity:[S

    const/4 v3, 0x1

    aget-short v2, v2, v3

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_absoluteValidity:[S

    const/4 v4, 0x2

    aget-short v3, v3, v4

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_absoluteValidity:[S

    const/4 v5, 0x3

    aget-short v4, v4, v5

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_absoluteValidity:[S

    const/4 v6, 0x4

    aget-short v5, v5, v6

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_absoluteValidity:[S

    const/4 v7, 0x5

    aget-short v6, v6, v7

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    return-wide v1
.end method

.method public causeCode()I
    .locals 1

    iget-byte v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_causeDetail:B

    return v0
.end method

.method public decodePdu()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTransport()V

    return-void
.end method

.method public errorClass()I
    .locals 1

    iget-byte v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_errorClass:B

    return v0
.end method

.method public getBearerData()[B
    .locals 5

    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd_bearerData:I

    iget v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex_bearerData:I

    sub-int v1, v2, v3

    new-array v0, v1, [B

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex_bearerData:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public getDateOfReport()J
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDestinationAddress()Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;->TRANSPORT:Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;

    const/4 v2, 0x4

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->isFieldExistedInMessage(Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;B)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_destAddr:[B

    if-eqz v1, :cond_0

    new-instance v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;-><init>()V

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_destAddr:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    iput-object v1, v0, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_destAddr:[B

    iput-object v1, v0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    goto :goto_0
.end method

.method public getMessageBody()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->retrieveBodyAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessageClass()Landroid/telephony/SmsMessage$MessageClass;
    .locals 2

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->isMessageDisplayModeSet()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->messageDisplayMode()B

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/telephony/SmsMessage$MessageClass;->CLASS_0:Landroid/telephony/SmsMessage$MessageClass;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/telephony/SmsMessage$MessageClass;->CLASS_2:Landroid/telephony/SmsMessage$MessageClass;

    goto :goto_0
.end method

.method public getNumberOfVoiceMail()I
    .locals 2

    sget-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;->TELESERVICE:Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;

    const/16 v1, 0xb

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->isFieldExistedInMessage(Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;B)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-byte v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_voiceMailsInServer:B

    goto :goto_0
.end method

.method public getNumberTypeValue(Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;)B
    .locals 5

    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    sget-object v3, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$1;->$SwitchMap$com$android$internal$telephony$cdma$CdmaSmsIdValue$AddrNumberType:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    move v0, v1

    goto :goto_0

    :pswitch_2
    move v0, v2

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x4

    goto :goto_0

    :pswitch_5
    const/4 v0, 0x6

    goto :goto_0

    :pswitch_6
    move v0, v1

    goto :goto_0

    :pswitch_7
    move v0, v2

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_7
    .end packed-switch
.end method

.method public getOriginatingAddress()Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;->TRANSPORT:Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->isFieldExistedInMessage(Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;B)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_fromAddr:[B

    if-eqz v1, :cond_0

    new-instance v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;-><init>()V

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_fromAddr:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    iput-object v1, v0, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_fromAddr:[B

    iput-object v1, v0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    iget-byte v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_fromAddrDigitMode:B

    iput v1, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    iget-byte v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_fromAddrNumberMode:B

    iput v1, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_fromAddrType:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->getNumberTypeValue(Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;)B

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/SmsAddress;->ton:I

    iget-byte v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_fromAddrPlan:B

    iput v1, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_fromAddrNumberOfDigits:I

    iput v1, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    goto :goto_0
.end method

.method public getProtocolIdentifier()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPseudoSubject()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getServiceCenterAddress()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getTimestampMillis()J
    .locals 3

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->isMessageCenterTimeSet()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->messageCenterTimeInMilliSeconds()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->isAbsoluteValidatyPeriodSet()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->absoluteValidatyPeriodInMilliSeconds()J

    move-result-wide v0

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getToaOfOriginatingAddress()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getToaOfScAddress()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getUserData()[B
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    return-object v0
.end method

.method public isAbsoluteValidatyPeriodSet()Z
    .locals 2

    sget-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;->TELESERVICE:Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->isFieldExistedInMessage(Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;B)Z

    move-result v0

    return v0
.end method

.method public isCallbackNumberSet()Z
    .locals 2

    sget-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;->TELESERVICE:Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;

    const/16 v1, 0xe

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->isFieldExistedInMessage(Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;B)Z

    move-result v0

    return v0
.end method

.method public isMessageCenterTimeSet()Z
    .locals 2

    sget-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;->TELESERVICE:Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->isFieldExistedInMessage(Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;B)Z

    move-result v0

    return v0
.end method

.method public isMessageDisplayModeSet()Z
    .locals 2

    sget-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;->TELESERVICE:Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;

    const/16 v1, 0xf

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->isFieldExistedInMessage(Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;B)Z

    move-result v0

    return v0
.end method

.method public isReplyPathPresent()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->isCallbackNumberSet()Z

    move-result v0

    return v0
.end method

.method public isUnsupportedMessage()Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->retrieveBodyEncoding()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public messageCenterTimeInMilliSeconds()J
    .locals 8

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_messageCenterTimeStamp:[S

    const/4 v2, 0x0

    aget-short v1, v1, v2

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_messageCenterTimeStamp:[S

    const/4 v3, 0x1

    aget-short v2, v2, v3

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_messageCenterTimeStamp:[S

    const/4 v4, 0x2

    aget-short v3, v3, v4

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_messageCenterTimeStamp:[S

    const/4 v5, 0x3

    aget-short v4, v4, v5

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_messageCenterTimeStamp:[S

    const/4 v6, 0x4

    aget-short v5, v5, v6

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_messageCenterTimeStamp:[S

    const/4 v7, 0x5

    aget-short v6, v6, v7

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    return-wide v1
.end method

.method public messageDisplayMode()B
    .locals 1

    iget-byte v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_displayMode:B

    return v0
.end method

.method public messageType()I
    .locals 1

    iget-byte v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportMsgType:B

    return v0
.end method

.method public replyOptionSeq()I
    .locals 1

    iget-byte v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_replySeqNumber:B

    return v0
.end method

.method public retrieveBody()[B
    .locals 2

    sget-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;->TELESERVICE:Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->isFieldExistedInMessage(Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;B)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_userData:[B

    if-nez v0, :cond_1

    const/4 v0, 0x0

    new-array v0, v0, [B

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_userData:[B

    goto :goto_0
.end method

.method public retrieveBodyAsString()Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->retrieveBodyEncoding()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :goto_0
    :pswitch_0
    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/String;

    const-string v3, ""

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :cond_0
    return-object v0

    :pswitch_1
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_userData:[B

    array-length v3, v3

    shr-int/lit8 v3, v3, 0x1

    new-array v2, v3, [C

    const/4 v1, 0x0

    :goto_1
    array-length v3, v2

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_userData:[B

    shl-int/lit8 v4, v1, 0x1

    aget-byte v3, v3, v4

    shl-int/lit8 v3, v3, 0x8

    const v4, 0xff00

    and-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_userData:[B

    shl-int/lit8 v5, v1, 0x1

    add-int/lit8 v5, v5, 0x1

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    int-to-char v3, v3

    aput-char v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_userData:[B

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public retrieveBodyEncoding()I
    .locals 4

    const/4 v1, 0x0

    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;->TELESERVICE:Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->isFieldExistedInMessage(Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;B)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_userData:[B

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    iget-byte v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_userDataEncoding:B

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    const/4 v0, 0x1

    :cond_2
    :goto_1
    if-eqz v0, :cond_5

    const/4 v1, 0x3

    goto :goto_0

    :cond_3
    iget-short v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_userDataEncodingExtended:S

    if-ltz v1, :cond_2

    iget-short v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_userDataEncodingExtended:S

    and-int/lit16 v1, v1, 0xbc

    const/16 v2, 0x18

    if-eq v1, v2, :cond_4

    iget-short v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_userDataEncodingExtended:S

    and-int/lit16 v1, v1, 0xf0

    const/16 v2, 0xe0

    if-ne v1, v2, :cond_2

    :cond_4
    const/4 v0, 0x1

    goto :goto_1

    :cond_5
    const/4 v1, 0x5

    goto :goto_0
.end method

.method public retrieveUserDataHeader()[B
    .locals 2

    sget-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;->TELESERVICE:Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->isFieldExistedInMessage(Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;B)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_userDataHeader:[B

    goto :goto_0
.end method

.method public teleserviceCategory()I
    .locals 2

    const/4 v0, 0x0

    sget-object v1, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;->TRANSPORT:Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->isFieldExistedInMessage(Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;B)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_teleserviceCategory:I

    goto :goto_0
.end method
