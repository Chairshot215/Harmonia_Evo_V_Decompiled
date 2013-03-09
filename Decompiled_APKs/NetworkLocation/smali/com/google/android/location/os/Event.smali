.class public final enum Lcom/google/android/location/os/Event;
.super Ljava/lang/Enum;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/location/os/Event$Kind;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/location/os/Event;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/location/os/Event;

.field public static final enum AIRPLANE_MODE_CHANGED:Lcom/google/android/location/os/Event;

.field public static final enum ALARM_CANCEL:Lcom/google/android/location/os/Event;

.field public static final enum ALARM_RESET:Lcom/google/android/location/os/Event;

.field public static final enum ALARM_RING:Lcom/google/android/location/os/Event;

.field public static final enum BATTERY_STATE_CHANGED:Lcom/google/android/location/os/Event;

.field public static final enum CELL_REQUEST_SCAN:Lcom/google/android/location/os/Event;

.field public static final enum CELL_SCAN_RESULTS:Lcom/google/android/location/os/Event;

.field public static final enum CELL_SIGNAL_STRENGTH:Lcom/google/android/location/os/Event;

.field public static final enum FULL_COLLECTION_MODE_CHANGED:Lcom/google/android/location/os/Event;

.field public static final enum GLS_QUERY:Lcom/google/android/location/os/Event;

.field public static final enum GLS_QUERY_RESPONSE:Lcom/google/android/location/os/Event;

.field public static final enum GLS_UPLOAD:Lcom/google/android/location/os/Event;

.field public static final enum GLS_UPLOAD_RESPONSE:Lcom/google/android/location/os/Event;

.field public static final enum GPS_LOCATION:Lcom/google/android/location/os/Event;

.field public static final enum GPS_ON_OFF:Lcom/google/android/location/os/Event;

.field public static final enum IS_GPS_ENABLED:Lcom/google/android/location/os/Event;

.field public static final enum LOCATION_REPORT:Lcom/google/android/location/os/Event;

.field public static final enum LOG:Lcom/google/android/location/os/Event;

.field public static final enum MILLIS_SINCE_BOOT:Lcom/google/android/location/os/Event;

.field public static final enum MILLIS_SINCE_EPOCH:Lcom/google/android/location/os/Event;

.field public static final enum SCREEN_STATE_CHANGED:Lcom/google/android/location/os/Event;

.field public static final enum SET_PERIOD:Lcom/google/android/location/os/Event;

.field public static final enum STATE_CHECKPOINT:Lcom/google/android/location/os/Event;

.field public static final enum WAKELOCK_ACQUIRE:Lcom/google/android/location/os/Event;

.field public static final enum WAKELOCK_RELEASE:Lcom/google/android/location/os/Event;

.field public static final enum WIFI_REQUEST_SCAN:Lcom/google/android/location/os/Event;

.field public static final enum WIFI_SCAN_RESULTS:Lcom/google/android/location/os/Event;

.field public static final enum WIFI_STATE_CHANGED:Lcom/google/android/location/os/Event;


