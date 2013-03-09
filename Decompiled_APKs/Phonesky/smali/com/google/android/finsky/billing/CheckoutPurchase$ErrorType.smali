.class public final enum Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;
.super Ljava/lang/Enum;
.source "CheckoutPurchase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/billing/CheckoutPurchase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ErrorType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

.field public static final enum APP_ALREADY_INSTALLED:Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

.field public static final enum APP_ALREADY_INSTALLED_OTHER_USER:Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

.field public static final enum DOCUMENT_ALREADY_OWNED:Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

.field public static final enum DOCUMENT_UNAVAILABLE:Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

.field public static final enum IAB_PERMISSION_ERROR:Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

.field public static final enum MIN_ADDRESS_PURCHASE_LIMIT_EXCEEDED:Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

.field public static final enum NETWORK_OR_SERVER:Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

.field public static final enum PURCHASE_FAILED:Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

.field public static final enum SUBSCRIPTION_ALREADY_OWNED:Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

.field public static final enum UNKNOWN:Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 198
    new-instance v0, Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v3}, Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;->UNKNOWN:Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    .line 200
    new-instance v0, Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    const-string v1, "IAB_PERMISSION_ERROR"

    invoke-direct {v0, v1, v4}, Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;->IAB_PERMISSION_ERROR:Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    .line 205
    new-instance v0, Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    const-string v1, "NETWORK_OR_SERVER"

    invoke-direct {v0, v1, v5}, Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;->NETWORK_OR_SERVER:Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    .line 207
    new-instance v0, Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    const-string v1, "MIN_ADDRESS_PURCHASE_LIMIT_EXCEEDED"

    invoke-direct {v0, v1, v6}, Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;->MIN_ADDRESS_PURCHASE_LIMIT_EXCEEDED:Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    .line 209
    new-instance v0, Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    const-string v1, "SUBSCRIPTION_ALREADY_OWNED"

    invoke-direct {v0, v1, v7}, Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;->SUBSCRIPTION_ALREADY_OWNED:Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    .line 211
    new-instance v0, Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    const-string v1, "DOCUMENT_ALREADY_OWNED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;->DOCUMENT_ALREADY_OWNED:Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    .line 213
    new-instance v0, Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    const-string v1, "APP_ALREADY_INSTALLED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;->APP_ALREADY_INSTALLED:Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    .line 215
    new-instance v0, Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    const-string v1, "APP_ALREADY_INSTALLED_OTHER_USER"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;->APP_ALREADY_INSTALLED_OTHER_USER:Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    .line 217
    new-instance v0, Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    const-string v1, "DOCUMENT_UNAVAILABLE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;->DOCUMENT_UNAVAILABLE:Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    .line 223
    new-instance v0, Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    const-string v1, "PURCHASE_FAILED"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;->PURCHASE_FAILED:Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    .line 196
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    sget-object v1, Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;->UNKNOWN:Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;->IAB_PERMISSION_ERROR:Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;->NETWORK_OR_SERVER:Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;->MIN_ADDRESS_PURCHASE_LIMIT_EXCEEDED:Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;->SUBSCRIPTION_ALREADY_OWNED:Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;->DOCUMENT_ALREADY_OWNED:Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;->APP_ALREADY_INSTALLED:Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;->APP_ALREADY_INSTALLED_OTHER_USER:Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;->DOCUMENT_UNAVAILABLE:Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;->PURCHASE_FAILED:Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;->$VALUES:[Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

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
    .line 196
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;
    .locals 1
    .parameter

    .prologue
    .line 196
    const-class v0, Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    return-object v0
.end method

.method public static values()[Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;
    .locals 1

    .prologue
    .line 196
    sget-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;->$VALUES:[Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    invoke-virtual {v0}, [Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    return-object v0
.end method
