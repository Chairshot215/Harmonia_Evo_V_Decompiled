.class public Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;
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
            "Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;",
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
    .line 34
    const-class v0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->LOG_TAG:Ljava/lang/String;

    .line 154
    new-instance v0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag$1;

    invoke-direct {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag$1;-><init>()V

    sput-object v0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 167
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->mFaceTag:Lcom/htc/opensense/social/data/FaceTag;

    .line 168
    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->readFromParcel(Landroid/os/Parcel;)V

    .line 169
    return-void
.end method

.method public constructor <init>(Lcom/htc/opensense/social/data/FaceTag;)V
    .locals 1
    .parameter "faceTag"

    .prologue
    .line 43
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->mFaceTag:Lcom/htc/opensense/social/data/FaceTag;

    .line 44
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->mFaceTag:Lcom/htc/opensense/social/data/FaceTag;

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "szUID"

    .prologue
    .line 38
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->mFaceTag:Lcom/htc/opensense/social/data/FaceTag;

    .line 39
    new-instance v0, Lcom/htc/opensense/social/data/FaceTag;

    invoke-direct {v0}, Lcom/htc/opensense/social/data/FaceTag;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->mFaceTag:Lcom/htc/opensense/social/data/FaceTag;

    .line 40
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->mFaceTag:Lcom/htc/opensense/social/data/FaceTag;

    new-instance v1, Lcom/htc/opensense/social/data/Profile;

    invoke-direct {v1, p1}, Lcom/htc/opensense/social/data/Profile;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/htc/opensense/social/data/FaceTag;->owner:Lcom/htc/opensense/social/data/Profile;

    .line 41
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 177
    const/4 v0, 0x0

    return v0
.end method

.method public getCenterX()F
    .locals 2

    .prologue
    .line 116
    const/4 v0, 0x0

    .line 118
    .local v0, fValue:F
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->mFaceTag:Lcom/htc/opensense/social/data/FaceTag;

    if-eqz v1, :cond_0

    .line 120
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->mFaceTag:Lcom/htc/opensense/social/data/FaceTag;

    iget v0, v1, Lcom/htc/opensense/social/data/FaceTag;->center_x:F

    .line 122
    :cond_0
    return v0
.end method

.method public getCenterY()F
    .locals 2

    .prologue
    .line 126
    const/4 v0, 0x0

    .line 128
    .local v0, fValue:F
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->mFaceTag:Lcom/htc/opensense/social/data/FaceTag;

    if-eqz v1, :cond_0

    .line 130
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->mFaceTag:Lcom/htc/opensense/social/data/FaceTag;

    iget v0, v1, Lcom/htc/opensense/social/data/FaceTag;->center_y:F

    .line 132
    :cond_0
    return v0
.end method

.method public getHeight()F
    .locals 2

    .prologue
    .line 146
    const/4 v0, 0x0

    .line 148
    .local v0, fValue:F
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->mFaceTag:Lcom/htc/opensense/social/data/FaceTag;

    if-eqz v1, :cond_0

    .line 150
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->mFaceTag:Lcom/htc/opensense/social/data/FaceTag;

    iget v0, v1, Lcom/htc/opensense/social/data/FaceTag;->height:F

    .line 152
    :cond_0
    return v0
.end method

.method public getID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 48
    const/4 v0, 0x0

    .line 50
    .local v0, szID:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->mFaceTag:Lcom/htc/opensense/social/data/FaceTag;

    if-eqz v1, :cond_0

    .line 51
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->mFaceTag:Lcom/htc/opensense/social/data/FaceTag;

    iget-object v0, v1, Lcom/htc/opensense/social/data/FaceTag;->id:Ljava/lang/String;

    .line 53
    :cond_0
    return-object v0
.end method

.method public getOwnerID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 57
    const/4 v0, 0x0

    .line 59
    .local v0, szID:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->mFaceTag:Lcom/htc/opensense/social/data/FaceTag;

    if-eqz v1, :cond_0

    .line 61
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->mFaceTag:Lcom/htc/opensense/social/data/FaceTag;

    iget-object v1, v1, Lcom/htc/opensense/social/data/FaceTag;->owner:Lcom/htc/opensense/social/data/Profile;

    iget-object v0, v1, Lcom/htc/opensense/social/data/Profile;->profile_id:Ljava/lang/String;

    .line 64
    :cond_0
    return-object v0
.end method

.method public getOwnerName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 73
    const/4 v0, 0x0

    .line 75
    .local v0, szID:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->mFaceTag:Lcom/htc/opensense/social/data/FaceTag;

    if-eqz v1, :cond_0

    .line 76
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->mFaceTag:Lcom/htc/opensense/social/data/FaceTag;

    iget-object v1, v1, Lcom/htc/opensense/social/data/FaceTag;->owner:Lcom/htc/opensense/social/data/Profile;

    iget-object v0, v1, Lcom/htc/opensense/social/data/Profile;->display_name:Ljava/lang/String;

    .line 78
    :cond_0
    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 82
    const/4 v0, 0x0

    .line 84
    .local v0, szText:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->mFaceTag:Lcom/htc/opensense/social/data/FaceTag;

    if-eqz v1, :cond_0

    .line 85
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->mFaceTag:Lcom/htc/opensense/social/data/FaceTag;

    iget-object v0, v1, Lcom/htc/opensense/social/data/FaceTag;->text:Ljava/lang/String;

    .line 87
    :cond_0
    return-object v0
.end method

.method public getWidth()F
    .locals 2

    .prologue
    .line 136
    const/4 v0, 0x0

    .line 138
    .local v0, fValue:F
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->mFaceTag:Lcom/htc/opensense/social/data/FaceTag;

    if-eqz v1, :cond_0

    .line 140
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->mFaceTag:Lcom/htc/opensense/social/data/FaceTag;

    iget v0, v1, Lcom/htc/opensense/social/data/FaceTag;->width:F

    .line 142
    :cond_0
    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 172
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/social/data/FaceTag;

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->mFaceTag:Lcom/htc/opensense/social/data/FaceTag;

    .line 173
    return-void
.end method

.method public setCenterX(F)V
    .locals 1
    .parameter "fValue"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->mFaceTag:Lcom/htc/opensense/social/data/FaceTag;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->mFaceTag:Lcom/htc/opensense/social/data/FaceTag;

    iput p1, v0, Lcom/htc/opensense/social/data/FaceTag;->center_x:F

    .line 98
    :cond_0
    return-void
.end method

.method public setCenterY(F)V
    .locals 1
    .parameter "fValue"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->mFaceTag:Lcom/htc/opensense/social/data/FaceTag;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->mFaceTag:Lcom/htc/opensense/social/data/FaceTag;

    iput p1, v0, Lcom/htc/opensense/social/data/FaceTag;->center_y:F

    .line 103
    :cond_0
    return-void
.end method

.method public setHeight(F)V
    .locals 1
    .parameter "fValue"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->mFaceTag:Lcom/htc/opensense/social/data/FaceTag;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->mFaceTag:Lcom/htc/opensense/social/data/FaceTag;

    iput p1, v0, Lcom/htc/opensense/social/data/FaceTag;->height:F

    .line 113
    :cond_0
    return-void
.end method

.method public setOwnerID(Ljava/lang/String;)V
    .locals 1
    .parameter "szUID"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->mFaceTag:Lcom/htc/opensense/social/data/FaceTag;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->mFaceTag:Lcom/htc/opensense/social/data/FaceTag;

    iget-object v0, v0, Lcom/htc/opensense/social/data/FaceTag;->owner:Lcom/htc/opensense/social/data/Profile;

    iput-object p1, v0, Lcom/htc/opensense/social/data/Profile;->profile_id:Ljava/lang/String;

    .line 70
    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .parameter "szText"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->mFaceTag:Lcom/htc/opensense/social/data/FaceTag;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->mFaceTag:Lcom/htc/opensense/social/data/FaceTag;

    iput-object p1, v0, Lcom/htc/opensense/social/data/FaceTag;->text:Ljava/lang/String;

    .line 93
    :cond_0
    return-void
.end method

.method public setWidth(F)V
    .locals 1
    .parameter "fValue"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->mFaceTag:Lcom/htc/opensense/social/data/FaceTag;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->mFaceTag:Lcom/htc/opensense/social/data/FaceTag;

    iput p1, v0, Lcom/htc/opensense/social/data/FaceTag;->width:F

    .line 108
    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "out"
    .parameter "arg1"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->mFaceTag:Lcom/htc/opensense/social/data/FaceTag;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 183
    return-void
.end method
