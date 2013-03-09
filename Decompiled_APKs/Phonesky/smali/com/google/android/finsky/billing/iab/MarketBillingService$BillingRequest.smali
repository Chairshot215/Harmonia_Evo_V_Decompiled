.class final enum Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingRequest;
.super Ljava/lang/Enum;
.source "MarketBillingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/billing/iab/MarketBillingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "BillingRequest"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingRequest;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingRequest;

.field public static final enum CHECK_BILLING_SUPPORTED:Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingRequest;

.field public static final enum CONFIRM_NOTIFICATIONS:Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingRequest;

.field public static final enum GET_PURCHASE_INFORMATION:Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingRequest;

.field public static final enum REQUEST_PURCHASE:Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingRequest;

.field public static final enum RESTORE_TRANSACTIONS:Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 149
    new-instance v0, Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingRequest;

    const-string v1, "CHECK_BILLING_SUPPORTED"

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingRequest;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingRequest;->CHECK_BILLING_SUPPORTED:Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingRequest;

    .line 150
    new-instance v0, Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingRequest;

    const-string v1, "REQUEST_PURCHASE"

    invoke-direct {v0, v1, v3}, Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingRequest;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingRequest;->REQUEST_PURCHASE:Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingRequest;

    .line 151
    new-instance v0, Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingRequest;

    const-string v1, "GET_PURCHASE_INFORMATION"

    invoke-direct {v0, v1, v4}, Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingRequest;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingRequest;->GET_PURCHASE_INFORMATION:Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingRequest;

    .line 152
    new-instance v0, Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingRequest;

    const-string v1, "RESTORE_TRANSACTIONS"

    invoke-direct {v0, v1, v5}, Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingRequest;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingRequest;->RESTORE_TRANSACTIONS:Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingRequest;

    .line 153
    new-instance v0, Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingRequest;

    const-string v1, "CONFIRM_NOTIFICATIONS"

    invoke-direct {v0, v1, v6}, Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingRequest;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingRequest;->CONFIRM_NOTIFICATIONS:Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingRequest;

    .line 148
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingRequest;

    sget-object v1, Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingRequest;->CHECK_BILLING_SUPPORTED:Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingRequest;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingRequest;->REQUEST_PURCHASE:Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingRequest;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingRequest;->GET_PURCHASE_INFORMATION:Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingRequest;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingRequest;->RESTORE_TRANSACTIONS:Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingRequest;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingRequest;->CONFIRM_NOTIFICATIONS:Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingRequest;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingRequest;->$VALUES:[Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingRequest;

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
    .line 148
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingRequest;
    .locals 1
    .parameter

    .prologue
    .line 148
    const-class v0, Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingRequest;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingRequest;

    return-object v0
.end method

.method public static values()[Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingRequest;
    .locals 1

    .prologue
    .line 148
    sget-object v0, Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingRequest;->$VALUES:[Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingRequest;

    invoke-virtual {v0}, [Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingRequest;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingRequest;

    return-object v0
.end method
