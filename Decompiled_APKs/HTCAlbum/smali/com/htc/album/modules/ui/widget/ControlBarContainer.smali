.class public Lcom/htc/album/modules/ui/widget/ControlBarContainer;
.super Landroid/widget/RelativeLayout;
.source "ControlBarContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/modules/ui/widget/ControlBarContainer$OnControlBarClickListener;
    }
.end annotation


# instance fields
.field private mButtonStateChangeListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnButtonStateChangeListener;

.field private mControlBarClickListener:Lcom/htc/album/modules/ui/widget/ControlBarContainer$OnControlBarClickListener;

.field private mControlBars:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/htc/album/modules/ui/widget/BaseControlBar",
            "<**>;>;"
        }
    .end annotation
.end field

.field private mFocusedBarId:I

.field private mOnButtonClickListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnControlButtonClickListener;

.field private mParams:Landroid/widget/RelativeLayout$LayoutParams;

.field private mRootView:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4
    .parameter "context"
    .parameter "layoutId"

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 77
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 19
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->mParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 21
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->mControlBars:Landroid/util/SparseArray;

    .line 22
    iput-object v3, p0, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->mRootView:Landroid/view/ViewGroup;

    .line 23
    iput v2, p0, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->mFocusedBarId:I

    .line 25
    new-instance v0, Lcom/htc/album/modules/ui/widget/ControlBarContainer$1;

    invoke-direct {v0, p0}, Lcom/htc/album/modules/ui/widget/ControlBarContainer$1;-><init>(Lcom/htc/album/modules/ui/widget/ControlBarContainer;)V

    iput-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->mOnButtonClickListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnControlButtonClickListener;

    .line 39
    new-instance v0, Lcom/htc/album/modules/ui/widget/ControlBarContainer$2;

    invoke-direct {v0, p0}, Lcom/htc/album/modules/ui/widget/ControlBarContainer$2;-><init>(Lcom/htc/album/modules/ui/widget/ControlBarContainer;)V

    iput-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->mButtonStateChangeListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnButtonStateChangeListener;

    .line 63
    iput-object v3, p0, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->mControlBarClickListener:Lcom/htc/album/modules/ui/widget/ControlBarContainer$OnControlBarClickListener;

    .line 79
    invoke-virtual {p0, p2}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->setId(I)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 84
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->mParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 21
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->mControlBars:Landroid/util/SparseArray;

    .line 22
    iput-object v3, p0, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->mRootView:Landroid/view/ViewGroup;

    .line 23
    iput v2, p0, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->mFocusedBarId:I

    .line 25
    new-instance v0, Lcom/htc/album/modules/ui/widget/ControlBarContainer$1;

    invoke-direct {v0, p0}, Lcom/htc/album/modules/ui/widget/ControlBarContainer$1;-><init>(Lcom/htc/album/modules/ui/widget/ControlBarContainer;)V

    iput-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->mOnButtonClickListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnControlButtonClickListener;

    .line 39
    new-instance v0, Lcom/htc/album/modules/ui/widget/ControlBarContainer$2;

    invoke-direct {v0, p0}, Lcom/htc/album/modules/ui/widget/ControlBarContainer$2;-><init>(Lcom/htc/album/modules/ui/widget/ControlBarContainer;)V

    iput-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->mButtonStateChangeListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnButtonStateChangeListener;

    .line 63
    iput-object v3, p0, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->mControlBarClickListener:Lcom/htc/album/modules/ui/widget/ControlBarContainer$OnControlBarClickListener;

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 90
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->mParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 21
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->mControlBars:Landroid/util/SparseArray;

    .line 22
    iput-object v3, p0, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->mRootView:Landroid/view/ViewGroup;

    .line 23
    iput v2, p0, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->mFocusedBarId:I

    .line 25
    new-instance v0, Lcom/htc/album/modules/ui/widget/ControlBarContainer$1;

    invoke-direct {v0, p0}, Lcom/htc/album/modules/ui/widget/ControlBarContainer$1;-><init>(Lcom/htc/album/modules/ui/widget/ControlBarContainer;)V

    iput-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->mOnButtonClickListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnControlButtonClickListener;

    .line 39
    new-instance v0, Lcom/htc/album/modules/ui/widget/ControlBarContainer$2;

    invoke-direct {v0, p0}, Lcom/htc/album/modules/ui/widget/ControlBarContainer$2;-><init>(Lcom/htc/album/modules/ui/widget/ControlBarContainer;)V

    iput-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->mButtonStateChangeListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnButtonStateChangeListener;

    .line 63
    iput-object v3, p0, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->mControlBarClickListener:Lcom/htc/album/modules/ui/widget/ControlBarContainer$OnControlBarClickListener;

    .line 92
    return-void
.end method

.method static synthetic access$000(Lcom/htc/album/modules/ui/widget/ControlBarContainer;)Lcom/htc/album/modules/ui/widget/ControlBarContainer$OnControlBarClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->mControlBarClickListener:Lcom/htc/album/modules/ui/widget/ControlBarContainer$OnControlBarClickListener;

    return-object v0
.end method


