.class public final enum Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;
.super Ljava/lang/Enum;
.source "CommandsInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CommandsInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RadioTechnology"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

.field public static final enum RADIO_TECH_1xRTT:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

.field public static final enum RADIO_TECH_EDGE:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

.field public static final enum RADIO_TECH_EHRPD:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

.field public static final enum RADIO_TECH_EVDO_0:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

.field public static final enum RADIO_TECH_EVDO_A:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

.field public static final enum RADIO_TECH_EVDO_B:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

.field public static final enum RADIO_TECH_GPRS:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

.field public static final enum RADIO_TECH_HSDPA:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

.field public static final enum RADIO_TECH_HSPA:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

.field public static final enum RADIO_TECH_HSUPA:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

.field public static final enum RADIO_TECH_IS95A:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

.field public static final enum RADIO_TECH_IS95B:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

.field public static final enum RADIO_TECH_LTE:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

.field public static final enum RADIO_TECH_UMTS:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

.field public static final enum RADIO_TECH_UNKNOWN:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    const-string v1, "RADIO_TECH_UNKNOWN"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_UNKNOWN:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    new-instance v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    const-string v1, "RADIO_TECH_GPRS"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_GPRS:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    new-instance v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    const-string v1, "RADIO_TECH_EDGE"

    invoke-direct {v0, v1, v5}, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_EDGE:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    new-instance v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    const-string v1, "RADIO_TECH_UMTS"

    invoke-direct {v0, v1, v6}, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_UMTS:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    new-instance v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    const-string v1, "RADIO_TECH_IS95A"

    invoke-direct {v0, v1, v7}, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_IS95A:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    new-instance v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    const-string v1, "RADIO_TECH_IS95B"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_IS95B:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    new-instance v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    const-string v1, "RADIO_TECH_1xRTT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_1xRTT:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    new-instance v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    const-string v1, "RADIO_TECH_EVDO_0"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_EVDO_0:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    new-instance v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    const-string v1, "RADIO_TECH_EVDO_A"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_EVDO_A:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    new-instance v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    const-string v1, "RADIO_TECH_HSDPA"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_HSDPA:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    new-instance v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    const-string v1, "RADIO_TECH_HSUPA"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_HSUPA:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    new-instance v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    const-string v1, "RADIO_TECH_HSPA"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_HSPA:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    new-instance v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    const-string v1, "RADIO_TECH_EVDO_B"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_EVDO_B:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    new-instance v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    const-string v1, "RADIO_TECH_EHRPD"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_EHRPD:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    new-instance v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    const-string v1, "RADIO_TECH_LTE"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_LTE:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    const/16 v0, 0xf

    new-array v0, v0, [Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_UNKNOWN:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_GPRS:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_EDGE:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_UMTS:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_IS95A:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_IS95B:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_1xRTT:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_EVDO_0:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_EVDO_A:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_HSDPA:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_HSUPA:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_HSPA:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_EVDO_B:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_EHRPD:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_LTE:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->$VALUES:[Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

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

.method public static getRadioTechFromInt(I)Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;
    .locals 2

    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_UNKNOWN:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->values()[Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    move-result-object v1

    aget-object v0, v1, p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;
    .locals 1

    const-class v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;
    .locals 1

    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->$VALUES:[Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    return-object v0
.end method


# virtual methods
.method public is3GPP()Z
    .locals 1

    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_GPRS:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_EDGE:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_UMTS:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_HSDPA:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_HSUPA:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_HSPA:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCdma()Z
    .locals 1

    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_IS95A:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_IS95B:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_1xRTT:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_EVDO_0:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_EVDO_A:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_EVDO_B:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_EHRPD:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEvdo()Z
    .locals 1

    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_EVDO_0:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_EVDO_A:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_EVDO_B:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGsm()Z
    .locals 1

    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_GPRS:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_EDGE:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_UMTS:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_HSDPA:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_HSUPA:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_HSPA:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_LTE:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUnknown()Z
    .locals 1

    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_UNKNOWN:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
