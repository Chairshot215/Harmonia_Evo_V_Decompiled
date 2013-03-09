.class Lcom/htc/album/modules/ui/widget/ControlButton$OnBubbleDismissListener;
.super Ljava/lang/Object;
.source "ControlButton.java"

# interfaces
.implements Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/modules/ui/widget/ControlButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnBubbleDismissListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/modules/ui/widget/ControlButton;


# direct methods
.method private constructor <init>(Lcom/htc/album/modules/ui/widget/ControlButton;)V
    .locals 0
    .parameter

    .prologue
    .line 148
    .local p0, this:Lcom/htc/album/modules/ui/widget/ControlButton$OnBubbleDismissListener;,"Lcom/htc/album/modules/ui/widget/ControlButton<TBUTTON;>.OnBubbleDismissListener;"
    iput-object p1, p0, Lcom/htc/album/modules/ui/widget/ControlButton$OnBubbleDismissListener;->this$0:Lcom/htc/album/modules/ui/widget/ControlButton;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/album/modules/ui/widget/ControlButton;Lcom/htc/album/modules/ui/widget/ControlButton$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 148
    .local p0, this:Lcom/htc/album/modules/ui/widget/ControlButton$OnBubbleDismissListener;,"Lcom/htc/album/modules/ui/widget/ControlButton<TBUTTON;>.OnBubbleDismissListener;"
    invoke-direct {p0, p1}, Lcom/htc/album/modules/ui/widget/ControlButton$OnBubbleDismissListener;-><init>(Lcom/htc/album/modules/ui/widget/ControlButton;)V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .prologue
    .line 158
    .local p0, this:Lcom/htc/album/modules/ui/widget/ControlButton$OnBubbleDismissListener;,"Lcom/htc/album/modules/ui/widget/ControlButton<TBUTTON;>.OnBubbleDismissListener;"
    iget-object v1, p0, Lcom/htc/album/modules/ui/widget/ControlButton$OnBubbleDismissListener;->this$0:Lcom/htc/album/modules/ui/widget/ControlButton;

    iget-object v0, v1, Lcom/htc/album/modules/ui/widget/ControlButton;->mButtonStateChangeListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnButtonStateChangeListener;

    .line 159
    .local v0, listener:Lcom/htc/album/modules/ui/widget/ControlButton$OnButtonStateChangeListener;
    if-eqz v0, :cond_0

    .line 160
    invoke-interface {v0}, Lcom/htc/album/modules/ui/widget/ControlButton$OnButtonStateChangeListener;->onBubbleDismissed()V

    .line 161
    :cond_0
    return-void
.end method