# virtual methods
.method public addControlBar(ILcom/htc/album/modules/ui/widget/BaseControlBar;)V
    .locals 2
    .parameter "id"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/htc/album/modules/ui/widget/BaseControlBar",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 96
    .local p2, controlBar:Lcom/htc/album/modules/ui/widget/BaseControlBar;,"Lcom/htc/album/modules/ui/widget/BaseControlBar<**>;"
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->mControlBars:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 97
    invoke-virtual {p2, p1}, Lcom/htc/album/modules/ui/widget/BaseControlBar;->setId(I)V

    .line 98
    invoke-virtual {p2}, Lcom/htc/album/modules/ui/widget/BaseControlBar;->getRootView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->addView(Landroid/view/View;)V

    .line 99
    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Lcom/htc/album/modules/ui/widget/BaseControlBar;->setVisibility(I)V

    .line 100
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->mOnButtonClickListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnControlButtonClickListener;

    iget-object v1, p0, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->mButtonStateChangeListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnButtonStateChangeListener;

    invoke-virtual {p2, v0, v1}, Lcom/htc/album/modules/ui/widget/BaseControlBar;->setButtonListener(Lcom/htc/album/modules/ui/widget/ControlButton$OnControlButtonClickListener;Lcom/htc/album/modules/ui/widget/ControlButton$OnButtonStateChangeListener;)V

    .line 101
    return-void
.end method

.method public addRule(II)V
    .locals 1
    .parameter "nVerb"
    .parameter "nAnchor"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->mParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 169
    return-void
.end method

.method public attachTo(Landroid/view/ViewGroup;)V
    .locals 2
    .parameter "viewGroup"

    .prologue
    .line 137
    if-nez p1, :cond_0

    .line 142
    :goto_0
    return-void

    .line 140
    :cond_0
    iput-object p1, p0, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->mRootView:Landroid/view/ViewGroup;

    .line 141
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->mRootView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->mParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public detach()V
    .locals 5

    .prologue
    .line 147
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->mControlBars:Landroid/util/SparseArray;

    .line 148
    .local v0, controlBars:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/htc/album/modules/ui/widget/BaseControlBar<**>;>;"
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 150
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 151
    .local v3, size:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 153
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/album/modules/ui/widget/BaseControlBar;

    .line 154
    .local v1, controlbar:Lcom/htc/album/modules/ui/widget/BaseControlBar;,"Lcom/htc/album/modules/ui/widget/BaseControlBar<**>;"
    invoke-virtual {v1}, Lcom/htc/album/modules/ui/widget/BaseControlBar;->clear()V

    .line 151
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 156
    .end local v1           #controlbar:Lcom/htc/album/modules/ui/widget/BaseControlBar;,"Lcom/htc/album/modules/ui/widget/BaseControlBar<**>;"
    :cond_0
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 159
    .end local v2           #i:I
    .end local v3           #size:I
    :cond_1
    iget-object v4, p0, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->mRootView:Landroid/view/ViewGroup;

    if-eqz v4, :cond_2

    .line 161
    iget-object v4, p0, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v4, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 163
    :cond_2
    return-void
.end method

.method public getControlBar(I)Lcom/htc/album/modules/ui/widget/BaseControlBar;
    .locals 1
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/htc/album/modules/ui/widget/BaseControlBar",
            "<**>;"
        }
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->mControlBars:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/album/modules/ui/widget/BaseControlBar;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->mControlBars:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method

.method public getFocusedBarId()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->mFocusedBarId:I

    return v0
.end method

.method public getFocusedControlBar()Lcom/htc/album/modules/ui/widget/BaseControlBar;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/htc/album/modules/ui/widget/BaseControlBar",
            "<**>;"
        }
    .end annotation

    .prologue
    .line 110
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->mControlBars:Landroid/util/SparseArray;

    iget v1, p0, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->mFocusedBarId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/album/modules/ui/widget/BaseControlBar;

    return-object v0
.end method

.method public setOnControlBarClickListener(Lcom/htc/album/modules/ui/widget/ControlBarContainer$OnControlBarClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 178
    iput-object p1, p0, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->mControlBarClickListener:Lcom/htc/album/modules/ui/widget/ControlBarContainer$OnControlBarClickListener;

    .line 179
    return-void
.end method

.method public switchControlBar(I)V
    .locals 4
    .parameter "id"

    .prologue
    .line 120
    iget-object v2, p0, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->mControlBars:Landroid/util/SparseArray;

    iget v3, p0, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->mFocusedBarId:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/album/modules/ui/widget/BaseControlBar;

    .line 121
    .local v1, previousBar:Lcom/htc/album/modules/ui/widget/BaseControlBar;,"Lcom/htc/album/modules/ui/widget/BaseControlBar<**>;"
    if-eqz v1, :cond_0

    .line 123
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/htc/album/modules/ui/widget/BaseControlBar;->setVisibility(I)V

    .line 126
    :cond_0
    iget-object v2, p0, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->mControlBars:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/album/modules/ui/widget/BaseControlBar;

    .line 127
    .local v0, nextBar:Lcom/htc/album/modules/ui/widget/BaseControlBar;,"Lcom/htc/album/modules/ui/widget/BaseControlBar<**>;"
    if-eqz v0, :cond_1

    .line 129
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/htc/album/modules/ui/widget/BaseControlBar;->setVisibility(I)V

    .line 130
    iput p1, p0, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->mFocusedBarId:I

    .line 132
    :cond_1
    return-void
.end method
