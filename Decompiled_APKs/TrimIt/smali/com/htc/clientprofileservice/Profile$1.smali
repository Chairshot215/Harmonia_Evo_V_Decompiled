.class final Lcom/htc/clientprofileservice/Profile$1;
.super Ljava/lang/Object;
.source "Profile.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/clientprofileservice/Profile;
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
        "Lcom/htc/clientprofileservice/Profile;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/htc/clientprofileservice/Profile;
    .locals 1
    .parameter "in"

    .prologue
    .line 151
    new-instance v0, Lcom/htc/clientprofileservice/Profile;

    invoke-direct {v0, p1}, Lcom/htc/clientprofileservice/Profile;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    invoke-virtual {p0, p1}, Lcom/htc/clientprofileservice/Profile$1;->createFromParcel(Landroid/os/Parcel;)Lcom/htc/clientprofileservice/Profile;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/htc/clientprofileservice/Profile;
    .locals 1
    .parameter "size"

    .prologue
    .line 155
    new-array v0, p1, [Lcom/htc/clientprofileservice/Profile;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    invoke-virtual {p0, p1}, Lcom/htc/clientprofileservice/Profile$1;->newArray(I)[Lcom/htc/clientprofileservice/Profile;

    move-result-object v0

    return-object v0
.end method
