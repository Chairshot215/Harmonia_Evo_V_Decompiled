.class public final enum Lcom/htc/utils/ulog/ULogTags;
.super Ljava/lang/Enum;
.source "ULogTags.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/utils/ulog/ULogTags;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/utils/ulog/ULogTags;

.field public static final enum APP_MAIL_INVALID_SYNC_KEY:Lcom/htc/utils/ulog/ULogTags;

.field public static final enum FRAMEWORK_ANR_NUM:Lcom/htc/utils/ulog/ULogTags;

.field public static final enum FRAMEWORK_APP_ACTIVE_TIME:Lcom/htc/utils/ulog/ULogTags;

.field public static final enum FRAMEWORK_CHANGE_LIST:Lcom/htc/utils/ulog/ULogTags;

.field public static final enum FRAMEWORK_CRASH_NUM:Lcom/htc/utils/ulog/ULogTags;

.field public static final enum FRAMEWORK_DEVICE_ACTIVE_TIME:Lcom/htc/utils/ulog/ULogTags;

.field public static final enum FRAMEWORK_HWINFO_TIME:Lcom/htc/utils/ulog/ULogTags;

.field public static final enum FRAMEWORK_INSTALLEDAPP_LIST:Lcom/htc/utils/ulog/ULogTags;

.field public static final enum FRAMEWORK_LOCATION_INFO:Lcom/htc/utils/ulog/ULogTags;

.field public static final enum FRAMEWORK_LOCKSCREEN_SHORTCUT_INFO:Lcom/htc/utils/ulog/ULogTags;

.field public static final enum FRAMEWORK_MARKETAPP_ACTIVE_TIME:Lcom/htc/utils/ulog/ULogTags;

.field public static final enum FRAMEWORK_PROJECT_BRANCH:Lcom/htc/utils/ulog/ULogTags;

.field public static final enum FRAMEWORK_ROSIELAYOUT_INFO:Lcom/htc/utils/ulog/ULogTags;

.field public static final enum FRAMEWORK_SCREENOFF_TIMEOUT:Lcom/htc/utils/ulog/ULogTags;

.field public static final enum FRAMEWORK_SCREEN_ON_TIME:Lcom/htc/utils/ulog/ULogTags;

.field public static final enum FRAMEWORK_SIM_STATE:Lcom/htc/utils/ulog/ULogTags;

.field public static final enum FRAMEWORK_STATUSBAR_INFO:Lcom/htc/utils/ulog/ULogTags;

.field public static final enum FRAMEWORK_SWINFO_TIME:Lcom/htc/utils/ulog/ULogTags;

.field public static final enum FRAMEWORK_WALLPAPER_INFO:Lcom/htc/utils/ulog/ULogTags;


