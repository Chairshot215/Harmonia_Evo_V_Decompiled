.class final enum Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation$State;
.super Ljava/lang/Enum;
.source "CarrierOutAssociation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation$State;

.field public static final enum INITIATING_ASSOCIATION:Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation$State;

.field public static final enum VERIFYING_ASSOCIATION:Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation$State;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 43
    new-instance v0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation$State;

    const-string v1, "INITIATING_ASSOCIATION"

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation$State;->INITIATING_ASSOCIATION:Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation$State;

    .line 44
    new-instance v0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation$State;

    const-string v1, "VERIFYING_ASSOCIATION"

    invoke-direct {v0, v1, v3}, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation$State;->VERIFYING_ASSOCIATION:Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation$State;

    .line 42
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation$State;

    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation$State;->INITIATING_ASSOCIATION:Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation$State;->VERIFYING_ASSOCIATION:Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation$State;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation$State;->$VALUES:[Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation$State;

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
    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation$State;
    .locals 1
    .parameter

    .prologue
    .line 42
    const-class v0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation$State;

    return-object v0
.end method

.method public static values()[Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation$State;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation$State;->$VALUES:[Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation$State;

    invoke-virtual {v0}, [Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation$State;

    return-object v0
.end method
