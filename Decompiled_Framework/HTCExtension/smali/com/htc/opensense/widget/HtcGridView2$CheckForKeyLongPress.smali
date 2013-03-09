.class Lcom/htc/opensense/widget/HtcGridView2$CheckForKeyLongPress;
.super Lcom/htc/opensense/widget/HtcGridView2$WindowRunnnable;
.source "HtcGridView2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/widget/HtcGridView2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckForKeyLongPress"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/opensense/widget/HtcGridView2;


# direct methods
.method private constructor <init>(Lcom/htc/opensense/widget/HtcGridView2;)V
    .locals 1

    iput-object p1, p0, Lcom/htc/opensense/widget/HtcGridView2$CheckForKeyLongPress;->this$0:Lcom/htc/opensense/widget/HtcGridView2;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/opensense/widget/HtcGridView2$WindowRunnnable;-><init>(Lcom/htc/opensense/widget/HtcGridView2;Lcom/htc/opensense/widget/HtcGridView2$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/opensense/widget/HtcGridView2;Lcom/htc/opensense/widget/HtcGridView2$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/opensense/widget/HtcGridView2$CheckForKeyLongPress;-><init>(Lcom/htc/opensense/widget/HtcGridView2;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/htc/opensense/widget/HtcGridView2$CheckForKeyLongPress;->this$0:Lcom/htc/opensense/widget/HtcGridView2;

    invoke-virtual {v3}, Lcom/htc/opensense/widget/HtcGridView2;->isPressed()Z

    move-result v3

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/htc/opensense/widget/HtcGridView2$CheckForKeyLongPress;->this$0:Lcom/htc/opensense/widget/HtcGridView2;

    iget v2, v2, Lcom/htc/opensense/widget/HtcGridView2;->mFocusedPos:I

    if-ltz v2, :cond_1

    iget-object v2, p0, Lcom/htc/opensense/widget/HtcGridView2$CheckForKeyLongPress;->this$0:Lcom/htc/opensense/widget/HtcGridView2;

    invoke-virtual {v2}, Lcom/htc/opensense/widget/HtcGridView2;->getCenterView()Landroid/view/View;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcGridView2$CheckForKeyLongPress;->sameWindow()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/opensense/widget/HtcGridView2$CheckForKeyLongPress;->this$0:Lcom/htc/opensense/widget/HtcGridView2;

    iget-object v3, p0, Lcom/htc/opensense/widget/HtcGridView2$CheckForKeyLongPress;->this$0:Lcom/htc/opensense/widget/HtcGridView2;

    iget v3, v3, Lcom/htc/opensense/widget/HtcGridView2;->mFocusedPos:I

    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2$CheckForKeyLongPress;->this$0:Lcom/htc/opensense/widget/HtcGridView2;

    iget v4, v4, Lcom/htc/opensense/widget/HtcGridView2;->mFocusedPos:I

    iget-object v5, p0, Lcom/htc/opensense/widget/HtcGridView2$CheckForKeyLongPress;->this$0:Lcom/htc/opensense/widget/HtcGridView2;

    iget-object v5, v5, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v5, v5, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nx:I

    div-int/2addr v4, v5

    int-to-long v4, v4

    #calls: Lcom/htc/opensense/widget/HtcGridView2;->performLongPress(Landroid/view/View;IJ)Z
    invoke-static {v2, v1, v3, v4, v5}, Lcom/htc/opensense/widget/HtcGridView2;->access$500(Lcom/htc/opensense/widget/HtcGridView2;Landroid/view/View;IJ)Z

    move-result v0

    :cond_0
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/htc/opensense/widget/HtcGridView2$CheckForKeyLongPress;->this$0:Lcom/htc/opensense/widget/HtcGridView2;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/opensense/widget/HtcGridView2;->setPressed(Z)V

    iget-object v2, p0, Lcom/htc/opensense/widget/HtcGridView2$CheckForKeyLongPress;->this$0:Lcom/htc/opensense/widget/HtcGridView2;

    invoke-virtual {v2}, Lcom/htc/opensense/widget/HtcGridView2;->invalidate()V

    :cond_1
    return-void
.end method
