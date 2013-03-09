.class public final enum Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;
.super Ljava/lang/Enum;
.source "HTCWimax4GInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/net/wimax/HTCWimax4GInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "KT_WIBRO_STATE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;

.field public static final enum AWAKE:Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;

.field public static final enum FBSS:Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;

.field public static final enum HHO:Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;

.field public static final enum IDLE:Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;

.field public static final enum INIT:Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;

.field public static final enum MODEMDOWN:Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;

.field public static final enum NE_DSx:Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;

.field public static final enum NE_PKM:Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;

.field public static final enum NE_RANGING:Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;

.field public static final enum NE_REG:Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;

.field public static final enum NE_SBC:Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;

.field public static final enum NULL:Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;

.field public static final enum OUTOFFZONE:Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;

.field public static final enum SLEEP:Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;

.field public static final enum STANDBY:Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;

.field public static final enum SYNC:Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;

.field public static final enum UL:Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;

    const-string v1, "NULL"

    invoke-direct {v0, v1, v3}, Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;->NULL:Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;

    new-instance v0, Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;

    const-string v1, "STANDBY"

    invoke-direct {v0, v1, v4}, Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;->STANDBY:Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;

    new-instance v0, Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;

    const-string v1, "INIT"

    invoke-direct {v0, v1, v5}, Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;->INIT:Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;

    new-instance v0, Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;

    const-string v1, "SYNC"

    invoke-direct {v0, v1, v6}, Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;->SYNC:Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;

    new-instance v0, Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;

    const-string v1, "UL"

    invoke-direct {v0, v1, v7}, Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;->UL:Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;

    new-instance v0, Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;

    const-string v1, "OUTOFFZONE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;->OUTOFFZONE:Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;

    new-instance v0, Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;

    const-string v1, "NE_RANGING"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;->NE_RANGING:Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;

    new-instance v0, Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;

    const-string v1, "NE_SBC"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;->NE_SBC:Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;

    new-instance v0, Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;

    const-string v1, "NE_PKM"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;->NE_PKM:Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;

    new-instance v0, Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;

    const-string v1, "NE_REG"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;->NE_REG:Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;

    new-instance v0, Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;

    const-string v1, "NE_DSx"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;->NE_DSx:Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;

    new-instance v0, Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;

    const-string v1, "AWAKE"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;->AWAKE:Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;

    new-instance v0, Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;

    const-string v1, "IDLE"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;->IDLE:Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;

    new-instance v0, Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;

    const-string v1, "HHO"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;->HHO:Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;

    new-instance v0, Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;

    const-string v1, "MODEMDOWN"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;->MODEMDOWN:Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;

    new-instance v0, Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;

    const-string v1, "FBSS"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;->FBSS:Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;

    new-instance v0, Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;

    const-string v1, "SLEEP"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;->SLEEP:Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;

    const/16 v0, 0x11

    new-array v0, v0, [Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;

    sget-object v1, Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;->NULL:Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;->STANDBY:Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;->INIT:Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;->SYNC:Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;

    aput-object v1, v0, v6

    sget-object v1, Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;->UL:Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;->OUTOFFZONE:Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;->NE_RANGING:Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;->NE_SBC:Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;->NE_PKM:Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;->NE_REG:Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;->NE_DSx:Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;->AWAKE:Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;->IDLE:Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;->HHO:Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;->MODEMDOWN:Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;->FBSS:Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;->SLEEP:Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;->$VALUES:[Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;

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

.method public static valueOf(Ljava/lang/String;)Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;
    .locals 1

    const-class v0, Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;

    return-object v0
.end method

.method public static values()[Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;
    .locals 1

    sget-object v0, Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;->$VALUES:[Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;

    invoke-virtual {v0}, [Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;

    return-object v0
.end method
