.class public Lcom/htc/music/widget/DismissBubbleItemClickListener;
.super Ljava/lang/Object;
.source "DismissBubbleItemClickListener.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mMusicDismissBubbleActivity:Lcom/htc/music/widget/IDismissBubbleInterface;


# direct methods
.method public constructor <init>(Lcom/htc/music/widget/IDismissBubbleInterface;Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/music/widget/DismissBubbleItemClickListener;->mMusicDismissBubbleActivity:Lcom/htc/music/widget/IDismissBubbleInterface;

    iput-object v0, p0, Lcom/htc/music/widget/DismissBubbleItemClickListener;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    iput-object p1, p0, Lcom/htc/music/widget/DismissBubbleItemClickListener;->mMusicDismissBubbleActivity:Lcom/htc/music/widget/IDismissBubbleInterface;

    iput-object p2, p0, Lcom/htc/music/widget/DismissBubbleItemClickListener;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/music/widget/DismissBubbleItemClickListener;->mMusicDismissBubbleActivity:Lcom/htc/music/widget/IDismissBubbleInterface;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/music/widget/DismissBubbleItemClickListener;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/widget/DismissBubbleItemClickListener;->mMusicDismissBubbleActivity:Lcom/htc/music/widget/IDismissBubbleInterface;

    invoke-interface {v0}, Lcom/htc/music/widget/IDismissBubbleInterface;->dismissPopupBubble()V

    iget-object v0, p0, Lcom/htc/music/widget/DismissBubbleItemClickListener;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    goto :goto_0
.end method
