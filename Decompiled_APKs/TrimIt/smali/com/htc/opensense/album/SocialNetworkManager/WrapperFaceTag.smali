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

    .prologue
    .line 21
    const-class v0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperFaceTag;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperFaceTag;->LOG_TAG:Ljava/lang/String;

    .line 141
    new-instance v0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperFaceTag$1;

    invoke-direct {v0}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperFaceTag$1;-><init>()V

    sput-object v0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperFaceTag;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperFaceTag;->mFaceTag:Lcom/htc/opensense/social/data/FaceTag;

    .line 155
    invoke-virtual {p0, p1}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperFaceTag;->readFromParcel(Landroid/os/Parcel;)V

    .line 156
    return-void
.end method

.method public constructor <init>(Lcom/htc/opensense/social/data/FaceTag;)V
    .locals 1
    .parameter "faceTag"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperFaceTag;->mFaceTag:Lcom/htc/opensense/social/data/FaceTag;

    .line 31
    iput-object p1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperFaceTag;->mFaceTag:Lcom/htc/opensense/social/data/FaceTag;

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "szUID"

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperFaceTag;->mFaceTag:Lcom/htc/opensense/social/data/FaceTag;

    .line 26
    new-instance v0, Lcom/htc/opensense/social/data/FaceTag;

    invoke-direct {v0}, Lcom/htc/opensense/social/data/FaceTag;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperFaceTag;->mFaceTag:Lcom/htc/opensense/social/data/FaceTag;

    .line 27
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperFaceTag;->mFaceTag:Lcom/htc/opensense/social/data/FaceTag;

    new-instance v1, Lcom/htc/opensense/social/data/Profile;

    invoke-direct {v1, p1}, Lcom/htc/opensense/social/data/Profile;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/htc/opensense/social/data/FaceTag;->owner:Lcom/htc/opensense/social/data/Profile;

    .line 28
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 164
    const/4 v0, 0x0

    return v0
.end method

.method public getCenterX()F
    .locals 2

    .prologue
    .line 103
    const/4 v0, 0x0

    .line 105
    .local v0, fValue:F
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperFaceTag;->mFaceTag:Lcom/htc/opensense/social/data/FaceTag;

    if-eqz v1, :cond_0

    .line 107
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperFaceTag;->mFaceTag:Lcom/htc/opensense/social/data/FaceTag;

    iget v0, v1, Lcom/htc/opensense/social/data/FaceTag;->center_x:F

    .line 109
    :cond_0
    return v0
.end method

.method public getCenterY()F
    .locals 2

    .prologue
    .line 113
    const/4 v0, 0x0

    .line 115
    .local v0, fValue:F
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperFaceTag;->mFaceTag:Lcom/htc/opensense/social/data/FaceTag;

    if-eqz v1, :cond_0

    .line 117
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperFaceTag;->mFaceTag:Lcom/htc/opensense/social/data/FaceTag;

    iget v0, v1, Lcom/htc/opensense/social/data/FaceTag;->center_y:F

    .line 119
    :cond_0
    return v0
.end method

.method public getHeight()F
    .locals 2

    .prologue
    .line 133
    const/4 v0, 0x0

    .line 135
    .local v0, fValue:F
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperFaceTag;->mFaceTag:Lcom/htc/opensense/social/data/FaceTag;

    if-eqz v1, :cond_0

    .line 137
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperFaceTag;->mFaceTag:Lcom/htc/opensense/social/data/FaceTag;

    iget v0, v1, Lcom/htc/opensense/social/data/FaceTag;->height:F

    .line 139
    :cond_0
    return v0
.end method

.method public getID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 35
    const/4 v0, 0x0

    .line 37
    .local v0, szID:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperFaceTag;->mFaceTag:Lcom/htc/opensense/social/data/FaceTag;

    if-eqz v1, :cond_0

    .line 38
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperFaceTag;->mFaceTag:Lcom/htc/opensense/social/data/FaceTag;

    iget-object v0, v1, Lcom/htc/opensense/social/data/FaceTag;->id:Ljava/lang/String;

    .line 40
    :cond_0
    return-object v0
.end method

.method public getOwnerID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 44
    const/4 v0, 0x0

    .line 46
    .local v0, szID:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperFaceTag;->mFaceTag:Lcom/htc/opensense/social/data/FaceTag;

    if-eqz v1, :cond_0

    .line 48
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperFaceTag;->mFaceTag:Lcom/htc/opensense/social/data/FaceTag;

    iget-object v1, v1, Lcom/htc/opensense/social/data/FaceTag;->owner:Lcom/htc/opensense/social/data/Profile;

    iget-object v0, v1, Lcom/htc/opensense/social/data/Profile;->profile_id:Ljava/lang/String;

    .line 51
    :cond_0
    return-object v0