# instance fields
.field private mString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/htc/utils/ulog/ULogTags;

    const-string v1, "FRAMEWORK_DEVICE_ACTIVE_TIME"

    const-string v2, "FRAMEWORK_DEVICE_ACTIVE_TIME"

    invoke-direct {v0, v1, v4, v2}, Lcom/htc/utils/ulog/ULogTags;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/htc/utils/ulog/ULogTags;->FRAMEWORK_DEVICE_ACTIVE_TIME:Lcom/htc/utils/ulog/ULogTags;

    new-instance v0, Lcom/htc/utils/ulog/ULogTags;

    const-string v1, "FRAMEWORK_APP_ACTIVE_TIME"

    const-string v2, "FRAMEWORK_APP_ACTIVE_TIME"

    invoke-direct {v0, v1, v5, v2}, Lcom/htc/utils/ulog/ULogTags;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/htc/utils/ulog/ULogTags;->FRAMEWORK_APP_ACTIVE_TIME:Lcom/htc/utils/ulog/ULogTags;

    new-instance v0, Lcom/htc/utils/ulog/ULogTags;

    const-string v1, "FRAMEWORK_MARKETAPP_ACTIVE_TIME"

    const-string v2, "FRAMEWORK_MARKETAPP_ACTIVE_TIME"

    invoke-direct {v0, v1, v6, v2}, Lcom/htc/utils/ulog/ULogTags;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/htc/utils/ulog/ULogTags;->FRAMEWORK_MARKETAPP_ACTIVE_TIME:Lcom/htc/utils/ulog/ULogTags;

    new-instance v0, Lcom/htc/utils/ulog/ULogTags;

    const-string v1, "FRAMEWORK_CRASH_NUM"

    const-string v2, "FRAMEWORK_CRASH_NUM"

    invoke-direct {v0, v1, v7, v2}, Lcom/htc/utils/ulog/ULogTags;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/htc/utils/ulog/ULogTags;->FRAMEWORK_CRASH_NUM:Lcom/htc/utils/ulog/ULogTags;

    new-instance v0, Lcom/htc/utils/ulog/ULogTags;

    const-string v1, "FRAMEWORK_ANR_NUM"

    const-string v2, "FRAMEWORK_ANR_NUM"

    invoke-direct {v0, v1, v8, v2}, Lcom/htc/utils/ulog/ULogTags;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/htc/utils/ulog/ULogTags;->FRAMEWORK_ANR_NUM:Lcom/htc/utils/ulog/ULogTags;

    new-instance v0, Lcom/htc/utils/ulog/ULogTags;

    const-string v1, "FRAMEWORK_CHANGE_LIST"

    const/4 v2, 0x5

    const-string v3, "FRAMEWORK_CHANGE_LIST"

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/utils/ulog/ULogTags;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/htc/utils/ulog/ULogTags;->FRAMEWORK_CHANGE_LIST:Lcom/htc/utils/ulog/ULogTags;

    new-instance v0, Lcom/htc/utils/ulog/ULogTags;

    const-string v1, "FRAMEWORK_PROJECT_BRANCH"

    const/4 v2, 0x6

    const-string v3, "FRAMEWORK_PROJECT_BRANCH"

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/utils/ulog/ULogTags;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/htc/utils/ulog/ULogTags;->FRAMEWORK_PROJECT_BRANCH:Lcom/htc/utils/ulog/ULogTags;

    new-instance v0, Lcom/htc/utils/ulog/ULogTags;

    const-string v1, "FRAMEWORK_SCREEN_ON_TIME"

    const/4 v2, 0x7

    const-string v3, "FRAMEWORK_SCREEN_ON_TIME"

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/utils/ulog/ULogTags;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/htc/utils/ulog/ULogTags;->FRAMEWORK_SCREEN_ON_TIME:Lcom/htc/utils/ulog/ULogTags;

    new-instance v0, Lcom/htc/utils/ulog/ULogTags;

    const-string v1, "FRAMEWORK_SIM_STATE"

    const/16 v2, 0x8

    const-string v3, "FRAMEWORK_SIM_STATE"

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/utils/ulog/ULogTags;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/htc/utils/ulog/ULogTags;->FRAMEWORK_SIM_STATE:Lcom/htc/utils/ulog/ULogTags;

    new-instance v0, Lcom/htc/utils/ulog/ULogTags;

    const-string v1, "APP_MAIL_INVALID_SYNC_KEY"

    const/16 v2, 0x9

    const-string v3, "APP_MAIL_INVALID_SYNC_KEY"

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/utils/ulog/ULogTags;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/htc/utils/ulog/ULogTags;->APP_MAIL_INVALID_SYNC_KEY:Lcom/htc/utils/ulog/ULogTags;

    new-instance v0, Lcom/htc/utils/ulog/ULogTags;

    const-string v1, "FRAMEWORK_SCREENOFF_TIMEOUT"

    const/16 v2, 0xa

    const-string v3, "FRAMEWORK_SCREENOFF_TIMEOUT"

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/utils/ulog/ULogTags;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/htc/utils/ulog/ULogTags;->FRAMEWORK_SCREENOFF_TIMEOUT:Lcom/htc/utils/ulog/ULogTags;

    new-instance v0, Lcom/htc/utils/ulog/ULogTags;

    const-string v1, "FRAMEWORK_INSTALLEDAPP_LIST"

    const/16 v2, 0xb

    const-string v3, "DEVICEINFO1"

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/utils/ulog/ULogTags;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/htc/utils/ulog/ULogTags;->FRAMEWORK_INSTALLEDAPP_LIST:Lcom/htc/utils/ulog/ULogTags;

    new-instance v0, Lcom/htc/utils/ulog/ULogTags;

    const-string v1, "FRAMEWORK_SWINFO_TIME"

    const/16 v2, 0xc

    const-string v3, "DEVICEINFO2"

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/utils/ulog/ULogTags;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/htc/utils/ulog/ULogTags;->FRAMEWORK_SWINFO_TIME:Lcom/htc/utils/ulog/ULogTags;

    new-instance v0, Lcom/htc/utils/ulog/ULogTags;

    const-string v1, "FRAMEWORK_HWINFO_TIME"

    const/16 v2, 0xd

    const-string v3, "DEVICEINFO3"

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/utils/ulog/ULogTags;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/htc/utils/ulog/ULogTags;->FRAMEWORK_HWINFO_TIME:Lcom/htc/utils/ulog/ULogTags;

    new-instance v0, Lcom/htc/utils/ulog/ULogTags;

    const-string v1, "FRAMEWORK_LOCATION_INFO"

    const/16 v2, 0xe

    const-string v3, "DEVICEINFO4"

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/utils/ulog/ULogTags;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/htc/utils/ulog/ULogTags;->FRAMEWORK_LOCATION_INFO:Lcom/htc/utils/ulog/ULogTags;

    new-instance v0, Lcom/htc/utils/ulog/ULogTags;

    const-string v1, "FRAMEWORK_ROSIELAYOUT_INFO"

    const/16 v2, 0xf

    const-string v3, "DEVICEINFO5"

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/utils/ulog/ULogTags;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/htc/utils/ulog/ULogTags;->FRAMEWORK_ROSIELAYOUT_INFO:Lcom/htc/utils/ulog/ULogTags;

    new-instance v0, Lcom/htc/utils/ulog/ULogTags;

    const-string v1, "FRAMEWORK_STATUSBAR_INFO"

    const/16 v2, 0x10

    const-string v3, "DEVICEINFO6"

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/utils/ulog/ULogTags;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/htc/utils/ulog/ULogTags;->FRAMEWORK_STATUSBAR_INFO:Lcom/htc/utils/ulog/ULogTags;

    new-instance v0, Lcom/htc/utils/ulog/ULogTags;

    const-string v1, "FRAMEWORK_WALLPAPER_INFO"

    const/16 v2, 0x11

    const-string v3, "DEVICEINFO7"

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/utils/ulog/ULogTags;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/htc/utils/ulog/ULogTags;->FRAMEWORK_WALLPAPER_INFO:Lcom/htc/utils/ulog/ULogTags;

    new-instance v0, Lcom/htc/utils/ulog/ULogTags;

    const-string v1, "FRAMEWORK_LOCKSCREEN_SHORTCUT_INFO"

    const/16 v2, 0x12

    const-string v3, "DEVICEINFO8"

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/utils/ulog/ULogTags;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/htc/utils/ulog/ULogTags;->FRAMEWORK_LOCKSCREEN_SHORTCUT_INFO:Lcom/htc/utils/ulog/ULogTags;

    const/16 v0, 0x13

    new-array v0, v0, [Lcom/htc/utils/ulog/ULogTags;

    sget-object v1, Lcom/htc/utils/ulog/ULogTags;->FRAMEWORK_DEVICE_ACTIVE_TIME:Lcom/htc/utils/ulog/ULogTags;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/utils/ulog/ULogTags;->FRAMEWORK_APP_ACTIVE_TIME:Lcom/htc/utils/ulog/ULogTags;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/utils/ulog/ULogTags;->FRAMEWORK_MARKETAPP_ACTIVE_TIME:Lcom/htc/utils/ulog/ULogTags;

    aput-object v1, v0, v6

    sget-object v1, Lcom/htc/utils/ulog/ULogTags;->FRAMEWORK_CRASH_NUM:Lcom/htc/utils/ulog/ULogTags;

    aput-object v1, v0, v7

    sget-object v1, Lcom/htc/utils/ulog/ULogTags;->FRAMEWORK_ANR_NUM:Lcom/htc/utils/ulog/ULogTags;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/htc/utils/ulog/ULogTags;->FRAMEWORK_CHANGE_LIST:Lcom/htc/utils/ulog/ULogTags;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/htc/utils/ulog/ULogTags;->FRAMEWORK_PROJECT_BRANCH:Lcom/htc/utils/ulog/ULogTags;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/htc/utils/ulog/ULogTags;->FRAMEWORK_SCREEN_ON_TIME:Lcom/htc/utils/ulog/ULogTags;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/htc/utils/ulog/ULogTags;->FRAMEWORK_SIM_STATE:Lcom/htc/utils/ulog/ULogTags;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/htc/utils/ulog/ULogTags;->APP_MAIL_INVALID_SYNC_KEY:Lcom/htc/utils/ulog/ULogTags;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/htc/utils/ulog/ULogTags;->FRAMEWORK_SCREENOFF_TIMEOUT:Lcom/htc/utils/ulog/ULogTags;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/htc/utils/ulog/ULogTags;->FRAMEWORK_INSTALLEDAPP_LIST:Lcom/htc/utils/ulog/ULogTags;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/htc/utils/ulog/ULogTags;->FRAMEWORK_SWINFO_TIME:Lcom/htc/utils/ulog/ULogTags;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/htc/utils/ulog/ULogTags;->FRAMEWORK_HWINFO_TIME:Lcom/htc/utils/ulog/ULogTags;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/htc/utils/ulog/ULogTags;->FRAMEWORK_LOCATION_INFO:Lcom/htc/utils/ulog/ULogTags;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/htc/utils/ulog/ULogTags;->FRAMEWORK_ROSIELAYOUT_INFO:Lcom/htc/utils/ulog/ULogTags;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/htc/utils/ulog/ULogTags;->FRAMEWORK_STATUSBAR_INFO:Lcom/htc/utils/ulog/ULogTags;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/htc/utils/ulog/ULogTags;->FRAMEWORK_WALLPAPER_INFO:Lcom/htc/utils/ulog/ULogTags;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/htc/utils/ulog/ULogTags;->FRAMEWORK_LOCKSCREEN_SHORTCUT_INFO:Lcom/htc/utils/ulog/ULogTags;

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/utils/ulog/ULogTags;->$VALUES:[Lcom/htc/utils/ulog/ULogTags;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/htc/utils/ulog/ULogTags;->mString:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogTags;
    .locals 1

    const-class v0, Lcom/htc/utils/ulog/ULogTags;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/utils/ulog/ULogTags;

    return-object v0
.end method

.method public static values()[Lcom/htc/utils/ulog/ULogTags;
    .locals 1

    sget-object v0, Lcom/htc/utils/ulog/ULogTags;->$VALUES:[Lcom/htc/utils/ulog/ULogTags;

    invoke-virtual {v0}, [Lcom/htc/utils/ulog/ULogTags;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/utils/ulog/ULogTags;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/utils/ulog/ULogTags;->mString:Ljava/lang/String;

    return-object v0
.end method
