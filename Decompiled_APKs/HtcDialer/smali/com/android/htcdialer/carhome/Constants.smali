.class public Lcom/android/htcdialer/carhome/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htcdialer/carhome/Constants$DATA;,
        Lcom/android/htcdialer/carhome/Constants$UI;
    }
.end annotation


# static fields
.field public static final CONTACT_SORT_TYPE_NAME:I = 0x0

.field public static final CONTACT_SORT_TYPE_NUMBER:I = 0x1

.field public static final DEFAULT_PID:I = -0x2

.field public static final DEFAULT_VOICEMAIL_PID:I = -0x3

.field public static final DISPLAY_MODE_FAVORITE:J = 0x0L

.field public static final DISPLAY_MODE_RECENT_CALLS:J = 0x1L

.field public static final INTENT_TYPE_DISPLAY_MODE:Ljava/lang/String; = "display_mode"

.field public static final KEY_SELECT_CONTACT:Ljava/lang/String; = "select_contact"

.field public static final KEY_SELECT_CONTACT_ACTION:Ljava/lang/String; = "contact_action"

.field public static final KEY_SELECT_CONTACT_ID:Ljava/lang/String; = "contact_id"

.field public static final KEY_SELECT_CONTACT_NAME:Ljava/lang/String; = "contact_name"

.field public static final KEY_SELECT_GROUP_NAME:Ljava/lang/String; = "group_name"

.field public static actionType_mail:Ljava/lang/String;

.field public static actionType_phone_assistant:Ljava/lang/String;

.field public static actionType_phone_car:Ljava/lang/String;

.field public static actionType_phone_home:Ljava/lang/String;

.field public static actionType_phone_mobile:Ljava/lang/String;

.field public static actionType_phone_pager:Ljava/lang/String;

.field public static actionType_phone_radio:Ljava/lang/String;

.field public static actionType_phone_work:Ljava/lang/String;

.field public static actionType_sms:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-string v0, "PhoneMobile"

    sput-object v0, Lcom/android/htcdialer/carhome/Constants;->actionType_phone_mobile:Ljava/lang/String;

    .line 11
    const-string v0, "PhoneWork"

    sput-object v0, Lcom/android/htcdialer/carhome/Constants;->actionType_phone_work:Ljava/lang/String;

    .line 12
    const-string v0, "PhoneHome"

    sput-object v0, Lcom/android/htcdialer/carhome/Constants;->actionType_phone_home:Ljava/lang/String;

    .line 13
    const-string v0, "PhonePager"

    sput-object v0, Lcom/android/htcdialer/carhome/Constants;->actionType_phone_pager:Ljava/lang/String;

    .line 14
    const-string v0, "PhoneAssistant"

    sput-object v0, Lcom/android/htcdialer/carhome/Constants;->actionType_phone_assistant:Ljava/lang/String;

    .line 15
    const-string v0, "ExchangePhoneCar"

    sput-object v0, Lcom/android/htcdialer/carhome/Constants;->actionType_phone_car:Ljava/lang/String;

    .line 16
    const-string v0, "ExchangePhoneRadio"

    sput-object v0, Lcom/android/htcdialer/carhome/Constants;->actionType_phone_radio:Ljava/lang/String;

    .line 17
    const-string v0, "SMS"

    sput-object v0, Lcom/android/htcdialer/carhome/Constants;->actionType_sms:Ljava/lang/String;

    .line 18
    const-string v0, "Mail"

    sput-object v0, Lcom/android/htcdialer/carhome/Constants;->actionType_mail:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method
