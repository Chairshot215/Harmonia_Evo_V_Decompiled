.class public Lcom/htc/reportagent/Common;
.super Ljava/lang/Object;
.source "Common.java"


# static fields
.field public static final APPID:Ljava/lang/String; = "com.htc.reportagent"

.field public static final CATEGORY_BUDGET:Ljava/lang/String; = "budget"

.field public static final CATEGORY_COMMON:Ljava/lang/String; = "common"

.field public static final CATEGORY_INFO:Ljava/lang/String; = "info"

.field public static final CATEGORY_LOG:Ljava/lang/String; = "log"

.field public static final CATEGORY_POLICY:Ljava/lang/String; = "policy"

.field public static final DAY_TO_HOURS:J = 0x18L

.field public static final DAY_TO_MILLISECONDS:J = 0x5265c00L

.field public static final FAKE_BUDGET_ALARM:Z = false

.field public static final FAKE_BUDGET_SIZE:Z = false

.field public static final FAKE_POLICY_ALARM:Z = false

.field public static final FAKE_POLICY_SERVER:Z = false

.field public static final HOUR_TO_MILLISECONDS:J = 0x36ee80L

.field public static final HOUR_TO_MINUTES:J = 0x3cL

.field public static final KEY_BUDGET_PERIOD:Ljava/lang/String; = "period"

.field public static final KEY_BUDGET_PREFIX_ALL:Ljava/lang/String; = "all_"

.field public static final KEY_BUDGET_PREFIX_MOBILE:Ljava/lang/String; = "mobile_"

.field public static final KEY_BUDGET_PREFIX_OTHER:Ljava/lang/String; = "other_"

.field public static final KEY_BUDGET_SUFFIX_CALC_UNIT:Ljava/lang/String; = "calc_unit"

.field public static final KEY_BUDGET_SUFFIX_DL:Ljava/lang/String; = "DL"

.field public static final KEY_BUDGET_SUFFIX_TOTAL:Ljava/lang/String; = "total"

.field public static final KEY_BUDGET_SUFFIX_UL:Ljava/lang/String; = "UL"

.field public static final KEY_COMMON_RETRY:Ljava/lang/String; = "retry"

.field public static final KEY_INFO_SN:Ljava/lang/String; = "SN"

.field public static final KEY_LOG_CACHE:Ljava/lang/String; = "cache"

.field public static final KEY_LOG_FREQ:Ljava/lang/String; = "freq"

.field public static final KEY_POLICY_FREQ:Ljava/lang/String; = "freq"

.field public static final KILOBYTE_TO_BYTES:J = 0x400L

.field public static final MEGABYTE_TO_BYTES:J = 0x100000L

.field public static final MEGABYTE_TO_KILOBYTES:J = 0x400L

.field public static final MINUTE_TO_MILLISECONDS:J = 0xea60L

.field public static final MINUTE_TO_SECONDS:J = 0x3cL

.field public static final RELATIVE_LOG_FOLDER_PATH:Ljava/lang/String; = "logs"

.field public static final SECOND_TO_MILLISECONDS:J = 0x3e8L

.field public static SEED_GETTER:Lcom/htc/utils/ulog/io/LogStream$SeedGetter; = null

.field public static final STR_CATEGORY_CID:Ljava/lang/String; = "cid"

.field public static final STR_CATEGORY_CITY:Ljava/lang/String; = "city"

.field public static final STR_CATEGORY_DEVICE_ID:Ljava/lang/String; = "device_id"

.field public static final STR_CATEGORY_DEVICE_SN:Ljava/lang/String; = "device_sn"

.field public static final STR_CATEGORY_MODEL_ID:Ljava/lang/String; = "model_id"

.field public static final STR_CATEGORY_PRIVACY_VERSION:Ljava/lang/String; = "privacy_statement_version"

.field public static final STR_CATEGORY_REGION:Ljava/lang/String; = "region"

.field public static final STR_CATEGORY_ROM_VERSION:Ljava/lang/String; = "rom_version"

.field public static final STR_CATEGORY_SENSE_VERSION:Ljava/lang/String; = "sense_version"

.field public static final STR_CATEGORY_TIMEZONE:Ljava/lang/String; = "timezone"

.field public static final STR_DATA_PATH:Ljava/lang/String; = "/data"

.field public static final STR_DEFAULT_PRIVACY_VERSION:Ljava/lang/String; = "1.0"

.field public static final STR_DISABLED:Ljava/lang/String; = "NA"

.field public static final STR_HEADER_APPID:Ljava/lang/String; = "tellhtc.header"

.field public static final STR_KEY_ADMIN_AREA:Ljava/lang/String; = "AdminArea"

.field public static final STR_KEY_ENABLE:Ljava/lang/String; = "enable"

.field public static final STR_KEY_LOCALITY:Ljava/lang/String; = "Locality"

.field public static final STR_KEY_SUBADMIN_AREA:Ljava/lang/String; = "SubAdminArea"

.field public static final STR_UNKNOWN:Ljava/lang/String; = "unknown"

.field public static final STR_VALUE_ENABLED:Ljava/lang/String; = "1"

.field public static final TAG:Ljava/lang/String; = "MyReportAgent"

.field public static final VALUE_BUDGET_TYPE_ABS_MB:Ljava/lang/String; = "1"

.field public static final VALUE_BUDGET_TYPE_PERCENTAGE:Ljava/lang/String; = "2"

.field public static final ZIP_FILE_ENTITY:Ljava/lang/String; = "file_entity"

.field public static final _DEBUG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 84
    new-instance v0, Lcom/htc/reportagent/Common$1;

    invoke-direct {v0}, Lcom/htc/reportagent/Common$1;-><init>()V

    sput-object v0, Lcom/htc/reportagent/Common;->SEED_GETTER:Lcom/htc/utils/ulog/io/LogStream$SeedGetter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
