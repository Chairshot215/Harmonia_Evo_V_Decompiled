.class public Lcom/htc/opensense/album/plugin/AlbumData;
.super Lcom/htc/opensense/social/data/Album;
.source "AlbumData.java"


# instance fields
.field protected mPid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1
    .parameter "aid"
    .parameter "pid"
    .parameter "photoCount"
    .parameter "name"
    .parameter "coverUrl"
    .parameter "webLink"
    .parameter "createTime"

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/htc/opensense/social/data/Album;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense/album/plugin/AlbumData;->mPid:Ljava/lang/String;

    .line 22
    iput-object p1, p0, Lcom/htc/opensense/album/plugin/AlbumData;->albumId:Ljava/lang/String;

    .line 23
    iput p3, p0, Lcom/htc/opensense/album/plugin/AlbumData;->count:I

    .line 24
    iput-object p2, p0, Lcom/htc/opensense/album/plugin/AlbumData;->mPid:Ljava/lang/String;

    .line 25
    iput-object p4, p0, Lcom/htc/opensense/album/plugin/AlbumData;->name:Ljava/lang/String;

    .line 26
    iput-object p5, p0, Lcom/htc/opensense/album/plugin/AlbumData;->coverUrl:Ljava/lang/String;

    .line 27
    iput-object p6, p0, Lcom/htc/opensense/album/plugin/AlbumData;->webLink:Ljava/lang/String;

    .line 28
    iput-wide p7, p0, Lcom/htc/opensense/album/plugin/AlbumData;->createTime:J

    .line 29
    return-void
.end method


# virtual methods
.method public getPid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/htc/opensense/album/plugin/AlbumData;->mPid:Ljava/lang/String;

    return-object v0
.end method
