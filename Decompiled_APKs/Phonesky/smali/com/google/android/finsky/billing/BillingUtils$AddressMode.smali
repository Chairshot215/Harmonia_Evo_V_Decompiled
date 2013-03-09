.class public final enum Lcom/google/android/finsky/billing/BillingUtils$AddressMode;
.super Ljava/lang/Enum;
.source "BillingUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/billing/BillingUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AddressMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/finsky/billing/BillingUtils$AddressMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/finsky/billing/BillingUtils$AddressMode;

.field public static final enum FULL_ADDRESS:Lcom/google/android/finsky/billing/BillingUtils$AddressMode;

.field public static final enum REDUCED_ADDRESS:Lcom/google/android/finsky/billing/BillingUtils$AddressMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 51
    new-instance v0, Lcom/google/android/finsky/billing/BillingUtils$AddressMode;

    const-string v1, "FULL_ADDRESS"

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/billing/BillingUtils$AddressMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/billing/BillingUtils$AddressMode;->FULL_ADDRESS:Lcom/google/android/finsky/billing/BillingUtils$AddressMode;

    .line 52
    new-instance v0, Lcom/google/android/finsky/billing/BillingUtils$AddressMode;

    const-string v1, "REDUCED_ADDRESS"

    invoke-direct {v0, v1, v3}, Lcom/google/android/finsky/billing/BillingUtils$AddressMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/billing/BillingUtils$AddressMode;->REDUCED_ADDRESS:Lcom/google/android/finsky/billing/BillingUtils$AddressMode;

    .line 50
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/finsky/billing/BillingUtils$AddressMode;

    sget-object v1, Lcom/google/android/finsky/billing/BillingUtils$AddressMode;->FULL_ADDRESS:Lcom/google/android/finsky/billing/BillingUtils$AddressMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/finsky/billing/BillingUtils$AddressMode;->REDUCED_ADDRESS:Lcom/google/android/finsky/billing/BillingUtils$AddressMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/finsky/billing/BillingUtils$AddressMode;->$VALUES:[Lcom/google/android/finsky/billing/BillingUtils$AddressMode;

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
    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/finsky/billing/BillingUtils$AddressMode;
    .locals 1
    .parameter

    .prologue
    .line 50
    const-class v0, Lcom/google/android/finsky/billing/BillingUtils$AddressMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/billing/BillingUtils$AddressMode;

    return-object v0
.end method

.method public static values()[Lcom/google/android/finsky/billing/BillingUtils$AddressMode;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/google/android/finsky/billing/BillingUtils$AddressMode;->$VALUES:[Lcom/google/android/finsky/billing/BillingUtils$AddressMode;

    invoke-virtual {v0}, [Lcom/google/android/finsky/billing/BillingUtils$AddressMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/finsky/billing/BillingUtils$AddressMode;

    return-object v0
.end method
