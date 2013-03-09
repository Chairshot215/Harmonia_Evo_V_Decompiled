.class public Lcom/htc/omadm/prop/PropertyFumo;
.super Ljava/lang/Object;
.source "PropertyFumo.java"


# static fields
.field public static ACTION_FOTA_INSTALL:Ljava/lang/String; = null

.field public static final BATTERY_LOW_CONDITION:I = 0x14

.field public static FUMO_PACKAGE_FILE_PATH:Ljava/lang/String; = null

.field public static FUMO_PACKAGE_FOLDER_PATH:Ljava/lang/String; = null

.field public static FUMO_PACKAGE_TMP_FILE_NAME:Ljava/lang/String; = null

.field public static final FUMO_RB_RESUME_FILE_PATH:Ljava/lang/String; = "/data/data/com.redbend.vdmc/files/dlresume.dat"

.field public static final FUMO_RESULT_PATH:Ljava/lang/String; = "/data/data/recovery/OMADM/update_result.log"

.field public static final PACAKGE_STATE_CREATED:I = 0x0

.field public static final PACAKGE_STATE_DOWNLOADING:I = 0x1

.field public static final PACAKGE_STATE_DOWNLOAD_COMPLETE:I = 0x2

.field public static final PACAKGE_STATE_INIT:I = -0x1

.field public static final PACAKGE_STATE_REMOVED:I = -0x1

.field public static final PACKAGE_FILE_NAME:Ljava/lang/String; = "OTAPKG.zip"

.field public static final PACKAGE_FOLDER_NAME:Ljava/lang/String; = "fumo"

.field public static final SETTINGS_FUMO_DONE:Ljava/lang/String; = "omadm_has_fumo_done"

.field public static final SETTINGS_HAS_FUMO_DONE:I = 0x1

.field public static final SETTINGS_NO_FUMO_DONE:I = 0x0

.field public static final SUCCESS:I = 0x1

.field public static final UPDATE_CORRUPTED_PACKAGE_FAIL:I = 0x192

.field public static final UPDATE_INVALID_PACKAGE_FAIL:I = 0x194

.field public static final UPDATE_OPERATION_FAIL:I = 0x0

.field public static final UPDATE_RESULT_EXCEPTION:I = -0x2

.field public static final UPDATE_RESULT_FAIL:I = 0x0

.field public static final UPDATE_RESULT_INIT:I = -0x3

.field public static final UPDATE_RESULT_NOUPDATE:I = -0x1

.field public static final UPDATE_RESULT_OTHER_FAIL:I = 0x2

.field public static final UPDATE_RESULT_OTHER_SUCCESS:I = 0x3

.field public static final UPDATE_RESULT_SUCCESS:I = 0x1

.field public static final UPDATE_WRONG_PACKAGE_FAIL:I = 0x193


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 4
    const-string v0, "android.server.checkin.FOTA_INSTALL"

    sput-object v0, Lcom/htc/omadm/prop/PropertyFumo;->ACTION_FOTA_INSTALL:Ljava/lang/String;

    .line 9
    const-string v0, "/cache/fumo/OTAPKG.zip"

    sput-object v0, Lcom/htc/omadm/prop/PropertyFumo;->FUMO_PACKAGE_FILE_PATH:Ljava/lang/String;

    .line 10
    const-string v0, "/cache/fumo/"

    sput-object v0, Lcom/htc/omadm/prop/PropertyFumo;->FUMO_PACKAGE_FOLDER_PATH:Ljava/lang/String;

    .line 11
    const-string v0, "tmp.txt"

    sput-object v0, Lcom/htc/omadm/prop/PropertyFumo;->FUMO_PACKAGE_TMP_FILE_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
