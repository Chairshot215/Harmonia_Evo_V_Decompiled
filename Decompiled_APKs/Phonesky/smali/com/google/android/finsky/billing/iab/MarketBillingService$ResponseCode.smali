.class public final enum Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;
.super Ljava/lang/Enum;
.source "MarketBillingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/billing/iab/MarketBillingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ResponseCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

.field public static final enum RESULT_BILLING_UNAVAILABLE:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

.field public static final enum RESULT_DEVELOPER_ERROR:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

.field public static final enum RESULT_ERROR:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

.field public static final enum RESULT_ITEM_UNAVAILABLE:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

.field public static final enum RESULT_OK:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

.field public static final enum RESULT_SERVICE_UNAVAILABLE:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

.field public static final enum RESULT_USER_CANCELED:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 157
    new-instance v0, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    const-string v1, "RESULT_OK"

    invoke-direct {v0, v1, v3}, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;->RESULT_OK:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    .line 158
    new-instance v0, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    const-string v1, "RESULT_USER_CANCELED"

    invoke-direct {v0, v1, v4}, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;->RESULT_USER_CANCELED:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    .line 159
    new-instance v0, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    const-string v1, "RESULT_SERVICE_UNAVAILABLE"

    invoke-direct {v0, v1, v5}, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;->RESULT_SERVICE_UNAVAILABLE:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    .line 160
    new-instance v0, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    const-string v1, "RESULT_BILLING_UNAVAILABLE"

    invoke-direct {v0, v1, v6}, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;->RESULT_BILLING_UNAVAILABLE:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    .line 161
    new-instance v0, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    const-string v1, "RESULT_ITEM_UNAVAILABLE"

    invoke-direct {v0, v1, v7}, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;->RESULT_ITEM_UNAVAILABLE:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    .line 162
    new-instance v0, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    const-string v1, "RESULT_DEVELOPER_ERROR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;->RESULT_DEVELOPER_ERROR:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    .line 163
    new-instance v0, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    const-string v1, "RESULT_ERROR"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;->RESULT_ERROR:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    .line 156
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    sget-object v1, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;->RESULT_OK:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;->RESULT_USER_CANCELED:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;->RESULT_SERVICE_UNAVAILABLE:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;->RESULT_BILLING_UNAVAILABLE:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;->RESULT_ITEM_UNAVAILABLE:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;->RESULT_DEVELOPER_ERROR:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;->RESULT_ERROR:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;->$VALUES:[Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

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
    .line 156
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;
    .locals 1
    .parameter

    .prologue
    .line 156
    const-class v0, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    return-object v0
.end method

.method public static values()[Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;
    .locals 1

    .prologue
    .line 156
    sget-object v0, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;->$VALUES:[Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    invoke-virtual {v0}, [Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    return-object v0
.end method
