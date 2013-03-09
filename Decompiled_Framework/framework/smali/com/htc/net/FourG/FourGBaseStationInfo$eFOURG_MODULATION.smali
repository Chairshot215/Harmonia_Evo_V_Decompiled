.class public final enum Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;
.super Ljava/lang/Enum;
.source "FourGBaseStationInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/net/FourG/FourGBaseStationInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "eFOURG_MODULATION"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

.field public static final enum FOURG_MODULATION_16QAM:Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

.field public static final enum FOURG_MODULATION_64QAM:Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

.field public static final enum FOURG_MODULATION_8QAM:Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

.field public static final enum FOURG_MODULATION_BPSK:Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

.field public static final enum FOURG_MODULATION_NONE_LINK_DOWN:Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

.field public static final enum FOURG_MODULATION_QPSK:Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    const-string v1, "FOURG_MODULATION_NONE_LINK_DOWN"

    invoke-direct {v0, v1, v3}, Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;->FOURG_MODULATION_NONE_LINK_DOWN:Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    new-instance v0, Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    const-string v1, "FOURG_MODULATION_BPSK"

    invoke-direct {v0, v1, v4}, Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;->FOURG_MODULATION_BPSK:Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    new-instance v0, Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    const-string v1, "FOURG_MODULATION_QPSK"

    invoke-direct {v0, v1, v5}, Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;->FOURG_MODULATION_QPSK:Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    new-instance v0, Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    const-string v1, "FOURG_MODULATION_8QAM"

    invoke-direct {v0, v1, v6}, Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;->FOURG_MODULATION_8QAM:Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    new-instance v0, Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    const-string v1, "FOURG_MODULATION_16QAM"

    invoke-direct {v0, v1, v7}, Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;->FOURG_MODULATION_16QAM:Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    new-instance v0, Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    const-string v1, "FOURG_MODULATION_64QAM"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;->FOURG_MODULATION_64QAM:Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    sget-object v1, Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;->FOURG_MODULATION_NONE_LINK_DOWN:Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;->FOURG_MODULATION_BPSK:Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;->FOURG_MODULATION_QPSK:Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;->FOURG_MODULATION_8QAM:Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    aput-object v1, v0, v6

    sget-object v1, Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;->FOURG_MODULATION_16QAM:Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;->FOURG_MODULATION_64QAM:Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;->$VALUES:[Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

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

.method public static valueOf(Ljava/lang/String;)Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;
    .locals 1

    const-class v0, Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    return-object v0
.end method

.method public static values()[Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;
    .locals 1

    sget-object v0, Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;->$VALUES:[Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    invoke-virtual {v0}, [Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    return-object v0
.end method