.end method

.method public getOwnerName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 60
    const/4 v0, 0x0

    .line 62
    .local v0, szID:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperFaceTag;->mFaceTag:Lcom/htc/opensense/social/data/FaceTag;

    if-eqz v1, :cond_0

    .line 63
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperFaceTag;->mFaceTag:Lcom/htc/opensense/social/data/FaceTag;

    iget-object v1, v1, Lcom/htc/opensense/social/data/FaceTag;->owner:Lcom/htc/opensense/social/data/Profile;

    iget-object v0, v1, Lcom/htc/opensense/social/data/Profile;->display_name:Ljava/lang/String;

    .line 65
    :cond_0
    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 69
    const/4 v0, 0x0

    .line 71
    .local v0, szText:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperFaceTag;->mFaceTag:Lcom/htc/opensense/social/data/FaceTag;

    if-eqz v1, :cond_0

    .line 72
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperFaceTag;->mFaceTag:Lcom/htc/opensense/social/data/FaceTag;

    iget-object v0, v1, Lcom/htc/opensense/social/data/FaceTag;->text:Ljava/lang/String;

    .line 74
    :cond_0
    return-object v0
.end method

.method public getWidth()F
    .locals 2

    .prologue
    .line 123
    const/4 v0, 0x0

    .line 125
    .local v0, fValue:F
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperFaceTag;->mFaceTag:Lcom/htc/opensense/social/data/FaceTag;

    if-eqz v1, :cond_0

    .line 127
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperFaceTag;->mFaceTag:Lcom/htc/opensense/social/data/FaceTag;

    iget v0, v1, Lcom/htc/opensense/social/data/FaceTag;->width:F

    .line 129
    :cond_0
    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 159
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/social/data/FaceTag;

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperFaceTag;->mFaceTag:Lcom/htc/opensense/social/data/FaceTag;

    .line 160
    return-void
.end method

.method public setCenterX(F)V
    .locals 1
    .parameter "fValue"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperFaceTag;->mFaceTag:Lcom/htc/opensense/social/data/FaceTag;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperFaceTag;->mFaceTag:Lcom/htc/opensense/social/data/FaceTag;

    iput p1, v0, Lcom/htc/opensense/social/data/FaceTag;->center_x:F

    .line 85
    :cond_0
    return-void
.end method

.method public setCenterY(F)V
    .locals 1
    .parameter "fValue"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperFaceTag;->mFaceTag:Lcom/htc/opensense/social/data/FaceTag;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperFaceTag;->mFaceTag:Lcom/htc/opensense/social/data/FaceTag;

    iput p1, v0, Lcom/htc/opensense/social/data/FaceTag;->center_y:F

    .line 90
    :cond_0
    return-void
.end method

.method public setHeight(F)V
    .locals 1
    .parameter "fValue"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperFaceTag;->mFaceTag:Lcom/htc/opensense/social/data/FaceTag;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperFaceTag;->mFaceTag:Lcom/htc/opensense/social/data/FaceTag;

    iput p1, v0, Lcom/htc/opensense/social/data/FaceTag;->height:F

    .line 100
    :cond_0
    return-void
.end method

.method public setOwnerID(Ljava/lang/String;)V
    .locals 1
    .parameter "szUID"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperFaceTag;->mFaceTag:Lcom/htc/opensense/social/data/FaceTag;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperFaceTag;->mFaceTag:Lcom/htc/opensense/social/data/FaceTag;

    iget-object v0, v0, Lcom/htc/opensense/social/data/FaceTag;->owner:Lcom/htc/opensense/social/data/Profile;

    iput-object p1, v0, Lcom/htc/opensense/social/data/Profile;->profile_id:Ljava/lang/String;

    .line 57
    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .parameter "szText"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperFaceTag;->mFaceTag:Lcom/htc/opensense/social/data/FaceTag;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperFaceTag;->mFaceTag:Lcom/htc/opensense/social/data/FaceTag;

    iput-object p1, v0, Lcom/htc/opensense/social/data/FaceTag;->text:Ljava/lang/String;

    .line 80
    :cond_0
    return-void
.end method

.method public setWidth(F)V
    .locals 1
    .parameter "fValue"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperFaceTag;->mFaceTag:Lcom/htc/opensense/social/data/FaceTag;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperFaceTag;->mFaceTag:Lcom/htc/opensense/social/data/FaceTag;

    iput p1, v0, Lcom/htc/opensense/social/data/FaceTag;->width:F

    .line 95
    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "out"
    .parameter "arg1"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperFaceTag;->mFaceTag:Lcom/htc/opensense/social/data/FaceTag;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 170
    return-void
.end method
