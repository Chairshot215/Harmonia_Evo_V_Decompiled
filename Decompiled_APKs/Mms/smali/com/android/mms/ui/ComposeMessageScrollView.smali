.class public Lcom/android/mms/ui/ComposeMessageScrollView;
.super Landroid/widget/ScrollView;
.source "ComposeMessageScrollView.java"


# static fields
.field private static final LOCAL_LOGV:Z = true

.field private static final TAG:Ljava/lang/String; = "ComposeMessageScrollView"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mContentView:Landroid/view/View;

.field private mFocusView:Landroid/view/View;

.field private mLastTouchEvent:I

.field private mMinHeigh:I

.field private mOnStopScrollRunnable:Ljava/lang/Runnable;

.field private textEditor:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 19
    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageScrollView;->textEditor:Landroid/view/View;

    .line 22
    iput v1, p0, Lcom/android/mms/ui/ComposeMessageScrollView;->mMinHeigh:I

    .line 23
    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageScrollView;->mContentView:Landroid/view/View;

    .line 25
    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageScrollView;->mFocusView:Landroid/view/View;

    .line 26
    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageScrollView;->mActivity:Landroid/app/Activity;

    .line 27
    iput v1, p0, Lcom/android/mms/ui/ComposeMessageScrollView;->mLastTouchEvent:I

    .line 124
    new-instance v0, Lcom/android/mms/ui/ComposeMessageScrollView$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageScrollView$2;-><init>(Lcom/android/mms/ui/ComposeMessageScrollView;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageScrollView;->mOnStopScrollRunnable:Ljava/lang/Runnable;

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageScrollView;->textEditor:Landroid/view/View;

    .line 22
    iput v1, p0, Lcom/android/mms/ui/ComposeMessageScrollView;->mMinHeigh:I

    .line 23
    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageScrollView;->mContentView:Landroid/view/View;

    .line 25
    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageScrollView;->mFocusView:Landroid/view/View;

    .line 26
    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageScrollView;->mActivity:Landroid/app/Activity;

    .line 27
    iput v1, p0, Lcom/android/mms/ui/ComposeMessageScrollView;->mLastTouchEvent:I

    .line 124
    new-instance v0, Lcom/android/mms/ui/ComposeMessageScrollView$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageScrollView$2;-><init>(Lcom/android/mms/ui/ComposeMessageScrollView;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageScrollView;->mOnStopScrollRunnable:Ljava/lang/Runnable;

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageScrollView;->textEditor:Landroid/view/View;

    .line 22
    iput v1, p0, Lcom/android/mms/ui/ComposeMessageScrollView;->mMinHeigh:I

    .line 23
    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageScrollView;->mContentView:Landroid/view/View;

    .line 25
    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageScrollView;->mFocusView:Landroid/view/View;

    .line 26
    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageScrollView;->mActivity:Landroid/app/Activity;

    .line 27
    iput v1, p0, Lcom/android/mms/ui/ComposeMessageScrollView;->mLastTouchEvent:I

    .line 124
    new-instance v0, Lcom/android/mms/ui/ComposeMessageScrollView$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageScrollView$2;-><init>(Lcom/android/mms/ui/ComposeMessageScrollView;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageScrollView;->mOnStopScrollRunnable:Ljava/lang/Runnable;

    .line 39
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/ComposeMessageScrollView;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageScrollView;->mFocusView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/ComposeMessageScrollView;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageScrollView;->textEditor:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/ComposeMessageScrollView;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageScrollView;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method private doScrollY(I)V
    .locals 2
    .parameter "delta"

    .prologue
    const/4 v1, 0x0

    .line 153
    if-eqz p1, :cond_0

    .line 154
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageScrollView;->isSmoothScrollingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 155
    invoke-virtual {p0, v1, p1}, Lcom/android/mms/ui/ComposeMessageScrollView;->smoothScrollBy(II)V

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    invoke-virtual {p0, v1, p1}, Lcom/android/mms/ui/ComposeMessageScrollView;->scrollBy(II)V

    goto :goto_0
.end method

.method private findFocusableViewInBounds(ZII)Landroid/view/View;
    .locals 11
    .parameter "topFocus"
    .parameter "top"
    .parameter "bottom"

    .prologue
    .line 164
    const/4 v10, 0x2

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/ComposeMessageScrollView;->getFocusables(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 165
    .local v2, focusables:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    const/4 v1, 0x0

    .line 174
    .local v1, focusCandidate:Landroid/view/View;
    const/4 v3, 0x0

    .line 176
    .local v3, foundFullyContainedFocusable:Z
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 177
    .local v0, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v0, :cond_8

    .line 178
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 179
    .local v5, view:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v9

    .line 180
    .local v9, viewTop:I
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v6

    .line 182
    .local v6, viewBottom:I
    if-ge p2, v6, :cond_0

    if-ge v9, p3, :cond_0

    .line 188
    if-ge p2, v9, :cond_1

    if-ge v6, p3, :cond_1

    const/4 v8, 0x1

    .line 191
    .local v8, viewIsFullyContained:Z
    :goto_1
    if-nez v1, :cond_2

    .line 193
    move-object v1, v5

    .line 194
    move v3, v8

    .line 177
    .end local v8           #viewIsFullyContained:Z
    :cond_0
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 188
    :cond_1
    const/4 v8, 0x0

    goto :goto_1

    .line 196
    .restart local v8       #viewIsFullyContained:Z
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v10

    if-lt v9, v10, :cond_4

    :cond_3
    if-nez p1, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v10

    if-le v6, v10, :cond_5

    :cond_4
    const/4 v7, 0x1

    .line 201
    .local v7, viewIsCloserToBoundary:Z
    :goto_3
    if-eqz v3, :cond_6

    .line 202
    if-eqz v8, :cond_0

    if-eqz v7, :cond_0

    .line 208
    move-object v1, v5

    goto :goto_2

    .line 196
    .end local v7           #viewIsCloserToBoundary:Z
    :cond_5
    const/4 v7, 0x0

    goto :goto_3

    .line 211
    .restart local v7       #viewIsCloserToBoundary:Z
    :cond_6
    if-eqz v8, :cond_7

    .line 213
    move-object v1, v5

    .line 214
    const/4 v3, 0x1

    goto :goto_2

    .line 215
    :cond_7
    if-eqz v7, :cond_0

    .line 220
    move-object v1, v5

    goto :goto_2

    .line 227
    .end local v5           #view:Landroid/view/View;
    .end local v6           #viewBottom:I
    .end local v7           #viewIsCloserToBoundary:Z
    .end local v8           #viewIsFullyContained:Z
    .end local v9           #viewTop:I
    :cond_8
    return-object v1
.end method

.method private needToKeepFocus(Landroid/view/View;)Z
    .locals 2
    .parameter "focusedView"

    .prologue
    const/4 v0, 0x0

    .line 64
    if-nez p1, :cond_1

    .line 71
    :cond_0
    :goto_0
    return v0

    .line 66
    :cond_1
    instance-of v1, p1, Lcom/android/mms/ui/RecipientsEditor;

    if-nez v1, :cond_0

    instance-of v1, p1, Lcom/android/mms/ui/SubjectEditor;

    if-nez v1, :cond_0

    .line 69
    instance-of v1, p1, Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 70
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private reLayoutComposeModeScrollView(I)V
    .locals 2
    .parameter "h"

    .prologue
    .line 284
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageScrollView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/mms/ui/ComposeMessageScrollView$3;

    invoke-direct {v1, p0, p1}, Lcom/android/mms/ui/ComposeMessageScrollView$3;-><init>(Lcom/android/mms/ui/ComposeMessageScrollView;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 291
    return-void
.end method

.method private scroll(III)Z
    .locals 8
    .parameter "direction"
    .parameter "top"
    .parameter "bottom"

    .prologue
    .line 231
    const/4 v3, 0x1

    .line 233
    .local v3, handled:Z
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageScrollView;->getHeight()I

    move-result v4

    .line 234
    .local v4, height:I
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageScrollView;->getScrollY()I

    move-result v1

    .line 235
    .local v1, containerTop:I
    add-int v0, v1, v4

    .line 236
    .local v0, containerBottom:I
    const/16 v7, 0x21

    if-ne p1, v7, :cond_1

    const/4 v6, 0x1

    .line 238
    .local v6, up:Z
    :goto_0
    invoke-direct {p0, v6, p2, p3}, Lcom/android/mms/ui/ComposeMessageScrollView;->findFocusableViewInBounds(ZII)Landroid/view/View;

    move-result-object v5

    .line 239
    .local v5, newFocused:Landroid/view/View;
    if-nez v5, :cond_0

    .line 240
    move-object v5, p0

    .line 243
    :cond_0
    if-lt p2, v1, :cond_2

    if-gt p3, v0, :cond_2

    .line 244
    const/4 v3, 0x0

    .line 255
    :goto_1
    return v3

    .line 236
    .end local v5           #newFocused:Landroid/view/View;
    .end local v6           #up:Z
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 246
    .restart local v5       #newFocused:Landroid/view/View;
    .restart local v6       #up:Z
    :cond_2
    if-eqz v6, :cond_3

    sub-int v2, p2, v1

    .line 247
    .local v2, delta:I
    :goto_2
    invoke-direct {p0, v2}, Lcom/android/mms/ui/ComposeMessageScrollView;->doScrollY(I)V

    goto :goto_1

    .line 246
    .end local v2           #delta:I
    :cond_3
    sub-int v2, p3, v0

    goto :goto_2
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Landroid/widget/ScrollView;->onFinishInflate()V

    .line 54
    const v0, 0x7f0e0014

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageScrollView;->mContentView:Landroid/view/View;

    .line 55
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 119
    invoke-super/range {p0 .. p5}, Landroid/widget/ScrollView;->onLayout(ZIIII)V

    .line 122
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 113
    invoke-super {p0, p1, p2}, Landroid/widget/ScrollView;->onMeasure(II)V

    .line 115
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 0
    .parameter "l"
    .parameter "t"
    .parameter "oldl"
    .parameter "oldt"

    .prologue
    .line 133
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 150
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "ev"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x2

    .line 75
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 76
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/ComposeMessageScrollView;->mLastTouchEvent:I

    .line 77
    iput-object v3, p0, Lcom/android/mms/ui/ComposeMessageScrollView;->mFocusView:Landroid/view/View;

    .line 79
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageScrollView;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageScrollView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageScrollView;->needToKeepFocus(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageScrollView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageScrollView;->mFocusView:Landroid/view/View;

    .line 102
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 82
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 84
    iput v2, p0, Lcom/android/mms/ui/ComposeMessageScrollView;->mLastTouchEvent:I

    .line 85
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageScrollView;->mFocusView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageScrollView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/mms/ui/ComposeMessageScrollView$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessageScrollView$1;-><init>(Lcom/android/mms/ui/ComposeMessageScrollView;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 96
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/mms/ui/ComposeMessageScrollView;->mLastTouchEvent:I

    if-eq v0, v1, :cond_0

    .line 97
    iput-object v3, p0, Lcom/android/mms/ui/ComposeMessageScrollView;->mFocusView:Landroid/view/View;

    .line 98
    iput v1, p0, Lcom/android/mms/ui/ComposeMessageScrollView;->mLastTouchEvent:I

    .line 99
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageScrollView;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageScrollView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageScrollView;->needToKeepFocus(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageScrollView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageScrollView;->mFocusView:Landroid/view/View;

    goto :goto_0
.end method

.method public pureFullScroll(I)Z
    .locals 7
    .parameter "direction"

    .prologue
    .line 259
    const/16 v6, 0x82

    if-ne p1, v6, :cond_1

    const/4 v2, 0x1

    .line 260
    .local v2, down:Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageScrollView;->getHeight()I

    move-result v3

    .line 262
    .local v3, height:I
    const/4 v4, 0x0

    .line 263
    .local v4, top:I
    move v0, v3

    .line 265
    .local v0, bottom:I
    if-eqz v2, :cond_0

    .line 266
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageScrollView;->getChildCount()I

    move-result v1

    .line 267
    .local v1, count:I
    if-lez v1, :cond_0

    .line 268
    add-int/lit8 v6, v1, -0x1

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/ComposeMessageScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 269
    .local v5, view:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 270
    sub-int v4, v0, v3

    .line 274
    .end local v1           #count:I
    .end local v5           #view:Landroid/view/View;
    :cond_0
    invoke-direct {p0, p1, v4, v0}, Lcom/android/mms/ui/ComposeMessageScrollView;->scroll(III)Z

    move-result v6

    return v6

    .line 259
    .end local v0           #bottom:I
    .end local v2           #down:Z
    .end local v3           #height:I
    .end local v4           #top:I
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageScrollView;->mActivity:Landroid/app/Activity;

    .line 58
    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 1
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 108
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->setFrame(IIII)Z

    move-result v0

    return v0
.end method

.method public setTextEditorView(Landroid/view/View;)V
    .locals 0
    .parameter "editor"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageScrollView;->textEditor:Landroid/view/View;

    .line 48
    return-void
.end method
