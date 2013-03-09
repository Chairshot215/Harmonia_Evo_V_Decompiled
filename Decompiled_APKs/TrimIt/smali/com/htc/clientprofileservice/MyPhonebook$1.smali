.class final Lcom/htc/clientprofileservice/MyPhonebook$1;
.super Ljava/lang/Object;
.source "MyPhonebook.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/clientprofileservice/MyPhonebook;
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
        "Lcom/htc/clientprofileservice/MyPhonebook;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/htc/clientprofileservice/MyPhonebook;
    .locals 1
    .parameter "in"

    .prologue
    .line 58
    new-instance v0, Lcom/htc/clientprofileservice/MyPhonebook;

    invoke-direct {v0, p1}, Lcom/htc/clientprofileservice/MyPhonebook;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Lcom/htc/clientprofileservice/MyPhonebook$1;->createFromParcel(Landroid/os/Parcel;)Lcom/htc/clientprofileservice/MyPhonebook;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/htc/clientprofileservice/MyPhonebook;
    .locals 1
    .parameter "size"

    .prologue
    .line 62
    new-array v0, p1, [Lcom/htc/clientprofileservice/MyPhonebook;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Lcom/htc/clientprofileservice/MyPhonebook$1;->newArray(I)[Lcom/htc/clientprofileservice/MyPhonebook;

    move-result-object v0

    return-object v0
.end method
