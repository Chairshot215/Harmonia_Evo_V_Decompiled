.class final Lcom/android/htccontacts/ui/ViewIdGenerator$1;
.super Ljava/lang/Object;
.source "ViewIdGenerator.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ui/ViewIdGenerator;
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
        "Lcom/android/htccontacts/ui/ViewIdGenerator;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 122
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/htccontacts/ui/ViewIdGenerator;
    .locals 1
    .parameter "in"

    .prologue
    .line 124
    new-instance v0, Lcom/android/htccontacts/ui/ViewIdGenerator;

    invoke-direct {v0}, Lcom/android/htccontacts/ui/ViewIdGenerator;-><init>()V

    .line 125
    .local v0, vig:Lcom/android/htccontacts/ui/ViewIdGenerator;
    #calls: Lcom/android/htccontacts/ui/ViewIdGenerator;->readFromParcel(Landroid/os/Parcel;)V
    invoke-static {v0, p1}, Lcom/android/htccontacts/ui/ViewIdGenerator;->access$000(Lcom/android/htccontacts/ui/ViewIdGenerator;Landroid/os/Parcel;)V

    .line 126
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/ui/ViewIdGenerator$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/htccontacts/ui/ViewIdGenerator;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/htccontacts/ui/ViewIdGenerator;
    .locals 1
    .parameter "size"

    .prologue
    .line 130
    new-array v0, p1, [Lcom/android/htccontacts/ui/ViewIdGenerator;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/ui/ViewIdGenerator$1;->newArray(I)[Lcom/android/htccontacts/ui/ViewIdGenerator;

    move-result-object v0

    return-object v0
.end method
