.class public Lcom/googlecode/eyesfree/widget/SimpleOverlay;
.super Ljava/lang/Object;
.source "SimpleOverlay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/eyesfree/widget/SimpleOverlay$SilentFrameLayout;,
        Lcom/googlecode/eyesfree/widget/SimpleOverlay$SimpleOverlayListener;
    }
.end annotation


# instance fields
.field private final mContentView:Landroid/view/ViewGroup;

.field private final mContext:Landroid/content/Context;

.field private mKeyListener:Landroid/view/View$OnKeyListener;

.field private mListener:Lcom/googlecode/eyesfree/widget/SimpleOverlay$SimpleOverlayListener;

.field private final mParams:Landroid/view/WindowManager$LayoutParams;

.field private mVisible:Z

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/googlecode/eyesfree/widget/SimpleOverlay;->mContext:Landroid/content/Context;

    .line 54
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/googlecode/eyesfree/widget/SimpleOverlay;->mWindowManager:Landroid/view/WindowManager;

    .line 55
    new-instance v0, Lcom/googlecode/eyesfree/widget/SimpleOverlay$1;

    invoke-direct {v0, p0, p1}, Lcom/googlecode/eyesfree/widget/SimpleOverlay$1;-><init>(Lcom/googlecode/eyesfree/widget/SimpleOverlay;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/googlecode/eyesfree/widget/SimpleOverlay;->mContentView:Landroid/view/ViewGroup;

    .line 67
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/googlecode/eyesfree/widget/SimpleOverlay;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 68
    iget-object v0, p0, Lcom/googlecode/eyesfree/widget/SimpleOverlay;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7d3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 69
    iget-object v0, p0, Lcom/googlecode/eyesfree/widget/SimpleOverlay;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 70
    iget-object v0, p0, Lcom/googlecode/eyesfree/widget/SimpleOverlay;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/googlecode/eyesfree/widget/SimpleOverlay;->mVisible:Z

    .line 73
    return-void
.end method

.method static synthetic access$0(Lcom/googlecode/eyesfree/widget/SimpleOverlay;)Landroid/view/View$OnKeyListener;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/googlecode/eyesfree/widget/SimpleOverlay;->mKeyListener:Landroid/view/View$OnKeyListener;

    return-object v0
.end method

.method static synthetic access$1(Lcom/googlecode/eyesfree/widget/SimpleOverlay;)Landroid/view/ViewGroup;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/googlecode/eyesfree/widget/SimpleOverlay;->mContentView:Landroid/view/ViewGroup;

    return-object v0
.end method


# virtual methods
.method public findViewById(I)Landroid/view/View;
    .locals 1
    .parameter "id"

    .prologue
    .line 216
    iget-object v0, p0, Lcom/googlecode/eyesfree/widget/SimpleOverlay;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/googlecode/eyesfree/widget/SimpleOverlay;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getParams()Landroid/view/WindowManager$LayoutParams;
    .locals 2

    .prologue
    .line 156
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 157
    .local v0, copy:Landroid/view/WindowManager$LayoutParams;
    iget-object v1, p0, Lcom/googlecode/eyesfree/widget/SimpleOverlay;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 158
    return-object v0
.end method

.method public getRootView()Landroid/view/View;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/googlecode/eyesfree/widget/SimpleOverlay;->mContentView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public final hide()V
    .locals 2

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/googlecode/eyesfree/widget/SimpleOverlay;->mVisible:Z

    if-nez v0, :cond_0

    .line 136
    :goto_0
    return-void

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/googlecode/eyesfree/widget/SimpleOverlay;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/googlecode/eyesfree/widget/SimpleOverlay;->mContentView:Landroid/view/ViewGroup;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 129
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/googlecode/eyesfree/widget/SimpleOverlay;->mVisible:Z

    .line 131
    iget-object v0, p0, Lcom/googlecode/eyesfree/widget/SimpleOverlay;->mListener:Lcom/googlecode/eyesfree/widget/SimpleOverlay$SimpleOverlayListener;

    if-eqz v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/googlecode/eyesfree/widget/SimpleOverlay;->mListener:Lcom/googlecode/eyesfree/widget/SimpleOverlay$SimpleOverlayListener;

    invoke-interface {v0, p0}, Lcom/googlecode/eyesfree/widget/SimpleOverlay$SimpleOverlayListener;->onHide(Lcom/googlecode/eyesfree/widget/SimpleOverlay;)V

    .line 135
    :cond_1
    invoke-virtual {p0}, Lcom/googlecode/eyesfree/widget/SimpleOverlay;->onHide()V

    goto :goto_0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 178
    iget-boolean v0, p0, Lcom/googlecode/eyesfree/widget/SimpleOverlay;->mVisible:Z

    return v0
.end method

.method protected onHide()V
    .locals 0

    .prologue
    .line 150
    return-void
.end method

.method protected onShow()V
    .locals 0

    .prologue
    .line 143
    return-void
.end method

.method public setContentView(I)V
    .locals 2
    .parameter "layoutResId"

    .prologue
    .line 187
    iget-object v1, p0, Lcom/googlecode/eyesfree/widget/SimpleOverlay;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 188
    .local v0, inflater:Landroid/view/LayoutInflater;
    iget-object v1, p0, Lcom/googlecode/eyesfree/widget/SimpleOverlay;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 189
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1
    .parameter "content"

    .prologue
    .line 197
    iget-object v0, p0, Lcom/googlecode/eyesfree/widget/SimpleOverlay;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 198
    iget-object v0, p0, Lcom/googlecode/eyesfree/widget/SimpleOverlay;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 199
    return-void
.end method

.method public setListener(Lcom/googlecode/eyesfree/widget/SimpleOverlay$SimpleOverlayListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/googlecode/eyesfree/widget/SimpleOverlay;->mListener:Lcom/googlecode/eyesfree/widget/SimpleOverlay$SimpleOverlayListener;

    .line 98
    return-void
.end method

.method public setOnKeyListener(Landroid/view/View$OnKeyListener;)V
    .locals 0
    .parameter "keyListener"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/googlecode/eyesfree/widget/SimpleOverlay;->mKeyListener:Landroid/view/View$OnKeyListener;

    .line 89
    return-void
.end method

.method public setParams(Landroid/view/WindowManager$LayoutParams;)V
    .locals 3
    .parameter "params"

    .prologue
    .line 167
    iget-object v0, p0, Lcom/googlecode/eyesfree/widget/SimpleOverlay;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, p1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 169
    iget-boolean v0, p0, Lcom/googlecode/eyesfree/widget/SimpleOverlay;->mVisible:Z

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/googlecode/eyesfree/widget/SimpleOverlay;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/googlecode/eyesfree/widget/SimpleOverlay;->mContentView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/googlecode/eyesfree/widget/SimpleOverlay;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 172
    :cond_0
    return-void
.end method

.method public final show()V
    .locals 3

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/googlecode/eyesfree/widget/SimpleOverlay;->mVisible:Z

    if-eqz v0, :cond_0

    .line 117
    :goto_0
    return-void

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/googlecode/eyesfree/widget/SimpleOverlay;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/googlecode/eyesfree/widget/SimpleOverlay;->mContentView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/googlecode/eyesfree/widget/SimpleOverlay;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/googlecode/eyesfree/widget/SimpleOverlay;->mVisible:Z

    .line 112
    iget-object v0, p0, Lcom/googlecode/eyesfree/widget/SimpleOverlay;->mListener:Lcom/googlecode/eyesfree/widget/SimpleOverlay$SimpleOverlayListener;

    if-eqz v0, :cond_1

    .line 113
    iget-object v0, p0, Lcom/googlecode/eyesfree/widget/SimpleOverlay;->mListener:Lcom/googlecode/eyesfree/widget/SimpleOverlay$SimpleOverlayListener;

    invoke-interface {v0, p0}, Lcom/googlecode/eyesfree/widget/SimpleOverlay$SimpleOverlayListener;->onShow(Lcom/googlecode/eyesfree/widget/SimpleOverlay;)V

    .line 116
    :cond_1
    invoke-virtual {p0}, Lcom/googlecode/eyesfree/widget/SimpleOverlay;->onShow()V

    goto :goto_0
.end method
