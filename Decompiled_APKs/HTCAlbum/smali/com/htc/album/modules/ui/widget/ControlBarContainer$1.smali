.class Lcom/htc/album/modules/ui/widget/ControlBarContainer$1;
.super Ljava/lang/Object;
.source "ControlBarContainer.java"

# interfaces
.implements Lcom/htc/album/modules/ui/widget/ControlButton$OnControlButtonClickListener;


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
    .line 27
    iput-object p1, p0, Lcom/htc/album/modules/ui/widget/ControlBarContainer$1;->this$0:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onControlButtonClick(Lcom/htc/album/modules/ui/widget/ControlButton;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/album/modules/ui/widget/ControlButton",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p1, button:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<*>;"
    iget-object v1, p0, Lcom/htc/album/modules/ui/widget/ControlBarContainer$1;->this$0:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    #getter for: Lcom/htc/album/modules/ui/widget/ControlBarContainer;->mControlBarClickListener:Lcom/htc/album/modules/ui/widget/ControlBarContainer$OnControlBarClickListener;
    invoke-static {v1}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->access$000(Lcom/htc/album/modules/ui/widget/ControlBarContainer;)Lcom/htc/album/modules/ui/widget/ControlBarContainer$OnControlBarClickListener;

    move-result-object v0

    .line 34
    .local v0, controlBarClickListener:Lcom/htc/album/modules/ui/widget/ControlBarContainer$OnControlBarClickListener;
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 35
    invoke-interface {v0, p1}, Lcom/htc/album/modules/ui/widget/ControlBarContainer$OnControlBarClickListener;->onControlButtonClick(Lcom/htc/album/modules/ui/widget/ControlButton;)V

    .line 36
    :cond_0
    return-void
.end method
