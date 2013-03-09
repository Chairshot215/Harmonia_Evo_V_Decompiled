.class public final enum Lcom/gracenote/mmid/MobileSDK/GNStatusEnum;
.super Ljava/lang/Enum;
.source "GNStatusEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/gracenote/mmid/MobileSDK/GNStatusEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/gracenote/mmid/MobileSDK/GNStatusEnum;

.field public static final enum FINGERPRINTING:Lcom/gracenote/mmid/MobileSDK/GNStatusEnum;

.field public static final enum IDLE:Lcom/gracenote/mmid/MobileSDK/GNStatusEnum;

.field public static final enum RECORDING:Lcom/gracenote/mmid/MobileSDK/GNStatusEnum;

.field public static final enum WEBSERVICES:Lcom/gracenote/mmid/MobileSDK/GNStatusEnum;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 9
    new-instance v0, Lcom/gracenote/mmid/MobileSDK/GNStatusEnum;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v2}, Lcom/gracenote/mmid/MobileSDK/GNStatusEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gracenote/mmid/MobileSDK/GNStatusEnum;->IDLE:Lcom/gracenote/mmid/MobileSDK/GNStatusEnum;

    .line 12
    new-instance v0, Lcom/gracenote/mmid/MobileSDK/GNStatusEnum;

    const-string v1, "RECORDING"

    invoke-direct {v0, v1, v3}, Lcom/gracenote/mmid/MobileSDK/GNStatusEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gracenote/mmid/MobileSDK/GNStatusEnum;->RECORDING:Lcom/gracenote/mmid/MobileSDK/GNStatusEnum;

    .line 15
    new-instance v0, Lcom/gracenote/mmid/MobileSDK/GNStatusEnum;

    const-string v1, "FINGERPRINTING"

    invoke-direct {v0, v1, v4}, Lcom/gracenote/mmid/MobileSDK/GNStatusEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gracenote/mmid/MobileSDK/GNStatusEnum;->FINGERPRINTING:Lcom/gracenote/mmid/MobileSDK/GNStatusEnum;

    .line 18
    new-instance v0, Lcom/gracenote/mmid/MobileSDK/GNStatusEnum;

    const-string v1, "WEBSERVICES"

    invoke-direct {v0, v1, v5}, Lcom/gracenote/mmid/MobileSDK/GNStatusEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gracenote/mmid/MobileSDK/GNStatusEnum;->WEBSERVICES:Lcom/gracenote/mmid/MobileSDK/GNStatusEnum;

    .line 6
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/gracenote/mmid/MobileSDK/GNStatusEnum;

    sget-object v1, Lcom/gracenote/mmid/MobileSDK/GNStatusEnum;->IDLE:Lcom/gracenote/mmid/MobileSDK/GNStatusEnum;

    aput-object v1, v0, v2

    sget-object v1, Lcom/gracenote/mmid/MobileSDK/GNStatusEnum;->RECORDING:Lcom/gracenote/mmid/MobileSDK/GNStatusEnum;

    aput-object v1, v0, v3

    sget-object v1, Lcom/gracenote/mmid/MobileSDK/GNStatusEnum;->FINGERPRINTING:Lcom/gracenote/mmid/MobileSDK/GNStatusEnum;

    aput-object v1, v0, v4

    sget-object v1, Lcom/gracenote/mmid/MobileSDK/GNStatusEnum;->WEBSERVICES:Lcom/gracenote/mmid/MobileSDK/GNStatusEnum;

    aput-object v1, v0, v5

    sput-object v0, Lcom/gracenote/mmid/MobileSDK/GNStatusEnum;->ENUM$VALUES:[Lcom/gracenote/mmid/MobileSDK/GNStatusEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gracenote/mmid/MobileSDK/GNStatusEnum;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/gracenote/mmid/MobileSDK/GNStatusEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/gracenote/mmid/MobileSDK/GNStatusEnum;

    return-object v0
.end method

.method public static values()[Lcom/gracenote/mmid/MobileSDK/GNStatusEnum;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/gracenote/mmid/MobileSDK/GNStatusEnum;->ENUM$VALUES:[Lcom/gracenote/mmid/MobileSDK/GNStatusEnum;

    array-length v1, v0

    new-array v2, v1, [Lcom/gracenote/mmid/MobileSDK/GNStatusEnum;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
