.class public Lcom/htc/music/GliderAdapter$AlbumInfo;
.super Ljava/lang/Object;
.source "GliderAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/GliderAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlbumInfo"
.end annotation


# instance fields
.field mAlbumId:I

.field mAlbumName:Ljava/lang/String;

.field mArtistName:Ljava/lang/String;

.field mDlArtPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/music/GliderAdapter$AlbumInfo;->mAlbumId:I

    iput-object v1, p0, Lcom/htc/music/GliderAdapter$AlbumInfo;->mAlbumName:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/music/GliderAdapter$AlbumInfo;->mArtistName:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/music/GliderAdapter$AlbumInfo;->mDlArtPath:Ljava/lang/String;

    return-void
.end method
