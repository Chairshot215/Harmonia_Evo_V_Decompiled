.class public final enum Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;
.super Ljava/lang/Enum;
.source "CommandsInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CommandsInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RadioTechnologyFamily"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;

.field public static final enum RADIO_TECH_3GPP:Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;

.field public static final enum RADIO_TECH_3GPP2:Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;

.field public static final enum RADIO_TECH_UNKNOWN:Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;

    const-string v1, "RADIO_TECH_UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;->RADIO_TECH_UNKNOWN:Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;

    new-instance v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;

    const-string v1, "RADIO_TECH_3GPP"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;->RADIO_TECH_3GPP:Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;

    new-instance v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;

    const-string v1, "RADIO_TECH_3GPP2"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;->RADIO_TECH_3GPP2:Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;

    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;->RADIO_TECH_UNKNOWN:Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;->RADIO_TECH_3GPP:Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;->RADIO_TECH_3GPP2:Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;->$VALUES:[Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;

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

.method public static getRadioTechFamilyFromInt(I)Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;
    .locals 5

    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;->RADIO_TECH_UNKNOWN:Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;

    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;->values()[Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;

    move-result-object v2

    aget-object v1, v2, p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string v2, "RIL"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid radio technology family : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;
    .locals 1

    const-class v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;
    .locals 1

    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;->$VALUES:[Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;

    return-object v0
.end method


# virtual methods
.method public isCdma()Z
    .locals 1

    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;->RADIO_TECH_3GPP2:Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGsm()Z
    .locals 1

    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;->RADIO_TECH_3GPP:Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUnknown()Z
    .locals 1

    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;->RADIO_TECH_UNKNOWN:Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
