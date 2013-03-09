.class Lcom/htc/music/widget/MusicListActivity$4;
.super Ljava/lang/Object;
.source "MusicListActivity.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/widget/MusicListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/widget/MusicListActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/widget/MusicListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/widget/MusicListActivity$4;->this$0:Lcom/htc/music/widget/MusicListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)Z
    .locals 6

    iget-object v0, p0, Lcom/htc/music/widget/MusicListActivity$4;->this$0:Lcom/htc/music/widget/MusicListActivity;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/htc/music/widget/MusicListActivity;->onListItemLongClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)Z

    move-result v0

    return v0
.end method
