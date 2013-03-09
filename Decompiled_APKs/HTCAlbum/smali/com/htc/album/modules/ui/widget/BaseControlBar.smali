.class public abstract Lcom/htc/album/modules/ui/widget/BaseControlBar;
.super Ljava/lang/Object;
.source "BaseControlBar.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<HOST:",
        "Landroid/view/ViewGroup;",
        "BUTTON:",
        "Lcom/htc/album/modules/ui/widget/ControlButton",
        "<*>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field protected mBmpCanvas:Landroid/graphics/Canvas;

.field protected mBmpSnapShot:Landroid/graphics/Bitmap;

.field protected mButtonClickListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnControlButtonClickListener;

.field protected mButtonStateChangeListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnButtonStateChangeListener;

.field protected mButtons:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<TBUTTON;>;"
        }
    .end annotation
.end field

.field protected mId:I

.field protected mRootView:Landroid/view/ViewGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "THOST;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/htc/album/modules/ui/widget/BaseControlBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 4
    .parameter "context"
    .parameter "resId"

    .prologue
    .local p0, this:Lcom/htc/album/modules/ui/widget/BaseControlBar;,"Lcom/htc/album/modules/ui/widget/BaseControlBar<THOST;TBUTTON;>;"
    const/4 v3, 0x0

    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object v3, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mRootView:Landroid/view/ViewGroup;

    .line 27
    new-instance v1, Landroid/util/SparseArray;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v1, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mButtons:Landroid/util/SparseArray;

    .line 28
    iput-object v3, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mButtonClickListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnControlButtonClickListener;

    .line 29
    iput-object v3, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mButtonStateChangeListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnButtonStateChangeListener;

    .line 30
    const/4 v1, -0x1

    iput v1, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mId:I

    .line 31
    iput-object v3, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mBmpSnapShot:Landroid/graphics/Bitmap;

    .line 32
    iput-object v3, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mBmpCanvas:Landroid/graphics/Canvas;

    .line 35
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 36
    .local v0, inflater:Landroid/view/LayoutInflater;
    invoke-virtual {v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mRootView:Landroid/view/ViewGroup;

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(THOST;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/htc/album/modules/ui/widget/BaseControlBar;,"Lcom/htc/album/modules/ui/widget/BaseControlBar<THOST;TBUTTON;>;"
    .local p1, hostView:Landroid/view/ViewGroup;,"THOST;"
    const/4 v2, 0x0

    .line 39
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object v2, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mRootView:Landroid/view/ViewGroup;

    .line 27
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mButtons:Landroid/util/SparseArray;

    .line 28
    iput-object v2, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mButtonClickListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnControlButtonClickListener;

    .line 29
    iput-object v2, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mButtonStateChangeListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnButtonStateChangeListener;

    .line 30
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mId:I

    .line 31
    iput-object v2, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mBmpSnapShot:Landroid/graphics/Bitmap;

    .line 32
    iput-object v2, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mBmpCanvas:Landroid/graphics/Canvas;

    .line 40
    iput-object p1, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mRootView:Landroid/view/ViewGroup;

    .line 41
    return-void
.end method


# virtual methods
.method public addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;
    .locals 5
    .parameter "context"
    .parameter "groupId"
    .parameter "btnId"
    .parameter "imgResId"
    .parameter "txtResId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "IIII)TBUTTON;"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/htc/album/modules/ui/widget/BaseControlBar;,"Lcom/htc/album/modules/ui/widget/BaseControlBar<THOST;TBUTTON;>;"
    const/4 v2, 0x0

    .line 48
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mButtons:Landroid/util/SparseArray;

    .line 49
    .local v0, buttons:Landroid/util/SparseArray;,"Landroid/util/SparseArray<TBUTTON;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v3

    invoke-virtual {p0}, Lcom/htc/album/modules/ui/widget/BaseControlBar;->getMaxButtonCount()I

    move-result v4

    if-lt v3, v4, :cond_1

    :cond_0
    move-object v1, v2

    .line 63
    :goto_0
    return-object v1

    .line 52
    :cond_1
    invoke-virtual/range {p0 .. p5}, Lcom/htc/album/modules/ui/widget/BaseControlBar;->onNewButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v1

    .line 53
    .local v1, newButton:Lcom/htc/album/modules/ui/widget/ControlButton;,"TBUTTON;"
    if-nez v1, :cond_2

    move-object v1, v2

    .line 54
    goto :goto_0

    .line 56
    :cond_2
    invoke-virtual {v0, p3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 58
    invoke-virtual {v1, p4}, Lcom/htc/album/modules/ui/widget/ControlButton;->setImageResource(I)V

    .line 59
    invoke-virtual {v1, p5}, Lcom/htc/album/modules/ui/widget/ControlButton;->setTextResource(I)V

    .line 60
    iget-object v2, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mButtonClickListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnControlButtonClickListener;

    invoke-virtual {v1, v2}, Lcom/htc/album/modules/ui/widget/ControlButton;->setOnClickListener(Lcom/htc/album/modules/ui/widget/ControlButton$OnControlButtonClickListener;)V

    .line 61
    iget-object v2, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mButtonStateChangeListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnButtonStateChangeListener;

    invoke-virtual {v1, v2}, Lcom/htc/album/modules/ui/widget/ControlButton;->setOnStateChangeListener(Lcom/htc/album/modules/ui/widget/ControlButton$OnButtonStateChangeListener;)V

    goto :goto_0
.end method

.method public addDefaultButton(Landroid/content/Context;II)Lcom/htc/album/modules/ui/widget/ControlButton;
    .locals 1
    .parameter "context"
    .parameter "groupId"
    .parameter "btnId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II)TBUTTON;"
        }
    .end annotation

    .prologue
    .line 68
    .local p0, this:Lcom/htc/album/modules/ui/widget/BaseControlBar;,"Lcom/htc/album/modules/ui/widget/BaseControlBar<THOST;TBUTTON;>;"
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/album/modules/ui/widget/BaseControlBar;->addEmptyButton(Landroid/content/Context;II)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v0

    return-object v0
.end method

.method public addEmptyButton(Landroid/content/Context;II)Lcom/htc/album/modules/ui/widget/ControlButton;
    .locals 6
    .parameter "context"
    .parameter "groupId"
    .parameter "btnId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II)TBUTTON;"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/htc/album/modules/ui/widget/BaseControlBar;,"Lcom/htc/album/modules/ui/widget/BaseControlBar<THOST;TBUTTON;>;"
    const/4 v4, 0x0

    .line 73
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/ui/widget/BaseControlBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .locals 6

    .prologue
    .line 105
    .local p0, this:Lcom/htc/album/modules/ui/widget/BaseControlBar;,"Lcom/htc/album/modules/ui/widget/BaseControlBar<THOST;TBUTTON;>;"
    iget-object v1, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mButtons:Landroid/util/SparseArray;

    .line 106
    .local v1, buttons:Landroid/util/SparseArray;,"Landroid/util/SparseArray<TBUTTON;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-gtz v4, :cond_1

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 110
    .local v3, size:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_2

    .line 112
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/album/modules/ui/widget/ControlButton;

    .line 113
    .local v0, button:Lcom/htc/album/modules/ui/widget/ControlButton;,"TBUTTON;"
    iget-object v4, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Lcom/htc/album/modules/ui/widget/ControlButton;->getButton()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 114
    invoke-virtual {v0}, Lcom/htc/album/modules/ui/widget/ControlButton;->clear()V

    .line 110
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 117
    .end local v0           #button:Lcom/htc/album/modules/ui/widget/ControlButton;,"TBUTTON;"
    :cond_2
    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    goto :goto_0
.end method

.method public findButton(I)Lcom/htc/album/modules/ui/widget/ControlButton;
    .locals 4
    .parameter "btnId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TBUTTON;"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/htc/album/modules/ui/widget/BaseControlBar;,"Lcom/htc/album/modules/ui/widget/BaseControlBar<THOST;TBUTTON;>;"
    const/4 v2, 0x0

    .line 92
    iget-object v1, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mButtons:Landroid/util/SparseArray;

    .line 93
    .local v1, buttons:Landroid/util/SparseArray;,"Landroid/util/SparseArray<TBUTTON;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-gtz v3, :cond_2

    :cond_0
    move-object v0, v2

    .line 100
    :cond_1
    :goto_0
    return-object v0

    .line 96
    :cond_2
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/album/modules/ui/widget/ControlButton;

    .line 97
    .local v0, button:Lcom/htc/album/modules/ui/widget/ControlButton;,"TBUTTON;"
    if-nez v0, :cond_1

    move-object v0, v2

    .line 98
    goto :goto_0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 172
    .local p0, this:Lcom/htc/album/modules/ui/widget/BaseControlBar;,"Lcom/htc/album/modules/ui/widget/BaseControlBar<THOST;TBUTTON;>;"
    iget v0, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mId:I

    return v0
.end method

.method public abstract getMaxButtonCount()I
.end method

.method public getRootView()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 122
    .local p0, this:Lcom/htc/album/modules/ui/widget/BaseControlBar;,"Lcom/htc/album/modules/ui/widget/BaseControlBar<THOST;TBUTTON;>;"
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mRootView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getVisibility()I
    .locals 1

    .prologue
    .line 135
    .local p0, this:Lcom/htc/album/modules/ui/widget/BaseControlBar;,"Lcom/htc/album/modules/ui/widget/BaseControlBar<THOST;TBUTTON;>;"
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mRootView:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 136
    const/16 v0, 0x8

    .line 138
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    goto :goto_0
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 142
    .local p0, this:Lcom/htc/album/modules/ui/widget/BaseControlBar;,"Lcom/htc/album/modules/ui/widget/BaseControlBar<THOST;TBUTTON;>;"
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mRootView:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 146
    :goto_0
    return-void

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    goto :goto_0
.end method

.method public isExistSnapShot()Z
    .locals 1

    .prologue
    .line 192
    .local p0, this:Lcom/htc/album/modules/ui/widget/BaseControlBar;,"Lcom/htc/album/modules/ui/widget/BaseControlBar<THOST;TBUTTON;>;"
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mBmpSnapShot:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract onNewButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "IIII)TBUTTON;"
        }
    .end annotation
