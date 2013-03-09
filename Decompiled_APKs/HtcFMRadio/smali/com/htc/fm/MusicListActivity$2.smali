.class Lcom/htc/fm/MusicListActivity$2;
.super Ljava/lang/Object;
.source "MusicListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 284
    iput-object p1, p0, Lcom/htc/fm/MusicListActivity$2;->this$0:Lcom/htc/fm/MusicListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 286
    iget-object v0, p0, Lcom/htc/fm/MusicListActivity$2;->this$0:Lcom/htc/fm/MusicListActivity;

    iget-object v0, v0, Lcom/htc/fm/MusicListActivity;->mList:Lcom/htc/widget/HtcListView;

    iget-object v1, p0, Lcom/htc/fm/MusicListActivity$2;->this$0:Lcom/htc/fm/MusicListActivity;

    iget-object v1, v1, Lcom/htc/fm/MusicListActivity;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->focusableViewAvailable(Landroid/view/View;)V

    .line 287
    return-void
.end method
