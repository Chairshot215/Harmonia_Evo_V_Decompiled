.class Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$DeleteListener$2;
.super Ljava/lang/Object;
.source "SceneOnlinePhotoThumbnail.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$DeleteListener;->onDeleteCancel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$DeleteListener;


# direct methods
.method constructor <init>(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$DeleteListener;)V
    .locals 0
    .parameter

    .prologue
    .line 1598
    iput-object p1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$DeleteListener$2;->this$1:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$DeleteListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1601
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$DeleteListener$2;->this$1:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$DeleteListener;

    iget-object v0, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$DeleteListener;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;

    invoke-virtual {v0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->onBackPressed()Z

    .line 1602
    return-void
.end method
