.class public final enum Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment$EditCarrierBillingResultListener$EditResult;
.super Ljava/lang/Enum;
.source "EditCarrierBillingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment$EditCarrierBillingResultListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EditResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment$EditCarrierBillingResultListener$EditResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment$EditCarrierBillingResultListener$EditResult;

.field public static final enum CANCELED:Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment$EditCarrierBillingResultListener$EditResult;

.field public static final enum SUCCESS:Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment$EditCarrierBillingResultListener$EditResult;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 348
    new-instance v0, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment$EditCarrierBillingResultListener$EditResult;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment$EditCarrierBillingResultListener$EditResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment$EditCarrierBillingResultListener$EditResult;->SUCCESS:Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment$EditCarrierBillingResultListener$EditResult;

    .line 350
    new-instance v0, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment$EditCarrierBillingResultListener$EditResult;

    const-string v1, "CANCELED"

    invoke-direct {v0, v1, v3}, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment$EditCarrierBillingResultListener$EditResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment$EditCarrierBillingResultListener$EditResult;->CANCELED:Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment$EditCarrierBillingResultListener$EditResult;

    .line 346
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment$EditCarrierBillingResultListener$EditResult;

    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment$EditCarrierBillingResultListener$EditResult;->SUCCESS:Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment$EditCarrierBillingResultListener$EditResult;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment$EditCarrierBillingResultListener$EditResult;->CANCELED:Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment$EditCarrierBillingResultListener$EditResult;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment$EditCarrierBillingResultListener$EditResult;->$VALUES:[Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment$EditCarrierBillingResultListener$EditResult;

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
    .line 346
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment$EditCarrierBillingResultListener$EditResult;
    .locals 1
    .parameter

    .prologue
    .line 346
    const-class v0, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment$EditCarrierBillingResultListener$EditResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment$EditCarrierBillingResultListener$EditResult;

    return-object v0
.end method

.method public static values()[Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment$EditCarrierBillingResultListener$EditResult;
    .locals 1

    .prologue
    .line 346
    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment$EditCarrierBillingResultListener$EditResult;->$VALUES:[Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment$EditCarrierBillingResultListener$EditResult;

    invoke-virtual {v0}, [Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment$EditCarrierBillingResultListener$EditResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment$EditCarrierBillingResultListener$EditResult;

    return-object v0
.end method
