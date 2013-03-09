.class Lcom/htc/widget/HtcAbsListView$1;
.super Ljava/lang/Object;
.source "HtcAbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/widget/HtcAbsListView;->onTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/HtcAbsListView;

.field final synthetic val$child:Landroid/view/View;

.field final synthetic val$performClick:Lcom/htc/widget/HtcAbsListView$PerformClick;


# direct methods
.method constructor <init>(Lcom/htc/widget/HtcAbsListView;Landroid/view/View;Lcom/htc/widget/HtcAbsListView$PerformClick;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2950
    iput-object p1, p0, Lcom/htc/widget/HtcAbsListView$1;->this$0:Lcom/htc/widget/HtcAbsListView;

    iput-object p2, p0, Lcom/htc/widget/HtcAbsListView$1;->val$child:Landroid/view/View;

    iput-object p3, p0, Lcom/htc/widget/HtcAbsListView$1;->val$performClick:Lcom/htc/widget/HtcAbsListView$PerformClick;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2952
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$1;->val$child:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 2953
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$1;->this$0:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->setPressed(Z)V

    .line 2954
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$1;->this$0:Lcom/htc/widget/HtcAbsListView;

    iget-boolean v0, v0, Lcom/htc/widget/HtcAbsListView;->mDataChanged:Z

    if-nez v0, :cond_0

    .line 2955
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$1;->this$0:Lcom/htc/widget/HtcAbsListView;

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView$1;->val$performClick:Lcom/htc/widget/HtcAbsListView$PerformClick;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->post(Ljava/lang/Runnable;)Z

    .line 2957
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$1;->this$0:Lcom/htc/widget/HtcAbsListView;

    const/4 v1, -0x1

    iput v1, v0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    .line 2958
    return-void
.end method
