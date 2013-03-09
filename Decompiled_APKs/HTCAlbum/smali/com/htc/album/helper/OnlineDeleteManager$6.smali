.class Lcom/htc/album/helper/OnlineDeleteManager$6;
.super Ljava/lang/Object;
.source "OnlineDeleteManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/helper/OnlineDeleteManager;->deleteSingleMedia(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/helper/OnlineDeleteManager;


# direct methods
.method constructor <init>(Lcom/htc/album/helper/OnlineDeleteManager;)V
    .locals 0
    .parameter

    .prologue
    .line 146
    iput-object p1, p0, Lcom/htc/album/helper/OnlineDeleteManager$6;->this$0:Lcom/htc/album/helper/OnlineDeleteManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v1, 0x1

    .line 148
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 149
    iget-object v0, p0, Lcom/htc/album/helper/OnlineDeleteManager$6;->this$0:Lcom/htc/album/helper/OnlineDeleteManager;

    #getter for: Lcom/htc/album/helper/OnlineDeleteManager;->mAdapter:Lcom/htc/album/SocialNetwork/LivePhotoAdapter;
    invoke-static {v0}, Lcom/htc/album/helper/OnlineDeleteManager;->access$400(Lcom/htc/album/helper/OnlineDeleteManager;)Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 150
    iget-object v0, p0, Lcom/htc/album/helper/OnlineDeleteManager$6;->this$0:Lcom/htc/album/helper/OnlineDeleteManager;

    #getter for: Lcom/htc/album/helper/OnlineDeleteManager;->mAdapter:Lcom/htc/album/SocialNetwork/LivePhotoAdapter;
    invoke-static {v0}, Lcom/htc/album/helper/OnlineDeleteManager;->access$400(Lcom/htc/album/helper/OnlineDeleteManager;)Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->getCount()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 151
    iget-object v0, p0, Lcom/htc/album/helper/OnlineDeleteManager$6;->this$0:Lcom/htc/album/helper/OnlineDeleteManager;

    #setter for: Lcom/htc/album/helper/OnlineDeleteManager;->mIsDeleteAll:Z
    invoke-static {v0, v1}, Lcom/htc/album/helper/OnlineDeleteManager;->access$102(Lcom/htc/album/helper/OnlineDeleteManager;Z)Z

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/htc/album/helper/OnlineDeleteManager$6;->this$0:Lcom/htc/album/helper/OnlineDeleteManager;

    #calls: Lcom/htc/album/helper/OnlineDeleteManager;->deleteMedias()V
    invoke-static {v0}, Lcom/htc/album/helper/OnlineDeleteManager;->access$500(Lcom/htc/album/helper/OnlineDeleteManager;)V

    .line 155
    :cond_1
    return-void
.end method