# instance fields
.field public final kind:Lcom/google/android/location/os/Event$Kind;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 16
    new-instance v0, Lcom/google/android/location/os/Event;

    const-string v1, "SET_PERIOD"

    sget-object v2, Lcom/google/android/location/os/Event$Kind;->OS_GENERATED:Lcom/google/android/location/os/Event$Kind;

    invoke-direct {v0, v1, v4, v2}, Lcom/google/android/location/os/Event;-><init>(Ljava/lang/String;ILcom/google/android/location/os/Event$Kind;)V

    sput-object v0, Lcom/google/android/location/os/Event;->SET_PERIOD:Lcom/google/android/location/os/Event;

    .line 17
    new-instance v0, Lcom/google/android/location/os/Event;

    const-string v1, "AIRPLANE_MODE_CHANGED"

    sget-object v2, Lcom/google/android/location/os/Event$Kind;->OS_GENERATED:Lcom/google/android/location/os/Event$Kind;

    invoke-direct {v0, v1, v5, v2}, Lcom/google/android/location/os/Event;-><init>(Ljava/lang/String;ILcom/google/android/location/os/Event$Kind;)V

    sput-object v0, Lcom/google/android/location/os/Event;->AIRPLANE_MODE_CHANGED:Lcom/google/android/location/os/Event;

    .line 18
    new-instance v0, Lcom/google/android/location/os/Event;

    const-string v1, "ALARM_RING"

    sget-object v2, Lcom/google/android/location/os/Event$Kind;->OS_GENERATED:Lcom/google/android/location/os/Event$Kind;

    invoke-direct {v0, v1, v6, v2}, Lcom/google/android/location/os/Event;-><init>(Ljava/lang/String;ILcom/google/android/location/os/Event$Kind;)V

    sput-object v0, Lcom/google/android/location/os/Event;->ALARM_RING:Lcom/google/android/location/os/Event;

    .line 19
    new-instance v0, Lcom/google/android/location/os/Event;

    const-string v1, "BATTERY_STATE_CHANGED"

    sget-object v2, Lcom/google/android/location/os/Event$Kind;->OS_GENERATED:Lcom/google/android/location/os/Event$Kind;

    invoke-direct {v0, v1, v7, v2}, Lcom/google/android/location/os/Event;-><init>(Ljava/lang/String;ILcom/google/android/location/os/Event$Kind;)V

    sput-object v0, Lcom/google/android/location/os/Event;->BATTERY_STATE_CHANGED:Lcom/google/android/location/os/Event;

    .line 20
    new-instance v0, Lcom/google/android/location/os/Event;

    const-string v1, "CELL_SCAN_RESULTS"

    sget-object v2, Lcom/google/android/location/os/Event$Kind;->OS_GENERATED:Lcom/google/android/location/os/Event$Kind;

    invoke-direct {v0, v1, v8, v2}, Lcom/google/android/location/os/Event;-><init>(Ljava/lang/String;ILcom/google/android/location/os/Event$Kind;)V

    sput-object v0, Lcom/google/android/location/os/Event;->CELL_SCAN_RESULTS:Lcom/google/android/location/os/Event;

    .line 21
    new-instance v0, Lcom/google/android/location/os/Event;

    const-string v1, "CELL_SIGNAL_STRENGTH"

    const/4 v2, 0x5

    sget-object v3, Lcom/google/android/location/os/Event$Kind;->OS_GENERATED:Lcom/google/android/location/os/Event$Kind;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/location/os/Event;-><init>(Ljava/lang/String;ILcom/google/android/location/os/Event$Kind;)V

    sput-object v0, Lcom/google/android/location/os/Event;->CELL_SIGNAL_STRENGTH:Lcom/google/android/location/os/Event;

    .line 22
    new-instance v0, Lcom/google/android/location/os/Event;

    const-string v1, "FULL_COLLECTION_MODE_CHANGED"

    const/4 v2, 0x6

    sget-object v3, Lcom/google/android/location/os/Event$Kind;->OS_GENERATED:Lcom/google/android/location/os/Event$Kind;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/location/os/Event;-><init>(Ljava/lang/String;ILcom/google/android/location/os/Event$Kind;)V

    sput-object v0, Lcom/google/android/location/os/Event;->FULL_COLLECTION_MODE_CHANGED:Lcom/google/android/location/os/Event;

    .line 23
    new-instance v0, Lcom/google/android/location/os/Event;

    const-string v1, "GLS_QUERY_RESPONSE"

    const/4 v2, 0x7

    sget-object v3, Lcom/google/android/location/os/Event$Kind;->OS_GENERATED:Lcom/google/android/location/os/Event$Kind;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/location/os/Event;-><init>(Ljava/lang/String;ILcom/google/android/location/os/Event$Kind;)V

    sput-object v0, Lcom/google/android/location/os/Event;->GLS_QUERY_RESPONSE:Lcom/google/android/location/os/Event;

    .line 24
    new-instance v0, Lcom/google/android/location/os/Event;

    const-string v1, "GLS_UPLOAD_RESPONSE"

    const/16 v2, 0x8

    sget-object v3, Lcom/google/android/location/os/Event$Kind;->OS_GENERATED:Lcom/google/android/location/os/Event$Kind;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/location/os/Event;-><init>(Ljava/lang/String;ILcom/google/android/location/os/Event$Kind;)V

    sput-object v0, Lcom/google/android/location/os/Event;->GLS_UPLOAD_RESPONSE:Lcom/google/android/location/os/Event;

    .line 25
    new-instance v0, Lcom/google/android/location/os/Event;

    const-string v1, "GPS_LOCATION"

    const/16 v2, 0x9

    sget-object v3, Lcom/google/android/location/os/Event$Kind;->OS_GENERATED:Lcom/google/android/location/os/Event$Kind;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/location/os/Event;-><init>(Ljava/lang/String;ILcom/google/android/location/os/Event$Kind;)V

    sput-object v0, Lcom/google/android/location/os/Event;->GPS_LOCATION:Lcom/google/android/location/os/Event;

    .line 26
    new-instance v0, Lcom/google/android/location/os/Event;

    const-string v1, "SCREEN_STATE_CHANGED"

    const/16 v2, 0xa

    sget-object v3, Lcom/google/android/location/os/Event$Kind;->OS_GENERATED:Lcom/google/android/location/os/Event$Kind;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/location/os/Event;-><init>(Ljava/lang/String;ILcom/google/android/location/os/Event$Kind;)V

    sput-object v0, Lcom/google/android/location/os/Event;->SCREEN_STATE_CHANGED:Lcom/google/android/location/os/Event;

    .line 27
    new-instance v0, Lcom/google/android/location/os/Event;

    const-string v1, "WIFI_SCAN_RESULTS"

    const/16 v2, 0xb

    sget-object v3, Lcom/google/android/location/os/Event$Kind;->OS_GENERATED:Lcom/google/android/location/os/Event$Kind;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/location/os/Event;-><init>(Ljava/lang/String;ILcom/google/android/location/os/Event$Kind;)V

    sput-object v0, Lcom/google/android/location/os/Event;->WIFI_SCAN_RESULTS:Lcom/google/android/location/os/Event;

    .line 28
    new-instance v0, Lcom/google/android/location/os/Event;

    const-string v1, "WIFI_STATE_CHANGED"

    const/16 v2, 0xc

    sget-object v3, Lcom/google/android/location/os/Event$Kind;->OS_GENERATED:Lcom/google/android/location/os/Event$Kind;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/location/os/Event;-><init>(Ljava/lang/String;ILcom/google/android/location/os/Event$Kind;)V

    sput-object v0, Lcom/google/android/location/os/Event;->WIFI_STATE_CHANGED:Lcom/google/android/location/os/Event;

    .line 30
    new-instance v0, Lcom/google/android/location/os/Event;

    const-string v1, "ALARM_RESET"

    const/16 v2, 0xd

    sget-object v3, Lcom/google/android/location/os/Event$Kind;->CLIENT_GENERATED:Lcom/google/android/location/os/Event$Kind;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/location/os/Event;-><init>(Ljava/lang/String;ILcom/google/android/location/os/Event$Kind;)V

    sput-object v0, Lcom/google/android/location/os/Event;->ALARM_RESET:Lcom/google/android/location/os/Event;

    .line 31
    new-instance v0, Lcom/google/android/location/os/Event;

    const-string v1, "ALARM_CANCEL"

    const/16 v2, 0xe

    sget-object v3, Lcom/google/android/location/os/Event$Kind;->CLIENT_GENERATED:Lcom/google/android/location/os/Event$Kind;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/location/os/Event;-><init>(Ljava/lang/String;ILcom/google/android/location/os/Event$Kind;)V

    sput-object v0, Lcom/google/android/location/os/Event;->ALARM_CANCEL:Lcom/google/android/location/os/Event;

    .line 32
    new-instance v0, Lcom/google/android/location/os/Event;

    const-string v1, "CELL_REQUEST_SCAN"

    const/16 v2, 0xf

    sget-object v3, Lcom/google/android/location/os/Event$Kind;->CLIENT_GENERATED:Lcom/google/android/location/os/Event$Kind;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/location/os/Event;-><init>(Ljava/lang/String;ILcom/google/android/location/os/Event$Kind;)V

    sput-object v0, Lcom/google/android/location/os/Event;->CELL_REQUEST_SCAN:Lcom/google/android/location/os/Event;

    .line 33
    new-instance v0, Lcom/google/android/location/os/Event;

    const-string v1, "MILLIS_SINCE_BOOT"

    const/16 v2, 0x10

    sget-object v3, Lcom/google/android/location/os/Event$Kind;->CLIENT_GENERATED:Lcom/google/android/location/os/Event$Kind;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/location/os/Event;-><init>(Ljava/lang/String;ILcom/google/android/location/os/Event$Kind;)V

    sput-object v0, Lcom/google/android/location/os/Event;->MILLIS_SINCE_BOOT:Lcom/google/android/location/os/Event;

    .line 34
    new-instance v0, Lcom/google/android/location/os/Event;

    const-string v1, "MILLIS_SINCE_EPOCH"

    const/16 v2, 0x11

    sget-object v3, Lcom/google/android/location/os/Event$Kind;->CLIENT_GENERATED:Lcom/google/android/location/os/Event$Kind;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/location/os/Event;-><init>(Ljava/lang/String;ILcom/google/android/location/os/Event$Kind;)V

    sput-object v0, Lcom/google/android/location/os/Event;->MILLIS_SINCE_EPOCH:Lcom/google/android/location/os/Event;

    .line 35
    new-instance v0, Lcom/google/android/location/os/Event;

    const-string v1, "GLS_QUERY"

    const/16 v2, 0x12

    sget-object v3, Lcom/google/android/location/os/Event$Kind;->CLIENT_GENERATED:Lcom/google/android/location/os/Event$Kind;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/location/os/Event;-><init>(Ljava/lang/String;ILcom/google/android/location/os/Event$Kind;)V

    sput-object v0, Lcom/google/android/location/os/Event;->GLS_QUERY:Lcom/google/android/location/os/Event;

    .line 36
    new-instance v0, Lcom/google/android/location/os/Event;

    const-string v1, "GLS_UPLOAD"

    const/16 v2, 0x13

    sget-object v3, Lcom/google/android/location/os/Event$Kind;->CLIENT_GENERATED:Lcom/google/android/location/os/Event$Kind;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/location/os/Event;-><init>(Ljava/lang/String;ILcom/google/android/location/os/Event$Kind;)V

    sput-object v0, Lcom/google/android/location/os/Event;->GLS_UPLOAD:Lcom/google/android/location/os/Event;

    .line 37
    new-instance v0, Lcom/google/android/location/os/Event;

    const-string v1, "GPS_ON_OFF"

    const/16 v2, 0x14

    sget-object v3, Lcom/google/android/location/os/Event$Kind;->CLIENT_GENERATED:Lcom/google/android/location/os/Event$Kind;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/location/os/Event;-><init>(Ljava/lang/String;ILcom/google/android/location/os/Event$Kind;)V

    sput-object v0, Lcom/google/android/location/os/Event;->GPS_ON_OFF:Lcom/google/android/location/os/Event;

    .line 38
    new-instance v0, Lcom/google/android/location/os/Event;

    const-string v1, "IS_GPS_ENABLED"

    const/16 v2, 0x15

    sget-object v3, Lcom/google/android/location/os/Event$Kind;->CLIENT_GENERATED:Lcom/google/android/location/os/Event$Kind;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/location/os/Event;-><init>(Ljava/lang/String;ILcom/google/android/location/os/Event$Kind;)V

    sput-object v0, Lcom/google/android/location/os/Event;->IS_GPS_ENABLED:Lcom/google/android/location/os/Event;

    .line 39
    new-instance v0, Lcom/google/android/location/os/Event;

    const-string v1, "LOCATION_REPORT"

    const/16 v2, 0x16

    sget-object v3, Lcom/google/android/location/os/Event$Kind;->CLIENT_GENERATED:Lcom/google/android/location/os/Event$Kind;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/location/os/Event;-><init>(Ljava/lang/String;ILcom/google/android/location/os/Event$Kind;)V

    sput-object v0, Lcom/google/android/location/os/Event;->LOCATION_REPORT:Lcom/google/android/location/os/Event;

    .line 40
    new-instance v0, Lcom/google/android/location/os/Event;

    const-string v1, "LOG"

    const/16 v2, 0x17

    sget-object v3, Lcom/google/android/location/os/Event$Kind;->CLIENT_GENERATED:Lcom/google/android/location/os/Event$Kind;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/location/os/Event;-><init>(Ljava/lang/String;ILcom/google/android/location/os/Event$Kind;)V

    sput-object v0, Lcom/google/android/location/os/Event;->LOG:Lcom/google/android/location/os/Event;

    .line 41
    new-instance v0, Lcom/google/android/location/os/Event;

    const-string v1, "STATE_CHECKPOINT"

    const/16 v2, 0x18

    sget-object v3, Lcom/google/android/location/os/Event$Kind;->CLIENT_GENERATED:Lcom/google/android/location/os/Event$Kind;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/location/os/Event;-><init>(Ljava/lang/String;ILcom/google/android/location/os/Event$Kind;)V

    sput-object v0, Lcom/google/android/location/os/Event;->STATE_CHECKPOINT:Lcom/google/android/location/os/Event;

    .line 42
    new-instance v0, Lcom/google/android/location/os/Event;

    const-string v1, "WAKELOCK_ACQUIRE"

    const/16 v2, 0x19

    sget-object v3, Lcom/google/android/location/os/Event$Kind;->CLIENT_GENERATED:Lcom/google/android/location/os/Event$Kind;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/location/os/Event;-><init>(Ljava/lang/String;ILcom/google/android/location/os/Event$Kind;)V

    sput-object v0, Lcom/google/android/location/os/Event;->WAKELOCK_ACQUIRE:Lcom/google/android/location/os/Event;

    .line 43
    new-instance v0, Lcom/google/android/location/os/Event;

    const-string v1, "WAKELOCK_RELEASE"

    const/16 v2, 0x1a

    sget-object v3, Lcom/google/android/location/os/Event$Kind;->CLIENT_GENERATED:Lcom/google/android/location/os/Event$Kind;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/location/os/Event;-><init>(Ljava/lang/String;ILcom/google/android/location/os/Event$Kind;)V

    sput-object v0, Lcom/google/android/location/os/Event;->WAKELOCK_RELEASE:Lcom/google/android/location/os/Event;

    .line 44
    new-instance v0, Lcom/google/android/location/os/Event;

    const-string v1, "WIFI_REQUEST_SCAN"

    const/16 v2, 0x1b

    sget-object v3, Lcom/google/android/location/os/Event$Kind;->CLIENT_GENERATED:Lcom/google/android/location/os/Event$Kind;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/location/os/Event;-><init>(Ljava/lang/String;ILcom/google/android/location/os/Event$Kind;)V

    sput-object v0, Lcom/google/android/location/os/Event;->WIFI_REQUEST_SCAN:Lcom/google/android/location/os/Event;

    .line 14
    const/16 v0, 0x1c

    new-array v0, v0, [Lcom/google/android/location/os/Event;

    sget-object v1, Lcom/google/android/location/os/Event;->SET_PERIOD:Lcom/google/android/location/os/Event;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/location/os/Event;->AIRPLANE_MODE_CHANGED:Lcom/google/android/location/os/Event;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/location/os/Event;->ALARM_RING:Lcom/google/android/location/os/Event;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/location/os/Event;->BATTERY_STATE_CHANGED:Lcom/google/android/location/os/Event;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/android/location/os/Event;->CELL_SCAN_RESULTS:Lcom/google/android/location/os/Event;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/location/os/Event;->CELL_SIGNAL_STRENGTH:Lcom/google/android/location/os/Event;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/location/os/Event;->FULL_COLLECTION_MODE_CHANGED:Lcom/google/android/location/os/Event;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/android/location/os/Event;->GLS_QUERY_RESPONSE:Lcom/google/android/location/os/Event;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/android/location/os/Event;->GLS_UPLOAD_RESPONSE:Lcom/google/android/location/os/Event;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/android/location/os/Event;->GPS_LOCATION:Lcom/google/android/location/os/Event;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/google/android/location/os/Event;->SCREEN_STATE_CHANGED:Lcom/google/android/location/os/Event;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/google/android/location/os/Event;->WIFI_SCAN_RESULTS:Lcom/google/android/location/os/Event;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/google/android/location/os/Event;->WIFI_STATE_CHANGED:Lcom/google/android/location/os/Event;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/google/android/location/os/Event;->ALARM_RESET:Lcom/google/android/location/os/Event;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/google/android/location/os/Event;->ALARM_CANCEL:Lcom/google/android/location/os/Event;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/google/android/location/os/Event;->CELL_REQUEST_SCAN:Lcom/google/android/location/os/Event;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/google/android/location/os/Event;->MILLIS_SINCE_BOOT:Lcom/google/android/location/os/Event;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/google/android/location/os/Event;->MILLIS_SINCE_EPOCH:Lcom/google/android/location/os/Event;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/google/android/location/os/Event;->GLS_QUERY:Lcom/google/android/location/os/Event;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/google/android/location/os/Event;->GLS_UPLOAD:Lcom/google/android/location/os/Event;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/google/android/location/os/Event;->GPS_ON_OFF:Lcom/google/android/location/os/Event;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/google/android/location/os/Event;->IS_GPS_ENABLED:Lcom/google/android/location/os/Event;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/google/android/location/os/Event;->LOCATION_REPORT:Lcom/google/android/location/os/Event;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/google/android/location/os/Event;->LOG:Lcom/google/android/location/os/Event;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/google/android/location/os/Event;->STATE_CHECKPOINT:Lcom/google/android/location/os/Event;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/google/android/location/os/Event;->WAKELOCK_ACQUIRE:Lcom/google/android/location/os/Event;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/google/android/location/os/Event;->WAKELOCK_RELEASE:Lcom/google/android/location/os/Event;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/google/android/location/os/Event;->WIFI_REQUEST_SCAN:Lcom/google/android/location/os/Event;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/location/os/Event;->$VALUES:[Lcom/google/android/location/os/Event;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/google/android/location/os/Event$Kind;)V
    .locals 0
    .parameter
    .parameter
    .parameter "kind"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/location/os/Event$Kind;",
            ")V"
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 52
    iput-object p3, p0, Lcom/google/android/location/os/Event;->kind:Lcom/google/android/location/os/Event$Kind;

    .line 53
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/location/os/Event;
    .locals 1
    .parameter

    .prologue
    .line 14
    const-class v0, Lcom/google/android/location/os/Event;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/os/Event;

    return-object v0
.end method

.method public static values()[Lcom/google/android/location/os/Event;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/google/android/location/os/Event;->$VALUES:[Lcom/google/android/location/os/Event;

    invoke-virtual {v0}, [Lcom/google/android/location/os/Event;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/location/os/Event;

    return-object v0
.end method
