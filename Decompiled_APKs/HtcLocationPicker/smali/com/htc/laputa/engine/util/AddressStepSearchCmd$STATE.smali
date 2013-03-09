.class final enum Lcom/htc/laputa/engine/util/AddressStepSearchCmd$STATE;
.super Ljava/lang/Enum;
.source "AddressStepSearchCmd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/laputa/engine/util/AddressStepSearchCmd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "STATE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/laputa/engine/util/AddressStepSearchCmd$STATE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/laputa/engine/util/AddressStepSearchCmd$STATE;

.field public static final enum CANCEL:Lcom/htc/laputa/engine/util/AddressStepSearchCmd$STATE;

.field public static final enum COMPLETE:Lcom/htc/laputa/engine/util/AddressStepSearchCmd$STATE;

.field public static final enum EXEC:Lcom/htc/laputa/engine/util/AddressStepSearchCmd$STATE;

.field public static final enum IDLE:Lcom/htc/laputa/engine/util/AddressStepSearchCmd$STATE;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 170
    new-instance v0, Lcom/htc/laputa/engine/util/AddressStepSearchCmd$STATE;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v2}, Lcom/htc/laputa/engine/util/AddressStepSearchCmd$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/laputa/engine/util/AddressStepSearchCmd$STATE;->IDLE:Lcom/htc/laputa/engine/util/AddressStepSearchCmd$STATE;

    new-instance v0, Lcom/htc/laputa/engine/util/AddressStepSearchCmd$STATE;

    const-string v1, "EXEC"

    invoke-direct {v0, v1, v3}, Lcom/htc/laputa/engine/util/AddressStepSearchCmd$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/laputa/engine/util/AddressStepSearchCmd$STATE;->EXEC:Lcom/htc/laputa/engine/util/AddressStepSearchCmd$STATE;

    new-instance v0, Lcom/htc/laputa/engine/util/AddressStepSearchCmd$STATE;

    const-string v1, "COMPLETE"

    invoke-direct {v0, v1, v4}, Lcom/htc/laputa/engine/util/AddressStepSearchCmd$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/laputa/engine/util/AddressStepSearchCmd$STATE;->COMPLETE:Lcom/htc/laputa/engine/util/AddressStepSearchCmd$STATE;

    new-instance v0, Lcom/htc/laputa/engine/util/AddressStepSearchCmd$STATE;

    const-string v1, "CANCEL"

    invoke-direct {v0, v1, v5}, Lcom/htc/laputa/engine/util/AddressStepSearchCmd$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/laputa/engine/util/AddressStepSearchCmd$STATE;->CANCEL:Lcom/htc/laputa/engine/util/AddressStepSearchCmd$STATE;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/htc/laputa/engine/util/AddressStepSearchCmd$STATE;

    sget-object v1, Lcom/htc/laputa/engine/util/AddressStepSearchCmd$STATE;->IDLE:Lcom/htc/laputa/engine/util/AddressStepSearchCmd$STATE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/laputa/engine/util/AddressStepSearchCmd$STATE;->EXEC:Lcom/htc/laputa/engine/util/AddressStepSearchCmd$STATE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/laputa/engine/util/AddressStepSearchCmd$STATE;->COMPLETE:Lcom/htc/laputa/engine/util/AddressStepSearchCmd$STATE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/laputa/engine/util/AddressStepSearchCmd$STATE;->CANCEL:Lcom/htc/laputa/engine/util/AddressStepSearchCmd$STATE;

    aput-object v1, v0, v5

    sput-object v0, Lcom/htc/laputa/engine/util/AddressStepSearchCmd$STATE;->$VALUES:[Lcom/htc/laputa/engine/util/AddressStepSearchCmd$STATE;

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
    .line 170
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/laputa/engine/util/AddressStepSearchCmd$STATE;
    .locals 1
    .parameter "name"

    .prologue
    .line 170
    const-class v0, Lcom/htc/laputa/engine/util/AddressStepSearchCmd$STATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/laputa/engine/util/AddressStepSearchCmd$STATE;

    return-object v0
.end method

.method public static values()[Lcom/htc/laputa/engine/util/AddressStepSearchCmd$STATE;
    .locals 1

    .prologue
    .line 170
    sget-object v0, Lcom/htc/laputa/engine/util/AddressStepSearchCmd$STATE;->$VALUES:[Lcom/htc/laputa/engine/util/AddressStepSearchCmd$STATE;

    invoke-virtual {v0}, [Lcom/htc/laputa/engine/util/AddressStepSearchCmd$STATE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/laputa/engine/util/AddressStepSearchCmd$STATE;

    return-object v0
.end method
