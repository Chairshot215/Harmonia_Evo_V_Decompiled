.class Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter$2;
.super Ljava/lang/Object;
.source "AlbumDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;

.field final synthetic val$tempActivity:Lcom/htc/music/browserlayer/AlbumDetailActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;Lcom/htc/music/browserlayer/AlbumDetailActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter$2;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;

    iput-object p2, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter$2;->val$tempActivity:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter$2;->val$tempActivity:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter$2;->val$tempActivity:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumTitle:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$500(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter$2;->val$tempActivity:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mArtistName:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$600(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/htc/music/browserlayer/AlbumDetailActivity;->shareMusicText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$700(Lcom/htc/music/browserlayer/AlbumDetailActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
