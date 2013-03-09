.class Lcom/htc/music/DeleteItemsActivity$2;
.super Ljava/lang/Object;
.source "DeleteItemsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/DeleteItemsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/DeleteItemsActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/DeleteItemsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/DeleteItemsActivity$2;->this$0:Lcom/htc/music/DeleteItemsActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/htc/music/DeleteItemsActivity$2;->this$0:Lcom/htc/music/DeleteItemsActivity;

    #getter for: Lcom/htc/music/DeleteItemsActivity;->mDrmUri:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/music/DeleteItemsActivity;->access$000(Lcom/htc/music/DeleteItemsActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/DeleteItemsActivity$2;->this$0:Lcom/htc/music/DeleteItemsActivity;

    iget-object v1, p0, Lcom/htc/music/DeleteItemsActivity$2;->this$0:Lcom/htc/music/DeleteItemsActivity;

    #getter for: Lcom/htc/music/DeleteItemsActivity;->mDrmUri:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/music/DeleteItemsActivity;->access$000(Lcom/htc/music/DeleteItemsActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/MusicUtils;->deleteDrmTracks(Landroid/content/Context;Landroid/net/Uri;)V

    :goto_0
    iget-object v0, p0, Lcom/htc/music/DeleteItemsActivity$2;->this$0:Lcom/htc/music/DeleteItemsActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/htc/music/DeleteItemsActivity;->setResult(I)V

    iget-object v0, p0, Lcom/htc/music/DeleteItemsActivity$2;->this$0:Lcom/htc/music/DeleteItemsActivity;

    invoke-virtual {v0}, Lcom/htc/music/DeleteItemsActivity;->finish()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/music/DeleteItemsActivity$2;->this$0:Lcom/htc/music/DeleteItemsActivity;

    iget-object v1, p0, Lcom/htc/music/DeleteItemsActivity$2;->this$0:Lcom/htc/music/DeleteItemsActivity;

    #getter for: Lcom/htc/music/DeleteItemsActivity;->mItemList:[I
    invoke-static {v1}, Lcom/htc/music/DeleteItemsActivity;->access$100(Lcom/htc/music/DeleteItemsActivity;)[I

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/MusicUtils;->deleteTracks(Landroid/content/Context;[I)V

    goto :goto_0
.end method
