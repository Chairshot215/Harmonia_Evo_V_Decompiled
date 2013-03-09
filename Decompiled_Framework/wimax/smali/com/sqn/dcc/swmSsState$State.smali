.class public final enum Lcom/sqn/dcc/swmSsState$State;
.super Ljava/lang/Enum;
.source "swmSsState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sqn/dcc/swmSsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sqn/dcc/swmSsState$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sqn/dcc/swmSsState$State;

.field public static final enum SWM_SS_ABORTED:Lcom/sqn/dcc/swmSsState$State;

.field public static final enum SWM_SS_AUTHORIZATION:Lcom/sqn/dcc/swmSsState$State;

.field public static final enum SWM_SS_CAPABILITIES_NEGOTIATION:Lcom/sqn/dcc/swmSsState$State;

.field public static final enum SWM_SS_DHCP:Lcom/sqn/dcc/swmSsState$State;

.field public static final enum SWM_SS_DL_SYNCHRONIZATION:Lcom/sqn/dcc/swmSsState$State;

.field public static final enum SWM_SS_HANDOVER_DL_ACQ:Lcom/sqn/dcc/swmSsState$State;

.field public static final enum SWM_SS_HANDOVER_RANGING:Lcom/sqn/dcc/swmSsState$State;

.field public static final enum SWM_SS_IDLE:Lcom/sqn/dcc/swmSsState$State;

.field public static final enum SWM_SS_INIT:Lcom/sqn/dcc/swmSsState$State;

.field public static final enum SWM_SS_INVALID:Lcom/sqn/dcc/swmSsState$State;

.field public static final enum SWM_SS_OPERATIONAL:Lcom/sqn/dcc/swmSsState$State;

.field public static final enum SWM_SS_RANGING:Lcom/sqn/dcc/swmSsState$State;

.field public static final enum SWM_SS_REGISTRATION:Lcom/sqn/dcc/swmSsState$State;

.field public static final enum SWM_SS_SLEEP:Lcom/sqn/dcc/swmSsState$State;

.field public static final enum SWM_SS_TFTP:Lcom/sqn/dcc/swmSsState$State;

.field public static final enum SWM_SS_TOD:Lcom/sqn/dcc/swmSsState$State;

