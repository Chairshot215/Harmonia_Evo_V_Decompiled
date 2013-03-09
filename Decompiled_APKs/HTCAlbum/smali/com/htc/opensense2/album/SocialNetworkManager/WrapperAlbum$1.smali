.class final Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum$1;
.super Ljava/lang/Object;
.source "WrapperAlbum.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
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
        "Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    .locals 1
    .parameter "in"

    .prologue
    .line 172
    new-instance v0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;

    invoke-direct {v0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 169
    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum$1;->createFromParcel(Landroid/os/Parcel;)Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    .locals 1
    .parameter "size"

    .prologue
    .line 177
    new-array v0, p1, [Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 169
    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum$1;->newArray(I)[Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;

    move-result-object v0

    return-object v0
.end method
