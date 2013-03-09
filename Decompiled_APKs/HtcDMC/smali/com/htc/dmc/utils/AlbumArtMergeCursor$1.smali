.class Lcom/htc/dmc/utils/AlbumArtMergeCursor$1;
.super Landroid/database/DataSetObserver;
.source "AlbumArtMergeCursor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dmc/utils/AlbumArtMergeCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/dmc/utils/AlbumArtMergeCursor;


# direct methods
.method constructor <init>(Lcom/htc/dmc/utils/AlbumArtMergeCursor;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor$1;->this$0:Lcom/htc/dmc/utils/AlbumArtMergeCursor;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor$1;->this$0:Lcom/htc/dmc/utils/AlbumArtMergeCursor;

    const/4 v1, -0x1

    #setter for: Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mPos:I
    invoke-static {v0, v1}, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->access$002(Lcom/htc/dmc/utils/AlbumArtMergeCursor;I)I

    .line 60
    return-void
.end method

.method public onInvalidated()V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/htc/dmc/utils/AlbumArtMergeCursor$1;->this$0:Lcom/htc/dmc/utils/AlbumArtMergeCursor;

    const/4 v1, -0x1

    #setter for: Lcom/htc/dmc/utils/AlbumArtMergeCursor;->mPos:I
    invoke-static {v0, v1}, Lcom/htc/dmc/utils/AlbumArtMergeCursor;->access$102(Lcom/htc/dmc/utils/AlbumArtMergeCursor;I)I

    .line 65
    return-void
.end method
