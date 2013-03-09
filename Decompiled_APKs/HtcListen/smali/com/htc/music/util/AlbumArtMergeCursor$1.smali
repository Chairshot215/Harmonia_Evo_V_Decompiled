.class Lcom/htc/music/util/AlbumArtMergeCursor$1;
.super Landroid/database/DataSetObserver;
.source "AlbumArtMergeCursor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/util/AlbumArtMergeCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/util/AlbumArtMergeCursor;


# direct methods
.method constructor <init>(Lcom/htc/music/util/AlbumArtMergeCursor;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/util/AlbumArtMergeCursor$1;->this$0:Lcom/htc/music/util/AlbumArtMergeCursor;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    iget-object v0, p0, Lcom/htc/music/util/AlbumArtMergeCursor$1;->this$0:Lcom/htc/music/util/AlbumArtMergeCursor;

    const/4 v1, -0x1

    #setter for: Lcom/htc/music/util/AlbumArtMergeCursor;->mPos:I
    invoke-static {v0, v1}, Lcom/htc/music/util/AlbumArtMergeCursor;->access$002(Lcom/htc/music/util/AlbumArtMergeCursor;I)I

    return-void
.end method

.method public onInvalidated()V
    .locals 2

    iget-object v0, p0, Lcom/htc/music/util/AlbumArtMergeCursor$1;->this$0:Lcom/htc/music/util/AlbumArtMergeCursor;

    const/4 v1, -0x1

    #setter for: Lcom/htc/music/util/AlbumArtMergeCursor;->mPos:I
    invoke-static {v0, v1}, Lcom/htc/music/util/AlbumArtMergeCursor;->access$102(Lcom/htc/music/util/AlbumArtMergeCursor;I)I

    return-void
.end method
