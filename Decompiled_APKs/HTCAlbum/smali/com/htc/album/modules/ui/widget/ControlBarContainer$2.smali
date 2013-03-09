.class Lcom/htc/album/modules/ui/widget/ControlBarContainer$2;
.super Ljava/lang/Object;
.source "ControlBarContainer.java"

# interfaces
.implements Lcom/htc/album/modules/ui/widget/ControlButton$OnButtonStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/modules/ui/widget/ControlBarContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/modules/ui/widget/ControlBarContainer;


# direct methods
.method constructor <init>(Lcom/htc/album/modules/ui/widget/ControlBarContainer;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/htc/album/modules/ui/widget/ControlBarContainer$2;->this$0:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBubbleDismissed()V
    .locals 2

    .prologue
    .line 56
    iget-object v1, p0, Lcom/htc/album/modules/ui/widget/ControlBarContainer$2;->this$0:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    #getter for: Lcom/htc/album/modules/ui/widget/ControlBarContainer;->mControlBarClickListener:Lcom/htc/album/modules/ui/widget/ControlBarContainer$OnControlBarClickListener;
    invoke-static {v1}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->access$000(Lcom/htc/album/modules/ui/widget/ControlBarContainer;)Lcom/htc/album/modules/ui/widget/ControlBarContainer$OnControlBarClickListener;

    move-result-object v0

    .line 57
    .local v0, controlBarClickListener:Lcom/htc/album/modules/ui/widget/ControlBarContainer$OnControlBarClickListener;
    if-eqz v0, :cond_0

    .line 58
    invoke-interface {v0}, Lcom/htc/album/modules/ui/widget/ControlBarContainer$OnControlBarClickListener;->onBubbleDismissed()V

    .line 59
    :cond_0
    return-void
.end method

.method public onBubblePopped()V
    .locals 2

    .prologue
    .line 47
    iget-object v1, p0, Lcom/htc/album/modules/ui/widget/ControlBarContainer$2;->this$0:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    #getter for: Lcom/htc/album/modules/ui/widget/ControlBarContainer;->mControlBarClickListener:Lcom/htc/album/modules/ui/widget/ControlBarContainer$OnControlBarClickListener;
    invoke-static {v1}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->access$000(Lcom/htc/album/modules/ui/widget/ControlBarContainer;)Lcom/htc/album/modules/ui/widget/ControlBarContainer$OnControlBarClickListener;

    move-result-object v0

    .line 48
    .local v0, controlBarClickListener:Lcom/htc/album/modules/ui/widget/ControlBarContainer$OnControlBarClickListener;
    if-eqz v0, :cond_0

    .line 49
    invoke-interface {v0}, Lcom/htc/album/modules/ui/widget/ControlBarContainer$OnControlBarClickListener;->onBubblePopped()V

    .line 50
    :cond_0
    return-void
.end method
