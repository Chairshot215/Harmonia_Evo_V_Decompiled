.class public final enum Landroid/provider/Checkin$Events$Tag;
.super Ljava/lang/Enum;
.source "Checkin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Checkin$Events;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Tag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/provider/Checkin$Events$Tag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/provider/Checkin$Events$Tag;

.field public static final enum APANIC_CONSOLE:Landroid/provider/Checkin$Events$Tag;

.field public static final enum APANIC_THREADS:Landroid/provider/Checkin$Events$Tag;

.field public static final enum AUTOTEST_FAILURE:Landroid/provider/Checkin$Events$Tag;

.field public static final enum AUTOTEST_SEQUENCE_BEGIN:Landroid/provider/Checkin$Events$Tag;

.field public static final enum AUTOTEST_SUITE_BEGIN:Landroid/provider/Checkin$Events$Tag;

.field public static final enum AUTOTEST_TCPDUMP_BEGIN:Landroid/provider/Checkin$Events$Tag;

.field public static final enum AUTOTEST_TCPDUMP_DATA:Landroid/provider/Checkin$Events$Tag;

.field public static final enum AUTOTEST_TCPDUMP_END:Landroid/provider/Checkin$Events$Tag;

.field public static final enum AUTOTEST_TEST_BEGIN:Landroid/provider/Checkin$Events$Tag;

.field public static final enum AUTOTEST_TEST_FAILURE:Landroid/provider/Checkin$Events$Tag;

.field public static final enum AUTOTEST_TEST_SUCCESS:Landroid/provider/Checkin$Events$Tag;

.field public static final enum BATTERY_DISCHARGE_INFO:Landroid/provider/Checkin$Events$Tag;

.field public static final enum BROWSER_BUG_REPORT:Landroid/provider/Checkin$Events$Tag;

.field public static final enum CARRIER_BUG_REPORT:Landroid/provider/Checkin$Events$Tag;

.field public static final enum CHECKIN_FAILURE:Landroid/provider/Checkin$Events$Tag;

.field public static final enum CHECKIN_SUCCESS:Landroid/provider/Checkin$Events$Tag;

.field public static final enum CPUFREQ_STATS:Landroid/provider/Checkin$Events$Tag;

.field public static final enum FOTA_BEGIN:Landroid/provider/Checkin$Events$Tag;

.field public static final enum FOTA_FAILURE:Landroid/provider/Checkin$Events$Tag;

.field public static final enum FOTA_INSTALL:Landroid/provider/Checkin$Events$Tag;

.field public static final enum FOTA_PROMPT:Landroid/provider/Checkin$Events$Tag;

.field public static final enum FOTA_PROMPT_ACCEPT:Landroid/provider/Checkin$Events$Tag;

.field public static final enum FOTA_PROMPT_REJECT:Landroid/provider/Checkin$Events$Tag;

.field public static final enum FOTA_PROMPT_SKIPPED:Landroid/provider/Checkin$Events$Tag;

.field public static final enum GSERVICES_ERROR:Landroid/provider/Checkin$Events$Tag;

.field public static final enum GSERVICES_UPDATE:Landroid/provider/Checkin$Events$Tag;

.field public static final enum LOGIN_SERVICE_ACCOUNT_SAVED:Landroid/provider/Checkin$Events$Tag;

.field public static final enum LOGIN_SERVICE_ACCOUNT_TRIED:Landroid/provider/Checkin$Events$Tag;

.field public static final enum LOGIN_SERVICE_AUTHENTICATE:Landroid/provider/Checkin$Events$Tag;

.field public static final enum LOGIN_SERVICE_CAPTCHA_ANSWERED:Landroid/provider/Checkin$Events$Tag;

.field public static final enum LOGIN_SERVICE_CAPTCHA_SHOWN:Landroid/provider/Checkin$Events$Tag;

.field public static final enum LOGIN_SERVICE_PASSWORD_ENTERED:Landroid/provider/Checkin$Events$Tag;

.field public static final enum LOGIN_SERVICE_SWITCH_GOOGLE_MAIL:Landroid/provider/Checkin$Events$Tag;

.field public static final enum MARKET_DOWNLOAD:Landroid/provider/Checkin$Events$Tag;

.field public static final enum MARKET_INSTALL:Landroid/provider/Checkin$Events$Tag;

.field public static final enum MARKET_REFUND:Landroid/provider/Checkin$Events$Tag;

.field public static final enum MARKET_REMOVE:Landroid/provider/Checkin$Events$Tag;

.field public static final enum MARKET_UNINSTALL:Landroid/provider/Checkin$Events$Tag;

.field public static final enum NETWORK_DOWN:Landroid/provider/Checkin$Events$Tag;

.field public static final enum NETWORK_UP:Landroid/provider/Checkin$Events$Tag;

.field public static final enum PHONE_UI:Landroid/provider/Checkin$Events$Tag;

