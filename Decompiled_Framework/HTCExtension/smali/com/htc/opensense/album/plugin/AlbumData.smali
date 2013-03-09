.class public Lcom/htc/opensense/album/plugin/AlbumData;
.super Lcom/htc/opensense/social/data/Album;
.source "AlbumData.java"


# instance fields
.field protected mPid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    invoke-direct {p0}, Lcom/htc/opensense/social/data/Album;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense/album/plugin/AlbumData;->mPid:Ljava/lang/String;

    iput-object p1, p0, Lcom/htc/opensense/social/data/Album;->albumId:Ljava/lang/String;

    iput p3, p0, Lcom/htc/opensense/social/data/Album;->count:I

    iput-object p2, p0, Lcom/htc/opensense/album/plugin/AlbumData;->mPid:Ljava/lang/String;

    iput-object p4, p0, Lcom/htc/opensense/social/data/Album;->name:Ljava/lang/String;

    iput-object p5, p0, Lcom/htc/opensense/social/data/Album;->coverUrl:Ljava/lang/String;

    iput-object p6, p0, Lcom/htc/opensense/social/data/Album;->webLink:Ljava/lang/String;

    iput-wide p7, p0, Lcom/htc/opensense/social/data/Album;->createTime:J

    return-void
.end method


# virtual methods
.method public getPid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/plugin/AlbumData;->mPid:Ljava/lang/String;

    return-object v0
.end method
