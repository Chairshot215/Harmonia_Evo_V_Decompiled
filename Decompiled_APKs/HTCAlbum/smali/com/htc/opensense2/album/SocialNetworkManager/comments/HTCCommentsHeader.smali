.class public Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;
.super Ljava/lang/Object;
.source "HTCCommentsHeader.java"


# instance fields
.field private mPersonIconURL:Ljava/lang/String;

.field private mPersonName:Ljava/lang/String;

.field private mPhoto:Landroid/graphics/Bitmap;

.field private mPhotoDate:Ljava/lang/String;

.field private mPhotoDescription:Ljava/lang/String;

.field private mPhotoIconURL:Ljava/lang/String;

.field private mPhotoName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;->mPersonName:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;->mPhotoName:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;->mPhotoDescription:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;->mPhotoDate:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;->mPersonIconURL:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;->mPhotoIconURL:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;->mPhoto:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public getPersonIconURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;->mPersonIconURL:Ljava/lang/String;

    return-object v0
.end method

.method public getPersonName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;->mPersonName:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoto()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;->mPhoto:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getPhotoDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;->mPhotoDate:Ljava/lang/String;

    return-object v0
.end method

.method public getPhotoDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;->mPhotoDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getPhotoIconURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;->mPhotoIconURL:Ljava/lang/String;

    return-object v0
.end method

.method public getPhotoName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;->mPhotoName:Ljava/lang/String;

    return-object v0
.end method

.method public setPersonIconURL(Ljava/lang/String;)V
    .locals 0
    .parameter "aPersonIconURL"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;->mPersonIconURL:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setPersonName(Ljava/lang/String;)V
    .locals 0
    .parameter "aPersonName"

    .prologue
    .line 21
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;->mPersonName:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public setPhoto(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "bitmap"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;->mPhoto:Landroid/graphics/Bitmap;

    .line 76
    return-void
.end method

.method public setPhotoDate(Ljava/lang/String;)V
    .locals 0
    .parameter "aPhotoDate"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;->mPhotoDate:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setPhotoDescription(Ljava/lang/String;)V
    .locals 0
    .parameter "aPhotoDescription"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;->mPhotoDescription:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setPhotoIconURL(Ljava/lang/String;)V
    .locals 0
    .parameter "aPhotoIconURL"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;->mPhotoIconURL:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setPhotoName(Ljava/lang/String;)V
    .locals 0
    .parameter "aPhotoName"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;->mPhotoName:Ljava/lang/String;

    .line 32
    return-void
.end method
