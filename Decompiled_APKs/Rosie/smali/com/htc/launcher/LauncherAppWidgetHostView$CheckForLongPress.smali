.class Lcom/htc/launcher/LauncherAppWidgetHostView$CheckForLongPress;
.super Ljava/lang/Object;
.source "LauncherAppWidgetHostView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/launcher/LauncherAppWidgetHostView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CheckForLongPress"
.end annotation


# instance fields
.field private mOriginalWindowAttachCount:I

.field final synthetic this$0:Lcom/htc/launcher/LauncherAppWidgetHostView;


# direct methods
.method constructor <init>(Lcom/htc/launcher/LauncherAppWidgetHostView;)V
    .locals 0
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/htc/launcher/LauncherAppWidgetHostView$CheckForLongPress;->this$0:Lcom/htc/launcher/LauncherAppWidgetHostView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public rememberWindowAttachCount()V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/htc/launcher/LauncherAppWidgetHostView$CheckForLongPress;->this$0:Lcom/htc/launcher/LauncherAppWidgetHostView;

    #calls: Lcom/htc/launcher/LauncherAppWidgetHostView;->getWindowAttachCount()I
    invoke-static {v0}, Lcom/htc/launcher/LauncherAppWidgetHostView;->access$800(Lcom/htc/launcher/LauncherAppWidgetHostView;)I

    move-result v0

    iput v0, p0, Lcom/htc/launcher/LauncherAppWidgetHostView$CheckForLongPress;->mOriginalWindowAttachCount:I

    .line 107
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    .line 91
    iget-object v2, p0, Lcom/htc/launcher/LauncherAppWidgetHostView$CheckForLongPress;->this$0:Lcom/htc/launcher/LauncherAppWidgetHostView;

    #getter for: Lcom/htc/launcher/LauncherAppWidgetHostView;->mParent:Landroid/view/ViewParent;
    invoke-static {v2}, Lcom/htc/launcher/LauncherAppWidgetHostView;->access$000(Lcom/htc/launcher/LauncherAppWidgetHostView;)Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/launcher/LauncherAppWidgetHostView$CheckForLongPress;->this$0:Lcom/htc/launcher/LauncherAppWidgetHostView;

    invoke-virtual {v2}, Lcom/htc/launcher/LauncherAppWidgetHostView;->hasWindowFocus()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/htc/launcher/LauncherAppWidgetHostView$CheckForLongPress;->mOriginalWindowAttachCount:I

    iget-object v3, p0, Lcom/htc/launcher/LauncherAppWidgetHostView$CheckForLongPress;->this$0:Lcom/htc/launcher/LauncherAppWidgetHostView;

    #calls: Lcom/htc/launcher/LauncherAppWidgetHostView;->getWindowAttachCount()I
    invoke-static {v3}, Lcom/htc/launcher/LauncherAppWidgetHostView;->access$100(Lcom/htc/launcher/LauncherAppWidgetHostView;)I

    move-result v3

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/htc/launcher/LauncherAppWidgetHostView$CheckForLongPress;->this$0:Lcom/htc/launcher/LauncherAppWidgetHostView;

    #getter for: Lcom/htc/launcher/LauncherAppWidgetHostView;->mHasPerformedLongPress:Z
    invoke-static {v2}, Lcom/htc/launcher/LauncherAppWidgetHostView;->access$200(Lcom/htc/launcher/LauncherAppWidgetHostView;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 94
    iget-object v2, p0, Lcom/htc/launcher/LauncherAppWidgetHostView$CheckForLongPress;->this$0:Lcom/htc/launcher/LauncherAppWidgetHostView;

    #getter for: Lcom/htc/launcher/LauncherAppWidgetHostView;->mLastMotionDownX:F
    invoke-static {v2}, Lcom/htc/launcher/LauncherAppWidgetHostView;->access$300(Lcom/htc/launcher/LauncherAppWidgetHostView;)F

    move-result v2

    iget-object v3, p0, Lcom/htc/launcher/LauncherAppWidgetHostView$CheckForLongPress;->this$0:Lcom/htc/launcher/LauncherAppWidgetHostView;

    #getter for: Lcom/htc/launcher/LauncherAppWidgetHostView;->mLastMotionMoveX:F
    invoke-static {v3}, Lcom/htc/launcher/LauncherAppWidgetHostView;->access$400(Lcom/htc/launcher/LauncherAppWidgetHostView;)F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 95
    .local v0, diffX:F
    iget-object v2, p0, Lcom/htc/launcher/LauncherAppWidgetHostView$CheckForLongPress;->this$0:Lcom/htc/launcher/LauncherAppWidgetHostView;

    #getter for: Lcom/htc/launcher/LauncherAppWidgetHostView;->mLastMotionDownY:F
    invoke-static {v2}, Lcom/htc/launcher/LauncherAppWidgetHostView;->access$500(Lcom/htc/launcher/LauncherAppWidgetHostView;)F

    move-result v2

    iget-object v3, p0, Lcom/htc/launcher/LauncherAppWidgetHostView$CheckForLongPress;->this$0:Lcom/htc/launcher/LauncherAppWidgetHostView;

    #getter for: Lcom/htc/launcher/LauncherAppWidgetHostView;->mLastMotionMoveY:F
    invoke-static {v3}, Lcom/htc/launcher/LauncherAppWidgetHostView;->access$600(Lcom/htc/launcher/LauncherAppWidgetHostView;)F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 96
    .local v1, diffY:F
    iget-object v2, p0, Lcom/htc/launcher/LauncherAppWidgetHostView$CheckForLongPress;->this$0:Lcom/htc/launcher/LauncherAppWidgetHostView;

    #getter for: Lcom/htc/launcher/LauncherAppWidgetHostView;->m_nSlop:I
    invoke-static {v2}, Lcom/htc/launcher/LauncherAppWidgetHostView;->access$700(Lcom/htc/launcher/LauncherAppWidgetHostView;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    cmpl-float v2, v0, v2

    if-gtz v2, :cond_0

    iget-object v2, p0, Lcom/htc/launcher/LauncherAppWidgetHostView$CheckForLongPress;->this$0:Lcom/htc/launcher/LauncherAppWidgetHostView;

    #getter for: Lcom/htc/launcher/LauncherAppWidgetHostView;->m_nSlop:I
    invoke-static {v2}, Lcom/htc/launcher/LauncherAppWidgetHostView;->access$700(Lcom/htc/launcher/LauncherAppWidgetHostView;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    cmpl-float v2, v1, v2

    if-lez v2, :cond_1

    .line 103
    .end local v0           #diffX:F
    .end local v1           #diffY:F
    :cond_0
    :goto_0
    return-void

    .line 99
    .restart local v0       #diffX:F
    .restart local v1       #diffY:F
    :cond_1
    iget-object v2, p0, Lcom/htc/launcher/LauncherAppWidgetHostView$CheckForLongPress;->this$0:Lcom/htc/launcher/LauncherAppWidgetHostView;

    invoke-virtual {v2}, Lcom/htc/launcher/LauncherAppWidgetHostView;->performLongClick()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 100
    iget-object v2, p0, Lcom/htc/launcher/LauncherAppWidgetHostView$CheckForLongPress;->this$0:Lcom/htc/launcher/LauncherAppWidgetHostView;

    const/4 v3, 0x1

    #setter for: Lcom/htc/launcher/LauncherAppWidgetHostView;->mHasPerformedLongPress:Z
    invoke-static {v2, v3}, Lcom/htc/launcher/LauncherAppWidgetHostView;->access$202(Lcom/htc/launcher/LauncherAppWidgetHostView;Z)Z

    goto :goto_0
.end method