.end method

.method public releaseSnapShot()V
    .locals 3

    .prologue
    .local p0, this:Lcom/htc/album/modules/ui/widget/BaseControlBar;,"Lcom/htc/album/modules/ui/widget/BaseControlBar<THOST;TBUTTON;>;"
    const/4 v2, 0x0

    .line 176
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mBmpSnapShot:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 180
    :try_start_0
    iget-object v1, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mBmpSnapShot:Landroid/graphics/Bitmap;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    :try_start_1
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mBmpSnapShot:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 182
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 187
    :cond_0
    :goto_0
    iput-object v2, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mBmpSnapShot:Landroid/graphics/Bitmap;

    .line 188
    iput-object v2, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mBmpCanvas:Landroid/graphics/Canvas;

    .line 189
    return-void

    .line 182
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 184
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public removeButton(I)V
    .locals 4
    .parameter "btnId"

    .prologue
    .line 78
    .local p0, this:Lcom/htc/album/modules/ui/widget/BaseControlBar;,"Lcom/htc/album/modules/ui/widget/BaseControlBar<THOST;TBUTTON;>;"
    iget-object v1, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mButtons:Landroid/util/SparseArray;

    .line 79
    .local v1, buttons:Landroid/util/SparseArray;,"Landroid/util/SparseArray<TBUTTON;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-gtz v2, :cond_1

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/album/modules/ui/widget/ControlButton;

    .line 83
    .local v0, button:Lcom/htc/album/modules/ui/widget/ControlButton;,"TBUTTON;"
    if-eqz v0, :cond_0

    .line 86
    iget-object v2, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Lcom/htc/album/modules/ui/widget/ControlButton;->getButton()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 87
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0
.end method

