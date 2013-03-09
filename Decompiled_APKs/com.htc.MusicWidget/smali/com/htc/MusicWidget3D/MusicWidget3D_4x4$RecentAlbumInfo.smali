.class Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$RecentAlbumInfo;
.super Ljava/lang/Object;
.source "MusicWidget3D_4x4.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RecentAlbumInfo"
.end annotation


# instance fields
.field private mIsModified:Z

.field private mIsUpdate:Z

.field private mRecentAlbumId:I

.field private mRecentAlbumartPath:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;


# direct methods
.method constructor <init>(Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 612
    iput-object p1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$RecentAlbumInfo;->this$0:Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 613
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$RecentAlbumInfo;->mRecentAlbumId:I

    .line 614
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$RecentAlbumInfo;->mRecentAlbumartPath:Ljava/lang/String;

    .line 615
    iput-boolean v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$RecentAlbumInfo;->mIsModified:Z

    .line 616
    iput-boolean v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$RecentAlbumInfo;->mIsUpdate:Z

    return-void
.end method

.method static synthetic access$900(Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$RecentAlbumInfo;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 612
    iget v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$RecentAlbumInfo;->mRecentAlbumId:I

    return v0
.end method


# virtual methods
.method getRecentAlbumId()I
    .locals 1

    .prologue
    .line 644
    iget v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$RecentAlbumInfo;->mRecentAlbumId:I

    return v0
.end method

.method getRecentAlbumPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 648
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$RecentAlbumInfo;->mRecentAlbumartPath:Ljava/lang/String;

    return-object v0
.end method

.method needUpdate()Z
    .locals 1

    .prologue
    .line 652
    iget-boolean v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$RecentAlbumInfo;->mIsUpdate:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$RecentAlbumInfo;->mIsModified:Z

    if-eqz v0, :cond_1

    .line 653
    :cond_0
    const/4 v0, 0x1

    .line 655
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setRecentAlbum(I)Z
    .locals 2
    .parameter "albumId"

    .prologue
    const/4 v1, 0x0

    .line 619
    iget v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$RecentAlbumInfo;->mRecentAlbumId:I

    if-eq p1, v0, :cond_0

    .line 620
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$RecentAlbumInfo;->mIsModified:Z

    .line 621
    iput-boolean v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$RecentAlbumInfo;->mIsUpdate:Z

    .line 622
    iput p1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$RecentAlbumInfo;->mRecentAlbumId:I

    .line 626
    :goto_0
    iget-boolean v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$RecentAlbumInfo;->mIsModified:Z

    return v0

    .line 624
    :cond_0
    iput-boolean v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$RecentAlbumInfo;->mIsModified:Z

    goto :goto_0
.end method

.method setRecentAlbumPath(Ljava/lang/String;)V
    .locals 2
    .parameter "albumPath"

    .prologue
    const/4 v1, 0x1

    .line 630
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$RecentAlbumInfo;->mRecentAlbumartPath:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 631
    if-eqz p1, :cond_0

    .line 632
    iput-object p1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$RecentAlbumInfo;->mRecentAlbumartPath:Ljava/lang/String;

    .line 633
    iput-boolean v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$RecentAlbumInfo;->mIsModified:Z

    .line 641
    :cond_0
    :goto_0
    return-void

    .line 636
    :cond_1
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$RecentAlbumInfo;->mRecentAlbumartPath:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 637
    iput-object p1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$RecentAlbumInfo;->mRecentAlbumartPath:Ljava/lang/String;

    .line 638
    iput-boolean v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$RecentAlbumInfo;->mIsModified:Z

    goto :goto_0
.end method

.method setUpdate(Z)V
    .locals 0
    .parameter "update"

    .prologue
    .line 660
    iput-boolean p1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$RecentAlbumInfo;->mIsUpdate:Z

    .line 661
    return-void
.end method
