.class public Lcom/futuredial/config/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/futuredial/config/Constants$XMLKeyword;
    }
.end annotation


# static fields
.field public static final ASSETS_ATCOMMAND:Ljava/lang/String; = "ATCommand.xml"

.field public static final ASSETS_PHONESETTING:Ljava/lang/String; = "PhoneSetting.xml"

.field public static final ASSETS_PHONESETTING_DAT:Ljava/lang/String; = "phonesetting.dat"

.field public static final ASSETS_RETURNSTRING:Ljava/lang/String; = "ReturnString.xml"

.field public static final ASSETS_VXXCONFIG_DAT:Ljava/lang/String; = "vxxconfig.dat"

.field public static final BOOKMARK:I = 0x3

.field public static final CALENDAR:I = 0x1

.field public static final CONTENT_BM:Ljava/lang/String; = "bookmark"

.field public static final CONTENT_CAL:Ljava/lang/String; = "cal"

.field public static final CONTENT_MUSIC:Ljava/lang/String; = "music"

.field public static final CONTENT_PB:Ljava/lang/String; = "pb"

.field public static final CONTENT_PHOTO:Ljava/lang/String; = "photo"

.field public static final CONTENT_SMS:Ljava/lang/String; = "sms"

.field public static final CONTENT_TASK:Ljava/lang/String; = "task"

.field public static final DEFAULT_COUNT:Ljava/lang/String; = "1"

.field public static final DEFAULT_RESULT:Ljava/lang/String; = "false"

.field public static final DEFAULT_TIMEOUT:Ljava/lang/String; = "60000"

.field public static final ENABLE:Ljava/lang/String; = "1"

.field public static final ERROR_COMMUNICATION:I = 0x1

.field public static final ERROR_PARSE:I = 0x2

.field public static final ERROR_PIM:I = 0x3

.field public static final ERROR_SUCCESSED:Ljava/lang/String; = "OK"

.field public static final EXIT_FAILURE:I = 0x1

.field public static final EXIT_SUCCESS:I = 0x0

.field public static final Long_DT_19000101:J = -0x20253b59800L

.field public static final Long_DT_19700101:J = -0x1b77400L

.field public static final MUSIC:I = 0x5

.field public static final PHONEBOOK:I = 0x0

.field public static final PHOTO:I = 0x4

.field public static READING_DATA:I = 0x0

.field public static final SEPARATE:Ljava/lang/String; = ":"

.field public static final SEPARATE_COMMA:Ljava/lang/String; = ","

.field public static final SMS:I = 0x2

.field public static final SUPPORT_MOD:I = 0x7

.field public static final TASK:I = 0x6

.field public static WRITING_DATA:I

.field public static supportedModXMLmarks:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 37
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "pb"

    aput-object v1, v0, v3

    const-string v1, "cal"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "sms"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "bookmark"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "photo"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "music"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "task"

    aput-object v2, v0, v1

    sput-object v0, Lcom/futuredial/config/Constants;->supportedModXMLmarks:[Ljava/lang/String;

    .line 70
    sput v3, Lcom/futuredial/config/Constants;->READING_DATA:I

    .line 71
    sput v4, Lcom/futuredial/config/Constants;->WRITING_DATA:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method
