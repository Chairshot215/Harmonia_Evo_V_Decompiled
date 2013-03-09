.class public final enum Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;
.super Ljava/lang/Enum;
.source "BillingUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/billing/BillingUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CreateInstrumentUiMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;

.field public static final enum INTERNAL:Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;

.field public static final enum PROMO_OFFER:Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;

.field public static final enum SETUP_WIZARD:Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 42
    new-instance v0, Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;

    const-string v1, "INTERNAL"

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;->INTERNAL:Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;

    .line 43
    new-instance v0, Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;

    const-string v1, "SETUP_WIZARD"

    invoke-direct {v0, v1, v3}, Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;->SETUP_WIZARD:Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;

    .line 44
    new-instance v0, Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;

    const-string v1, "PROMO_OFFER"

    invoke-direct {v0, v1, v4}, Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;->PROMO_OFFER:Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;

    .line 41
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;

    sget-object v1, Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;->INTERNAL:Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;->SETUP_WIZARD:Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;->PROMO_OFFER:Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;->$VALUES:[Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;

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
    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;
    .locals 1
    .parameter

    .prologue
    .line 41
    const-class v0, Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;

    return-object v0
.end method

.method public static values()[Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;->$VALUES:[Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;

    invoke-virtual {v0}, [Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;

    return-object v0
.end method
