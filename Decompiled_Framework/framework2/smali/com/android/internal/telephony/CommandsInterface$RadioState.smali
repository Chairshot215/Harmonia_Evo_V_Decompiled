.class public final enum Lcom/android/internal/telephony/CommandsInterface$RadioState;
.super Ljava/lang/Enum;
.source "CommandsInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CommandsInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RadioState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/CommandsInterface$RadioState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/CommandsInterface$RadioState;

.field public static final enum NV_NOT_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

.field public static final enum NV_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

.field public static final enum NV_SIM_LOCKED_OR_ABSENT:Lcom/android/internal/telephony/CommandsInterface$RadioState;

.field public static final enum NV_SIM_NOT_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

.field public static final enum NV_SIM_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

.field public static final enum RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

.field public static final enum RADIO_ON:Lcom/android/internal/telephony/CommandsInterface$RadioState;

.field public static final enum RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

.field public static final enum RUIM_LOCKED_OR_ABSENT:Lcom/android/internal/telephony/CommandsInterface$RadioState;

.field public static final enum RUIM_NOT_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

.field public static final enum RUIM_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

.field public static final enum SIM_LOCKED_OR_ABSENT:Lcom/android/internal/telephony/CommandsInterface$RadioState;

.field public static final enum SIM_NOT_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

.field public static final enum SIM_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;


# instance fields
.field private stateType:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x3

    new-instance v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;

    const-string v1, "RADIO_OFF"

    invoke-direct {v0, v1, v4, v4}, Lcom/android/internal/telephony/CommandsInterface$RadioState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    new-instance v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;

    const-string v1, "RADIO_UNAVAILABLE"

    invoke-direct {v0, v1, v5, v4}, Lcom/android/internal/telephony/CommandsInterface$RadioState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    new-instance v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;

    const-string v1, "SIM_NOT_READY"

    invoke-direct {v0, v1, v6, v5}, Lcom/android/internal/telephony/CommandsInterface$RadioState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->SIM_NOT_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    new-instance v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;

    const-string v1, "SIM_LOCKED_OR_ABSENT"

    invoke-direct {v0, v1, v3, v5}, Lcom/android/internal/telephony/CommandsInterface$RadioState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->SIM_LOCKED_OR_ABSENT:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    new-instance v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;

    const-string v1, "SIM_READY"

    invoke-direct {v0, v1, v7, v5}, Lcom/android/internal/telephony/CommandsInterface$RadioState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->SIM_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    new-instance v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;

    const-string v1, "RUIM_NOT_READY"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v6}, Lcom/android/internal/telephony/CommandsInterface$RadioState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RUIM_NOT_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    new-instance v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;

    const-string v1, "RUIM_READY"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v6}, Lcom/android/internal/telephony/CommandsInterface$RadioState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RUIM_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    new-instance v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;

    const-string v1, "RUIM_LOCKED_OR_ABSENT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v6}, Lcom/android/internal/telephony/CommandsInterface$RadioState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RUIM_LOCKED_OR_ABSENT:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    new-instance v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;

    const-string v1, "NV_NOT_READY"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface$RadioState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->NV_NOT_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    new-instance v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;

    const-string v1, "NV_READY"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface$RadioState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->NV_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    new-instance v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;

    const-string v1, "NV_SIM_NOT_READY"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface$RadioState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->NV_SIM_NOT_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    new-instance v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;

    const-string v1, "NV_SIM_LOCKED_OR_ABSENT"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface$RadioState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->NV_SIM_LOCKED_OR_ABSENT:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    new-instance v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;

    const-string v1, "NV_SIM_READY"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface$RadioState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->NV_SIM_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    new-instance v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;

    const-string v1, "RADIO_ON"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2, v4}, Lcom/android/internal/telephony/CommandsInterface$RadioState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_ON:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    const/16 v0, 0xe

    new-array v0, v0, [Lcom/android/internal/telephony/CommandsInterface$RadioState;

    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioState;->SIM_NOT_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioState;->SIM_LOCKED_OR_ABSENT:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioState;->SIM_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RUIM_NOT_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RUIM_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RUIM_LOCKED_OR_ABSENT:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$RadioState;->NV_NOT_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$RadioState;->NV_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$RadioState;->NV_SIM_NOT_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$RadioState;->NV_SIM_LOCKED_OR_ABSENT:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$RadioState;->NV_SIM_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_ON:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->$VALUES:[Lcom/android/internal/telephony/CommandsInterface$RadioState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->stateType:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/CommandsInterface$RadioState;
    .locals 1

    const-class v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/CommandsInterface$RadioState;
    .locals 1

    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->$VALUES:[Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/CommandsInterface$RadioState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/CommandsInterface$RadioState;

    return-object v0
.end method


# virtual methods
.method public getType()I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->stateType:I

    return v0
.end method

.method public isAvailable()Z
    .locals 1

    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCdma()Z
    .locals 2

    const/4 v0, 0x1

    invoke-static {}, Lcom/android/internal/telephony/BaseCommands;->getLteOnCdmaModeStatic()I

    move-result v1

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RUIM_NOT_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-eq p0, v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RUIM_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-eq p0, v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RUIM_LOCKED_OR_ABSENT:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-eq p0, v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioState;->NV_NOT_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-eq p0, v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioState;->NV_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-eq p0, v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioState;->NV_SIM_NOT_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-eq p0, v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioState;->NV_SIM_LOCKED_OR_ABSENT:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-eq p0, v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioState;->NV_SIM_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-eq p0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGsm()Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/internal/telephony/BaseCommands;->getLteOnCdmaModeStatic()I

    move-result v2

    if-ne v2, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$RadioState;->SIM_NOT_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-eq p0, v2, :cond_2

    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$RadioState;->SIM_LOCKED_OR_ABSENT:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-eq p0, v2, :cond_2

    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$RadioState;->SIM_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne p0, v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public isNVReady()Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$RadioState;->NV_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-eq p0, v2, :cond_0

    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$RadioState;->NV_SIM_NOT_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-eq p0, v2, :cond_0

    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$RadioState;->NV_SIM_LOCKED_OR_ABSENT:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-eq p0, v2, :cond_0

    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$RadioState;->NV_SIM_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne p0, v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$RadioState;->NV_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne p0, v2, :cond_3

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_3
    move v1, v0

    goto :goto_1
.end method

.method public isNVSIMReady()Z
    .locals 1

    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->NV_SIM_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOn()Z
    .locals 1

    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->SIM_NOT_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->SIM_LOCKED_OR_ABSENT:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->SIM_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RUIM_NOT_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RUIM_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RUIM_LOCKED_OR_ABSENT:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->NV_NOT_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->NV_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->NV_SIM_NOT_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->NV_SIM_LOCKED_OR_ABSENT:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->NV_SIM_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_ON:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRUIMReady()Z
    .locals 1

    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RUIM_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSIMReady()Z
    .locals 1

    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->SIM_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
