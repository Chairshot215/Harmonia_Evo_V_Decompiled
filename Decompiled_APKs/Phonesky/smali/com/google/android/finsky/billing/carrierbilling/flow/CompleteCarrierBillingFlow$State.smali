.class public final enum Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$State;
.super Ljava/lang/Enum;
.source "CompleteCarrierBillingFlow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$State;

.field public static final enum CARRIER_CREDENTIALS_REQUEST:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$State;

.field public static final enum CHECK_CARRIER_TOS_VERSION:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$State;

.field public static final enum CHECK_VALID_CREDENTIALS:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$State;

.field public static final enum CHECK_VALID_PASSWORD:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$State;

.field public static final enum PASSWORD_REQUEST:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$State;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 44
    new-instance v0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$State;

    const-string v1, "CHECK_CARRIER_TOS_VERSION"

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$State;->CHECK_CARRIER_TOS_VERSION:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$State;

    .line 46
    new-instance v0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$State;

    const-string v1, "CHECK_VALID_CREDENTIALS"

    invoke-direct {v0, v1, v3}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$State;->CHECK_VALID_CREDENTIALS:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$State;

    .line 48
    new-instance v0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$State;

    const-string v1, "CHECK_VALID_PASSWORD"

    invoke-direct {v0, v1, v4}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$State;->CHECK_VALID_PASSWORD:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$State;

    .line 50
    new-instance v0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$State;

    const-string v1, "CARRIER_CREDENTIALS_REQUEST"

    invoke-direct {v0, v1, v5}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$State;->CARRIER_CREDENTIALS_REQUEST:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$State;

    .line 52
    new-instance v0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$State;

    const-string v1, "PASSWORD_REQUEST"

    invoke-direct {v0, v1, v6}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$State;->PASSWORD_REQUEST:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$State;

    .line 39
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$State;

    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$State;->CHECK_CARRIER_TOS_VERSION:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$State;->CHECK_VALID_CREDENTIALS:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$State;->CHECK_VALID_PASSWORD:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$State;->CARRIER_CREDENTIALS_REQUEST:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$State;->PASSWORD_REQUEST:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$State;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$State;->$VALUES:[Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$State;

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
    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$State;
    .locals 1
    .parameter

    .prologue
    .line 39
    const-class v0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$State;

    return-object v0
.end method

.method public static values()[Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$State;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$State;->$VALUES:[Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$State;

    invoke-virtual {v0}, [Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$State;

    return-object v0
.end method