.field public static final enum RADIO_BUG_REPORT:Landroid/provider/Checkin$Events$Tag;

.field public static final enum SETUP_COMPLETED:Landroid/provider/Checkin$Events$Tag;

.field public static final enum SETUP_INITIATED:Landroid/provider/Checkin$Events$Tag;

.field public static final enum SETUP_IO_ERROR:Landroid/provider/Checkin$Events$Tag;

.field public static final enum SETUP_NETWORK_ERROR:Landroid/provider/Checkin$Events$Tag;

.field public static final enum SETUP_NO_DATA_NETWORK:Landroid/provider/Checkin$Events$Tag;

.field public static final enum SETUP_REQUIRED_CAPTCHA:Landroid/provider/Checkin$Events$Tag;

.field public static final enum SETUP_RETRIES_EXHAUSTED:Landroid/provider/Checkin$Events$Tag;

.field public static final enum SETUP_SERVER_ERROR:Landroid/provider/Checkin$Events$Tag;

.field public static final enum SETUP_SERVER_TIMEOUT:Landroid/provider/Checkin$Events$Tag;

.field public static final enum SYSTEM_BOOT:Landroid/provider/Checkin$Events$Tag;

.field public static final enum SYSTEM_LAST_KMSG:Landroid/provider/Checkin$Events$Tag;

.field public static final enum SYSTEM_RECOVERY_LOG:Landroid/provider/Checkin$Events$Tag;

.field public static final enum SYSTEM_RESTART:Landroid/provider/Checkin$Events$Tag;

.field public static final enum SYSTEM_SERVICE_LOOPING:Landroid/provider/Checkin$Events$Tag;

.field public static final enum SYSTEM_TOMBSTONE:Landroid/provider/Checkin$Events$Tag;

