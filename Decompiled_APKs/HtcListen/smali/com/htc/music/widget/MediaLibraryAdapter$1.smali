.class Lcom/htc/music/widget/MediaLibraryAdapter$1;
.super Landroid/os/Handler;
.source "MediaLibraryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/widget/MediaLibraryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/widget/MediaLibraryAdapter;


# direct methods
.method constructor <init>(Lcom/htc/music/widget/MediaLibraryAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/widget/MediaLibraryAdapter$1;->this$0:Lcom/htc/music/widget/MediaLibraryAdapter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v0, p1, Landroid/os/Message;->arg2:I

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/htc/music/widget/MediaLibraryAdapter$1;->this$0:Lcom/htc/music/widget/MediaLibraryAdapter;

    iget-object v3, v3, Lcom/htc/music/widget/MediaLibraryAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/htc/music/util/SourceItem;->mIconBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/music/widget/MediaLibraryAdapter$1;->this$0:Lcom/htc/music/widget/MediaLibraryAdapter;

    iget-object v3, v3, Lcom/htc/music/widget/MediaLibraryAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/htc/music/util/SourceItem;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v3, p0, Lcom/htc/music/widget/MediaLibraryAdapter$1;->this$0:Lcom/htc/music/widget/MediaLibraryAdapter;

    iget-object v3, v3, Lcom/htc/music/widget/MediaLibraryAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    aget-object v3, v3, v2

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/htc/music/util/SourceItem;->mIconBitmap:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v3, p0, Lcom/htc/music/widget/MediaLibraryAdapter$1;->this$0:Lcom/htc/music/widget/MediaLibraryAdapter;

    iget-object v3, v3, Lcom/htc/music/widget/MediaLibraryAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    aget-object v3, v3, v2

    iput-object v1, v3, Lcom/htc/music/util/SourceItem;->mIconBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/htc/music/widget/MediaLibraryAdapter$1;->this$0:Lcom/htc/music/widget/MediaLibraryAdapter;

    iget-object v3, v3, Lcom/htc/music/widget/MediaLibraryAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    aget-object v3, v3, v2

    iput v0, v3, Lcom/htc/music/util/SourceItem;->mAlbumId:I

    iget-object v3, p0, Lcom/htc/music/widget/MediaLibraryAdapter$1;->this$0:Lcom/htc/music/widget/MediaLibraryAdapter;

    invoke-virtual {v3}, Lcom/htc/music/widget/MediaLibraryAdapter;->notifyDataSetChanged()V

    return-void
.end method
