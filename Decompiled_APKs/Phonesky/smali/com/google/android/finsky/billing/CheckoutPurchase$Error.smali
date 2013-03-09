.class public Lcom/google/android/finsky/billing/CheckoutPurchase$Error;
.super Ljava/lang/Object;
.source "CheckoutPurchase.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/billing/CheckoutPurchase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Error"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/finsky/billing/CheckoutPurchase$Error;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final code:I

.field public final message:Ljava/lang/String;

.field public final type:Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 227
    new-instance v0, Lcom/google/android/finsky/billing/CheckoutPurchase$Error$1;

    invoke-direct {v0}, Lcom/google/android/finsky/billing/CheckoutPurchase$Error$1;-><init>()V

    sput-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;II)V
    .locals 1
    .parameter "type"
    .parameter "code"
    .parameter "messageStringResource"

    .prologue
    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 263
    iput-object p1, p0, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;->type:Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    .line 264
    iput p2, p0, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;->code:I

    .line 265
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/google/android/finsky/FinskyApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;->message:Ljava/lang/String;

    .line 266
    return-void
.end method

.method public constructor <init>(Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;ILjava/lang/String;)V
    .locals 0
    .parameter "type"
    .parameter "code"
    .parameter "message"

    .prologue
    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    iput-object p1, p0, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;->type:Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    .line 253
    iput p2, p0, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;->code:I

    .line 254
    iput-object p3, p0, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;->message:Ljava/lang/String;

    .line 255
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 270
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    const/4 v1, 0x0

    .line 282
    if-nez p1, :cond_1

    .line 287
    :cond_0
    :goto_0
    return v1

    .line 284
    :cond_1
    instance-of v2, p1, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 286
    check-cast v0, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;

    .line 287
    .local v0, other:Lcom/google/android/finsky/billing/CheckoutPurchase$Error;
    iget-object v2, p0, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;->type:Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    iget-object v3, v0, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;->type:Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;->code:I

    iget v3, v0, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;->code:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;->message:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;->message:Ljava/lang/String;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;->message:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;->message:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;->message:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 297
    const/16 v0, 0x2a

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 302
    const-string v0, "Error[type=%s,code=%d,message=%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;->type:Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    invoke-virtual {v3}, Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;->name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;->code:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;->message:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "parcel"
    .parameter "i"

    .prologue
    .line 275
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;->type:Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 276
    iget v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;->code:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 277
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;->message:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 278
    return-void
.end method
