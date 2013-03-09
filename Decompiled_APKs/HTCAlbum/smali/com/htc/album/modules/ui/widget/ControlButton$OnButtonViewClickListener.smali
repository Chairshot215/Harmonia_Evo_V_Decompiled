.class Lcom/htc/album/modules/ui/widget/ControlButton$OnButtonViewClickListener;
.super Ljava/lang/Object;
.source "ControlButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/modules/ui/widget/ControlButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnButtonViewClickListener"
.end annotation


# instance fields
.field private mListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnControlButtonClickListener;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 110
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/album/modules/ui/widget/ControlButton$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/htc/album/modules/ui/widget/ControlButton$OnButtonViewClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 128
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .line 129
    .local v2, object:Ljava/lang/Object;
    instance-of v3, v2, Lcom/htc/album/modules/ui/widget/ControlButton;

    if-eqz v3, :cond_1

    move-object v0, v2

    .line 131
    check-cast v0, Lcom/htc/album/modules/ui/widget/ControlButton;

    .line 132
    .local v0, button:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<*>;"
    invoke-virtual {v0}, Lcom/htc/album/modules/ui/widget/ControlButton;->hasBubble()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 134
    invoke-virtual {v0}, Lcom/htc/album/modules/ui/widget/ControlButton;->showBubble()Z

    .line 137
    :cond_0
    iget-object v1, p0, Lcom/htc/album/modules/ui/widget/ControlButton$OnButtonViewClickListener;->mListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnControlButtonClickListener;

    .line 138
    .local v1, listener:Lcom/htc/album/modules/ui/widget/ControlButton$OnControlButtonClickListener;
    if-eqz v1, :cond_1

    .line 140
    invoke-interface {v1, v0}, Lcom/htc/album/modules/ui/widget/ControlButton$OnControlButtonClickListener;->onControlButtonClick(Lcom/htc/album/modules/ui/widget/ControlButton;)V

    .line 143
    .end local v0           #button:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<*>;"
    .end local v1           #listener:Lcom/htc/album/modules/ui/widget/ControlButton$OnControlButtonClickListener;
    :cond_1
    return-void
.end method

.method public setControlButtonListener(Lcom/htc/album/modules/ui/widget/ControlButton$OnControlButtonClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 116
    iput-object p1, p0, Lcom/htc/album/modules/ui/widget/ControlButton$OnButtonViewClickListener;->mListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnControlButtonClickListener;

    .line 117
    return-void
.end method
