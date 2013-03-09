.class Lcom/htc/album/modules/ui/widget/ControlButton$OnBubbleItemClickListener;
.super Ljava/lang/Object;
.source "ControlButton.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/modules/ui/widget/ControlButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnBubbleItemClickListener"
.end annotation


# instance fields
.field private mBobbleHost:Lcom/htc/widget/HtcPopupWindowWrapper;

.field private mListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnControlButtonClickListener;


# direct methods
.method public constructor <init>(Lcom/htc/widget/HtcPopupWindowWrapper;)V
    .locals 0
    .parameter "host"

    .prologue
    .line 82
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/htc/album/modules/ui/widget/ControlButton$OnBubbleItemClickListener;->mBobbleHost:Lcom/htc/widget/HtcPopupWindowWrapper;

    .line 84
    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 93
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/htc/album/modules/ui/widget/ControlButton$OnBubbleItemClickListener;->mListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnControlButtonClickListener;

    .line 94
    .local v1, listener:Lcom/htc/album/modules/ui/widget/ControlButton$OnControlButtonClickListener;
    if-eqz v1, :cond_1

    .line 96
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 97
    .local v0, button:Ljava/lang/Object;
    instance-of v2, v0, Lcom/htc/album/modules/ui/widget/ControlButton;

    if-eqz v2, :cond_0

    .line 98
    check-cast v0, Lcom/htc/album/modules/ui/widget/ControlButton;

    .end local v0           #button:Ljava/lang/Object;
    invoke-interface {v1, v0}, Lcom/htc/album/modules/ui/widget/ControlButton$OnControlButtonClickListener;->onControlButtonClick(Lcom/htc/album/modules/ui/widget/ControlButton;)V

    .line 100
    :cond_0
    iget-object v2, p0, Lcom/htc/album/modules/ui/widget/ControlButton$OnBubbleItemClickListener;->mBobbleHost:Lcom/htc/widget/HtcPopupWindowWrapper;

    if-eqz v2, :cond_1

    .line 102
    iget-object v2, p0, Lcom/htc/album/modules/ui/widget/ControlButton$OnBubbleItemClickListener;->mBobbleHost:Lcom/htc/widget/HtcPopupWindowWrapper;

    invoke-virtual {v2}, Lcom/htc/widget/HtcPopupWindowWrapper;->dismiss()V

    .line 105
    :cond_1
    return-void
.end method

.method public setControlBubbleListener(Lcom/htc/album/modules/ui/widget/ControlButton$OnControlButtonClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/htc/album/modules/ui/widget/ControlButton$OnBubbleItemClickListener;->mListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnControlButtonClickListener;

    .line 89
    return-void
.end method