.method public setButtonListener(Lcom/htc/album/modules/ui/widget/ControlButton$OnControlButtonClickListener;Lcom/htc/album/modules/ui/widget/ControlButton$OnButtonStateChangeListener;)V
    .locals 5
    .parameter "clickListener"
    .parameter "stateListener"

    .prologue
    .line 150
    .local p0, this:Lcom/htc/album/modules/ui/widget/BaseControlBar;,"Lcom/htc/album/modules/ui/widget/BaseControlBar<THOST;TBUTTON;>;"
    iput-object p1, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mButtonClickListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnControlButtonClickListener;

    .line 151
    iput-object p2, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mButtonStateChangeListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnButtonStateChangeListener;

    .line 152
    iget-object v1, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mButtons:Landroid/util/SparseArray;

    .line 153
    .local v1, buttons:Landroid/util/SparseArray;,"Landroid/util/SparseArray<TBUTTON;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-gtz v4, :cond_1

    .line 163
    :cond_0
    return-void

    .line 156
    :cond_1
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 157
    .local v3, size:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 159
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/album/modules/ui/widget/ControlButton;

    .line 160
    .local v0, button:Lcom/htc/album/modules/ui/widget/ControlButton;,"TBUTTON;"
    invoke-virtual {v0, p1}, Lcom/htc/album/modules/ui/widget/ControlButton;->setOnClickListener(Lcom/htc/album/modules/ui/widget/ControlButton$OnControlButtonClickListener;)V

    .line 161
    invoke-virtual {v0, p2}, Lcom/htc/album/modules/ui/widget/ControlButton;->setOnStateChangeListener(Lcom/htc/album/modules/ui/widget/ControlButton$OnButtonStateChangeListener;)V

    .line 157
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method setId(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 167
    .local p0, this:Lcom/htc/album/modules/ui/widget/BaseControlBar;,"Lcom/htc/album/modules/ui/widget/BaseControlBar<THOST;TBUTTON;>;"
    iput p1, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mId:I

    .line 168
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 127
    .local p0, this:Lcom/htc/album/modules/ui/widget/BaseControlBar;,"Lcom/htc/album/modules/ui/widget/BaseControlBar<THOST;TBUTTON;>;"
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mRootView:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 131
    :goto_0
    return-void

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method public snapShot()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .local p0, this:Lcom/htc/album/modules/ui/widget/BaseControlBar;,"Lcom/htc/album/modules/ui/widget/BaseControlBar<THOST;TBUTTON;>;"
    const/4 v0, 0x0

    .line 196
    iget-object v1, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mRootView:Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    .line 198
    sget-object v1, Lcom/htc/album/modules/ui/widget/BaseControlBar;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][SceneScrollCacheHandler][snapShot]: no root..."

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    :goto_0
    return-object v0

    .line 201
    :cond_0
    iget-object v1, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    if-nez v1, :cond_2

    .line 203
    :cond_1
    sget-object v1, Lcom/htc/album/modules/ui/widget/BaseControlBar;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][SceneScrollCacheHandler][snapShot]: no dimension..."

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 206
    :cond_2
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mBmpCanvas:Landroid/graphics/Canvas;

    if-nez v0, :cond_3

    .line 208
    sget-object v0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SceneScrollCacheHandler][snapShot]: new canvas..."

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mBmpCanvas:Landroid/graphics/Canvas;

    .line 211
    :cond_3
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mBmpSnapShot:Landroid/graphics/Bitmap;

    if-nez v0, :cond_4

    .line 213
    sget-object v0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SceneScrollCacheHandler][snapShot]: new bitmap..."

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mBmpSnapShot:Landroid/graphics/Bitmap;

    .line 215
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mBmpCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mBmpSnapShot:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 217
    :cond_4
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mBmpCanvas:Landroid/graphics/Canvas;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mBmpSnapShot:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    .line 219
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mRootView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mBmpCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 221
    :cond_5
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mBmpSnapShot:Landroid/graphics/Bitmap;

    goto :goto_0
.end method
