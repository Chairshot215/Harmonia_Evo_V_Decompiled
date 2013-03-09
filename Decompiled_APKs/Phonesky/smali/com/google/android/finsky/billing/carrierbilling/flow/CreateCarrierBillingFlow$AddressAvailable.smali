.class final enum Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$AddressAvailable;
.super Ljava/lang/Enum;
.source "CreateCarrierBillingFlow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "AddressAvailable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$AddressAvailable;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$AddressAvailable;

.field public static final enum ADDRESS_SNIPPET:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$AddressAvailable;

.field public static final enum FULL_ADDRESS:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$AddressAvailable;

.field public static final enum NO_ADDRESS:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$AddressAvailable;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 106
    new-instance v0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$AddressAvailable;

    const-string v1, "FULL_ADDRESS"

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$AddressAvailable;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$AddressAvailable;->FULL_ADDRESS:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$AddressAvailable;

    .line 107
    new-instance v0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$AddressAvailable;

    const-string v1, "ADDRESS_SNIPPET"

    invoke-direct {v0, v1, v3}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$AddressAvailable;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$AddressAvailable;->ADDRESS_SNIPPET:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$AddressAvailable;

    .line 108
    new-instance v0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$AddressAvailable;

    const-string v1, "NO_ADDRESS"

    invoke-direct {v0, v1, v4}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$AddressAvailable;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$AddressAvailable;->NO_ADDRESS:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$AddressAvailable;

    .line 105
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$AddressAvailable;

    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$AddressAvailable;->FULL_ADDRESS:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$AddressAvailable;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$AddressAvailable;->ADDRESS_SNIPPET:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$AddressAvailable;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$AddressAvailable;->NO_ADDRESS:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$AddressAvailable;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$AddressAvailable;->$VALUES:[Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$AddressAvailable;

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
    .line 105
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$AddressAvailable;
    .locals 1
    .parameter

    .prologue
    .line 105
    const-class v0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$AddressAvailable;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$AddressAvailable;

    return-object v0
.end method

.method public static values()[Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$AddressAvailable;
    .locals 1

    .prologue
    .line 105
    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$AddressAvailable;->$VALUES:[Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$AddressAvailable;

    invoke-virtual {v0}, [Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$AddressAvailable;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$AddressAvailable;

    return-object v0
.end method
