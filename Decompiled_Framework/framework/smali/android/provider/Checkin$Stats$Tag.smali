.class public final enum Landroid/provider/Checkin$Stats$Tag;
.super Ljava/lang/Enum;
.source "Checkin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Checkin$Stats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Tag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/provider/Checkin$Stats$Tag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/provider/Checkin$Stats$Tag;

.field public static final enum BROWSER_SNAP_CENTER:Landroid/provider/Checkin$Stats$Tag;

.field public static final enum BROWSER_TEXT_SIZE_CHANGE:Landroid/provider/Checkin$Stats$Tag;

.field public static final enum BROWSER_ZOOM_OVERVIEW:Landroid/provider/Checkin$Stats$Tag;

.field public static final enum CRASHES_REPORTED:Landroid/provider/Checkin$Stats$Tag;

.field public static final enum CRASHES_TRUNCATED:Landroid/provider/Checkin$Stats$Tag;

.field public static final enum ELAPSED_REALTIME_SEC:Landroid/provider/Checkin$Stats$Tag;

.field public static final enum ELAPSED_UPTIME_SEC:Landroid/provider/Checkin$Stats$Tag;

.field public static final enum HTTP_REQUEST:Landroid/provider/Checkin$Stats$Tag;

.field public static final enum HTTP_REUSED:Landroid/provider/Checkin$Stats$Tag;

.field public static final enum HTTP_STATUS:Landroid/provider/Checkin$Stats$Tag;

.field public static final enum NETWORK_RX_MOBILE:Landroid/provider/Checkin$Stats$Tag;

.field public static final enum NETWORK_TX_MOBILE:Landroid/provider/Checkin$Stats$Tag;

.field public static final enum PHONE_CDMA_DATA_ATTEMPTED:Landroid/provider/Checkin$Stats$Tag;

.field public static final enum PHONE_CDMA_DATA_CONNECTED:Landroid/provider/Checkin$Stats$Tag;

.field public static final enum PHONE_CDMA_REGISTERED:Landroid/provider/Checkin$Stats$Tag;

.field public static final enum PHONE_GPRS_ATTEMPTED:Landroid/provider/Checkin$Stats$Tag;

.field public static final enum PHONE_GPRS_CONNECTED:Landroid/provider/Checkin$Stats$Tag;

.field public static final enum PHONE_GSM_REGISTERED:Landroid/provider/Checkin$Stats$Tag;

.field public static final enum PHONE_RADIO_RESETS:Landroid/provider/Checkin$Stats$Tag;

