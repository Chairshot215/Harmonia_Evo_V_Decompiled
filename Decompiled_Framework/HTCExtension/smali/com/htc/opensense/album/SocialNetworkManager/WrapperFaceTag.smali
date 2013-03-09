.class public Lcom/htc/opensense/album/SocialNetworkManager/WrapperFaceTag;
.super Ljava/lang/Object;
.source "WrapperFaceTag.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/opensense/album/SocialNetworkManager/WrapperFaceTag;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mFaceTag:Lcom/htc/opensense/social/data/FaceTag;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperFaceTag;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperFaceTag;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperFaceTag$1;

    invoke-direct {v0}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperFaceTag$1;-><init>()V

    sput-object v0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperFaceTag;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperFaceTag;->mFaceTag:Lcom/htc/opensense/social/data/FaceTag;

    invoke-virtual {p0, p1}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperFaceTag;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/htc/opensense/social/data/FaceTag;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperFaceTag;->mFaceTag:Lcom/htc/opensense/social/data/FaceTag;

    iput-object p1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperFaceTag;->mFaceTag:Lcom/htc/opensense/social/data/FaceTag;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperFaceTag;->mFaceTag:Lcom/htc/opensense/social/data/FaceTag;

    new-instance v0, Lcom/htc/opensense/social/data/FaceTag;

    invoke-direct {v0}, Lcom/htc/opensense/social/data/FaceTag;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperFaceTag;->mFaceTag:Lcom/htc/opensense/social/data/FaceTag;

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperFaceTag;->mFaceTag:Lcom/htc/opensense/social/data/FaceTag;

    new-instance v1, Lcom/htc/opensense/social/data/Profile;

    invoke-direct {v1, p1}, Lcom/htc/opensense/social/data/Profile;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/htc/opensense/social/data/FaceTag;->owner:Lcom/htc/opensense/social/data/Profile;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCenterX()F
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperFaceTag;->mFaceTag:Lcom/htc/opensense/social/data/FaceTag;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperFaceTag;->mFaceTag:Lcom/htc/opensense/social/data/FaceTag;

    iget v0, v1, Lcom/htc/opensense/social/data/FaceTag;->center_x:F

    :cond_0
    return v0
.end method

.method public getCenterY()F
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperFaceTag;->mFaceTag:Lcom/htc/opensense/social/data/FaceTag;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperFaceTag;->mFaceTag:Lcom/htc/opensense/social/data/FaceTag;

    iget v0, v1, Lcom/htc/opensense/social/data/FaceTag;->center_y:F

    :cond_0
    return v0
.end method

.method public getHeight()F
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperFaceTag;->mFaceTag:Lcom/htc/opensense/social/data/FaceTag;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperFaceTag;->mFaceTag:Lcom/htc/opensense/social/data/FaceTag;

    iget v0, v1, Lcom/htc/opensense/social/data/FaceTag;->height:F

    :cond_0
    return v0
.end method

.method public getID()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperFaceTag;->mFaceTag:Lcom/htc/opensense/social/data/FaceTag;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperFaceTag;->mFaceTag:Lcom/htc/opensense/social/data/FaceTag;

    iget-object v0, v1, Lcom/htc/opensense/social/data/Attachment;->id:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public getOwnerID()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperFaceTag;->mFaceTag:Lcom/htc/opensense/social/data/FaceTag;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperFaceTag;->mFaceTag:Lcom/htc/opensense/social/data/FaceTag;

    iget-object v1, v1, Lcom/htc/opensense/social/data/FaceTag;->owner:Lcom/htc/opensense/social/data/Profile;

    iget-object v0, v1, Lcom/htc/opensense/social/data/Profile;->profile_id:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public getOwnerName()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperFaceTag;->mFaceTag:Lcom/htc/opensense/social/data/FaceTag;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperFaceTag;->mFaceTag:Lcom/htc/opensense/social/data/FaceTag;

    iget-object v1, v1, Lcom/htc/opensense/social/data/FaceTag;->owner:Lcom/htc/opensense/social/data/Profile;

    iget-object v0, v1, Lcom/htc/opensense/social/data/Profile;->display_name:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperFaceTag;->mFaceTag:Lcom/htc/opensense/social/data/FaceTag;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperFaceTag;->mFaceTag:Lcom/htc/opensense/social/data/FaceTag;

    iget-object v0, v1, Lcom/htc/opensense/social/data/FaceTag;->text:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public getWidth()F
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperFaceTag;->mFaceTag:Lcom/htc/opensense/social/data/FaceTag;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperFaceTag;->mFaceTag:Lcom/htc/opensense/social/data/FaceTag;

    iget v0, v1, Lcom/htc/opensense/social/data/FaceTag;->width:F

    :cond_0
    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/social/data/FaceTag;

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperFaceTag;->mFaceTag:Lcom/htc/opensense/social/data/FaceTag;

    return-void
.end method

.method public setCenterX(F)V
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperFaceTag;->mFaceTag:Lcom/htc/opensense/social/data/FaceTag;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperFaceTag;->mFaceTag:Lcom/htc/opensense/social/data/FaceTag;

    iput p1, v0, Lcom/htc/opensense/social/data/FaceTag;->center_x:F

    :cond_0
    return-void
.end method

.method public setCenterY(F)V
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperFaceTag;->mFaceTag:Lcom/htc/opensense/social/data/FaceTag;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperFaceTag;->mFaceTag:Lcom/htc/opensense/social/data/FaceTag;

    iput p1, v0, Lcom/htc/opensense/social/data/FaceTag;->center_y:F

    :cond_0
    return-void
.end method

.method public setHeight(F)V
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperFaceTag;->mFaceTag:Lcom/htc/opensense/social/data/FaceTag;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperFaceTag;->mFaceTag:Lcom/htc/opensense/social/data/FaceTag;

    iput p1, v0, Lcom/htc/opensense/social/data/FaceTag;->height:F

    :cond_0
    return-void
.end method

.method public setOwnerID(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperFaceTag;->mFaceTag:Lcom/htc/opensense/social/data/FaceTag;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperFaceTag;->mFaceTag:Lcom/htc/opensense/social/data/FaceTag;

    iget-object v0, v0, Lcom/htc/opensense/social/data/FaceTag;->owner:Lcom/htc/opensense/social/data/Profile;

    iput-object p1, v0, Lcom/htc/opensense/social/data/Profile;->profile_id:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperFaceTag;->mFaceTag:Lcom/htc/opensense/social/data/FaceTag;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperFaceTag;->mFaceTag:Lcom/htc/opensense/social/data/FaceTag;

    iput-object p1, v0, Lcom/htc/opensense/social/data/FaceTag;->text:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setWidth(F)V
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperFaceTag;->mFaceTag:Lcom/htc/opensense/social/data/FaceTag;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperFaceTag;->mFaceTag:Lcom/htc/opensense/social/data/FaceTag;

    iput p1, v0, Lcom/htc/opensense/social/data/FaceTag;->width:F

    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperFaceTag;->mFaceTag:Lcom/htc/opensense/social/data/FaceTag;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
