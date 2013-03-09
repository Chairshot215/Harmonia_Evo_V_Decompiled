.class Lcom/htc/music/widget/AlbumView$1;
.super Landroid/os/Handler;
.source "AlbumView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/widget/AlbumView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/widget/AlbumView;


# direct methods
.method constructor <init>(Lcom/htc/music/widget/AlbumView;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/widget/AlbumView$1;->this$0:Lcom/htc/music/widget/AlbumView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/htc/music/widget/AlbumView$1;->this$0:Lcom/htc/music/widget/AlbumView;

    #getter for: Lcom/htc/music/widget/AlbumView;->mIsAttachedToWindow:Z
    invoke-static {v1}, Lcom/htc/music/widget/AlbumView;->access$000(Lcom/htc/music/widget/AlbumView;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/htc/music/widget/AlbumView$1;->this$0:Lcom/htc/music/widget/AlbumView;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v2, v1}, Lcom/htc/music/widget/AlbumView;->setArtwork(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/htc/music/widget/AlbumView$1;->this$0:Lcom/htc/music/widget/AlbumView;

    invoke-virtual {v1}, Lcom/htc/music/widget/AlbumView;->invalidate()V

    goto :goto_0

    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
