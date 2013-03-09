.class Lcom/htc/album/SocialNetwork/ActivityMainComments$1;
.super Ljava/lang/Object;
.source "ActivityMainComments.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/SocialNetwork/ActivityMainComments;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/SocialNetwork/ActivityMainComments;


# direct methods
.method constructor <init>(Lcom/htc/album/SocialNetwork/ActivityMainComments;)V
    .locals 0
    .parameter

    .prologue
    .line 481
    iput-object p1, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments$1;->this$0:Lcom/htc/album/SocialNetwork/ActivityMainComments;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 486
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments$1;->this$0:Lcom/htc/album/SocialNetwork/ActivityMainComments;

    #getter for: Lcom/htc/album/SocialNetwork/ActivityMainComments;->mAdapter:Lcom/htc/album/SocialNetwork/ListViewAdapterComments;
    invoke-static {v2}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->access$000(Lcom/htc/album/SocialNetwork/ActivityMainComments;)Lcom/htc/album/SocialNetwork/ListViewAdapterComments;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->getCommentCacher()Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->isUpdating()Z

    move-result v2

    if-ne v1, v2, :cond_0

    .line 492
    :goto_0
    return-void

    .line 489
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 490
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments$1;->this$0:Lcom/htc/album/SocialNetwork/ActivityMainComments;

    const-class v2, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 491
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments$1;->this$0:Lcom/htc/album/SocialNetwork/ActivityMainComments;

    const/16 v2, 0x4e29

    invoke-virtual {v1, v0, v2}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
