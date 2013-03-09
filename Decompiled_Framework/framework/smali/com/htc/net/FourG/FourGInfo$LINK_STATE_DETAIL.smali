.class public final enum Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;
.super Ljava/lang/Enum;
.source "FourGInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/net/FourG/FourGInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LINK_STATE_DETAIL"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;

.field public static final enum LINK_ST_DETAIL_3WAY_HANDSHAKE:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;

.field public static final enum LINK_ST_DETAIL_ABORTED:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;

.field public static final enum LINK_ST_DETAIL_CAPABILITIES_NEGOTIATION:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;

.field public static final enum LINK_ST_DETAIL_CONNECTION_FAILURE:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;

.field public static final enum LINK_ST_DETAIL_DEREGISTRATION:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;

.field public static final enum LINK_ST_DETAIL_DHCP:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;

.field public static final enum LINK_ST_DETAIL_DL_SYNC:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;

.field public static final enum LINK_ST_DETAIL_EAP_AUTHENTICATION:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;

.field public static final enum LINK_ST_DETAIL_HANDOVER_RANGING:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;

.field public static final enum LINK_ST_DETAIL_HANDOVER_SYNC:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;

.field public static final enum LINK_ST_DETAIL_IDLE:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;

.field public static final enum LINK_ST_DETAIL_NOT_CONNECTED:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;

.field public static final enum LINK_ST_DETAIL_OPERATIONAL:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;

.field public static final enum LINK_ST_DETAIL_RANGING:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;

.field public static final enum LINK_ST_DETAIL_REGISTRATION:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;

.field public static final enum LINK_ST_DETAIL_SLEEP:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;

.field public static final enum LINK_ST_DETAIL_UL_ACQUISITION:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;

    const-string v1, "LINK_ST_DETAIL_DL_SYNC"

    invoke-direct {v0, v1, v3}, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;->LINK_ST_DETAIL_DL_SYNC:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;

    new-instance v0, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;

    const-string v1, "LINK_ST_DETAIL_HANDOVER_SYNC"

    invoke-direct {v0, v1, v4}, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;->LINK_ST_DETAIL_HANDOVER_SYNC:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;

    new-instance v0, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;

    const-string v1, "LINK_ST_DETAIL_UL_ACQUISITION"

    invoke-direct {v0, v1, v5}, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;->LINK_ST_DETAIL_UL_ACQUISITION:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;

    new-instance v0, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;

    const-string v1, "LINK_ST_DETAIL_RANGING"

    invoke-direct {v0, v1, v6}, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;->LINK_ST_DETAIL_RANGING:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;

    new-instance v0, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;

    const-string v1, "LINK_ST_DETAIL_HANDOVER_RANGING"

    invoke-direct {v0, v1, v7}, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;->LINK_ST_DETAIL_HANDOVER_RANGING:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;

    new-instance v0, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;

    const-string v1, "LINK_ST_DETAIL_CAPABILITIES_NEGOTIATION"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;->LINK_ST_DETAIL_CAPABILITIES_NEGOTIATION:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;

    new-instance v0, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;

    const-string v1, "LINK_ST_DETAIL_EAP_AUTHENTICATION"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;->LINK_ST_DETAIL_EAP_AUTHENTICATION:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;

    new-instance v0, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;

    const-string v1, "LINK_ST_DETAIL_3WAY_HANDSHAKE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;->LINK_ST_DETAIL_3WAY_HANDSHAKE:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;

    new-instance v0, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;

    const-string v1, "LINK_ST_DETAIL_REGISTRATION"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;->LINK_ST_DETAIL_REGISTRATION:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;

    new-instance v0, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;

    const-string v1, "LINK_ST_DETAIL_DHCP"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;->LINK_ST_DETAIL_DHCP:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;

    new-instance v0, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;

    const-string v1, "LINK_ST_DETAIL_OPERATIONAL"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;->LINK_ST_DETAIL_OPERATIONAL:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;

    new-instance v0, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;

    const-string v1, "LINK_ST_DETAIL_SLEEP"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;->LINK_ST_DETAIL_SLEEP:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;

    new-instance v0, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;

    const-string v1, "LINK_ST_DETAIL_IDLE"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;->LINK_ST_DETAIL_IDLE:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;

    new-instance v0, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;

    const-string v1, "LINK_ST_DETAIL_DEREGISTRATION"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;->LINK_ST_DETAIL_DEREGISTRATION:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;

    new-instance v0, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;

    const-string v1, "LINK_ST_DETAIL_CONNECTION_FAILURE"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;->LINK_ST_DETAIL_CONNECTION_FAILURE:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;

    new-instance v0, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;

    const-string v1, "LINK_ST_DETAIL_ABORTED"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;->LINK_ST_DETAIL_ABORTED:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;

    new-instance v0, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;

    const-string v1, "LINK_ST_DETAIL_NOT_CONNECTED"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;->LINK_ST_DETAIL_NOT_CONNECTED:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;

    const/16 v0, 0x11

    new-array v0, v0, [Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;

    sget-object v1, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;->LINK_ST_DETAIL_DL_SYNC:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;->LINK_ST_DETAIL_HANDOVER_SYNC:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;->LINK_ST_DETAIL_UL_ACQUISITION:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;->LINK_ST_DETAIL_RANGING:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;

    aput-object v1, v0, v6

    sget-object v1, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;->LINK_ST_DETAIL_HANDOVER_RANGING:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;->LINK_ST_DETAIL_CAPABILITIES_NEGOTIATION:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;->LINK_ST_DETAIL_EAP_AUTHENTICATION:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;->LINK_ST_DETAIL_3WAY_HANDSHAKE:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;->LINK_ST_DETAIL_REGISTRATION:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;->LINK_ST_DETAIL_DHCP:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;->LINK_ST_DETAIL_OPERATIONAL:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;->LINK_ST_DETAIL_SLEEP:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;->LINK_ST_DETAIL_IDLE:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;->LINK_ST_DETAIL_DEREGISTRATION:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;->LINK_ST_DETAIL_CONNECTION_FAILURE:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;->LINK_ST_DETAIL_ABORTED:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;->LINK_ST_DETAIL_NOT_CONNECTED:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;->$VALUES:[Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;

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

.method public static valueOf(Ljava/lang/String;)Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;
    .locals 1

    const-class v0, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;

    return-object v0
.end method

.method public static values()[Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;
    .locals 1

    sget-object v0, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;->$VALUES:[Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;

    invoke-virtual {v0}, [Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;

    return-object v0
.end method
