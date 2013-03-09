.class public final enum Lcom/htc/net/wimax/HTCWimax4GInfo$PowerControlMode;
.super Ljava/lang/Enum;
.source "HTCWimax4GInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/net/wimax/HTCWimax4GInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PowerControlMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/net/wimax/HTCWimax4GInfo$PowerControlMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/net/wimax/HTCWimax4GInfo$PowerControlMode;

.field public static final enum CLOSED_LOOP_POWER_CONTROL_MDOE:Lcom/htc/net/wimax/HTCWimax4GInfo$PowerControlMode;

.field public static final enum OPEN_LOOP_POWER_CONTROL_ACTIVE_MDOE:Lcom/htc/net/wimax/HTCWimax4GInfo$PowerControlMode;

.field public static final enum OPEN_LOOP_POWER_CONTROL_PASSIVE_MDOE:Lcom/htc/net/wimax/HTCWimax4GInfo$PowerControlMode;

.field public static final enum RESERVED:Lcom/htc/net/wimax/HTCWimax4GInfo$PowerControlMode;

.field public static final enum UNKNOW_POWER_CONTROL_MDOE:Lcom/htc/net/wimax/HTCWimax4GInfo$PowerControlMode;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/htc/net/wimax/HTCWimax4GInfo$PowerControlMode;

    const-string v1, "UNKNOW_POWER_CONTROL_MDOE"

    invoke-direct {v0, v1, v2}, Lcom/htc/net/wimax/HTCWimax4GInfo$PowerControlMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/net/wimax/HTCWimax4GInfo$PowerControlMode;->UNKNOW_POWER_CONTROL_MDOE:Lcom/htc/net/wimax/HTCWimax4GInfo$PowerControlMode;

    new-instance v0, Lcom/htc/net/wimax/HTCWimax4GInfo$PowerControlMode;

    const-string v1, "CLOSED_LOOP_POWER_CONTROL_MDOE"

    invoke-direct {v0, v1, v3}, Lcom/htc/net/wimax/HTCWimax4GInfo$PowerControlMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/net/wimax/HTCWimax4GInfo$PowerControlMode;->CLOSED_LOOP_POWER_CONTROL_MDOE:Lcom/htc/net/wimax/HTCWimax4GInfo$PowerControlMode;

    new-instance v0, Lcom/htc/net/wimax/HTCWimax4GInfo$PowerControlMode;

    const-string v1, "OPEN_LOOP_POWER_CONTROL_PASSIVE_MDOE"

    invoke-direct {v0, v1, v4}, Lcom/htc/net/wimax/HTCWimax4GInfo$PowerControlMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/net/wimax/HTCWimax4GInfo$PowerControlMode;->OPEN_LOOP_POWER_CONTROL_PASSIVE_MDOE:Lcom/htc/net/wimax/HTCWimax4GInfo$PowerControlMode;

    new-instance v0, Lcom/htc/net/wimax/HTCWimax4GInfo$PowerControlMode;

    const-string v1, "OPEN_LOOP_POWER_CONTROL_ACTIVE_MDOE"

    invoke-direct {v0, v1, v5}, Lcom/htc/net/wimax/HTCWimax4GInfo$PowerControlMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/net/wimax/HTCWimax4GInfo$PowerControlMode;->OPEN_LOOP_POWER_CONTROL_ACTIVE_MDOE:Lcom/htc/net/wimax/HTCWimax4GInfo$PowerControlMode;

    new-instance v0, Lcom/htc/net/wimax/HTCWimax4GInfo$PowerControlMode;

    const-string v1, "RESERVED"

    invoke-direct {v0, v1, v6}, Lcom/htc/net/wimax/HTCWimax4GInfo$PowerControlMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/net/wimax/HTCWimax4GInfo$PowerControlMode;->RESERVED:Lcom/htc/net/wimax/HTCWimax4GInfo$PowerControlMode;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/htc/net/wimax/HTCWimax4GInfo$PowerControlMode;

    sget-object v1, Lcom/htc/net/wimax/HTCWimax4GInfo$PowerControlMode;->UNKNOW_POWER_CONTROL_MDOE:Lcom/htc/net/wimax/HTCWimax4GInfo$PowerControlMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/net/wimax/HTCWimax4GInfo$PowerControlMode;->CLOSED_LOOP_POWER_CONTROL_MDOE:Lcom/htc/net/wimax/HTCWimax4GInfo$PowerControlMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/net/wimax/HTCWimax4GInfo$PowerControlMode;->OPEN_LOOP_POWER_CONTROL_PASSIVE_MDOE:Lcom/htc/net/wimax/HTCWimax4GInfo$PowerControlMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/net/wimax/HTCWimax4GInfo$PowerControlMode;->OPEN_LOOP_POWER_CONTROL_ACTIVE_MDOE:Lcom/htc/net/wimax/HTCWimax4GInfo$PowerControlMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/net/wimax/HTCWimax4GInfo$PowerControlMode;->RESERVED:Lcom/htc/net/wimax/HTCWimax4GInfo$PowerControlMode;

    aput-object v1, v0, v6

    sput-object v0, Lcom/htc/net/wimax/HTCWimax4GInfo$PowerControlMode;->$VALUES:[Lcom/htc/net/wimax/HTCWimax4GInfo$PowerControlMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/htc/net/wimax/HTCWimax4GInfo$PowerControlMode;
    .locals 1

    const-class v0, Lcom/htc/net/wimax/HTCWimax4GInfo$PowerControlMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/net/wimax/HTCWimax4GInfo$PowerControlMode;

    return-object v0
.end method

.method public static values()[Lcom/htc/net/wimax/HTCWimax4GInfo$PowerControlMode;
    .locals 1

    sget-object v0, Lcom/htc/net/wimax/HTCWimax4GInfo$PowerControlMode;->$VALUES:[Lcom/htc/net/wimax/HTCWimax4GInfo$PowerControlMode;

    invoke-virtual {v0}, [Lcom/htc/net/wimax/HTCWimax4GInfo$PowerControlMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/net/wimax/HTCWimax4GInfo$PowerControlMode;

    return-object v0
.end method
