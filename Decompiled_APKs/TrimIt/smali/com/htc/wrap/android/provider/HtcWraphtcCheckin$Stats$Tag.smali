.class public final enum Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;
.super Ljava/lang/Enum;
.source "HtcWraphtcCheckin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Tag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;

.field public static final enum BROWSER_SNAP_CENTER:Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;

.field public static final enum BROWSER_TEXT_SIZE_CHANGE:Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;

.field public static final enum BROWSER_ZOOM_OVERVIEW:Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;

.field public static final enum CRASHES_REPORTED:Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;

.field public static final enum CRASHES_TRUNCATED:Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;

.field public static final enum ELAPSED_REALTIME_SEC:Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;

.field public static final enum ELAPSED_UPTIME_SEC:Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;

.field public static final enum HTTP_REQUEST:Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;

.field public static final enum HTTP_REUSED:Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;

.field public static final enum HTTP_STATUS:Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;

.field public static final enum NETWORK_RX_MOBILE:Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;

.field public static final enum NETWORK_TX_MOBILE:Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;

.field public static final enum PHONE_CDMA_DATA_ATTEMPTED:Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;

.field public static final enum PHONE_CDMA_DATA_CONNECTED:Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;

.field public static final enum PHONE_CDMA_REGISTERED:Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;

.field public static final enum PHONE_GPRS_ATTEMPTED:Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;

.field public static final enum PHONE_GPRS_CONNECTED:Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;

.field public static final enum PHONE_GSM_REGISTERED:Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;

.field public static final enum PHONE_RADIO_RESETS:Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;

.field public static final enum TEST:Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 128
    new-instance v0, Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;

    const-string v1, "BROWSER_SNAP_CENTER"

    invoke-direct {v0, v1, v3}, Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;->BROWSER_SNAP_CENTER:Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;

    .line 129
    new-instance v0, Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;

    const-string v1, "BROWSER_TEXT_SIZE_CHANGE"

    invoke-direct {v0, v1, v4}, Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;->BROWSER_TEXT_SIZE_CHANGE:Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;

    .line 130
    new-instance v0, Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;

    const-string v1, "BROWSER_ZOOM_OVERVIEW"

    invoke-direct {v0, v1, v5}, Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;->BROWSER_ZOOM_OVERVIEW:Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;

    .line 132
    new-instance v0, Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;

    const-string v1, "CRASHES_REPORTED"

    invoke-direct {v0, v1, v6}, Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;->CRASHES_REPORTED:Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;

    .line 133
    new-instance v0, Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;

    const-string v1, "CRASHES_TRUNCATED"

    invoke-direct {v0, v1, v7}, Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;->CRASHES_TRUNCATED:Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;

    .line 134
    new-instance v0, Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;

    const-string v1, "ELAPSED_REALTIME_SEC"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;->ELAPSED_REALTIME_SEC:Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;

    .line 135
    new-instance v0, Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;

    const-string v1, "ELAPSED_UPTIME_SEC"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;->ELAPSED_UPTIME_SEC:Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;

    .line 136
    new-instance v0, Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;

    const-string v1, "HTTP_REQUEST"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;->HTTP_REQUEST:Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;

    .line 137
    new-instance v0, Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;

    const-string v1, "HTTP_REUSED"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;->HTTP_REUSED:Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;

    .line 138
    new-instance v0, Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;

    const-string v1, "HTTP_STATUS"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;->HTTP_STATUS:Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;

    .line 139
    new-instance v0, Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;

    const-string v1, "PHONE_GSM_REGISTERED"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;->PHONE_GSM_REGISTERED:Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;

    .line 140
    new-instance v0, Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;

    const-string v1, "PHONE_GPRS_ATTEMPTED"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;->PHONE_GPRS_ATTEMPTED:Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;

    .line 141
    new-instance v0, Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;

    const-string v1, "PHONE_GPRS_CONNECTED"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;->PHONE_GPRS_CONNECTED:Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;

    .line 142
    new-instance v0, Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;

    const-string v1, "PHONE_RADIO_RESETS"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;->PHONE_RADIO_RESETS:Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;

    .line 143
    new-instance v0, Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;

    const-string v1, "TEST"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;->TEST:Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;

    .line 144
    new-instance v0, Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;

    const-string v1, "NETWORK_RX_MOBILE"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;->NETWORK_RX_MOBILE:Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;

    .line 145
    new-instance v0, Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;

    const-string v1, "NETWORK_TX_MOBILE"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;->NETWORK_TX_MOBILE:Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;

    .line 146
    new-instance v0, Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;

    const-string v1, "PHONE_CDMA_REGISTERED"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;->PHONE_CDMA_REGISTERED:Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;

    .line 147
    new-instance v0, Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;

    const-string v1, "PHONE_CDMA_DATA_ATTEMPTED"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;->PHONE_CDMA_DATA_ATTEMPTED:Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;

    .line 148
    new-instance v0, Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;

    const-string v1, "PHONE_CDMA_DATA_CONNECTED"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;->PHONE_CDMA_DATA_CONNECTED:Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;

    .line 127
    const/16 v0, 0x14

    new-array v0, v0, [Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;

    sget-object v1, Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;->BROWSER_SNAP_CENTER:Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;->BROWSER_TEXT_SIZE_CHANGE:Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;->BROWSER_ZOOM_OVERVIEW:Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;->CRASHES_REPORTED:Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;

    aput-object v1, v0, v6

    sget-object v1, Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;->CRASHES_TRUNCATED:Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;->ELAPSED_REALTIME_SEC:Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;->ELAPSED_UPTIME_SEC:Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;->HTTP_REQUEST:Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;->HTTP_REUSED:Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;->HTTP_STATUS:Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;->PHONE_GSM_REGISTERED:Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;->PHONE_GPRS_ATTEMPTED:Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;->PHONE_GPRS_CONNECTED:Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;->PHONE_RADIO_RESETS:Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;->TEST:Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;->NETWORK_RX_MOBILE:Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;->NETWORK_TX_MOBILE:Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;->PHONE_CDMA_REGISTERED:Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;->PHONE_CDMA_DATA_ATTEMPTED:Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;->PHONE_CDMA_DATA_CONNECTED:Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;->$VALUES:[Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 127
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;
    .locals 1
    .parameter "name"

    .prologue
    .line 127
    const-class v0, Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;

    return-object v0
.end method

.method public static values()[Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;
    .locals 1

    .prologue
    .line 127
    sget-object v0, Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;->$VALUES:[Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;

    invoke-virtual {v0}, [Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;

    return-object v0
.end method
