.class public final enum Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;
.super Ljava/lang/Enum;
.source "HTCWimax4GInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/net/wimax/HTCWimax4GInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WimaxState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;

.field public static final enum ABORT:Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;

.field public static final enum AUTHORIZATION:Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;

.field public static final enum CAPABILITIES_NEGOTIATION:Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;

.field public static final enum DL_SYNCHRONIZATION:Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;

.field public static final enum HANDOVER_RANGING:Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;

.field public static final enum IDLE:Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;

.field public static final enum INVALID:Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;

.field public static final enum OPERATIONAL:Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;

.field public static final enum RANGING:Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;

.field public static final enum REGISTRATION:Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;

.field public static final enum SLEEP:Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;

.field public static final enum UL_ACQUISITION:Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;

    const-string v1, "DL_SYNCHRONIZATION"

    invoke-direct {v0, v1, v3}, Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;->DL_SYNCHRONIZATION:Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;

    new-instance v0, Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;

    const-string v1, "UL_ACQUISITION"

    invoke-direct {v0, v1, v4}, Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;->UL_ACQUISITION:Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;

    new-instance v0, Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;

    const-string v1, "RANGING"

    invoke-direct {v0, v1, v5}, Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;->RANGING:Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;

    new-instance v0, Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;

    const-string v1, "HANDOVER_RANGING"

    invoke-direct {v0, v1, v6}, Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;->HANDOVER_RANGING:Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;

    new-instance v0, Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;

    const-string v1, "CAPABILITIES_NEGOTIATION"

    invoke-direct {v0, v1, v7}, Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;->CAPABILITIES_NEGOTIATION:Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;

    new-instance v0, Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;

    const-string v1, "AUTHORIZATION"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;->AUTHORIZATION:Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;

    new-instance v0, Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;

    const-string v1, "REGISTRATION"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;->REGISTRATION:Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;

    new-instance v0, Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;

    const-string v1, "OPERATIONAL"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;->OPERATIONAL:Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;

    new-instance v0, Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;

    const-string v1, "SLEEP"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;->SLEEP:Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;

    new-instance v0, Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;

    const-string v1, "IDLE"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;->IDLE:Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;

    new-instance v0, Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;

    const-string v1, "ABORT"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;->ABORT:Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;

    new-instance v0, Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;

    const-string v1, "INVALID"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;->INVALID:Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;

    const/16 v0, 0xc

    new-array v0, v0, [Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;

    sget-object v1, Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;->DL_SYNCHRONIZATION:Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;->UL_ACQUISITION:Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;->RANGING:Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;->HANDOVER_RANGING:Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;->CAPABILITIES_NEGOTIATION:Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;->AUTHORIZATION:Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;->REGISTRATION:Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;->OPERATIONAL:Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;->SLEEP:Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;->IDLE:Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;->ABORT:Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;->INVALID:Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;->$VALUES:[Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;
    .locals 1

    const-class v0, Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;

    return-object v0
.end method

.method public static values()[Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;
    .locals 1

    sget-object v0, Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;->$VALUES:[Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;

    invoke-virtual {v0}, [Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;

    return-object v0
.end method