.field public static final enum SWM_SS_UL_ACQUISITION:Lcom/sqn/dcc/swmSsState$State;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/sqn/dcc/swmSsState$State;

    const-string v1, "SWM_SS_INIT"

    invoke-direct {v0, v1, v3}, Lcom/sqn/dcc/swmSsState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sqn/dcc/swmSsState$State;->SWM_SS_INIT:Lcom/sqn/dcc/swmSsState$State;

    new-instance v0, Lcom/sqn/dcc/swmSsState$State;

    const-string v1, "SWM_SS_DL_SYNCHRONIZATION"

    invoke-direct {v0, v1, v4}, Lcom/sqn/dcc/swmSsState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sqn/dcc/swmSsState$State;->SWM_SS_DL_SYNCHRONIZATION:Lcom/sqn/dcc/swmSsState$State;

    new-instance v0, Lcom/sqn/dcc/swmSsState$State;

    const-string v1, "SWM_SS_HANDOVER_DL_ACQ"

    invoke-direct {v0, v1, v5}, Lcom/sqn/dcc/swmSsState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sqn/dcc/swmSsState$State;->SWM_SS_HANDOVER_DL_ACQ:Lcom/sqn/dcc/swmSsState$State;

    new-instance v0, Lcom/sqn/dcc/swmSsState$State;

    const-string v1, "SWM_SS_UL_ACQUISITION"

    invoke-direct {v0, v1, v6}, Lcom/sqn/dcc/swmSsState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sqn/dcc/swmSsState$State;->SWM_SS_UL_ACQUISITION:Lcom/sqn/dcc/swmSsState$State;

    new-instance v0, Lcom/sqn/dcc/swmSsState$State;

    const-string v1, "SWM_SS_RANGING"

    invoke-direct {v0, v1, v7}, Lcom/sqn/dcc/swmSsState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sqn/dcc/swmSsState$State;->SWM_SS_RANGING:Lcom/sqn/dcc/swmSsState$State;

    new-instance v0, Lcom/sqn/dcc/swmSsState$State;

    const-string v1, "SWM_SS_HANDOVER_RANGING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sqn/dcc/swmSsState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sqn/dcc/swmSsState$State;->SWM_SS_HANDOVER_RANGING:Lcom/sqn/dcc/swmSsState$State;

    new-instance v0, Lcom/sqn/dcc/swmSsState$State;

    const-string v1, "SWM_SS_CAPABILITIES_NEGOTIATION"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/sqn/dcc/swmSsState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sqn/dcc/swmSsState$State;->SWM_SS_CAPABILITIES_NEGOTIATION:Lcom/sqn/dcc/swmSsState$State;

    new-instance v0, Lcom/sqn/dcc/swmSsState$State;

    const-string v1, "SWM_SS_AUTHORIZATION"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/sqn/dcc/swmSsState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sqn/dcc/swmSsState$State;->SWM_SS_AUTHORIZATION:Lcom/sqn/dcc/swmSsState$State;

    new-instance v0, Lcom/sqn/dcc/swmSsState$State;

    const-string v1, "SWM_SS_REGISTRATION"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/sqn/dcc/swmSsState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sqn/dcc/swmSsState$State;->SWM_SS_REGISTRATION:Lcom/sqn/dcc/swmSsState$State;

    new-instance v0, Lcom/sqn/dcc/swmSsState$State;

    const-string v1, "SWM_SS_DHCP"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/sqn/dcc/swmSsState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sqn/dcc/swmSsState$State;->SWM_SS_DHCP:Lcom/sqn/dcc/swmSsState$State;

    new-instance v0, Lcom/sqn/dcc/swmSsState$State;

    const-string v1, "SWM_SS_TOD"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/sqn/dcc/swmSsState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sqn/dcc/swmSsState$State;->SWM_SS_TOD:Lcom/sqn/dcc/swmSsState$State;

    new-instance v0, Lcom/sqn/dcc/swmSsState$State;

    const-string v1, "SWM_SS_TFTP"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/sqn/dcc/swmSsState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sqn/dcc/swmSsState$State;->SWM_SS_TFTP:Lcom/sqn/dcc/swmSsState$State;

    new-instance v0, Lcom/sqn/dcc/swmSsState$State;

    const-string v1, "SWM_SS_OPERATIONAL"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/sqn/dcc/swmSsState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sqn/dcc/swmSsState$State;->SWM_SS_OPERATIONAL:Lcom/sqn/dcc/swmSsState$State;

    new-instance v0, Lcom/sqn/dcc/swmSsState$State;

    const-string v1, "SWM_SS_SLEEP"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/sqn/dcc/swmSsState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sqn/dcc/swmSsState$State;->SWM_SS_SLEEP:Lcom/sqn/dcc/swmSsState$State;

    new-instance v0, Lcom/sqn/dcc/swmSsState$State;

    const-string v1, "SWM_SS_IDLE"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/sqn/dcc/swmSsState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sqn/dcc/swmSsState$State;->SWM_SS_IDLE:Lcom/sqn/dcc/swmSsState$State;

    new-instance v0, Lcom/sqn/dcc/swmSsState$State;

    const-string v1, "SWM_SS_ABORTED"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/sqn/dcc/swmSsState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sqn/dcc/swmSsState$State;->SWM_SS_ABORTED:Lcom/sqn/dcc/swmSsState$State;

    new-instance v0, Lcom/sqn/dcc/swmSsState$State;

    const-string v1, "SWM_SS_INVALID"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/sqn/dcc/swmSsState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sqn/dcc/swmSsState$State;->SWM_SS_INVALID:Lcom/sqn/dcc/swmSsState$State;

    const/16 v0, 0x11

    new-array v0, v0, [Lcom/sqn/dcc/swmSsState$State;

    sget-object v1, Lcom/sqn/dcc/swmSsState$State;->SWM_SS_INIT:Lcom/sqn/dcc/swmSsState$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sqn/dcc/swmSsState$State;->SWM_SS_DL_SYNCHRONIZATION:Lcom/sqn/dcc/swmSsState$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sqn/dcc/swmSsState$State;->SWM_SS_HANDOVER_DL_ACQ:Lcom/sqn/dcc/swmSsState$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sqn/dcc/swmSsState$State;->SWM_SS_UL_ACQUISITION:Lcom/sqn/dcc/swmSsState$State;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sqn/dcc/swmSsState$State;->SWM_SS_RANGING:Lcom/sqn/dcc/swmSsState$State;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/sqn/dcc/swmSsState$State;->SWM_SS_HANDOVER_RANGING:Lcom/sqn/dcc/swmSsState$State;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sqn/dcc/swmSsState$State;->SWM_SS_CAPABILITIES_NEGOTIATION:Lcom/sqn/dcc/swmSsState$State;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sqn/dcc/swmSsState$State;->SWM_SS_AUTHORIZATION:Lcom/sqn/dcc/swmSsState$State;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/sqn/dcc/swmSsState$State;->SWM_SS_REGISTRATION:Lcom/sqn/dcc/swmSsState$State;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/sqn/dcc/swmSsState$State;->SWM_SS_DHCP:Lcom/sqn/dcc/swmSsState$State;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/sqn/dcc/swmSsState$State;->SWM_SS_TOD:Lcom/sqn/dcc/swmSsState$State;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/sqn/dcc/swmSsState$State;->SWM_SS_TFTP:Lcom/sqn/dcc/swmSsState$State;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/sqn/dcc/swmSsState$State;->SWM_SS_OPERATIONAL:Lcom/sqn/dcc/swmSsState$State;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/sqn/dcc/swmSsState$State;->SWM_SS_SLEEP:Lcom/sqn/dcc/swmSsState$State;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/sqn/dcc/swmSsState$State;->SWM_SS_IDLE:Lcom/sqn/dcc/swmSsState$State;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/sqn/dcc/swmSsState$State;->SWM_SS_ABORTED:Lcom/sqn/dcc/swmSsState$State;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/sqn/dcc/swmSsState$State;->SWM_SS_INVALID:Lcom/sqn/dcc/swmSsState$State;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sqn/dcc/swmSsState$State;->$VALUES:[Lcom/sqn/dcc/swmSsState$State;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sqn/dcc/swmSsState$State;
    .locals 1

    const-class v0, Lcom/sqn/dcc/swmSsState$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sqn/dcc/swmSsState$State;

    return-object v0
.end method

.method public static values()[Lcom/sqn/dcc/swmSsState$State;
    .locals 1

    sget-object v0, Lcom/sqn/dcc/swmSsState$State;->$VALUES:[Lcom/sqn/dcc/swmSsState$State;

    invoke-virtual {v0}, [Lcom/sqn/dcc/swmSsState$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sqn/dcc/swmSsState$State;

    return-object v0
.end method
