.class public final enum Lcom/htc/laputa/engine/util/AddressStepSearchCmd$ReturnLv;
.super Ljava/lang/Enum;
.source "AddressStepSearchCmd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/laputa/engine/util/AddressStepSearchCmd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ReturnLv"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/laputa/engine/util/AddressStepSearchCmd$ReturnLv;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/laputa/engine/util/AddressStepSearchCmd$ReturnLv;

.field public static final enum RETURN_STREET:Lcom/htc/laputa/engine/util/AddressStepSearchCmd$ReturnLv;

.field public static final enum RETURN_SUBAREA:Lcom/htc/laputa/engine/util/AddressStepSearchCmd$ReturnLv;

.field public static final enum RETURN_ZIPCODE:Lcom/htc/laputa/engine/util/AddressStepSearchCmd$ReturnLv;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 111
    new-instance v0, Lcom/htc/laputa/engine/util/AddressStepSearchCmd$ReturnLv;

    const-string v1, "RETURN_SUBAREA"

    invoke-direct {v0, v1, v2}, Lcom/htc/laputa/engine/util/AddressStepSearchCmd$ReturnLv;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/laputa/engine/util/AddressStepSearchCmd$ReturnLv;->RETURN_SUBAREA:Lcom/htc/laputa/engine/util/AddressStepSearchCmd$ReturnLv;

    .line 118
    new-instance v0, Lcom/htc/laputa/engine/util/AddressStepSearchCmd$ReturnLv;

    const-string v1, "RETURN_STREET"

    invoke-direct {v0, v1, v3}, Lcom/htc/laputa/engine/util/AddressStepSearchCmd$ReturnLv;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/laputa/engine/util/AddressStepSearchCmd$ReturnLv;->RETURN_STREET:Lcom/htc/laputa/engine/util/AddressStepSearchCmd$ReturnLv;

    .line 125
    new-instance v0, Lcom/htc/laputa/engine/util/AddressStepSearchCmd$ReturnLv;

    const-string v1, "RETURN_ZIPCODE"

    invoke-direct {v0, v1, v4}, Lcom/htc/laputa/engine/util/AddressStepSearchCmd$ReturnLv;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/laputa/engine/util/AddressStepSearchCmd$ReturnLv;->RETURN_ZIPCODE:Lcom/htc/laputa/engine/util/AddressStepSearchCmd$ReturnLv;

    .line 104
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/htc/laputa/engine/util/AddressStepSearchCmd$ReturnLv;

    sget-object v1, Lcom/htc/laputa/engine/util/AddressStepSearchCmd$ReturnLv;->RETURN_SUBAREA:Lcom/htc/laputa/engine/util/AddressStepSearchCmd$ReturnLv;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/laputa/engine/util/AddressStepSearchCmd$ReturnLv;->RETURN_STREET:Lcom/htc/laputa/engine/util/AddressStepSearchCmd$ReturnLv;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/laputa/engine/util/AddressStepSearchCmd$ReturnLv;->RETURN_ZIPCODE:Lcom/htc/laputa/engine/util/AddressStepSearchCmd$ReturnLv;

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/laputa/engine/util/AddressStepSearchCmd$ReturnLv;->$VALUES:[Lcom/htc/laputa/engine/util/AddressStepSearchCmd$ReturnLv;

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
    .line 104
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/laputa/engine/util/AddressStepSearchCmd$ReturnLv;
    .locals 1
    .parameter "name"

    .prologue
    .line 104
    const-class v0, Lcom/htc/laputa/engine/util/AddressStepSearchCmd$ReturnLv;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/laputa/engine/util/AddressStepSearchCmd$ReturnLv;

    return-object v0
.end method

.method public static values()[Lcom/htc/laputa/engine/util/AddressStepSearchCmd$ReturnLv;
    .locals 1

    .prologue
    .line 104
    sget-object v0, Lcom/htc/laputa/engine/util/AddressStepSearchCmd$ReturnLv;->$VALUES:[Lcom/htc/laputa/engine/util/AddressStepSearchCmd$ReturnLv;

    invoke-virtual {v0}, [Lcom/htc/laputa/engine/util/AddressStepSearchCmd$ReturnLv;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/laputa/engine/util/AddressStepSearchCmd$ReturnLv;

    return-object v0
.end method
