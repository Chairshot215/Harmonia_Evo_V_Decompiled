.class public final enum Lcom/google/android/finsky/billing/CheckoutPurchase$State;
.super Ljava/lang/Enum;
.source "CheckoutPurchase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/billing/CheckoutPurchase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/finsky/billing/CheckoutPurchase$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/finsky/billing/CheckoutPurchase$State;

.field public static final enum COMPLETED:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

.field public static final enum COMPLETE_CHALLENGE_REQUIRED:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

.field public static final enum COMPLETING:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

.field public static final enum COMPLETING_POLLING_STATUS:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

.field public static final enum ERROR:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

.field public static final enum INIT:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

.field public static final enum PREPARED:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

.field public static final enum PREPARE_CHALLENGE_REQUIRED:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

.field public static final enum PREPARING:Lcom/google/android/finsky/billing/CheckoutPurchase$State;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 133
    new-instance v0, Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    const-string v1, "INIT"

    invoke-direct {v0, v1, v3}, Lcom/google/android/finsky/billing/CheckoutPurchase$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->INIT:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    .line 140
    new-instance v0, Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    const-string v1, "PREPARING"

    invoke-direct {v0, v1, v4}, Lcom/google/android/finsky/billing/CheckoutPurchase$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->PREPARING:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    .line 150
    new-instance v0, Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    const-string v1, "PREPARE_CHALLENGE_REQUIRED"

    invoke-direct {v0, v1, v5}, Lcom/google/android/finsky/billing/CheckoutPurchase$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->PREPARE_CHALLENGE_REQUIRED:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    .line 157
    new-instance v0, Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    const-string v1, "PREPARED"

    invoke-direct {v0, v1, v6}, Lcom/google/android/finsky/billing/CheckoutPurchase$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->PREPARED:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    .line 166
    new-instance v0, Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    const-string v1, "COMPLETING"

    invoke-direct {v0, v1, v7}, Lcom/google/android/finsky/billing/CheckoutPurchase$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->COMPLETING:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    .line 176
    new-instance v0, Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    const-string v1, "COMPLETE_CHALLENGE_REQUIRED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/billing/CheckoutPurchase$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->COMPLETE_CHALLENGE_REQUIRED:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    .line 187
    new-instance v0, Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    const-string v1, "COMPLETING_POLLING_STATUS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/billing/CheckoutPurchase$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->COMPLETING_POLLING_STATUS:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    .line 191
    new-instance v0, Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    const-string v1, "COMPLETED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/billing/CheckoutPurchase$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->COMPLETED:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    .line 193
    new-instance v0, Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    const-string v1, "ERROR"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/billing/CheckoutPurchase$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->ERROR:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    .line 131
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    sget-object v1, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->INIT:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->PREPARING:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->PREPARE_CHALLENGE_REQUIRED:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->PREPARED:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->COMPLETING:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->COMPLETE_CHALLENGE_REQUIRED:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->COMPLETING_POLLING_STATUS:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->COMPLETED:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->ERROR:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->$VALUES:[Lcom/google/android/finsky/billing/CheckoutPurchase$State;

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
    .line 131
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/finsky/billing/CheckoutPurchase$State;
    .locals 1
    .parameter

    .prologue
    .line 131
    const-class v0, Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    return-object v0
.end method

.method public static values()[Lcom/google/android/finsky/billing/CheckoutPurchase$State;
    .locals 1

    .prologue
    .line 131
    sget-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->$VALUES:[Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    invoke-virtual {v0}, [Lcom/google/android/finsky/billing/CheckoutPurchase$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    return-object v0
.end method
