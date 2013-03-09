.class public final enum Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;
.super Ljava/lang/Enum;
.source "AddCarrierBillingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;

.field public static final enum ADDRESS_SNIPPET:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;

.field public static final enum ADDRESS_SNIPPET_AND_TOS:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;

.field public static final enum FULL_ADDRESS:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;

.field public static final enum FULL_ADDRESS_AND_TOS:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;

.field public static final enum MINIMAL_ADDRESS:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;

.field public static final enum MINIMAL_ADDRESS_AND_TOS:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;

.field public static final enum TOS:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 45
    new-instance v0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;

    const-string v1, "ADDRESS_SNIPPET"

    invoke-direct {v0, v1, v3}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;->ADDRESS_SNIPPET:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;

    .line 46
    new-instance v0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;

    const-string v1, "ADDRESS_SNIPPET_AND_TOS"

    invoke-direct {v0, v1, v4}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;->ADDRESS_SNIPPET_AND_TOS:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;

    .line 47
    new-instance v0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;

    const-string v1, "FULL_ADDRESS"

    invoke-direct {v0, v1, v5}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;->FULL_ADDRESS:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;

    .line 48
    new-instance v0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;

    const-string v1, "FULL_ADDRESS_AND_TOS"

    invoke-direct {v0, v1, v6}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;->FULL_ADDRESS_AND_TOS:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;

    .line 49
    new-instance v0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;

    const-string v1, "MINIMAL_ADDRESS"

    invoke-direct {v0, v1, v7}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;->MINIMAL_ADDRESS:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;

    .line 50
    new-instance v0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;

    const-string v1, "MINIMAL_ADDRESS_AND_TOS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;->MINIMAL_ADDRESS_AND_TOS:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;

    .line 51
    new-instance v0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;

    const-string v1, "TOS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;->TOS:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;

    .line 44
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;

    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;->ADDRESS_SNIPPET:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;->ADDRESS_SNIPPET_AND_TOS:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;->FULL_ADDRESS:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;->FULL_ADDRESS_AND_TOS:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;->MINIMAL_ADDRESS:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;->MINIMAL_ADDRESS_AND_TOS:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;->TOS:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;->$VALUES:[Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;

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
    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;
    .locals 1
    .parameter

    .prologue
    .line 44
    const-class v0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;

    return-object v0
.end method

.method public static values()[Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;->$VALUES:[Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;

    invoke-virtual {v0}, [Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;

    return-object v0
.end method
