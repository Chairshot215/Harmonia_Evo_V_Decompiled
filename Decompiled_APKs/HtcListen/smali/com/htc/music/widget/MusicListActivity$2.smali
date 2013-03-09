.class Lcom/htc/music/widget/MusicListActivity$2;
.super Ljava/lang/Object;
.source "MusicListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    iput-object p1, p0, Lcom/htc/music/widget/MusicListActivity$2;->this$0:Lcom/htc/music/widget/MusicListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/htc/music/widget/MusicListActivity$2;->this$0:Lcom/htc/music/widget/MusicListActivity;

    iget-object v0, v0, Lcom/htc/music/widget/MusicListActivity;->mList:Lcom/htc/widget/HtcListView;

    iget-object v1, p0, Lcom/htc/music/widget/MusicListActivity$2;->this$0:Lcom/htc/music/widget/MusicListActivity;

    iget-object v1, v1, Lcom/htc/music/widget/MusicListActivity;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->focusableViewAvailable(Landroid/view/View;)V

    return-void
.end method
