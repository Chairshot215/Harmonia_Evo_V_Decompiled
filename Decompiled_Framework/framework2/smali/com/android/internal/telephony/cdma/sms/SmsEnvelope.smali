.class public final Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
.super Ljava/lang/Object;
.source "SmsEnvelope.java"


# static fields
.field public static final MESSAGE_TYPE_ACKNOWLEDGE:I = 0x2

.field public static final MESSAGE_TYPE_BROADCAST:I = 0x1

.field public static final MESSAGE_TYPE_POINT_TO_POINT:I = 0x0

.field public static final SERVICECATEGORY_CMAS_AMBER:I = 0x1003

.field public static final SERVICECATEGORY_CMAS_EXTREME:I = 0x1001

.field public static final SERVICECATEGORY_CMAS_PRESIDENTIAL:I = 0x1000

.field public static final SERVICECATEGORY_CMAS_SEVERE:I = 0x1002

.field public static final SERVICECATEGORY_CMAS_TEST:I = 0x1004

.field public static final SERVICECATEGORY_EMERGENCY:I = 0x1

.field public static final SERVICECATEGORY_KDDI_DISASTER_INFORMATION:I = 0x26

.field public static final SERVICECATEGORY_KDDI_EARTHQUAKE_DUMMY:I = 0x22

.field public static final SERVICECATEGORY_KDDI_EARTHQUAKE_EARLY_WARNING:I = 0x21

.field public static final SERVICECATEGORY_KDDI_MAKER_TEST_DISASTER_INFORMATION:I = 0x8026

.field public static final SERVICECATEGORY_KDDI_MAKER_TEST_EARTHQUAKE_ALERT:I = 0x8001

.field public static final SERVICECATEGORY_KDDI_MAKER_TEST_EARTHQUAKE_DUMMY:I = 0x8022

.field public static final SERVICECATEGORY_KDDI_MAKER_TEST_EARTHQUAKE_EARLY_WARNING:I = 0x8021

.field public static final SERVICECATEGORY_KDDI_TEST_DISASTER_INFORMATION:I = 0xc026

.field public static final SERVICECATEGORY_KDDI_TEST_EARTHQUAKE_ALERT:I = 0xc001

.field public static final SERVICECATEGORY_KDDI_TEST_EARTHQUAKE_DUMMY:I = 0xc022

.field public static final SERVICECATEGORY_KDDI_TEST_EARTHQUAKE_EARLY_WARNING:I = 0xc021

.field public static final SERVICECATEGORY_UNKNOWN:I = 0x0

.field public static final SMS_BEARER_DATA_MAX:I = 0xff

.field public static final TELESERVICE_CT_DM_WAP:I = 0xfdf1

.field public static final TELESERVICE_CT_WAP:I = 0xfdea

.field public static final TELESERVICE_MWI:I = 0x40000

.field public static final TELESERVICE_NOT_SET:I = 0x0

.field public static final TELESERVICE_VMN:I = 0x1003

.field public static final TELESERVICE_WAP:I = 0x1004

.field public static final TELESERVICE_WEMT:I = 0x1005

.field public static final TELESERVICE_WMT:I = 0x1002

.field public static final TELESERVICE_WPT:I = 0x1001


# instance fields
.field public bearerData:[B

.field public bearerReply:I

.field public causeCode:B

.field public destAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

.field public errorClass:B

.field public isServicePresented:Z

.field public messageType:I

.field public origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

.field public origSubaddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

.field public replySeqNo:B

.field public serviceCategory:I

.field public teleService:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    iput v0, p0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    return-void
.end method
