.class final Lcom/htc/android/mail/eassvc/pim/EASOofRequest$1;
.super Ljava/lang/Object;
.source "EASOofRequest.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/eassvc/pim/EASOofRequest;
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
        "Lcom/htc/android/mail/eassvc/pim/EASOofRequest;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/htc/android/mail/eassvc/pim/EASOofRequest;
    .locals 2
    .parameter "in"

    .prologue
    .line 27
    new-instance v0, Lcom/htc/android/mail/eassvc/pim/EASOofRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/htc/android/mail/eassvc/pim/EASOofRequest;-><init>(Landroid/os/Parcel;Lcom/htc/android/mail/eassvc/pim/EASOofRequest$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/eassvc/pim/EASOofRequest$1;->createFromParcel(Landroid/os/Parcel;)Lcom/htc/android/mail/eassvc/pim/EASOofRequest;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/htc/android/mail/eassvc/pim/EASOofRequest;
    .locals 1
    .parameter "size"

    .prologue
    .line 31
    new-array v0, p1, [Lcom/htc/android/mail/eassvc/pim/EASOofRequest;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/eassvc/pim/EASOofRequest$1;->newArray(I)[Lcom/htc/android/mail/eassvc/pim/EASOofRequest;

    move-result-object v0

    return-object v0
.end method
