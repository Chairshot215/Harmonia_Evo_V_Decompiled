.class final Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult$1;
.super Ljava/lang/Object;
.source "EditContactActivity2.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;
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
        "Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1810
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;
    .locals 1
    .parameter "source"

    .prologue
    .line 1813
    #calls: Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->readFromParcel(Landroid/os/Parcel;)Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;
    invoke-static {p1}, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->access$3400(Landroid/os/Parcel;)Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1810
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;
    .locals 1
    .parameter "size"

    .prologue
    .line 1817
    new-array v0, p1, [Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1810
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult$1;->newArray(I)[Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;

    move-result-object v0

    return-object v0
.end method
