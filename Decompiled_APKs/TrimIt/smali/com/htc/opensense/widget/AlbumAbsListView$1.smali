.class Lcom/htc/opensense/widget/AlbumAbsListView$1;
.super Ljava/lang/Object;
.source "AlbumAbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/opensense/widget/AlbumAbsListView;->onTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/opensense/widget/AlbumAbsListView;

.field final synthetic val$child:Landroid/view/View;

.field final synthetic val$performClick:Lcom/htc/opensense/widget/AlbumAbsListView$PerformClick;


# direct methods
.method constructor <init>(Lcom/htc/opensense/widget/AlbumAbsListView;Landroid/view/View;Lcom/htc/opensense/widget/AlbumAbsListView$PerformClick;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2084
    iput-object p1, p0, Lcom/htc/opensense/widget/AlbumAbsListView$1;->this$0:Lcom/htc/opensense/widget/AlbumAbsListView;

    iput-object p2, p0, Lcom/htc/opensense/widget/AlbumAbsListView$1;->val$child:Landroid/view/View;

    iput-object p3, p0, Lcom/htc/opensense/widget/AlbumAbsListView$1;->val$performClick:Lcom/htc/opensense/widget/AlbumAbsListView$PerformClick;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2086
    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView$1;->val$child:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 2087
    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView$1;->this$0:Lcom/htc/opensense/widget/AlbumAbsListView;

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/AlbumAbsListView;->setPressed(Z)V

    .line 2088
    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView$1;->this$0:Lcom/htc/opensense/widget/AlbumAbsListView;

    iget-boolean v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mDataChanged:Z

    if-nez v0, :cond_0

    .line 2089
    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView$1;->this$0:Lcom/htc/opensense/widget/AlbumAbsListView;

    iget-object v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView$1;->val$performClick:Lcom/htc/opensense/widget/AlbumAbsListView$PerformClick;

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/AlbumAbsListView;->post(Ljava/lang/Runnable;)Z

    .line 2091
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView$1;->this$0:Lcom/htc/opensense/widget/AlbumAbsListView;

    const/4 v1, -0x1

    iput v1, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTouchMode:I

    .line 2092
    return-void
.end method
