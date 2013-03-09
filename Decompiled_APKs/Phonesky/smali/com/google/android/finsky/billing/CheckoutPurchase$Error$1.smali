.class final Lcom/google/android/finsky/billing/CheckoutPurchase$Error$1;
.super Ljava/lang/Object;
.source "CheckoutPurchase.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/billing/CheckoutPurchase$Error;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/finsky/billing/CheckoutPurchase$Error;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/finsky/billing/CheckoutPurchase$Error;
    .locals 5
    .parameter "parcel"

    .prologue
    .line 230
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 231
    .local v2, typeString:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 232
    .local v0, code:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 233
    .local v1, message:Ljava/lang/String;
    new-instance v3, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;

    invoke-static {v2}, Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;->valueOf(Ljava/lang/String;)Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    move-result-object v4

    invoke-direct {v3, v4, v0, v1}, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;-><init>(Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;ILjava/lang/String;)V

    return-object v3
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 227
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/billing/CheckoutPurchase$Error$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/finsky/billing/CheckoutPurchase$Error;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/google/android/finsky/billing/CheckoutPurchase$Error;
    .locals 1
    .parameter "i"

    .prologue
    .line 238
    new-array v0, p1, [Lcom/google/android/finsky/billing/CheckoutPurchase$Error;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 227
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/billing/CheckoutPurchase$Error$1;->newArray(I)[Lcom/google/android/finsky/billing/CheckoutPurchase$Error;

    move-result-object v0

    return-object v0
.end method
