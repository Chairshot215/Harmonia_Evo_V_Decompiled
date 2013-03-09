.class Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$1;
.super Ljava/lang/Object;
.source "SceneOnlinePhotoThumbnail.java"

# interfaces
.implements Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$LoadingNotifyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private oldState:I

.field final synthetic this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;


# direct methods
.method constructor <init>(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;)V
    .locals 1
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$1;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$1;->oldState:I

    return-void
.end method


# virtual methods
.method public onLoadingStatusChange(I)V
    .locals 6
    .parameter "state"

    .prologue
    const/16 v5, 0x5079

    .line 114
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$1;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;

    invoke-virtual {v4}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 115
    .local v0, handler:Landroid/os/Handler;
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$1;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;

    invoke-virtual {v4}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->getHeaderBar()Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;

    move-result-object v2

    .line 116
    .local v2, header:Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;,"Lcom/htc/album/modules/ui/widget/GalleryHeaderBar<*>;"
    if-eqz v0, :cond_0

    if-nez v2, :cond_1

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    iget v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$1;->oldState:I

    if-eq v4, p1, :cond_0

    .line 120
    iput p1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$1;->oldState:I

    .line 122
    invoke-virtual {v0, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    .line 123
    .local v1, hasMsg:Z
    const/4 v4, 0x1

    if-ne v4, v1, :cond_2

    .line 124
    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 126
    :cond_2
    const/4 v4, -0x1

    invoke-virtual {v0, v5, p1, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    .line 127
    .local v3, msg:Landroid/os/Message;
    const/4 v4, 0x2

    if-ne p1, v4, :cond_3

    .line 128
    const-wide/16 v4, 0x5dc

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 131
    :cond_3
    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
