.class Lcom/htc/fm/MusicListActivity$3;
.super Ljava/lang/Object;
.source "MusicListActivity.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fm/MusicListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/fm/MusicListActivity;


# direct methods
.method constructor <init>(Lcom/htc/fm/MusicListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 408
    iput-object p1, p0, Lcom/htc/fm/MusicListActivity$3;->this$0:Lcom/htc/fm/MusicListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter "parent"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 412
    iget-object v0, p0, Lcom/htc/fm/MusicListActivity$3;->this$0:Lcom/htc/fm/MusicListActivity;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/htc/fm/MusicListActivity;->onListItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V

    .line 413
    return-void
.end method