.field public static final enum TEST:Landroid/provider/Checkin$Events$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Landroid/provider/Checkin$Events$Tag;

    const-string v1, "APANIC_CONSOLE"

    invoke-direct {v0, v1, v3}, Landroid/provider/Checkin$Events$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/provider/Checkin$Events$Tag;->APANIC_CONSOLE:Landroid/provider/Checkin$Events$Tag;

    new-instance v0, Landroid/provider/Checkin$Events$Tag;

    const-string v1, "APANIC_THREADS"

    invoke-direct {v0, v1, v4}, Landroid/provider/Checkin$Events$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/provider/Checkin$Events$Tag;->APANIC_THREADS:Landroid/provider/Checkin$Events$Tag;

    new-instance v0, Landroid/provider/Checkin$Events$Tag;

    const-string v1, "AUTOTEST_FAILURE"

    invoke-direct {v0, v1, v5}, Landroid/provider/Checkin$Events$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/provider/Checkin$Events$Tag;->AUTOTEST_FAILURE:Landroid/provider/Checkin$Events$Tag;

    new-instance v0, Landroid/provider/Checkin$Events$Tag;

    const-string v1, "AUTOTEST_SEQUENCE_BEGIN"

    invoke-direct {v0, v1, v6}, Landroid/provider/Checkin$Events$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/provider/Checkin$Events$Tag;->AUTOTEST_SEQUENCE_BEGIN:Landroid/provider/Checkin$Events$Tag;

    new-instance v0, Landroid/provider/Checkin$Events$Tag;

    const-string v1, "AUTOTEST_SUITE_BEGIN"

    invoke-direct {v0, v1, v7}, Landroid/provider/Checkin$Events$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/provider/Checkin$Events$Tag;->AUTOTEST_SUITE_BEGIN:Landroid/provider/Checkin$Events$Tag;

    new-instance v0, Landroid/provider/Checkin$Events$Tag;

    const-string v1, "AUTOTEST_TCPDUMP_BEGIN"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/provider/Checkin$Events$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/provider/Checkin$Events$Tag;->AUTOTEST_TCPDUMP_BEGIN:Landroid/provider/Checkin$Events$Tag;

    new-instance v0, Landroid/provider/Checkin$Events$Tag;

    const-string v1, "AUTOTEST_TCPDUMP_DATA"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Landroid/provider/Checkin$Events$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/provider/Checkin$Events$Tag;->AUTOTEST_TCPDUMP_DATA:Landroid/provider/Checkin$Events$Tag;

    new-instance v0, Landroid/provider/Checkin$Events$Tag;

    const-string v1, "AUTOTEST_TCPDUMP_END"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Landroid/provider/Checkin$Events$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/provider/Checkin$Events$Tag;->AUTOTEST_TCPDUMP_END:Landroid/provider/Checkin$Events$Tag;

    new-instance v0, Landroid/provider/Checkin$Events$Tag;

    const-string v1, "AUTOTEST_TEST_BEGIN"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Landroid/provider/Checkin$Events$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/provider/Checkin$Events$Tag;->AUTOTEST_TEST_BEGIN:Landroid/provider/Checkin$Events$Tag;

    new-instance v0, Landroid/provider/Checkin$Events$Tag;

    const-string v1, "AUTOTEST_TEST_FAILURE"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Landroid/provider/Checkin$Events$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/provider/Checkin$Events$Tag;->AUTOTEST_TEST_FAILURE:Landroid/provider/Checkin$Events$Tag;

    new-instance v0, Landroid/provider/Checkin$Events$Tag;

    const-string v1, "AUTOTEST_TEST_SUCCESS"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/provider/Checkin$Events$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/provider/Checkin$Events$Tag;->AUTOTEST_TEST_SUCCESS:Landroid/provider/Checkin$Events$Tag;

    new-instance v0, Landroid/provider/Checkin$Events$Tag;

    const-string v1, "BROWSER_BUG_REPORT"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Landroid/provider/Checkin$Events$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/provider/Checkin$Events$Tag;->BROWSER_BUG_REPORT:Landroid/provider/Checkin$Events$Tag;

    new-instance v0, Landroid/provider/Checkin$Events$Tag;

    const-string v1, "CARRIER_BUG_REPORT"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Landroid/provider/Checkin$Events$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/provider/Checkin$Events$Tag;->CARRIER_BUG_REPORT:Landroid/provider/Checkin$Events$Tag;

    new-instance v0, Landroid/provider/Checkin$Events$Tag;

    const-string v1, "CHECKIN_FAILURE"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Landroid/provider/Checkin$Events$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/provider/Checkin$Events$Tag;->CHECKIN_FAILURE:Landroid/provider/Checkin$Events$Tag;

    new-instance v0, Landroid/provider/Checkin$Events$Tag;

    const-string v1, "CHECKIN_SUCCESS"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Landroid/provider/Checkin$Events$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/provider/Checkin$Events$Tag;->CHECKIN_SUCCESS:Landroid/provider/Checkin$Events$Tag;

    new-instance v0, Landroid/provider/Checkin$Events$Tag;

    const-string v1, "CPUFREQ_STATS"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Landroid/provider/Checkin$Events$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/provider/Checkin$Events$Tag;->CPUFREQ_STATS:Landroid/provider/Checkin$Events$Tag;

    new-instance v0, Landroid/provider/Checkin$Events$Tag;

    const-string v1, "FOTA_BEGIN"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Landroid/provider/Checkin$Events$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/provider/Checkin$Events$Tag;->FOTA_BEGIN:Landroid/provider/Checkin$Events$Tag;

    new-instance v0, Landroid/provider/Checkin$Events$Tag;

    const-string v1, "FOTA_FAILURE"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Landroid/provider/Checkin$Events$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/provider/Checkin$Events$Tag;->FOTA_FAILURE:Landroid/provider/Checkin$Events$Tag;

    new-instance v0, Landroid/provider/Checkin$Events$Tag;

    const-string v1, "FOTA_INSTALL"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Landroid/provider/Checkin$Events$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/provider/Checkin$Events$Tag;->FOTA_INSTALL:Landroid/provider/Checkin$Events$Tag;

    new-instance v0, Landroid/provider/Checkin$Events$Tag;

    const-string v1, "FOTA_PROMPT"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Landroid/provider/Checkin$Events$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/provider/Checkin$Events$Tag;->FOTA_PROMPT:Landroid/provider/Checkin$Events$Tag;

    new-instance v0, Landroid/provider/Checkin$Events$Tag;

    const-string v1, "FOTA_PROMPT_ACCEPT"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Landroid/provider/Checkin$Events$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/provider/Checkin$Events$Tag;->FOTA_PROMPT_ACCEPT:Landroid/provider/Checkin$Events$Tag;

    new-instance v0, Landroid/provider/Checkin$Events$Tag;

    const-string v1, "FOTA_PROMPT_REJECT"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Landroid/provider/Checkin$Events$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/provider/Checkin$Events$Tag;->FOTA_PROMPT_REJECT:Landroid/provider/Checkin$Events$Tag;

    new-instance v0, Landroid/provider/Checkin$Events$Tag;

    const-string v1, "FOTA_PROMPT_SKIPPED"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Landroid/provider/Checkin$Events$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/provider/Checkin$Events$Tag;->FOTA_PROMPT_SKIPPED:Landroid/provider/Checkin$Events$Tag;

    new-instance v0, Landroid/provider/Checkin$Events$Tag;

    const-string v1, "GSERVICES_ERROR"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Landroid/provider/Checkin$Events$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/provider/Checkin$Events$Tag;->GSERVICES_ERROR:Landroid/provider/Checkin$Events$Tag;

    new-instance v0, Landroid/provider/Checkin$Events$Tag;

    const-string v1, "GSERVICES_UPDATE"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Landroid/provider/Checkin$Events$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/provider/Checkin$Events$Tag;->GSERVICES_UPDATE:Landroid/provider/Checkin$Events$Tag;

    new-instance v0, Landroid/provider/Checkin$Events$Tag;

    const-string v1, "LOGIN_SERVICE_ACCOUNT_TRIED"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Landroid/provider/Checkin$Events$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/provider/Checkin$Events$Tag;->LOGIN_SERVICE_ACCOUNT_TRIED:Landroid/provider/Checkin$Events$Tag;

    new-instance v0, Landroid/provider/Checkin$Events$Tag;

    const-string v1, "LOGIN_SERVICE_ACCOUNT_SAVED"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, Landroid/provider/Checkin$Events$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/provider/Checkin$Events$Tag;->LOGIN_SERVICE_ACCOUNT_SAVED:Landroid/provider/Checkin$Events$Tag;

    new-instance v0, Landroid/provider/Checkin$Events$Tag;

    const-string v1, "LOGIN_SERVICE_AUTHENTICATE"

    const/16 v2, 0x1b

    invoke-direct {v0, v1, v2}, Landroid/provider/Checkin$Events$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/provider/Checkin$Events$Tag;->LOGIN_SERVICE_AUTHENTICATE:Landroid/provider/Checkin$Events$Tag;

    new-instance v0, Landroid/provider/Checkin$Events$Tag;

    const-string v1, "LOGIN_SERVICE_CAPTCHA_ANSWERED"

    const/16 v2, 0x1c

    invoke-direct {v0, v1, v2}, Landroid/provider/Checkin$Events$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/provider/Checkin$Events$Tag;->LOGIN_SERVICE_CAPTCHA_ANSWERED:Landroid/provider/Checkin$Events$Tag;

    new-instance v0, Landroid/provider/Checkin$Events$Tag;

    const-string v1, "LOGIN_SERVICE_CAPTCHA_SHOWN"

    const/16 v2, 0x1d

    invoke-direct {v0, v1, v2}, Landroid/provider/Checkin$Events$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/provider/Checkin$Events$Tag;->LOGIN_SERVICE_CAPTCHA_SHOWN:Landroid/provider/Checkin$Events$Tag;

    new-instance v0, Landroid/provider/Checkin$Events$Tag;

    const-string v1, "LOGIN_SERVICE_PASSWORD_ENTERED"

    const/16 v2, 0x1e

    invoke-direct {v0, v1, v2}, Landroid/provider/Checkin$Events$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/provider/Checkin$Events$Tag;->LOGIN_SERVICE_PASSWORD_ENTERED:Landroid/provider/Checkin$Events$Tag;

    new-instance v0, Landroid/provider/Checkin$Events$Tag;

    const-string v1, "LOGIN_SERVICE_SWITCH_GOOGLE_MAIL"

    const/16 v2, 0x1f

    invoke-direct {v0, v1, v2}, Landroid/provider/Checkin$Events$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/provider/Checkin$Events$Tag;->LOGIN_SERVICE_SWITCH_GOOGLE_MAIL:Landroid/provider/Checkin$Events$Tag;

    new-instance v0, Landroid/provider/Checkin$Events$Tag;

    const-string v1, "NETWORK_DOWN"

    const/16 v2, 0x20

    invoke-direct {v0, v1, v2}, Landroid/provider/Checkin$Events$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/provider/Checkin$Events$Tag;->NETWORK_DOWN:Landroid/provider/Checkin$Events$Tag;

    new-instance v0, Landroid/provider/Checkin$Events$Tag;

    const-string v1, "NETWORK_UP"

    const/16 v2, 0x21

    invoke-direct {v0, v1, v2}, Landroid/provider/Checkin$Events$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/provider/Checkin$Events$Tag;->NETWORK_UP:Landroid/provider/Checkin$Events$Tag;

    new-instance v0, Landroid/provider/Checkin$Events$Tag;

    const-string v1, "PHONE_UI"

    const/16 v2, 0x22

    invoke-direct {v0, v1, v2}, Landroid/provider/Checkin$Events$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/provider/Checkin$Events$Tag;->PHONE_UI:Landroid/provider/Checkin$Events$Tag;

    new-instance v0, Landroid/provider/Checkin$Events$Tag;

    const-string v1, "RADIO_BUG_REPORT"

    const/16 v2, 0x23

    invoke-direct {v0, v1, v2}, Landroid/provider/Checkin$Events$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/provider/Checkin$Events$Tag;->RADIO_BUG_REPORT:Landroid/provider/Checkin$Events$Tag;

    new-instance v0, Landroid/provider/Checkin$Events$Tag;

    const-string v1, "SETUP_COMPLETED"

    const/16 v2, 0x24

    invoke-direct {v0, v1, v2}, Landroid/provider/Checkin$Events$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/provider/Checkin$Events$Tag;->SETUP_COMPLETED:Landroid/provider/Checkin$Events$Tag;

    new-instance v0, Landroid/provider/Checkin$Events$Tag;

    const-string v1, "SETUP_INITIATED"

    const/16 v2, 0x25

    invoke-direct {v0, v1, v2}, Landroid/provider/Checkin$Events$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/provider/Checkin$Events$Tag;->SETUP_INITIATED:Landroid/provider/Checkin$Events$Tag;

    new-instance v0, Landroid/provider/Checkin$Events$Tag;

    const-string v1, "SETUP_IO_ERROR"

    const/16 v2, 0x26

    invoke-direct {v0, v1, v2}, Landroid/provider/Checkin$Events$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/provider/Checkin$Events$Tag;->SETUP_IO_ERROR:Landroid/provider/Checkin$Events$Tag;

    new-instance v0, Landroid/provider/Checkin$Events$Tag;

    const-string v1, "SETUP_NETWORK_ERROR"

    const/16 v2, 0x27

    invoke-direct {v0, v1, v2}, Landroid/provider/Checkin$Events$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/provider/Checkin$Events$Tag;->SETUP_NETWORK_ERROR:Landroid/provider/Checkin$Events$Tag;

    new-instance v0, Landroid/provider/Checkin$Events$Tag;

    const-string v1, "SETUP_REQUIRED_CAPTCHA"

    const/16 v2, 0x28

    invoke-direct {v0, v1, v2}, Landroid/provider/Checkin$Events$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/provider/Checkin$Events$Tag;->SETUP_REQUIRED_CAPTCHA:Landroid/provider/Checkin$Events$Tag;

    new-instance v0, Landroid/provider/Checkin$Events$Tag;

    const-string v1, "SETUP_RETRIES_EXHAUSTED"

    const/16 v2, 0x29

    invoke-direct {v0, v1, v2}, Landroid/provider/Checkin$Events$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/provider/Checkin$Events$Tag;->SETUP_RETRIES_EXHAUSTED:Landroid/provider/Checkin$Events$Tag;

    new-instance v0, Landroid/provider/Checkin$Events$Tag;

    const-string v1, "SETUP_SERVER_ERROR"

    const/16 v2, 0x2a

    invoke-direct {v0, v1, v2}, Landroid/provider/Checkin$Events$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/provider/Checkin$Events$Tag;->SETUP_SERVER_ERROR:Landroid/provider/Checkin$Events$Tag;

    new-instance v0, Landroid/provider/Checkin$Events$Tag;

    const-string v1, "SETUP_SERVER_TIMEOUT"

    const/16 v2, 0x2b

    invoke-direct {v0, v1, v2}, Landroid/provider/Checkin$Events$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/provider/Checkin$Events$Tag;->SETUP_SERVER_TIMEOUT:Landroid/provider/Checkin$Events$Tag;

    new-instance v0, Landroid/provider/Checkin$Events$Tag;

    const-string v1, "SETUP_NO_DATA_NETWORK"

    const/16 v2, 0x2c

    invoke-direct {v0, v1, v2}, Landroid/provider/Checkin$Events$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/provider/Checkin$Events$Tag;->SETUP_NO_DATA_NETWORK:Landroid/provider/Checkin$Events$Tag;

    new-instance v0, Landroid/provider/Checkin$Events$Tag;

    const-string v1, "SYSTEM_BOOT"

    const/16 v2, 0x2d

    invoke-direct {v0, v1, v2}, Landroid/provider/Checkin$Events$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/provider/Checkin$Events$Tag;->SYSTEM_BOOT:Landroid/provider/Checkin$Events$Tag;

    new-instance v0, Landroid/provider/Checkin$Events$Tag;

    const-string v1, "SYSTEM_LAST_KMSG"

    const/16 v2, 0x2e

    invoke-direct {v0, v1, v2}, Landroid/provider/Checkin$Events$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/provider/Checkin$Events$Tag;->SYSTEM_LAST_KMSG:Landroid/provider/Checkin$Events$Tag;

    new-instance v0, Landroid/provider/Checkin$Events$Tag;

    const-string v1, "SYSTEM_RECOVERY_LOG"

    const/16 v2, 0x2f

    invoke-direct {v0, v1, v2}, Landroid/provider/Checkin$Events$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/provider/Checkin$Events$Tag;->SYSTEM_RECOVERY_LOG:Landroid/provider/Checkin$Events$Tag;

    new-instance v0, Landroid/provider/Checkin$Events$Tag;

    const-string v1, "SYSTEM_RESTART"

    const/16 v2, 0x30

    invoke-direct {v0, v1, v2}, Landroid/provider/Checkin$Events$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/provider/Checkin$Events$Tag;->SYSTEM_RESTART:Landroid/provider/Checkin$Events$Tag;

    new-instance v0, Landroid/provider/Checkin$Events$Tag;

    const-string v1, "SYSTEM_SERVICE_LOOPING"

    const/16 v2, 0x31

    invoke-direct {v0, v1, v2}, Landroid/provider/Checkin$Events$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/provider/Checkin$Events$Tag;->SYSTEM_SERVICE_LOOPING:Landroid/provider/Checkin$Events$Tag;

    new-instance v0, Landroid/provider/Checkin$Events$Tag;

    const-string v1, "SYSTEM_TOMBSTONE"

    const/16 v2, 0x32

    invoke-direct {v0, v1, v2}, Landroid/provider/Checkin$Events$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/provider/Checkin$Events$Tag;->SYSTEM_TOMBSTONE:Landroid/provider/Checkin$Events$Tag;

    new-instance v0, Landroid/provider/Checkin$Events$Tag;

    const-string v1, "TEST"

    const/16 v2, 0x33

    invoke-direct {v0, v1, v2}, Landroid/provider/Checkin$Events$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/provider/Checkin$Events$Tag;->TEST:Landroid/provider/Checkin$Events$Tag;

    new-instance v0, Landroid/provider/Checkin$Events$Tag;

    const-string v1, "BATTERY_DISCHARGE_INFO"

    const/16 v2, 0x34

    invoke-direct {v0, v1, v2}, Landroid/provider/Checkin$Events$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/provider/Checkin$Events$Tag;->BATTERY_DISCHARGE_INFO:Landroid/provider/Checkin$Events$Tag;

    new-instance v0, Landroid/provider/Checkin$Events$Tag;

    const-string v1, "MARKET_DOWNLOAD"

    const/16 v2, 0x35

    invoke-direct {v0, v1, v2}, Landroid/provider/Checkin$Events$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/provider/Checkin$Events$Tag;->MARKET_DOWNLOAD:Landroid/provider/Checkin$Events$Tag;

    new-instance v0, Landroid/provider/Checkin$Events$Tag;

    const-string v1, "MARKET_INSTALL"

    const/16 v2, 0x36

    invoke-direct {v0, v1, v2}, Landroid/provider/Checkin$Events$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/provider/Checkin$Events$Tag;->MARKET_INSTALL:Landroid/provider/Checkin$Events$Tag;

    new-instance v0, Landroid/provider/Checkin$Events$Tag;

    const-string v1, "MARKET_REMOVE"

    const/16 v2, 0x37

    invoke-direct {v0, v1, v2}, Landroid/provider/Checkin$Events$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/provider/Checkin$Events$Tag;->MARKET_REMOVE:Landroid/provider/Checkin$Events$Tag;

    new-instance v0, Landroid/provider/Checkin$Events$Tag;

    const-string v1, "MARKET_REFUND"

    const/16 v2, 0x38

    invoke-direct {v0, v1, v2}, Landroid/provider/Checkin$Events$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/provider/Checkin$Events$Tag;->MARKET_REFUND:Landroid/provider/Checkin$Events$Tag;

    new-instance v0, Landroid/provider/Checkin$Events$Tag;

    const-string v1, "MARKET_UNINSTALL"

    const/16 v2, 0x39

    invoke-direct {v0, v1, v2}, Landroid/provider/Checkin$Events$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/provider/Checkin$Events$Tag;->MARKET_UNINSTALL:Landroid/provider/Checkin$Events$Tag;

    const/16 v0, 0x3a

    new-array v0, v0, [Landroid/provider/Checkin$Events$Tag;

    sget-object v1, Landroid/provider/Checkin$Events$Tag;->APANIC_CONSOLE:Landroid/provider/Checkin$Events$Tag;

    aput-object v1, v0, v3

    sget-object v1, Landroid/provider/Checkin$Events$Tag;->APANIC_THREADS:Landroid/provider/Checkin$Events$Tag;

    aput-object v1, v0, v4

    sget-object v1, Landroid/provider/Checkin$Events$Tag;->AUTOTEST_FAILURE:Landroid/provider/Checkin$Events$Tag;

    aput-object v1, v0, v5

    sget-object v1, Landroid/provider/Checkin$Events$Tag;->AUTOTEST_SEQUENCE_BEGIN:Landroid/provider/Checkin$Events$Tag;

    aput-object v1, v0, v6

    sget-object v1, Landroid/provider/Checkin$Events$Tag;->AUTOTEST_SUITE_BEGIN:Landroid/provider/Checkin$Events$Tag;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Landroid/provider/Checkin$Events$Tag;->AUTOTEST_TCPDUMP_BEGIN:Landroid/provider/Checkin$Events$Tag;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Landroid/provider/Checkin$Events$Tag;->AUTOTEST_TCPDUMP_DATA:Landroid/provider/Checkin$Events$Tag;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Landroid/provider/Checkin$Events$Tag;->AUTOTEST_TCPDUMP_END:Landroid/provider/Checkin$Events$Tag;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Landroid/provider/Checkin$Events$Tag;->AUTOTEST_TEST_BEGIN:Landroid/provider/Checkin$Events$Tag;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Landroid/provider/Checkin$Events$Tag;->AUTOTEST_TEST_FAILURE:Landroid/provider/Checkin$Events$Tag;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Landroid/provider/Checkin$Events$Tag;->AUTOTEST_TEST_SUCCESS:Landroid/provider/Checkin$Events$Tag;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Landroid/provider/Checkin$Events$Tag;->BROWSER_BUG_REPORT:Landroid/provider/Checkin$Events$Tag;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Landroid/provider/Checkin$Events$Tag;->CARRIER_BUG_REPORT:Landroid/provider/Checkin$Events$Tag;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Landroid/provider/Checkin$Events$Tag;->CHECKIN_FAILURE:Landroid/provider/Checkin$Events$Tag;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Landroid/provider/Checkin$Events$Tag;->CHECKIN_SUCCESS:Landroid/provider/Checkin$Events$Tag;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Landroid/provider/Checkin$Events$Tag;->CPUFREQ_STATS:Landroid/provider/Checkin$Events$Tag;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Landroid/provider/Checkin$Events$Tag;->FOTA_BEGIN:Landroid/provider/Checkin$Events$Tag;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Landroid/provider/Checkin$Events$Tag;->FOTA_FAILURE:Landroid/provider/Checkin$Events$Tag;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Landroid/provider/Checkin$Events$Tag;->FOTA_INSTALL:Landroid/provider/Checkin$Events$Tag;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Landroid/provider/Checkin$Events$Tag;->FOTA_PROMPT:Landroid/provider/Checkin$Events$Tag;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Landroid/provider/Checkin$Events$Tag;->FOTA_PROMPT_ACCEPT:Landroid/provider/Checkin$Events$Tag;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Landroid/provider/Checkin$Events$Tag;->FOTA_PROMPT_REJECT:Landroid/provider/Checkin$Events$Tag;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Landroid/provider/Checkin$Events$Tag;->FOTA_PROMPT_SKIPPED:Landroid/provider/Checkin$Events$Tag;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Landroid/provider/Checkin$Events$Tag;->GSERVICES_ERROR:Landroid/provider/Checkin$Events$Tag;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Landroid/provider/Checkin$Events$Tag;->GSERVICES_UPDATE:Landroid/provider/Checkin$Events$Tag;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Landroid/provider/Checkin$Events$Tag;->LOGIN_SERVICE_ACCOUNT_TRIED:Landroid/provider/Checkin$Events$Tag;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Landroid/provider/Checkin$Events$Tag;->LOGIN_SERVICE_ACCOUNT_SAVED:Landroid/provider/Checkin$Events$Tag;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Landroid/provider/Checkin$Events$Tag;->LOGIN_SERVICE_AUTHENTICATE:Landroid/provider/Checkin$Events$Tag;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Landroid/provider/Checkin$Events$Tag;->LOGIN_SERVICE_CAPTCHA_ANSWERED:Landroid/provider/Checkin$Events$Tag;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Landroid/provider/Checkin$Events$Tag;->LOGIN_SERVICE_CAPTCHA_SHOWN:Landroid/provider/Checkin$Events$Tag;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Landroid/provider/Checkin$Events$Tag;->LOGIN_SERVICE_PASSWORD_ENTERED:Landroid/provider/Checkin$Events$Tag;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Landroid/provider/Checkin$Events$Tag;->LOGIN_SERVICE_SWITCH_GOOGLE_MAIL:Landroid/provider/Checkin$Events$Tag;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Landroid/provider/Checkin$Events$Tag;->NETWORK_DOWN:Landroid/provider/Checkin$Events$Tag;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Landroid/provider/Checkin$Events$Tag;->NETWORK_UP:Landroid/provider/Checkin$Events$Tag;

    aput-object v2, v0, v1

    const/16 v1, 0x22

    sget-object v2, Landroid/provider/Checkin$Events$Tag;->PHONE_UI:Landroid/provider/Checkin$Events$Tag;

    aput-object v2, v0, v1

    const/16 v1, 0x23

    sget-object v2, Landroid/provider/Checkin$Events$Tag;->RADIO_BUG_REPORT:Landroid/provider/Checkin$Events$Tag;

    aput-object v2, v0, v1

    const/16 v1, 0x24

    sget-object v2, Landroid/provider/Checkin$Events$Tag;->SETUP_COMPLETED:Landroid/provider/Checkin$Events$Tag;

    aput-object v2, v0, v1

    const/16 v1, 0x25

    sget-object v2, Landroid/provider/Checkin$Events$Tag;->SETUP_INITIATED:Landroid/provider/Checkin$Events$Tag;

    aput-object v2, v0, v1

    const/16 v1, 0x26

    sget-object v2, Landroid/provider/Checkin$Events$Tag;->SETUP_IO_ERROR:Landroid/provider/Checkin$Events$Tag;

    aput-object v2, v0, v1

    const/16 v1, 0x27

    sget-object v2, Landroid/provider/Checkin$Events$Tag;->SETUP_NETWORK_ERROR:Landroid/provider/Checkin$Events$Tag;

    aput-object v2, v0, v1

    const/16 v1, 0x28

    sget-object v2, Landroid/provider/Checkin$Events$Tag;->SETUP_REQUIRED_CAPTCHA:Landroid/provider/Checkin$Events$Tag;

    aput-object v2, v0, v1

    const/16 v1, 0x29

    sget-object v2, Landroid/provider/Checkin$Events$Tag;->SETUP_RETRIES_EXHAUSTED:Landroid/provider/Checkin$Events$Tag;

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    sget-object v2, Landroid/provider/Checkin$Events$Tag;->SETUP_SERVER_ERROR:Landroid/provider/Checkin$Events$Tag;

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    sget-object v2, Landroid/provider/Checkin$Events$Tag;->SETUP_SERVER_TIMEOUT:Landroid/provider/Checkin$Events$Tag;

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    sget-object v2, Landroid/provider/Checkin$Events$Tag;->SETUP_NO_DATA_NETWORK:Landroid/provider/Checkin$Events$Tag;

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    sget-object v2, Landroid/provider/Checkin$Events$Tag;->SYSTEM_BOOT:Landroid/provider/Checkin$Events$Tag;

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    sget-object v2, Landroid/provider/Checkin$Events$Tag;->SYSTEM_LAST_KMSG:Landroid/provider/Checkin$Events$Tag;

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    sget-object v2, Landroid/provider/Checkin$Events$Tag;->SYSTEM_RECOVERY_LOG:Landroid/provider/Checkin$Events$Tag;

    aput-object v2, v0, v1

    const/16 v1, 0x30

    sget-object v2, Landroid/provider/Checkin$Events$Tag;->SYSTEM_RESTART:Landroid/provider/Checkin$Events$Tag;

    aput-object v2, v0, v1

    const/16 v1, 0x31

    sget-object v2, Landroid/provider/Checkin$Events$Tag;->SYSTEM_SERVICE_LOOPING:Landroid/provider/Checkin$Events$Tag;

    aput-object v2, v0, v1

    const/16 v1, 0x32

    sget-object v2, Landroid/provider/Checkin$Events$Tag;->SYSTEM_TOMBSTONE:Landroid/provider/Checkin$Events$Tag;

    aput-object v2, v0, v1

    const/16 v1, 0x33

    sget-object v2, Landroid/provider/Checkin$Events$Tag;->TEST:Landroid/provider/Checkin$Events$Tag;

    aput-object v2, v0, v1

    const/16 v1, 0x34

    sget-object v2, Landroid/provider/Checkin$Events$Tag;->BATTERY_DISCHARGE_INFO:Landroid/provider/Checkin$Events$Tag;

    aput-object v2, v0, v1

    const/16 v1, 0x35

    sget-object v2, Landroid/provider/Checkin$Events$Tag;->MARKET_DOWNLOAD:Landroid/provider/Checkin$Events$Tag;

    aput-object v2, v0, v1

    const/16 v1, 0x36

    sget-object v2, Landroid/provider/Checkin$Events$Tag;->MARKET_INSTALL:Landroid/provider/Checkin$Events$Tag;

    aput-object v2, v0, v1

    const/16 v1, 0x37

    sget-object v2, Landroid/provider/Checkin$Events$Tag;->MARKET_REMOVE:Landroid/provider/Checkin$Events$Tag;

    aput-object v2, v0, v1

    const/16 v1, 0x38

    sget-object v2, Landroid/provider/Checkin$Events$Tag;->MARKET_REFUND:Landroid/provider/Checkin$Events$Tag;

    aput-object v2, v0, v1

    const/16 v1, 0x39

    sget-object v2, Landroid/provider/Checkin$Events$Tag;->MARKET_UNINSTALL:Landroid/provider/Checkin$Events$Tag;

    aput-object v2, v0, v1

    sput-object v0, Landroid/provider/Checkin$Events$Tag;->$VALUES:[Landroid/provider/Checkin$Events$Tag;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/provider/Checkin$Events$Tag;
    .locals 1

    const-class v0, Landroid/provider/Checkin$Events$Tag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/provider/Checkin$Events$Tag;

    return-object v0
.end method

.method public static values()[Landroid/provider/Checkin$Events$Tag;
    .locals 1

    sget-object v0, Landroid/provider/Checkin$Events$Tag;->$VALUES:[Landroid/provider/Checkin$Events$Tag;

    invoke-virtual {v0}, [Landroid/provider/Checkin$Events$Tag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/provider/Checkin$Events$Tag;

    return-object v0
.end method
