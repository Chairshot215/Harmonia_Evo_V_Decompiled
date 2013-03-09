.class public final enum Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment$CarrierBillingPasswordResultListener$PasswordResult;
.super Ljava/lang/Enum;
.source "CarrierBillingPasswordDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment$CarrierBillingPasswordResultListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PasswordResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment$CarrierBillingPasswordResultListener$PasswordResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment$CarrierBillingPasswordResultListener$PasswordResult;

.field public static final enum CANCELED:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment$CarrierBillingPasswordResultListener$PasswordResult;

.field public static final enum FAILURE:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment$CarrierBillingPasswordResultListener$PasswordResult;

.field public static final enum SUCCESS:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment$CarrierBillingPasswordResultListener$PasswordResult;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 143
    new-instance v0, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment$CarrierBillingPasswordResultListener$PasswordResult;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment$CarrierBillingPasswordResultListener$PasswordResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment$CarrierBillingPasswordResultListener$PasswordResult;->SUCCESS:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment$CarrierBillingPasswordResultListener$PasswordResult;

    .line 145
    new-instance v0, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment$CarrierBillingPasswordResultListener$PasswordResult;

    const-string v1, "FAILURE"

    invoke-direct {v0, v1, v3}, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment$CarrierBillingPasswordResultListener$PasswordResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment$CarrierBillingPasswordResultListener$PasswordResult;->FAILURE:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment$CarrierBillingPasswordResultListener$PasswordResult;

    .line 147
    new-instance v0, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment$CarrierBillingPasswordResultListener$PasswordResult;

    const-string v1, "CANCELED"

    invoke-direct {v0, v1, v4}, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment$CarrierBillingPasswordResultListener$PasswordResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment$CarrierBillingPasswordResultListener$PasswordResult;->CANCELED:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment$CarrierBillingPasswordResultListener$PasswordResult;

    .line 141
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment$CarrierBillingPasswordResultListener$PasswordResult;

    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment$CarrierBillingPasswordResultListener$PasswordResult;->SUCCESS:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment$CarrierBillingPasswordResultListener$PasswordResult;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment$CarrierBillingPasswordResultListener$PasswordResult;->FAILURE:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment$CarrierBillingPasswordResultListener$PasswordResult;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment$CarrierBillingPasswordResultListener$PasswordResult;->CANCELED:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment$CarrierBillingPasswordResultListener$PasswordResult;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment$CarrierBillingPasswordResultListener$PasswordResult;->$VALUES:[Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment$CarrierBillingPasswordResultListener$PasswordResult;

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
    .line 141
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment$CarrierBillingPasswordResultListener$PasswordResult;
    .locals 1
    .parameter

    .prologue
    .line 141
    const-class v0, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment$CarrierBillingPasswordResultListener$PasswordResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment$CarrierBillingPasswordResultListener$PasswordResult;

    return-object v0
.end method

.method public static values()[Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment$CarrierBillingPasswordResultListener$PasswordResult;
    .locals 1

    .prologue
    .line 141
    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment$CarrierBillingPasswordResultListener$PasswordResult;->$VALUES:[Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment$CarrierBillingPasswordResultListener$PasswordResult;

    invoke-virtual {v0}, [Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment$CarrierBillingPasswordResultListener$PasswordResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment$CarrierBillingPasswordResultListener$PasswordResult;

    return-object v0
.end method
