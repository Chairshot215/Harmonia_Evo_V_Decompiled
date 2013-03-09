.class Lcom/htc/sunny2/common/CommonView$ReLayout;
.super Lcom/htc/sunny2/RenderThreadAction;
.source "CommonView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/common/CommonView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReLayout"
.end annotation


# static fields
.field static final ACTION_NAME:Ljava/lang/String; = "ReLayout"


# instance fields
.field private isLayoutRequest:Z

.field final synthetic this$0:Lcom/htc/sunny2/common/CommonView;


# direct methods
.method public constructor <init>(Lcom/htc/sunny2/common/CommonView;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/htc/sunny2/common/CommonView$ReLayout;->this$0:Lcom/htc/sunny2/common/CommonView;

    const-string v0, "ReLayout"

    invoke-direct {p0, p1, v0}, Lcom/htc/sunny2/RenderThreadAction;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/htc/sunny2/common/CommonView$ReLayout;->setAlwaysNeedRenderAfterProcess(Z)V

    iput-boolean v1, p0, Lcom/htc/sunny2/common/CommonView$ReLayout;->isLayoutRequest:Z

    invoke-virtual {p0, v1}, Lcom/htc/sunny2/common/CommonView$ReLayout;->setAlwaysRequestRenderThreadRunningAfterProcess(Z)V

    return-void
.end method

.method private processLayoutRequest()V
    .locals 3

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/htc/sunny2/common/CommonView$ReLayout;->isLayoutRequest:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean v1, p0, Lcom/htc/sunny2/common/CommonView$ReLayout;->isLayoutRequest:Z

    invoke-virtual {p0, v1}, Lcom/htc/sunny2/common/CommonView$ReLayout;->setAlwaysRequestRenderThreadRunningAfterProcess(Z)V

    iget-object v0, p0, Lcom/htc/sunny2/common/CommonView$ReLayout;->this$0:Lcom/htc/sunny2/common/CommonView;

    iget-object v1, p0, Lcom/htc/sunny2/common/CommonView$ReLayout;->this$0:Lcom/htc/sunny2/common/CommonView;

    iget v1, v1, Lcom/htc/sunny2/common/CommonView;->mGLViewWidth:I

    iget-object v2, p0, Lcom/htc/sunny2/common/CommonView$ReLayout;->this$0:Lcom/htc/sunny2/common/CommonView;

    iget v2, v2, Lcom/htc/sunny2/common/CommonView;->mGLViewHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/common/CommonView;->layoutIRT(II)V

    iget-object v0, p0, Lcom/htc/sunny2/common/CommonView$ReLayout;->this$0:Lcom/htc/sunny2/common/CommonView;

    iget-object v0, v0, Lcom/htc/sunny2/common/CommonView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/sunny2/RenderThread;->forceRenderOnce:Z

    goto :goto_0
.end method


# virtual methods
.method public onCancelIRT(Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;)V
    .locals 0

    return-void
.end method

.method public onDoActionIRT(IJ)Z
    .locals 1

    invoke-direct {p0}, Lcom/htc/sunny2/common/CommonView$ReLayout;->processLayoutRequest()V

    const/4 v0, 0x1

    return v0
.end method

.method requestLayout()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/common/CommonView$ReLayout;->isLayoutRequest:Z

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/common/CommonView$ReLayout;->setAlwaysRequestRenderThreadRunningAfterProcess(Z)V

    return-void
.end method
