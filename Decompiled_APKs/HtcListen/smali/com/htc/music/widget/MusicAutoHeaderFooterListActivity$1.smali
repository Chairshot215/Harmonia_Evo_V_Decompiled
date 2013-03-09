.class Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity$1;
.super Ljava/lang/Object;
.source "MusicAutoHeaderFooterListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity$1;->this$0:Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity$1;->this$0:Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mStoreItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;
    invoke-static {v0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->access$000(Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity$1;->this$0:Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mStoreItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;
    invoke-static {v0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->access$000(Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    const/4 v1, 0x0

    check-cast v1, Landroid/widget/AdapterView;

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    goto :goto_0
.end method
