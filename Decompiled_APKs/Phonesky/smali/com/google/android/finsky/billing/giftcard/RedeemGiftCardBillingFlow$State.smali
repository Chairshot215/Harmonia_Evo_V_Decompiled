.class final enum Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow$State;
.super Ljava/lang/Enum;
.source "RedeemGiftCardBillingFlow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow$State;

.field public static final enum FETCHING_INSTRUMENT_SETUP_INFO:Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow$State;

.field public static final enum REDEEMING_GIFT_CARD:Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow$State;

.field public static final enum SHOWING_CONTINUE_FORM:Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow$State;

.field public static final enum SHOWING_REDEEM_FORM:Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow$State;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 41
    new-instance v0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow$State;

    const-string v1, "FETCHING_INSTRUMENT_SETUP_INFO"

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow$State;->FETCHING_INSTRUMENT_SETUP_INFO:Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow$State;

    .line 42
    new-instance v0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow$State;

    const-string v1, "SHOWING_REDEEM_FORM"

    invoke-direct {v0, v1, v3}, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow$State;->SHOWING_REDEEM_FORM:Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow$State;

    .line 43
    new-instance v0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow$State;

    const-string v1, "REDEEMING_GIFT_CARD"

    invoke-direct {v0, v1, v4}, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow$State;->REDEEMING_GIFT_CARD:Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow$State;

    .line 44
    new-instance v0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow$State;

    const-string v1, "SHOWING_CONTINUE_FORM"

    invoke-direct {v0, v1, v5}, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow$State;->SHOWING_CONTINUE_FORM:Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow$State;

    .line 40
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow$State;

    sget-object v1, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow$State;->FETCHING_INSTRUMENT_SETUP_INFO:Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow$State;->SHOWING_REDEEM_FORM:Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow$State;->REDEEMING_GIFT_CARD:Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow$State;->SHOWING_CONTINUE_FORM:Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow$State;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow$State;->$VALUES:[Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow$State;

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
    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow$State;
    .locals 1
    .parameter

    .prologue
    .line 40
    const-class v0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow$State;

    return-object v0
.end method

.method public static values()[Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow$State;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow$State;->$VALUES:[Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow$State;

    invoke-virtual {v0}, [Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardBillingFlow$State;

    return-object v0
.end method