.field public static final enum TEST:Landroid/provider/Checkin$Stats$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Landroid/provider/Checkin$Stats$Tag;

    const-string v1, "BROWSER_SNAP_CENTER"

    invoke-direct {v0, v1, v3}, Landroid/provider/Checkin$Stats$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/provider/Checkin$Stats$Tag;->BROWSER_SNAP_CENTER:Landroid/provider/Checkin$Stats$Tag;

    new-instance v0, Landroid/provider/Checkin$Stats$Tag;

    const-string v1, "BROWSER_TEXT_SIZE_CHANGE"

    invoke-direct {v0, v1, v4}, Landroid/provider/Checkin$Stats$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/provider/Checkin$Stats$Tag;->BROWSER_TEXT_SIZE_CHANGE:Landroid/provider/Checkin$Stats$Tag;

    new-instance v0, Landroid/provider/Checkin$Stats$Tag;

    const-string v1, "BROWSER_ZOOM_OVERVIEW"

    invoke-direct {v0, v1, v5}, Landroid/provider/Checkin$Stats$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/provider/Checkin$Stats$Tag;->BROWSER_ZOOM_OVERVIEW:Landroid/provider/Checkin$Stats$Tag;

    new-instance v0, Landroid/provider/Checkin$Stats$Tag;

    const-string v1, "CRASHES_REPORTED"

    invoke-direct {v0, v1, v6}, Landroid/provider/Checkin$Stats$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/provider/Checkin$Stats$Tag;->CRASHES_REPORTED:Landroid/provider/Checkin$Stats$Tag;

    new-instance v0, Landroid/provider/Checkin$Stats$Tag;

    const-string v1, "CRASHES_TRUNCATED"

    invoke-direct {v0, v1, v7}, Landroid/provider/Checkin$Stats$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/provider/Checkin$Stats$Tag;->CRASHES_TRUNCATED:Landroid/provider/Checkin$Stats$Tag;

    new-instance v0, Landroid/provider/Checkin$Stats$Tag;

    const-string v1, "ELAPSED_REALTIME_SEC"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/provider/Checkin$Stats$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/provider/Checkin$Stats$Tag;->ELAPSED_REALTIME_SEC:Landroid/provider/Checkin$Stats$Tag;

    new-instance v0, Landroid/provider/Checkin$Stats$Tag;

    const-string v1, "ELAPSED_UPTIME_SEC"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Landroid/provider/Checkin$Stats$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/provider/Checkin$Stats$Tag;->ELAPSED_UPTIME_SEC:Landroid/provider/Checkin$Stats$Tag;

    new-instance v0, Landroid/provider/Checkin$Stats$Tag;

    const-string v1, "HTTP_REQUEST"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Landroid/provider/Checkin$Stats$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/provider/Checkin$Stats$Tag;->HTTP_REQUEST:Landroid/provider/Checkin$Stats$Tag;

    new-instance v0, Landroid/provider/Checkin$Stats$Tag;

    const-string v1, "HTTP_REUSED"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Landroid/provider/Checkin$Stats$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/provider/Checkin$Stats$Tag;->HTTP_REUSED:Landroid/provider/Checkin$Stats$Tag;

    new-instance v0, Landroid/provider/Checkin$Stats$Tag;

    const-string v1, "HTTP_STATUS"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Landroid/provider/Checkin$Stats$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/provider/Checkin$Stats$Tag;->HTTP_STATUS:Landroid/provider/Checkin$Stats$Tag;

    new-instance v0, Landroid/provider/Checkin$Stats$Tag;

    const-string v1, "PHONE_GSM_REGISTERED"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/provider/Checkin$Stats$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/provider/Checkin$Stats$Tag;->PHONE_GSM_REGISTERED:Landroid/provider/Checkin$Stats$Tag;

    new-instance v0, Landroid/provider/Checkin$Stats$Tag;

    const-string v1, "PHONE_GPRS_ATTEMPTED"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Landroid/provider/Checkin$Stats$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/provider/Checkin$Stats$Tag;->PHONE_GPRS_ATTEMPTED:Landroid/provider/Checkin$Stats$Tag;

    new-instance v0, Landroid/provider/Checkin$Stats$Tag;

    const-string v1, "PHONE_GPRS_CONNECTED"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Landroid/provider/Checkin$Stats$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/provider/Checkin$Stats$Tag;->PHONE_GPRS_CONNECTED:Landroid/provider/Checkin$Stats$Tag;

    new-instance v0, Landroid/provider/Checkin$Stats$Tag;

    const-string v1, "PHONE_RADIO_RESETS"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Landroid/provider/Checkin$Stats$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/provider/Checkin$Stats$Tag;->PHONE_RADIO_RESETS:Landroid/provider/Checkin$Stats$Tag;

    new-instance v0, Landroid/provider/Checkin$Stats$Tag;

    const-string v1, "TEST"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Landroid/provider/Checkin$Stats$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/provider/Checkin$Stats$Tag;->TEST:Landroid/provider/Checkin$Stats$Tag;

    new-instance v0, Landroid/provider/Checkin$Stats$Tag;

    const-string v1, "NETWORK_RX_MOBILE"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Landroid/provider/Checkin$Stats$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/provider/Checkin$Stats$Tag;->NETWORK_RX_MOBILE:Landroid/provider/Checkin$Stats$Tag;

    new-instance v0, Landroid/provider/Checkin$Stats$Tag;

    const-string v1, "NETWORK_TX_MOBILE"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Landroid/provider/Checkin$Stats$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/provider/Checkin$Stats$Tag;->NETWORK_TX_MOBILE:Landroid/provider/Checkin$Stats$Tag;

    new-instance v0, Landroid/provider/Checkin$Stats$Tag;

    const-string v1, "PHONE_CDMA_REGISTERED"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Landroid/provider/Checkin$Stats$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/provider/Checkin$Stats$Tag;->PHONE_CDMA_REGISTERED:Landroid/provider/Checkin$Stats$Tag;

    new-instance v0, Landroid/provider/Checkin$Stats$Tag;

    const-string v1, "PHONE_CDMA_DATA_ATTEMPTED"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Landroid/provider/Checkin$Stats$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/provider/Checkin$Stats$Tag;->PHONE_CDMA_DATA_ATTEMPTED:Landroid/provider/Checkin$Stats$Tag;

    new-instance v0, Landroid/provider/Checkin$Stats$Tag;

    const-string v1, "PHONE_CDMA_DATA_CONNECTED"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Landroid/provider/Checkin$Stats$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/provider/Checkin$Stats$Tag;->PHONE_CDMA_DATA_CONNECTED:Landroid/provider/Checkin$Stats$Tag;

    const/16 v0, 0x14

    new-array v0, v0, [Landroid/provider/Checkin$Stats$Tag;

    sget-object v1, Landroid/provider/Checkin$Stats$Tag;->BROWSER_SNAP_CENTER:Landroid/provider/Checkin$Stats$Tag;

    aput-object v1, v0, v3

    sget-object v1, Landroid/provider/Checkin$Stats$Tag;->BROWSER_TEXT_SIZE_CHANGE:Landroid/provider/Checkin$Stats$Tag;

    aput-object v1, v0, v4

    sget-object v1, Landroid/provider/Checkin$Stats$Tag;->BROWSER_ZOOM_OVERVIEW:Landroid/provider/Checkin$Stats$Tag;

    aput-object v1, v0, v5

    sget-object v1, Landroid/provider/Checkin$Stats$Tag;->CRASHES_REPORTED:Landroid/provider/Checkin$Stats$Tag;

    aput-object v1, v0, v6

    sget-object v1, Landroid/provider/Checkin$Stats$Tag;->CRASHES_TRUNCATED:Landroid/provider/Checkin$Stats$Tag;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Landroid/provider/Checkin$Stats$Tag;->ELAPSED_REALTIME_SEC:Landroid/provider/Checkin$Stats$Tag;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Landroid/provider/Checkin$Stats$Tag;->ELAPSED_UPTIME_SEC:Landroid/provider/Checkin$Stats$Tag;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Landroid/provider/Checkin$Stats$Tag;->HTTP_REQUEST:Landroid/provider/Checkin$Stats$Tag;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Landroid/provider/Checkin$Stats$Tag;->HTTP_REUSED:Landroid/provider/Checkin$Stats$Tag;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Landroid/provider/Checkin$Stats$Tag;->HTTP_STATUS:Landroid/provider/Checkin$Stats$Tag;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Landroid/provider/Checkin$Stats$Tag;->PHONE_GSM_REGISTERED:Landroid/provider/Checkin$Stats$Tag;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Landroid/provider/Checkin$Stats$Tag;->PHONE_GPRS_ATTEMPTED:Landroid/provider/Checkin$Stats$Tag;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Landroid/provider/Checkin$Stats$Tag;->PHONE_GPRS_CONNECTED:Landroid/provider/Checkin$Stats$Tag;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Landroid/provider/Checkin$Stats$Tag;->PHONE_RADIO_RESETS:Landroid/provider/Checkin$Stats$Tag;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Landroid/provider/Checkin$Stats$Tag;->TEST:Landroid/provider/Checkin$Stats$Tag;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Landroid/provider/Checkin$Stats$Tag;->NETWORK_RX_MOBILE:Landroid/provider/Checkin$Stats$Tag;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Landroid/provider/Checkin$Stats$Tag;->NETWORK_TX_MOBILE:Landroid/provider/Checkin$Stats$Tag;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Landroid/provider/Checkin$Stats$Tag;->PHONE_CDMA_REGISTERED:Landroid/provider/Checkin$Stats$Tag;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Landroid/provider/Checkin$Stats$Tag;->PHONE_CDMA_DATA_ATTEMPTED:Landroid/provider/Checkin$Stats$Tag;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Landroid/provider/Checkin$Stats$Tag;->PHONE_CDMA_DATA_CONNECTED:Landroid/provider/Checkin$Stats$Tag;

    aput-object v2, v0, v1

    sput-object v0, Landroid/provider/Checkin$Stats$Tag;->$VALUES:[Landroid/provider/Checkin$Stats$Tag;

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

.method public static valueOf(Ljava/lang/String;)Landroid/provider/Checkin$Stats$Tag;
    .locals 1

    const-class v0, Landroid/provider/Checkin$Stats$Tag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/provider/Checkin$Stats$Tag;

    return-object v0
.end method

.method public static values()[Landroid/provider/Checkin$Stats$Tag;
    .locals 1

    sget-object v0, Landroid/provider/Checkin$Stats$Tag;->$VALUES:[Landroid/provider/Checkin$Stats$Tag;

    invoke-virtual {v0}, [Landroid/provider/Checkin$Stats$Tag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/provider/Checkin$Stats$Tag;

    return-object v0
.end method
