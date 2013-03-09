.class public final enum Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;
.super Ljava/lang/Enum;
.source "PhoneCarrierBillingUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AddressInputField"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;

.field public static final enum ADDR_ADDRESS1:Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;

.field public static final enum ADDR_ADDRESS2:Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;

.field public static final enum ADDR_CITY:Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;

.field public static final enum ADDR_COUNTRY_CODE:Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;

.field public static final enum ADDR_PHONE:Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;

.field public static final enum ADDR_POSTAL_CODE:Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;

.field public static final enum ADDR_STATE:Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;

.field public static final enum PERSON_NAME:Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 37
    new-instance v0, Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;

    const-string v1, "PERSON_NAME"

    invoke-direct {v0, v1, v3}, Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;->PERSON_NAME:Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;

    .line 38
    new-instance v0, Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;

    const-string v1, "ADDR_COUNTRY_CODE"

    invoke-direct {v0, v1, v4}, Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;->ADDR_COUNTRY_CODE:Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;

    .line 39
    new-instance v0, Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;

    const-string v1, "ADDR_POSTAL_CODE"

    invoke-direct {v0, v1, v5}, Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;->ADDR_POSTAL_CODE:Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;

    .line 40
    new-instance v0, Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;

    const-string v1, "ADDR_ADDRESS1"

    invoke-direct {v0, v1, v6}, Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;->ADDR_ADDRESS1:Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;

    .line 41
    new-instance v0, Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;

    const-string v1, "ADDR_ADDRESS2"

    invoke-direct {v0, v1, v7}, Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;->ADDR_ADDRESS2:Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;

    .line 42
    new-instance v0, Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;

    const-string v1, "ADDR_CITY"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;->ADDR_CITY:Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;

    .line 43
    new-instance v0, Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;

    const-string v1, "ADDR_STATE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;->ADDR_STATE:Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;

    .line 44
    new-instance v0, Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;

    const-string v1, "ADDR_PHONE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;->ADDR_PHONE:Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;

    .line 36
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;

    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;->PERSON_NAME:Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;->ADDR_COUNTRY_CODE:Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;->ADDR_POSTAL_CODE:Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;->ADDR_ADDRESS1:Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;->ADDR_ADDRESS2:Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;->ADDR_CITY:Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;->ADDR_STATE:Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;->ADDR_PHONE:Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;->$VALUES:[Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;

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
    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;
    .locals 1
    .parameter

    .prologue
    .line 36
    const-class v0, Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;

    return-object v0
.end method

.method public static values()[Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;->$VALUES:[Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;

    invoke-virtual {v0}, [Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;

    return-object v0
.end method
