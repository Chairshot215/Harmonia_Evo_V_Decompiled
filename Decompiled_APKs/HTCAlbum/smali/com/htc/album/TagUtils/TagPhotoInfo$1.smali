.class final Lcom/htc/album/TagUtils/TagPhotoInfo$1;
.super Ljava/lang/Object;
.source "TagPhotoInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TagUtils/TagPhotoInfo;
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
        "Lcom/htc/album/TagUtils/TagPhotoInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 158
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/htc/album/TagUtils/TagPhotoInfo;
    .locals 1
    .parameter "in"

    .prologue
    .line 161
    new-instance v0, Lcom/htc/album/TagUtils/TagPhotoInfo;

    invoke-direct {v0, p1}, Lcom/htc/album/TagUtils/TagPhotoInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 158
    invoke-virtual {p0, p1}, Lcom/htc/album/TagUtils/TagPhotoInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/htc/album/TagUtils/TagPhotoInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/htc/album/TagUtils/TagPhotoInfo;
    .locals 1
    .parameter "size"

    .prologue
    .line 166
    new-array v0, p1, [Lcom/htc/album/TagUtils/TagPhotoInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 158
    invoke-virtual {p0, p1}, Lcom/htc/album/TagUtils/TagPhotoInfo$1;->newArray(I)[Lcom/htc/album/TagUtils/TagPhotoInfo;

    move-result-object v0

    return-object v0
.end method
