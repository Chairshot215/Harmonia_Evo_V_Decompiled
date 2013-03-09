.class public final enum Lcom/htc/laputa/engine/util/AddressStepSearchCmd$MatchLv;
.super Ljava/lang/Enum;
.source "AddressStepSearchCmd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/laputa/engine/util/AddressStepSearchCmd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MatchLv"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/laputa/engine/util/AddressStepSearchCmd$MatchLv;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/laputa/engine/util/AddressStepSearchCmd$MatchLv;

.field public static final enum MATCH_CITY:Lcom/htc/laputa/engine/util/AddressStepSearchCmd$MatchLv;

.field public static final enum MATCH_COUNTRY:Lcom/htc/laputa/engine/util/AddressStepSearchCmd$MatchLv;

.field public static final enum MATCH_COUNTY:Lcom/htc/laputa/engine/util/AddressStepSearchCmd$MatchLv;

.field public static final enum MATCH_STATE:Lcom/htc/laputa/engine/util/AddressStepSearchCmd$MatchLv;

.field public static final enum MATCH_STREET:Lcom/htc/laputa/engine/util/AddressStepSearchCmd$MatchLv;

.field public static final enum MATCH_ZIPCODE:Lcom/htc/laputa/engine/util/AddressStepSearchCmd$MatchLv;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 64
    new-instance v0, Lcom/htc/laputa/engine/util/AddressStepSearchCmd$MatchLv;

    const-string v1, "MATCH_COUNTRY"

    invoke-direct {v0, v1, v3}, Lcom/htc/laputa/engine/util/AddressStepSearchCmd$MatchLv;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/laputa/engine/util/AddressStepSearchCmd$MatchLv;->MATCH_COUNTRY:Lcom/htc/laputa/engine/util/AddressStepSearchCmd$MatchLv;

    .line 69
    new-instance v0, Lcom/htc/laputa/engine/util/AddressStepSearchCmd$MatchLv;

    const-string v1, "MATCH_STATE"

    invoke-direct {v0, v1, v4}, Lcom/htc/laputa/engine/util/AddressStepSearchCmd$MatchLv;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/laputa/engine/util/AddressStepSearchCmd$MatchLv;->MATCH_STATE:Lcom/htc/laputa/engine/util/AddressStepSearchCmd$MatchLv;

    .line 74
    new-instance v0, Lcom/htc/laputa/engine/util/AddressStepSearchCmd$MatchLv;

    const-string v1, "MATCH_COUNTY"

    invoke-direct {v0, v1, v5}, Lcom/htc/laputa/engine/util/AddressStepSearchCmd$MatchLv;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/laputa/engine/util/AddressStepSearchCmd$MatchLv;->MATCH_COUNTY:Lcom/htc/laputa/engine/util/AddressStepSearchCmd$MatchLv;

    .line 79
    new-instance v0, Lcom/htc/laputa/engine/util/AddressStepSearchCmd$MatchLv;

    const-string v1, "MATCH_CITY"

    invoke-direct {v0, v1, v6}, Lcom/htc/laputa/engine/util/AddressStepSearchCmd$MatchLv;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/laputa/engine/util/AddressStepSearchCmd$MatchLv;->MATCH_CITY:Lcom/htc/laputa/engine/util/AddressStepSearchCmd$MatchLv;

    .line 84
    new-instance v0, Lcom/htc/laputa/engine/util/AddressStepSearchCmd$MatchLv;

    const-string v1, "MATCH_STREET"

    invoke-direct {v0, v1, v7}, Lcom/htc/laputa/engine/util/AddressStepSearchCmd$MatchLv;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/laputa/engine/util/AddressStepSearchCmd$MatchLv;->MATCH_STREET:Lcom/htc/laputa/engine/util/AddressStepSearchCmd$MatchLv;

    .line 89
    new-instance v0, Lcom/htc/laputa/engine/util/AddressStepSearchCmd$MatchLv;

    const-string v1, "MATCH_ZIPCODE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/htc/laputa/engine/util/AddressStepSearchCmd$MatchLv;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/laputa/engine/util/AddressStepSearchCmd$MatchLv;->MATCH_ZIPCODE:Lcom/htc/laputa/engine/util/AddressStepSearchCmd$MatchLv;

    .line 59
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/htc/laputa/engine/util/AddressStepSearchCmd$MatchLv;

    sget-object v1, Lcom/htc/laputa/engine/util/AddressStepSearchCmd$MatchLv;->MATCH_COUNTRY:Lcom/htc/laputa/engine/util/AddressStepSearchCmd$MatchLv;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/laputa/engine/util/AddressStepSearchCmd$MatchLv;->MATCH_STATE:Lcom/htc/laputa/engine/util/AddressStepSearchCmd$MatchLv;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/laputa/engine/util/AddressStepSearchCmd$MatchLv;->MATCH_COUNTY:Lcom/htc/laputa/engine/util/AddressStepSearchCmd$MatchLv;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/laputa/engine/util/AddressStepSearchCmd$MatchLv;->MATCH_CITY:Lcom/htc/laputa/engine/util/AddressStepSearchCmd$MatchLv;

    aput-object v1, v0, v6

    sget-object v1, Lcom/htc/laputa/engine/util/AddressStepSearchCmd$MatchLv;->MATCH_STREET:Lcom/htc/laputa/engine/util/AddressStepSearchCmd$MatchLv;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/htc/laputa/engine/util/AddressStepSearchCmd$MatchLv;->MATCH_ZIPCODE:Lcom/htc/laputa/engine/util/AddressStepSearchCmd$MatchLv;

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/laputa/engine/util/AddressStepSearchCmd$MatchLv;->$VALUES:[Lcom/htc/laputa/engine/util/AddressStepSearchCmd$MatchLv;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/laputa/engine/util/AddressStepSearchCmd$MatchLv;
    .locals 1
    .parameter "name"

    .prologue
    .line 59
    const-class v0, Lcom/htc/laputa/engine/util/AddressStepSearchCmd$MatchLv;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/laputa/engine/util/AddressStepSearchCmd$MatchLv;

    return-object v0
.end method

.method public static values()[Lcom/htc/laputa/engine/util/AddressStepSearchCmd$MatchLv;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/htc/laputa/engine/util/AddressStepSearchCmd$MatchLv;->$VALUES:[Lcom/htc/laputa/engine/util/AddressStepSearchCmd$MatchLv;

    invoke-virtual {v0}, [Lcom/htc/laputa/engine/util/AddressStepSearchCmd$MatchLv;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/laputa/engine/util/AddressStepSearchCmd$MatchLv;

    return-object v0
.end method
