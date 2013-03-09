.class public Lcom/htc/widget/PopupBubbleWindow;
.super Ljava/lang/Object;
.source "PopupBubbleWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/PopupBubbleWindow$PopupBubbleViewContainer;,
        Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;
    }
.end annotation


# static fields
.field private static final ABOVE_ANCHOR_STATE_SET:[I = null

.field public static final INPUT_METHOD_FROM_FOCUSABLE:I = 0x0

.field public static final INPUT_METHOD_NEEDED:I = 0x1

.field public static final INPUT_METHOD_NOT_NEEDED:I = 0x2

.field private static final ROTATE_180_LEVEL:I = 0x1388


# instance fields
.field private final animEndDuration:I

.field private final animStartDuration:I

.field private downEnabled:Z

.field private mAboveAnchor:Z

.field private mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mAboveTriangle:Z

.field private mAllowScrollingAnchorParent:Z

.field private mAnchor:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mAnchorXoff:I

.field private mAnchorYoff:I

.field private mAnimationStyle:I

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mBelowTriangledDrawable:Landroid/graphics/drawable/Drawable;

.field private mBubbleHerizontalOffset:I

.field private mBubbleImageOffset:I

.field private mBubbleShadowHeight:I

.field private mBubbleVerticalOffset:I

.field private mClipToScreen:Z

.field private mClippingEnabled:Z

.field private mContentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mDrawingLocation:[I

.field private mFocusable:Z

.field private mHeight:I

.field private mHeightMode:I

.field private mIgnoreCheekPress:Z

.field private mInputMethodMode:I

.field private mIsDropdown:Z

.field private mIsShowing:Z

.field private mLastHeight:I

.field private mLastWidth:I

.field private mLayoutInScreen:Z

.field private mOnDismissListener:Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;

.field private mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private mOutsideTouchable:Z

.field private mPopupHeight:I

.field private mPopupView:Landroid/view/View;

.field private mPopupWidth:I

.field private mScreenLocation:[I

.field private mSoftInputMode:I

.field private mSplitTouchEnabled:I

.field private mTempRect:Landroid/graphics/Rect;

.field private mTouchInterceptor:Landroid/view/View$OnTouchListener;

.field private mTouchable:Z

.field private mTriangle:Landroid/graphics/drawable/Drawable;

.field private mTriangleView:Landroid/view/View;

.field private mTriangledOffset:I

.field private mWidth:I

.field private mWidthMode:I

.field private mWindowLayoutType:I

.field private mWindowManager:Landroid/view/WindowManager;

.field private final minWindowHeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100aa

    aput v2, v0, v1

    sput-object v0, Lcom/htc/widget/PopupBubbleWindow;->ABOVE_ANCHOR_STATE_SET:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/htc/widget/PopupBubbleWindow;-><init>(Landroid/view/View;II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/htc/widget/PopupBubbleWindow;-><init>(Landroid/view/View;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/widget/PopupBubbleWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x20100af

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/widget/PopupBubbleWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/htc/widget/PopupBubbleWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v8, 0x0

    iput v8, p0, Lcom/htc/widget/PopupBubbleWindow;->mInputMethodMode:I

    const/4 v8, 0x1

    iput v8, p0, Lcom/htc/widget/PopupBubbleWindow;->mSoftInputMode:I

    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/htc/widget/PopupBubbleWindow;->mTouchable:Z

    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/htc/widget/PopupBubbleWindow;->mOutsideTouchable:Z

    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/htc/widget/PopupBubbleWindow;->mClippingEnabled:Z

    const/4 v8, -0x1

    iput v8, p0, Lcom/htc/widget/PopupBubbleWindow;->mSplitTouchEnabled:I

    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/htc/widget/PopupBubbleWindow;->mAllowScrollingAnchorParent:Z

    const/4 v8, 0x2

    new-array v8, v8, [I

    iput-object v8, p0, Lcom/htc/widget/PopupBubbleWindow;->mDrawingLocation:[I

    const/4 v8, 0x2

    new-array v8, v8, [I

    iput-object v8, p0, Lcom/htc/widget/PopupBubbleWindow;->mScreenLocation:[I

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iput-object v8, p0, Lcom/htc/widget/PopupBubbleWindow;->mTempRect:Landroid/graphics/Rect;

    const/16 v8, 0x3e8

    iput v8, p0, Lcom/htc/widget/PopupBubbleWindow;->mWindowLayoutType:I

    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/htc/widget/PopupBubbleWindow;->mIgnoreCheekPress:Z

    const/4 v8, -0x1

    iput v8, p0, Lcom/htc/widget/PopupBubbleWindow;->mAnimationStyle:I

    new-instance v8, Lcom/htc/widget/PopupBubbleWindow$1;

    invoke-direct {v8, p0}, Lcom/htc/widget/PopupBubbleWindow$1;-><init>(Lcom/htc/widget/PopupBubbleWindow;)V

    iput-object v8, p0, Lcom/htc/widget/PopupBubbleWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    const/16 v8, 0x64

    iput v8, p0, Lcom/htc/widget/PopupBubbleWindow;->minWindowHeight:I

    const/16 v8, 0xc8

    iput v8, p0, Lcom/htc/widget/PopupBubbleWindow;->animEndDuration:I

    const/16 v8, 0x12c

    iput v8, p0, Lcom/htc/widget/PopupBubbleWindow;->animStartDuration:I

    iput-object p1, p0, Lcom/htc/widget/PopupBubbleWindow;->mContext:Landroid/content/Context;

    const-string v8, "window"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/WindowManager;

    iput-object v8, p0, Lcom/htc/widget/PopupBubbleWindow;->mWindowManager:Landroid/view/WindowManager;

    sget-object v8, Lcom/htc/R$styleable;->PopupBubbleWindow:[I

    invoke-virtual {p1, p2, v8, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/widget/PopupBubbleWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/widget/PopupBubbleWindow;->mTriangle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x2080af1

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/widget/PopupBubbleWindow;->mBelowTriangledDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v8, p0, Lcom/htc/widget/PopupBubbleWindow;->mBelowTriangledDrawable:Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x1388

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x2050127

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v8, v8

    iput v8, p0, Lcom/htc/widget/PopupBubbleWindow;->mTriangledOffset:I

    const/4 v8, 0x2

    const/4 v9, -0x1

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    const v8, 0x203009f

    if-ne v2, v8, :cond_0

    const/4 v2, -0x1

    :cond_0
    iput v2, p0, Lcom/htc/widget/PopupBubbleWindow;->mAnimationStyle:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x2050128

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v8, v8

    iput v8, p0, Lcom/htc/widget/PopupBubbleWindow;->mBubbleImageOffset:I

    const v8, 0x2050129

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v8, v8

    iput v8, p0, Lcom/htc/widget/PopupBubbleWindow;->mBubbleVerticalOffset:I

    const v8, 0x205012a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v8, v8

    iput v8, p0, Lcom/htc/widget/PopupBubbleWindow;->mBubbleHerizontalOffset:I

    const v8, 0x205012b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v8, v8

    iput v8, p0, Lcom/htc/widget/PopupBubbleWindow;->mBubbleShadowHeight:I

    iget v8, p0, Lcom/htc/widget/PopupBubbleWindow;->mBubbleHerizontalOffset:I

    iget v9, p0, Lcom/htc/widget/PopupBubbleWindow;->mBubbleImageOffset:I

    sub-int/2addr v8, v9

    iput v8, p0, Lcom/htc/widget/PopupBubbleWindow;->mBubbleHerizontalOffset:I

    iget v8, p0, Lcom/htc/widget/PopupBubbleWindow;->mBubbleVerticalOffset:I

    iget v9, p0, Lcom/htc/widget/PopupBubbleWindow;->mBubbleImageOffset:I

    sub-int/2addr v8, v9

    iput v8, p0, Lcom/htc/widget/PopupBubbleWindow;->mBubbleVerticalOffset:I

    iget-object v8, p0, Lcom/htc/widget/PopupBubbleWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    instance-of v8, v8, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v8, :cond_2

    iget-object v3, p0, Lcom/htc/widget/PopupBubbleWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    check-cast v3, Landroid/graphics/drawable/StateListDrawable;

    sget-object v8, Lcom/htc/widget/PopupBubbleWindow;->ABOVE_ANCHOR_STATE_SET:[I

    invoke-virtual {v3, v8}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawableIndex([I)I

    move-result v1

    invoke-virtual {v3}, Landroid/graphics/drawable/StateListDrawable;->getStateCount()I

    move-result v5

    const/4 v4, -0x1

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_1

    if-eq v6, v1, :cond_3

    move v4, v6

    :cond_1
    const/4 v8, -0x1

    if-eq v1, v8, :cond_4

    const/4 v8, -0x1

    if-eq v4, v8, :cond_4

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/widget/PopupBubbleWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/widget/PopupBubbleWindow;->mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    :cond_2
    :goto_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/htc/widget/PopupBubbleWindow;->mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v8, 0x0

    iput-object v8, p0, Lcom/htc/widget/PopupBubbleWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/htc/widget/PopupBubbleWindow;-><init>(Landroid/view/View;II)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/htc/widget/PopupBubbleWindow;-><init>(Landroid/view/View;IIZ)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;IIZ)V
    .locals 4

    const/4 v3, 0x2

    const/4 v2, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/htc/widget/PopupBubbleWindow;->mInputMethodMode:I

    iput v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mSoftInputMode:I

    iput-boolean v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mTouchable:Z

    iput-boolean v1, p0, Lcom/htc/widget/PopupBubbleWindow;->mOutsideTouchable:Z

    iput-boolean v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mClippingEnabled:Z

    iput v2, p0, Lcom/htc/widget/PopupBubbleWindow;->mSplitTouchEnabled:I

    iput-boolean v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mAllowScrollingAnchorParent:Z

    new-array v0, v3, [I

    iput-object v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mDrawingLocation:[I

    new-array v0, v3, [I

    iput-object v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mScreenLocation:[I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mTempRect:Landroid/graphics/Rect;

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mWindowLayoutType:I

    iput-boolean v1, p0, Lcom/htc/widget/PopupBubbleWindow;->mIgnoreCheekPress:Z

    iput v2, p0, Lcom/htc/widget/PopupBubbleWindow;->mAnimationStyle:I

    new-instance v0, Lcom/htc/widget/PopupBubbleWindow$1;

    invoke-direct {v0, p0}, Lcom/htc/widget/PopupBubbleWindow$1;-><init>(Lcom/htc/widget/PopupBubbleWindow;)V

    iput-object v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    const/16 v0, 0x64

    iput v0, p0, Lcom/htc/widget/PopupBubbleWindow;->minWindowHeight:I

    const/16 v0, 0xc8

    iput v0, p0, Lcom/htc/widget/PopupBubbleWindow;->animEndDuration:I

    const/16 v0, 0x12c

    iput v0, p0, Lcom/htc/widget/PopupBubbleWindow;->animStartDuration:I

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mWindowManager:Landroid/view/WindowManager;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/widget/PopupBubbleWindow;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0, p2}, Lcom/htc/widget/PopupBubbleWindow;->setWidth(I)V

    invoke-virtual {p0, p3}, Lcom/htc/widget/PopupBubbleWindow;->setHeight(I)V

    invoke-virtual {p0, p4}, Lcom/htc/widget/PopupBubbleWindow;->setFocusable(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/htc/widget/PopupBubbleWindow;)Ljava/lang/ref/WeakReference;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/widget/PopupBubbleWindow;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mPopupView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/widget/PopupBubbleWindow;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/widget/PopupBubbleWindow;->endDismissAnimation()V

    return-void
.end method

.method static synthetic access$1100(Lcom/htc/widget/PopupBubbleWindow;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mAboveAnchor:Z

    return v0
.end method

.method static synthetic access$1200()[I
    .locals 1

    sget-object v0, Lcom/htc/widget/PopupBubbleWindow;->ABOVE_ANCHOR_STATE_SET:[I

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/widget/PopupBubbleWindow;)Landroid/view/View$OnTouchListener;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mTouchInterceptor:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/widget/PopupBubbleWindow;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/widget/PopupBubbleWindow;)I
    .locals 1

    iget v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mAnchorXoff:I

    return v0
.end method

.method static synthetic access$300(Lcom/htc/widget/PopupBubbleWindow;)I
    .locals 1

    iget v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mAnchorYoff:I

    return v0
.end method

.method static synthetic access$400(Lcom/htc/widget/PopupBubbleWindow;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/widget/PopupBubbleWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/htc/widget/PopupBubbleWindow;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/widget/PopupBubbleWindow;->updateAboveAnchor(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/widget/PopupBubbleWindow;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mTriangleView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/widget/PopupBubbleWindow;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/widget/PopupBubbleWindow;->findTrianglePosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/htc/widget/PopupBubbleWindow;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/widget/PopupBubbleWindow;->updateAboveTriangle(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/htc/widget/PopupBubbleWindow;IIZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/PopupBubbleWindow;->updateTriangle(IIZ)V

    return-void
.end method

.method private computeAnimationResource()I
    .locals 2

    iget v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mAnimationStyle:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mIsDropdown:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mAboveAnchor:Z

    if-eqz v0, :cond_0

    const v0, 0x10301e0

    :goto_0
    return v0

    :cond_0
    const v0, 0x10301df

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mAnimationStyle:I

    goto :goto_0
.end method

.method private computeFlags(I)I
    .locals 3

    const/high16 v2, 0x2

    const v0, -0x868219

    and-int/2addr p1, v0

    iget-boolean v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mIgnoreCheekPress:Z

    if-eqz v0, :cond_0

    const v0, 0x8000

    or-int/2addr p1, v0

    :cond_0
    iget-boolean v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mFocusable:Z

    if-nez v0, :cond_7

    or-int/lit8 p1, p1, 0x8

    iget v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mInputMethodMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    or-int/2addr p1, v2

    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mTouchable:Z

    if-nez v0, :cond_2

    or-int/lit8 p1, p1, 0x10

    :cond_2
    iget-boolean v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mOutsideTouchable:Z

    if-eqz v0, :cond_3

    const/high16 v0, 0x4

    or-int/2addr p1, v0

    :cond_3
    iget-boolean v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mClippingEnabled:Z

    if-nez v0, :cond_4

    or-int/lit16 p1, p1, 0x200

    :cond_4
    invoke-virtual {p0}, Lcom/htc/widget/PopupBubbleWindow;->isSplitTouchEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    const/high16 v0, 0x80

    or-int/2addr p1, v0

    :cond_5
    iget-boolean v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mLayoutInScreen:Z

    if-eqz v0, :cond_6

    or-int/lit16 p1, p1, 0x100

    :cond_6
    return p1

    :cond_7
    iget v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mInputMethodMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    or-int/2addr p1, v2

    goto :goto_0
.end method

.method private computeTriangleFlags(I)I
    .locals 2

    const v0, -0x868219

    and-int/2addr p1, v0

    iget-boolean v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mIgnoreCheekPress:Z

    if-eqz v0, :cond_0

    const v0, 0x8000

    or-int/2addr p1, v0

    :cond_0
    or-int/lit8 p1, p1, 0x8

    iget v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mInputMethodMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/high16 v0, 0x2

    or-int/2addr p1, v0

    :cond_1
    or-int/lit8 p1, p1, 0x10

    iget-boolean v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mClippingEnabled:Z

    if-nez v0, :cond_2

    or-int/lit16 p1, p1, 0x200

    :cond_2
    invoke-virtual {p0}, Lcom/htc/widget/PopupBubbleWindow;->isSplitTouchEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    const/high16 v0, 0x80

    or-int/2addr p1, v0

    :cond_3
    iget-boolean v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mLayoutInScreen:Z

    if-eqz v0, :cond_4

    or-int/lit16 p1, p1, 0x100

    :cond_4
    return p1
.end method

.method private createPopupLayout(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;
    .locals 3

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget v1, p0, Lcom/htc/widget/PopupBubbleWindow;->mWidth:I

    iput v1, p0, Lcom/htc/widget/PopupBubbleWindow;->mLastWidth:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v1, p0, Lcom/htc/widget/PopupBubbleWindow;->mHeight:I

    iput v1, p0, Lcom/htc/widget/PopupBubbleWindow;->mLastHeight:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v1, p0, Lcom/htc/widget/PopupBubbleWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/PopupBubbleWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    :goto_0
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v1}, Lcom/htc/widget/PopupBubbleWindow;->computeFlags(I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v1, p0, Lcom/htc/widget/PopupBubbleWindow;->mWindowLayoutType:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    iput-object p1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    iget v1, p0, Lcom/htc/widget/PopupBubbleWindow;->mSoftInputMode:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PopupWindow:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    return-object v0

    :cond_0
    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    goto :goto_0
.end method

.method private createTriangleLayout(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;
    .locals 3

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/htc/widget/PopupBubbleWindow;->mTriangle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v1, p0, Lcom/htc/widget/PopupBubbleWindow;->mTriangle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v1, p0, Lcom/htc/widget/PopupBubbleWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/PopupBubbleWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    :goto_0
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v1}, Lcom/htc/widget/PopupBubbleWindow;->computeTriangleFlags(I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v1, p0, Lcom/htc/widget/PopupBubbleWindow;->mWindowLayoutType:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    iput-object p1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    iget v1, p0, Lcom/htc/widget/PopupBubbleWindow;->mSoftInputMode:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Triangle:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    return-object v0

    :cond_0
    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    goto :goto_0
.end method

.method private endDismissAnimation()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    :try_start_0
    const-string v0, "PopupBubbleWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endDismissAnimation and mPopupView = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/widget/PopupBubbleWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/htc/widget/PopupBubbleWindow;->mPopupView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/htc/widget/PopupBubbleWindow;->mTriangleView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mAboveTriangle:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mPopupView:Landroid/view/View;

    iget-object v1, p0, Lcom/htc/widget/PopupBubbleWindow;->mContentView:Landroid/view/View;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mPopupView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mPopupView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/htc/widget/PopupBubbleWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iput-object v4, p0, Lcom/htc/widget/PopupBubbleWindow;->mPopupView:Landroid/view/View;

    iput-boolean v3, p0, Lcom/htc/widget/PopupBubbleWindow;->mIsShowing:Z

    iget-object v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mOnDismissListener:Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mOnDismissListener:Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;

    invoke-interface {v0}, Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;->onDismiss()V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    move-object v1, v0

    iget-object v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mPopupView:Landroid/view/View;

    iget-object v2, p0, Lcom/htc/widget/PopupBubbleWindow;->mContentView:Landroid/view/View;

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mPopupView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mPopupView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/htc/widget/PopupBubbleWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    iput-object v4, p0, Lcom/htc/widget/PopupBubbleWindow;->mPopupView:Landroid/view/View;

    iput-boolean v3, p0, Lcom/htc/widget/PopupBubbleWindow;->mIsShowing:Z

    iget-object v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mOnDismissListener:Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mOnDismissListener:Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;

    invoke-interface {v0}, Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;->onDismiss()V

    :cond_3
    throw v1
.end method

.method private findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)Z
    .locals 12

    iget-object v9, p0, Lcom/htc/widget/PopupBubbleWindow;->mDrawingLocation:[I

    invoke-virtual {p1, v9}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object v9, p0, Lcom/htc/widget/PopupBubbleWindow;->mDrawingLocation:[I

    const/4 v10, 0x0

    aget v9, v9, v10

    add-int/2addr v9, p3

    iput v9, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v9, p0, Lcom/htc/widget/PopupBubbleWindow;->mDrawingLocation:[I

    const/4 v10, 0x1

    aget v9, v9, v10

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v10

    add-int/2addr v9, v10

    add-int v9, v9, p4

    iput v9, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v2, 0x0

    const/16 v9, 0x33

    iput v9, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v9, p0, Lcom/htc/widget/PopupBubbleWindow;->mScreenLocation:[I

    invoke-virtual {p1, v9}, Landroid/view/View;->getLocationOnScreen([I)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v6

    iget v9, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v10, p0, Lcom/htc/widget/PopupBubbleWindow;->mPopupHeight:I

    add-int/2addr v9, v10

    iget v10, v0, Landroid/graphics/Rect;->bottom:I

    if-gt v9, v10, :cond_0

    iget v9, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v10, p0, Lcom/htc/widget/PopupBubbleWindow;->mPopupWidth:I

    add-int/2addr v9, v10

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v10

    sub-int/2addr v9, v10

    if-lez v9, :cond_2

    :cond_0
    iget-boolean v9, p0, Lcom/htc/widget/PopupBubbleWindow;->mAllowScrollingAnchorParent:Z

    if-eqz v9, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v7

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v8

    new-instance v4, Landroid/graphics/Rect;

    iget v9, p0, Lcom/htc/widget/PopupBubbleWindow;->mPopupWidth:I

    add-int/2addr v9, v7

    add-int/2addr v9, p3

    iget v10, p0, Lcom/htc/widget/PopupBubbleWindow;->mPopupHeight:I

    add-int/2addr v10, v8

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v11

    add-int/2addr v10, v11

    add-int v10, v10, p4

    invoke-direct {v4, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v9, 0x1

    invoke-virtual {p1, v4, v9}, Landroid/view/View;->requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z

    :cond_1
    iget-object v9, p0, Lcom/htc/widget/PopupBubbleWindow;->mDrawingLocation:[I

    invoke-virtual {p1, v9}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object v9, p0, Lcom/htc/widget/PopupBubbleWindow;->mDrawingLocation:[I

    const/4 v10, 0x0

    aget v9, v9, v10

    add-int/2addr v9, p3

    iput v9, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v9, p0, Lcom/htc/widget/PopupBubbleWindow;->mDrawingLocation:[I

    const/4 v10, 0x1

    aget v9, v9, v10

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v10

    add-int/2addr v9, v10

    add-int v9, v9, p4

    iput v9, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v9, p0, Lcom/htc/widget/PopupBubbleWindow;->mScreenLocation:[I

    invoke-virtual {p1, v9}, Landroid/view/View;->getLocationOnScreen([I)V

    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v10, p0, Lcom/htc/widget/PopupBubbleWindow;->mScreenLocation:[I

    const/4 v11, 0x1

    aget v10, v10, v11

    sub-int/2addr v9, v10

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v10

    sub-int/2addr v9, v10

    sub-int v9, v9, p4

    iget-object v10, p0, Lcom/htc/widget/PopupBubbleWindow;->mScreenLocation:[I

    const/4 v11, 0x1

    aget v10, v10, v11

    sub-int v10, v10, p4

    iget v11, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v10, v11

    if-ge v9, v10, :cond_6

    const/4 v2, 0x1

    :goto_0
    if-eqz v2, :cond_7

    const/16 v9, 0x53

    iput v9, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v9

    iget-object v10, p0, Lcom/htc/widget/PopupBubbleWindow;->mDrawingLocation:[I

    const/4 v11, 0x1

    aget v10, v10, v11

    sub-int/2addr v9, v10

    add-int v9, v9, p4

    iput v9, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    :cond_2
    :goto_1
    iget-boolean v9, p0, Lcom/htc/widget/PopupBubbleWindow;->mClipToScreen:Z

    if-eqz v9, :cond_5

    iget v9, v0, Landroid/graphics/Rect;->right:I

    iget v10, v0, Landroid/graphics/Rect;->left:I

    sub-int v1, v9, v10

    iget v9, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v10, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    add-int v5, v9, v10

    iget v9, p0, Lcom/htc/widget/PopupBubbleWindow;->mBubbleHerizontalOffset:I

    sub-int v9, v1, v9

    if-le v5, v9, :cond_3

    iget v9, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int v10, v5, v1

    iget v11, p0, Lcom/htc/widget/PopupBubbleWindow;->mBubbleHerizontalOffset:I

    add-int/2addr v10, v11

    sub-int/2addr v9, v10

    iput v9, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    :cond_3
    iget v9, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v10, v0, Landroid/graphics/Rect;->left:I

    iget v11, p0, Lcom/htc/widget/PopupBubbleWindow;->mBubbleHerizontalOffset:I

    add-int/2addr v10, v11

    if-ge v9, v10, :cond_4

    iget v9, v0, Landroid/graphics/Rect;->left:I

    iget v10, p0, Lcom/htc/widget/PopupBubbleWindow;->mBubbleHerizontalOffset:I

    add-int/2addr v9, v10

    iput v9, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v9, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-static {v9, v1}, Ljava/lang/Math;->min(II)I

    move-result v9

    iput v9, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    :cond_4
    if-eqz v2, :cond_9

    iget-object v9, p0, Lcom/htc/widget/PopupBubbleWindow;->mScreenLocation:[I

    const/4 v10, 0x1

    aget v9, v9, v10

    add-int v9, v9, p4

    iget v10, p0, Lcom/htc/widget/PopupBubbleWindow;->mPopupHeight:I

    sub-int v3, v9, v10

    if-gez v3, :cond_8

    iget v9, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int/2addr v9, v3

    iput v9, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    :cond_5
    :goto_2
    iget v9, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/high16 v10, 0x1000

    or-int/2addr v9, v10

    iput v9, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    return v2

    :cond_6
    const/4 v2, 0x0

    goto :goto_0

    :cond_7
    iget-object v9, p0, Lcom/htc/widget/PopupBubbleWindow;->mDrawingLocation:[I

    const/4 v10, 0x1

    aget v9, v9, v10

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v10

    add-int/2addr v9, v10

    add-int v9, v9, p4

    iput v9, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_1

    :cond_8
    iget v9, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v10, p0, Lcom/htc/widget/PopupBubbleWindow;->mBubbleVerticalOffset:I

    iget v11, p0, Lcom/htc/widget/PopupBubbleWindow;->mBubbleShadowHeight:I

    sub-int/2addr v10, v11

    add-int/2addr v9, v10

    iput v9, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_2

    :cond_9
    iget v9, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v10, p0, Lcom/htc/widget/PopupBubbleWindow;->mBubbleVerticalOffset:I

    add-int/2addr v9, v10

    iget v10, v0, Landroid/graphics/Rect;->top:I

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_2
.end method

.method private findTrianglePosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)Z
    .locals 13

    iget-object v10, p0, Lcom/htc/widget/PopupBubbleWindow;->mDrawingLocation:[I

    invoke-virtual {p1, v10}, Landroid/view/View;->getLocationInWindow([I)V

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iget-object v10, p0, Lcom/htc/widget/PopupBubbleWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, v5}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v10, p0, Lcom/htc/widget/PopupBubbleWindow;->mDrawingLocation:[I

    const/4 v11, 0x0

    aget v10, v10, v11

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/htc/widget/PopupBubbleWindow;->mTriangle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    sub-int/2addr v10, v11

    add-int v10, v10, p3

    iput v10, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v10, p0, Lcom/htc/widget/PopupBubbleWindow;->mDrawingLocation:[I

    const/4 v11, 0x1

    aget v10, v10, v11

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/htc/widget/PopupBubbleWindow;->mTriangle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    sub-int/2addr v10, v11

    iget v11, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v10, v11

    add-int v10, v10, p4

    iget v11, p0, Lcom/htc/widget/PopupBubbleWindow;->mTriangledOffset:I

    sub-int/2addr v10, v11

    iput v10, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v2, 0x0

    const/16 v10, 0x33

    iput v10, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v10, p0, Lcom/htc/widget/PopupBubbleWindow;->mScreenLocation:[I

    invoke-virtual {p1, v10}, Landroid/view/View;->getLocationOnScreen([I)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v7

    iget v10, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v11, p0, Lcom/htc/widget/PopupBubbleWindow;->mPopupHeight:I

    add-int/2addr v10, v11

    iget v11, v0, Landroid/graphics/Rect;->bottom:I

    if-gt v10, v11, :cond_0

    iget v10, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v11, p0, Lcom/htc/widget/PopupBubbleWindow;->mPopupWidth:I

    add-int/2addr v10, v11

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v11

    sub-int/2addr v10, v11

    if-lez v10, :cond_2

    :cond_0
    iget-boolean v10, p0, Lcom/htc/widget/PopupBubbleWindow;->mAllowScrollingAnchorParent:Z

    if-eqz v10, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v8

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v9

    new-instance v4, Landroid/graphics/Rect;

    iget v10, p0, Lcom/htc/widget/PopupBubbleWindow;->mPopupWidth:I

    add-int/2addr v10, v8

    add-int v10, v10, p3

    iget v11, p0, Lcom/htc/widget/PopupBubbleWindow;->mPopupHeight:I

    add-int/2addr v11, v9

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v12

    add-int/2addr v11, v12

    add-int v11, v11, p4

    invoke-direct {v4, v8, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v10, 0x1

    invoke-virtual {p1, v4, v10}, Landroid/view/View;->requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z

    :cond_1
    iget-object v10, p0, Lcom/htc/widget/PopupBubbleWindow;->mDrawingLocation:[I

    invoke-virtual {p1, v10}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object v10, p0, Lcom/htc/widget/PopupBubbleWindow;->mDrawingLocation:[I

    const/4 v11, 0x0

    aget v10, v10, v11

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/htc/widget/PopupBubbleWindow;->mTriangle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    sub-int/2addr v10, v11

    add-int v10, v10, p3

    iput v10, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v10, p0, Lcom/htc/widget/PopupBubbleWindow;->mDrawingLocation:[I

    const/4 v11, 0x1

    aget v10, v10, v11

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/htc/widget/PopupBubbleWindow;->mTriangle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    sub-int/2addr v10, v11

    add-int v10, v10, p4

    iget v11, p0, Lcom/htc/widget/PopupBubbleWindow;->mTriangledOffset:I

    sub-int/2addr v10, v11

    iput v10, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v10, p0, Lcom/htc/widget/PopupBubbleWindow;->mScreenLocation:[I

    invoke-virtual {p1, v10}, Landroid/view/View;->getLocationOnScreen([I)V

    iget v10, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v11, p0, Lcom/htc/widget/PopupBubbleWindow;->mScreenLocation:[I

    const/4 v12, 0x1

    aget v11, v11, v12

    sub-int/2addr v10, v11

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v11

    sub-int/2addr v10, v11

    sub-int v10, v10, p4

    iget-object v11, p0, Lcom/htc/widget/PopupBubbleWindow;->mScreenLocation:[I

    const/4 v12, 0x1

    aget v11, v11, v12

    sub-int v11, v11, p4

    iget v12, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v11, v12

    if-ge v10, v11, :cond_6

    const/4 v2, 0x1

    :goto_0
    if-eqz v2, :cond_7

    const/16 v10, 0x53

    iput v10, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v10

    iget-object v11, p0, Lcom/htc/widget/PopupBubbleWindow;->mDrawingLocation:[I

    const/4 v12, 0x1

    aget v11, v11, v12

    sub-int/2addr v10, v11

    iget-object v11, p0, Lcom/htc/widget/PopupBubbleWindow;->mTriangle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    sub-int/2addr v10, v11

    iget v11, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v10, v11

    add-int v10, v10, p4

    iget v11, p0, Lcom/htc/widget/PopupBubbleWindow;->mTriangledOffset:I

    sub-int/2addr v10, v11

    iput v10, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    :cond_2
    :goto_1
    iget-boolean v10, p0, Lcom/htc/widget/PopupBubbleWindow;->mClipToScreen:Z

    if-eqz v10, :cond_5

    iget v10, v0, Landroid/graphics/Rect;->right:I

    iget v11, v0, Landroid/graphics/Rect;->left:I

    sub-int v1, v10, v11

    iget v10, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v11, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    add-int v6, v10, v11

    if-le v6, v1, :cond_3

    iget v10, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int v11, v6, v1

    sub-int/2addr v10, v11

    iput v10, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    :cond_3
    iget v10, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v11, v0, Landroid/graphics/Rect;->left:I

    if-ge v10, v11, :cond_4

    iget v10, v0, Landroid/graphics/Rect;->left:I

    iput v10, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v10, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-static {v10, v1}, Ljava/lang/Math;->min(II)I

    move-result v10

    iput v10, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    :cond_4
    if-eqz v2, :cond_9

    iget-object v10, p0, Lcom/htc/widget/PopupBubbleWindow;->mScreenLocation:[I

    const/4 v11, 0x1

    aget v10, v10, v11

    add-int v10, v10, p4

    iget v11, p0, Lcom/htc/widget/PopupBubbleWindow;->mPopupHeight:I

    sub-int v3, v10, v11

    if-gez v3, :cond_8

    iget v10, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int/2addr v10, v3

    iput v10, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    :cond_5
    :goto_2
    iget v10, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/high16 v11, 0x1000

    or-int/2addr v10, v11

    iput v10, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    return v2

    :cond_6
    const/4 v2, 0x0

    goto :goto_0

    :cond_7
    iget-object v10, p0, Lcom/htc/widget/PopupBubbleWindow;->mDrawingLocation:[I

    const/4 v11, 0x1

    aget v10, v10, v11

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/htc/widget/PopupBubbleWindow;->mTriangle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    sub-int/2addr v10, v11

    iget v11, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v10, v11

    add-int v10, v10, p4

    iget v11, p0, Lcom/htc/widget/PopupBubbleWindow;->mTriangledOffset:I

    sub-int/2addr v10, v11

    iput v10, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_1

    :cond_8
    iget v10, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v11, p0, Lcom/htc/widget/PopupBubbleWindow;->mBubbleVerticalOffset:I

    iget v12, p0, Lcom/htc/widget/PopupBubbleWindow;->mBubbleShadowHeight:I

    sub-int/2addr v11, v12

    add-int/2addr v10, v11

    iput v10, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_2

    :cond_9
    iget v10, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v11, p0, Lcom/htc/widget/PopupBubbleWindow;->mBubbleVerticalOffset:I

    add-int/2addr v10, v11

    iget v11, v0, Landroid/graphics/Rect;->top:I

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    iput v10, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_2
.end method

.method private invokePopup(Landroid/view/WindowManager$LayoutParams;)V
    .locals 3

    iget-object v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    iget-object v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/htc/widget/PopupBubbleWindow;->mPopupView:Landroid/view/View;

    invoke-interface {v0, v1, p1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string v0, "PopupBubbleWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Add view to Window Manager : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/widget/PopupBubbleWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private invokeTriangle(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2

    iget-object v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    iget-object v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/htc/widget/PopupBubbleWindow;->mTriangleView:Landroid/view/View;

    invoke-interface {v0, v1, p1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private preparePopup(Landroid/view/WindowManager$LayoutParams;)V
    .locals 7

    iget-object v4, p0, Lcom/htc/widget/PopupBubbleWindow;->mContentView:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/widget/PopupBubbleWindow;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/widget/PopupBubbleWindow;->mWindowManager:Landroid/view/WindowManager;

    if-nez v4, :cond_1

    :cond_0
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "You must specify a valid content view by calling setContentView() before attempting to show the popup."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    iget-object v4, p0, Lcom/htc/widget/PopupBubbleWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/htc/widget/PopupBubbleWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v0, -0x1

    if-eqz v1, :cond_2

    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_2

    const/4 v0, -0x2

    :cond_2
    new-instance v3, Lcom/htc/widget/PopupBubbleWindow$PopupBubbleViewContainer;

    iget-object v4, p0, Lcom/htc/widget/PopupBubbleWindow;->mContext:Landroid/content/Context;

    invoke-direct {v3, p0, v4}, Lcom/htc/widget/PopupBubbleWindow$PopupBubbleViewContainer;-><init>(Lcom/htc/widget/PopupBubbleWindow;Landroid/content/Context;)V

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v2, v4, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v4, p0, Lcom/htc/widget/PopupBubbleWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Lcom/htc/widget/PopupBubbleWindow$PopupBubbleViewContainer;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v4, p0, Lcom/htc/widget/PopupBubbleWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v3, v4, v2}, Lcom/htc/widget/PopupBubbleWindow$PopupBubbleViewContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v3, p0, Lcom/htc/widget/PopupBubbleWindow;->mPopupView:Landroid/view/View;

    const-string v4, "PopupBubbleWindow"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "preparePopup and background is not null. mPopupView = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/widget/PopupBubbleWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget v4, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v4, p0, Lcom/htc/widget/PopupBubbleWindow;->mPopupWidth:I

    iget v4, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v4, p0, Lcom/htc/widget/PopupBubbleWindow;->mPopupHeight:I

    return-void

    :cond_3
    iget-object v4, p0, Lcom/htc/widget/PopupBubbleWindow;->mContentView:Landroid/view/View;

    iput-object v4, p0, Lcom/htc/widget/PopupBubbleWindow;->mPopupView:Landroid/view/View;

    const-string v4, "PopupBubbleWindow"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "preparePopup and background is null. mPopupView = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/widget/PopupBubbleWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private prepareTriangle(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2

    new-instance v0, Lcom/htc/widget/PopupBubbleWindow$PopupBubbleViewContainer;

    iget-object v1, p0, Lcom/htc/widget/PopupBubbleWindow;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/PopupBubbleWindow$PopupBubbleViewContainer;-><init>(Lcom/htc/widget/PopupBubbleWindow;Landroid/content/Context;)V

    iget-object v1, p0, Lcom/htc/widget/PopupBubbleWindow;->mTriangle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/htc/widget/PopupBubbleWindow$PopupBubbleViewContainer;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mTriangleView:Landroid/view/View;

    return-void
.end method

.method private registerForScrollChanged(Landroid/view/View;II)V
    .locals 2

    invoke-direct {p0}, Lcom/htc/widget/PopupBubbleWindow;->unregisterForScrollChanged()V

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/htc/widget/PopupBubbleWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/htc/widget/PopupBubbleWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    :cond_0
    iput p2, p0, Lcom/htc/widget/PopupBubbleWindow;->mAnchorXoff:I

    iput p3, p0, Lcom/htc/widget/PopupBubbleWindow;->mAnchorYoff:I

    return-void
.end method

.method private unregisterForScrollChanged()V
    .locals 4

    iget-object v1, p0, Lcom/htc/widget/PopupBubbleWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/widget/PopupBubbleWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    :cond_1
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/htc/widget/PopupBubbleWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private update(Landroid/view/View;ZIIZII)V
    .locals 14

    invoke-virtual {p0}, Lcom/htc/widget/PopupBubbleWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/widget/PopupBubbleWindow;->mContentView:Landroid/view/View;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v9, p0, Lcom/htc/widget/PopupBubbleWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    if-eqz p2, :cond_8

    iget v2, p0, Lcom/htc/widget/PopupBubbleWindow;->mAnchorXoff:I

    move/from16 v0, p3

    if-ne v2, v0, :cond_2

    iget v2, p0, Lcom/htc/widget/PopupBubbleWindow;->mAnchorYoff:I

    move/from16 v0, p4

    if-eq v2, v0, :cond_8

    :cond_2
    const/4 v8, 0x1

    :goto_1
    if-eqz v9, :cond_3

    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_3

    if-eqz v8, :cond_9

    iget-boolean v2, p0, Lcom/htc/widget/PopupBubbleWindow;->mIsDropdown:Z

    if-nez v2, :cond_9

    :cond_3
    move/from16 v0, p3

    move/from16 v1, p4

    invoke-direct {p0, p1, v0, v1}, Lcom/htc/widget/PopupBubbleWindow;->registerForScrollChanged(Landroid/view/View;II)V

    :cond_4
    :goto_2
    iget-object v2, p0, Lcom/htc/widget/PopupBubbleWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/view/WindowManager$LayoutParams;

    if-eqz p5, :cond_5

    const/4 v2, -0x1

    move/from16 v0, p6

    if-ne v0, v2, :cond_a

    iget v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mPopupWidth:I

    move/from16 p6, v0

    :goto_3
    const/4 v2, -0x1

    move/from16 v0, p7

    if-ne v0, v2, :cond_b

    iget v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mPopupHeight:I

    move/from16 p7, v0

    :goto_4
    move/from16 v0, p6

    iput v0, v10, Landroid/view/WindowManager$LayoutParams;->width:I

    :cond_5
    iget v12, v10, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v13, v10, Landroid/view/WindowManager$LayoutParams;->y:I

    if-eqz p2, :cond_c

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-direct {p0, p1, v10, v0, v1}, Lcom/htc/widget/PopupBubbleWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/htc/widget/PopupBubbleWindow;->updateAboveAnchor(Z)V

    :goto_5
    iget v3, v10, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v4, v10, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v2, v10, Landroid/view/WindowManager$LayoutParams;->x:I

    if-ne v12, v2, :cond_6

    iget v2, v10, Landroid/view/WindowManager$LayoutParams;->y:I

    if-eq v13, v2, :cond_d

    :cond_6
    const/4 v7, 0x1

    :goto_6
    move-object v2, p0

    move/from16 v5, p6

    move/from16 v6, p7

    invoke-virtual/range {v2 .. v7}, Lcom/htc/widget/PopupBubbleWindow;->update(IIIIZ)V

    iget-object v2, p0, Lcom/htc/widget/PopupBubbleWindow;->mTriangleView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/view/WindowManager$LayoutParams;

    iget v12, v11, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v13, v11, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v2, p0, Lcom/htc/widget/PopupBubbleWindow;->mAnchorXoff:I

    iget v3, p0, Lcom/htc/widget/PopupBubbleWindow;->mAnchorYoff:I

    invoke-direct {p0, p1, v11, v2, v3}, Lcom/htc/widget/PopupBubbleWindow;->findTrianglePosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/htc/widget/PopupBubbleWindow;->updateAboveTriangle(Z)V

    iget v3, v11, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v4, v11, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v2, v11, Landroid/view/WindowManager$LayoutParams;->x:I

    if-ne v12, v2, :cond_7

    iget v2, v11, Landroid/view/WindowManager$LayoutParams;->y:I

    if-eq v13, v2, :cond_e

    :cond_7
    const/4 v2, 0x1

    :goto_7
    invoke-direct {p0, v3, v4, v2}, Lcom/htc/widget/PopupBubbleWindow;->updateTriangle(IIZ)V

    goto/16 :goto_0

    :cond_8
    const/4 v8, 0x0

    goto/16 :goto_1

    :cond_9
    if-eqz v8, :cond_4

    move/from16 v0, p3

    iput v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mAnchorXoff:I

    move/from16 v0, p4

    iput v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mAnchorYoff:I

    goto :goto_2

    :cond_a
    move/from16 v0, p6

    iput v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mPopupWidth:I

    goto :goto_3

    :cond_b
    move/from16 v0, p7

    iput v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mPopupHeight:I

    goto :goto_4

    :cond_c
    iget v2, p0, Lcom/htc/widget/PopupBubbleWindow;->mAnchorXoff:I

    iget v3, p0, Lcom/htc/widget/PopupBubbleWindow;->mAnchorYoff:I

    invoke-direct {p0, p1, v10, v2, v3}, Lcom/htc/widget/PopupBubbleWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/htc/widget/PopupBubbleWindow;->updateAboveAnchor(Z)V

    goto :goto_5

    :cond_d
    const/4 v7, 0x0

    goto :goto_6

    :cond_e
    const/4 v2, 0x0

    goto :goto_7
.end method

.method private updateAboveAnchor(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/htc/widget/PopupBubbleWindow;->downEnabled:Z

    iget-boolean v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mAboveAnchor:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Lcom/htc/widget/PopupBubbleWindow;->mAboveAnchor:Z

    iget-object v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mAboveAnchor:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mPopupView:Landroid/view/View;

    iget-object v1, p0, Lcom/htc/widget/PopupBubbleWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mPopupView:Landroid/view/View;

    iget-object v1, p0, Lcom/htc/widget/PopupBubbleWindow;->mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->refreshDrawableState()V

    goto :goto_0
.end method

.method private updateAboveTriangle(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mAboveTriangle:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Lcom/htc/widget/PopupBubbleWindow;->mAboveTriangle:Z

    iget-object v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mTriangle:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mAboveTriangle:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mTriangleView:Landroid/view/View;

    iget-object v1, p0, Lcom/htc/widget/PopupBubbleWindow;->mBelowTriangledDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mTriangleView:Landroid/view/View;

    iget-object v1, p0, Lcom/htc/widget/PopupBubbleWindow;->mTriangle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private updateTriangle(IIZ)V
    .locals 6

    invoke-virtual {p0}, Lcom/htc/widget/PopupBubbleWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/widget/PopupBubbleWindow;->mContentView:Landroid/view/View;

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/htc/widget/PopupBubbleWindow;->mTriangleView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    move v3, p3

    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    if-eq v4, p1, :cond_2

    iput p1, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    const/4 v3, 0x1

    :cond_2
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    if-eq v4, p2, :cond_3

    iput p2, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v3, 0x1

    :cond_3
    invoke-direct {p0}, Lcom/htc/widget/PopupBubbleWindow;->computeAnimationResource()I

    move-result v0

    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eq v0, v4, :cond_4

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const/4 v3, 0x1

    :cond_4
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v4}, Lcom/htc/widget/PopupBubbleWindow;->computeTriangleFlags(I)I

    move-result v1

    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eq v1, v4, :cond_5

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v3, 0x1

    :cond_5
    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/htc/widget/PopupBubbleWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v5, p0, Lcom/htc/widget/PopupBubbleWindow;->mTriangleView:Landroid/view/View;

    invoke-interface {v4, v5, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method


# virtual methods
.method public dismiss()V
    .locals 9

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/htc/widget/PopupBubbleWindow;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/widget/PopupBubbleWindow;->mPopupView:Landroid/view/View;

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/htc/widget/PopupBubbleWindow;->unregisterForScrollChanged()V

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget-boolean v3, p0, Lcom/htc/widget/PopupBubbleWindow;->downEnabled:Z

    if-nez v3, :cond_1

    const/high16 v8, -0x4080

    :goto_0
    move v3, v1

    move v4, v2

    move v5, v1

    move v6, v2

    move v7, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v1, Lcom/htc/widget/PopupBubbleWindow$2;

    invoke-direct {v1, p0}, Lcom/htc/widget/PopupBubbleWindow$2;-><init>(Lcom/htc/widget/PopupBubbleWindow;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p0}, Lcom/htc/widget/PopupBubbleWindow;->getContentView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/PopupBubbleWindow;->getContentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void

    :cond_1
    const/high16 v8, 0x3f80

    goto :goto_0
.end method

.method public dismissWithoutAnimation()V
    .locals 1

    invoke-virtual {p0}, Lcom/htc/widget/PopupBubbleWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mPopupView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/htc/widget/PopupBubbleWindow;->endDismissAnimation()V

    :cond_0
    return-void
.end method

.method public getAnimationStyle()I
    .locals 1

    iget v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mAnimationStyle:I

    return v0
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mHeight:I

    return v0
.end method

.method public getInputMethodMode()I
    .locals 1

    iget v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mInputMethodMode:I

    return v0
.end method

.method public getMaxAvailableHeight(Landroid/view/View;)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/widget/PopupBubbleWindow;->getMaxAvailableHeight(Landroid/view/View;I)I

    move-result v0

    return v0
.end method

.method public getMaxAvailableHeight(Landroid/view/View;I)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/htc/widget/PopupBubbleWindow;->getMaxAvailableHeight(Landroid/view/View;IZ)I

    move-result v0

    return v0
.end method

.method public getMaxAvailableHeight(Landroid/view/View;IZ)I
    .locals 10

    const/4 v9, 0x1

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mDrawingLocation:[I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    const v8, 0x2050124

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v8, v8

    sub-int v1, v7, v8

    :cond_0
    aget v7, v0, v9

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    sub-int v7, v1, v7

    sub-int v3, v7, p2

    aget v7, v0, v9

    iget v8, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    add-int v4, v7, p2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v6

    iget-object v7, p0, Lcom/htc/widget/PopupBubbleWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/htc/widget/PopupBubbleWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object v8, p0, Lcom/htc/widget/PopupBubbleWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v7, p0, Lcom/htc/widget/PopupBubbleWindow;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget-object v8, p0, Lcom/htc/widget/PopupBubbleWindow;->mTempRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v7, v8

    sub-int/2addr v6, v7

    :cond_1
    return v6
.end method

.method public getSoftInputMode()I
    .locals 1

    iget v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mSoftInputMode:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mWidth:I

    return v0
.end method

.method public getWindowLayoutType()I
    .locals 1

    iget v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mWindowLayoutType:I

    return v0
.end method

.method protected invokeStartAnimation(I)V
    .locals 9

    const/4 v2, 0x0

    const/4 v1, 0x1

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    int-to-float v6, p1

    move v3, v1

    move v4, v2

    move v5, v1

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    invoke-virtual {p0}, Lcom/htc/widget/PopupBubbleWindow;->getContentView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/PopupBubbleWindow;->getContentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method public isAboveAnchor()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mAboveAnchor:Z

    return v0
.end method

.method public isClippingEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mClippingEnabled:Z

    return v0
.end method

.method public isFocusable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mFocusable:Z

    return v0
.end method

.method public isLayoutInScreenEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mLayoutInScreen:Z

    return v0
.end method

.method public isOutsideTouchable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mOutsideTouchable:Z

    return v0
.end method

.method public isShowing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mIsShowing:Z

    return v0
.end method

.method public isSplitTouchEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isTouchable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mTouchable:Z

    return v0
.end method

.method setAllowScrollingAnchorParent(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/widget/PopupBubbleWindow;->mAllowScrollingAnchorParent:Z

    return-void
.end method

.method public setAnimationStyle(I)V
    .locals 0

    iput p1, p0, Lcom/htc/widget/PopupBubbleWindow;->mAnimationStyle:I

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/PopupBubbleWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setClipToScreenEnabled(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/htc/widget/PopupBubbleWindow;->mClipToScreen:Z

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/htc/widget/PopupBubbleWindow;->setClippingEnabled(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setClippingEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/widget/PopupBubbleWindow;->mClippingEnabled:Z

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Lcom/htc/widget/PopupBubbleWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/htc/widget/PopupBubbleWindow;->mContentView:Landroid/view/View;

    iget-object v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mContext:Landroid/content/Context;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mContext:Landroid/content/Context;

    :cond_2
    iget-object v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mWindowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mWindowManager:Landroid/view/WindowManager;

    goto :goto_0
.end method

.method public setFocusable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/widget/PopupBubbleWindow;->mFocusable:Z

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    iput p1, p0, Lcom/htc/widget/PopupBubbleWindow;->mHeight:I

    return-void
.end method

.method public setIgnoreCheekPress()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mIgnoreCheekPress:Z

    return-void
.end method

.method public setInputMethodMode(I)V
    .locals 0

    iput p1, p0, Lcom/htc/widget/PopupBubbleWindow;->mInputMethodMode:I

    return-void
.end method

.method public setLayoutInScreenEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/widget/PopupBubbleWindow;->mLayoutInScreen:Z

    return-void
.end method

.method public setOnDismissListener(Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/PopupBubbleWindow;->mOnDismissListener:Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;

    return-void
.end method

.method public setOutsideTouchable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/widget/PopupBubbleWindow;->mOutsideTouchable:Z

    return-void
.end method

.method public setSoftInputMode(I)V
    .locals 0

    iput p1, p0, Lcom/htc/widget/PopupBubbleWindow;->mSoftInputMode:I

    return-void
.end method

.method public setSplitTouchEnabled(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mSplitTouchEnabled:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTouchInterceptor(Landroid/view/View$OnTouchListener;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/PopupBubbleWindow;->mTouchInterceptor:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method public setTouchable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/widget/PopupBubbleWindow;->mTouchable:Z

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    iput p1, p0, Lcom/htc/widget/PopupBubbleWindow;->mWidth:I

    return-void
.end method

.method public setWindowLayoutMode(II)V
    .locals 0

    iput p1, p0, Lcom/htc/widget/PopupBubbleWindow;->mWidthMode:I

    iput p2, p0, Lcom/htc/widget/PopupBubbleWindow;->mHeightMode:I

    return-void
.end method

.method public setWindowLayoutType(I)V
    .locals 0

    iput p1, p0, Lcom/htc/widget/PopupBubbleWindow;->mWindowLayoutType:I

    return-void
.end method

.method public showAsDropDown(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/htc/widget/PopupBubbleWindow;->showAsDropDown(Landroid/view/View;II)V

    return-void
.end method

.method public showAsDropDown(Landroid/view/View;II)V
    .locals 6

    const/16 v5, 0x64

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/htc/widget/PopupBubbleWindow;->isShowing()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/htc/widget/PopupBubbleWindow;->mContentView:Landroid/view/View;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/PopupBubbleWindow;->registerForScrollChanged(Landroid/view/View;II)V

    iput-boolean v2, p0, Lcom/htc/widget/PopupBubbleWindow;->mIsShowing:Z

    iput-boolean v2, p0, Lcom/htc/widget/PopupBubbleWindow;->mIsDropdown:Z

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/htc/widget/PopupBubbleWindow;->createPopupLayout(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/widget/PopupBubbleWindow;->preparePopup(Landroid/view/WindowManager$LayoutParams;)V

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/htc/widget/PopupBubbleWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/htc/widget/PopupBubbleWindow;->updateAboveAnchor(Z)V

    iget v3, p0, Lcom/htc/widget/PopupBubbleWindow;->mHeightMode:I

    if-gez v3, :cond_2

    iget v3, p0, Lcom/htc/widget/PopupBubbleWindow;->mHeightMode:I

    iput v3, p0, Lcom/htc/widget/PopupBubbleWindow;->mLastHeight:I

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    :cond_2
    iget v3, p0, Lcom/htc/widget/PopupBubbleWindow;->mWidthMode:I

    if-gez v3, :cond_3

    iget v3, p0, Lcom/htc/widget/PopupBubbleWindow;->mWidthMode:I

    iput v3, p0, Lcom/htc/widget/PopupBubbleWindow;->mLastWidth:I

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    :cond_3
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/htc/widget/PopupBubbleWindow;->setAnimationStyle(I)V

    invoke-direct {p0}, Lcom/htc/widget/PopupBubbleWindow;->computeAnimationResource()I

    move-result v3

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eqz v0, :cond_4

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    if-nez v3, :cond_4

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const-string v3, "PopupBubbleWindow"

    const-string v4, "showAsDropDown: window height refine"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-direct {p0, v0}, Lcom/htc/widget/PopupBubbleWindow;->invokePopup(Landroid/view/WindowManager$LayoutParams;)V

    iget-boolean v3, p0, Lcom/htc/widget/PopupBubbleWindow;->downEnabled:Z

    if-nez v3, :cond_5

    const/4 v2, -0x1

    :cond_5
    invoke-virtual {p0, v2}, Lcom/htc/widget/PopupBubbleWindow;->invokeStartAnimation(I)V

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/htc/widget/PopupBubbleWindow;->createTriangleLayout(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/htc/widget/PopupBubbleWindow;->prepareTriangle(Landroid/view/WindowManager$LayoutParams;)V

    invoke-direct {p0, p1, v1, p2, p3}, Lcom/htc/widget/PopupBubbleWindow;->findTrianglePosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/htc/widget/PopupBubbleWindow;->updateAboveTriangle(Z)V

    if-eqz v1, :cond_6

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    if-nez v2, :cond_6

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    const-string v2, "PopupBubbleWindow"

    const-string v3, "showAsDropDown: triangle window height refine"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    if-eqz v2, :cond_0

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    if-eqz v2, :cond_0

    invoke-direct {p0, v1}, Lcom/htc/widget/PopupBubbleWindow;->invokeTriangle(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0
.end method

.method public showAtLocation(Landroid/view/View;III)V
    .locals 3

    invoke-virtual {p0}, Lcom/htc/widget/PopupBubbleWindow;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/PopupBubbleWindow;->mContentView:Landroid/view/View;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/htc/widget/PopupBubbleWindow;->unregisterForScrollChanged()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/widget/PopupBubbleWindow;->mIsShowing:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/widget/PopupBubbleWindow;->mIsDropdown:Z

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/htc/widget/PopupBubbleWindow;->createPopupLayout(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-direct {p0}, Lcom/htc/widget/PopupBubbleWindow;->computeAnimationResource()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    invoke-direct {p0, v0}, Lcom/htc/widget/PopupBubbleWindow;->preparePopup(Landroid/view/WindowManager$LayoutParams;)V

    if-nez p2, :cond_2

    const/16 p2, 0x33

    :cond_2
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iput p3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput p4, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v1, p0, Lcom/htc/widget/PopupBubbleWindow;->mHeightMode:I

    if-gez v1, :cond_3

    iget v1, p0, Lcom/htc/widget/PopupBubbleWindow;->mHeightMode:I

    iput v1, p0, Lcom/htc/widget/PopupBubbleWindow;->mLastHeight:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    :cond_3
    iget v1, p0, Lcom/htc/widget/PopupBubbleWindow;->mWidthMode:I

    if-gez v1, :cond_4

    iget v1, p0, Lcom/htc/widget/PopupBubbleWindow;->mWidthMode:I

    iput v1, p0, Lcom/htc/widget/PopupBubbleWindow;->mLastWidth:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    :cond_4
    if-eqz v0, :cond_5

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    if-nez v1, :cond_5

    const/16 v1, 0x64

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const-string v1, "PopupBubbleWindow"

    const-string v2, "showAtLocation: window height refine"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-direct {p0, v0}, Lcom/htc/widget/PopupBubbleWindow;->invokePopup(Landroid/view/WindowManager$LayoutParams;)V

    invoke-direct {p0, v0}, Lcom/htc/widget/PopupBubbleWindow;->invokeTriangle(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0
.end method

.method public update()V
    .locals 7

    invoke-virtual {p0}, Lcom/htc/widget/PopupBubbleWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/widget/PopupBubbleWindow;->mContentView:Landroid/view/View;

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/htc/widget/PopupBubbleWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/htc/widget/PopupBubbleWindow;->computeAnimationResource()I

    move-result v0

    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eq v0, v4, :cond_2

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const/4 v3, 0x1

    :cond_2
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v4}, Lcom/htc/widget/PopupBubbleWindow;->computeFlags(I)I

    move-result v1

    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eq v1, v4, :cond_3

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v3, 0x1

    :cond_3
    if-eqz v3, :cond_0

    if-eqz v2, :cond_4

    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    if-nez v4, :cond_4

    const/16 v4, 0x64

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    const-string v4, "PopupBubbleWindow"

    const-string v5, "update(): window height refine"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const-string v4, "PopupBubbleWindow"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mPopupView = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/widget/PopupBubbleWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/htc/widget/PopupBubbleWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v5, p0, Lcom/htc/widget/PopupBubbleWindow;->mPopupView:Landroid/view/View;

    invoke-interface {v4, v5, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public update(II)V
    .locals 7

    iget-object v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager$LayoutParams;

    iget v1, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v2, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/widget/PopupBubbleWindow;->update(IIIIZ)V

    return-void
.end method

.method public update(IIII)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/htc/widget/PopupBubbleWindow;->update(IIIIZ)V

    return-void
.end method

.method public update(IIIIZ)V
    .locals 9

    const/4 v7, -0x1

    if-eq p3, v7, :cond_0

    iput p3, p0, Lcom/htc/widget/PopupBubbleWindow;->mLastWidth:I

    invoke-virtual {p0, p3}, Lcom/htc/widget/PopupBubbleWindow;->setWidth(I)V

    :cond_0
    if-eq p4, v7, :cond_1

    iput p4, p0, Lcom/htc/widget/PopupBubbleWindow;->mLastHeight:I

    invoke-virtual {p0, p4}, Lcom/htc/widget/PopupBubbleWindow;->setHeight(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/PopupBubbleWindow;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/htc/widget/PopupBubbleWindow;->mContentView:Landroid/view/View;

    if-nez v6, :cond_3

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v6, p0, Lcom/htc/widget/PopupBubbleWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager$LayoutParams;

    move v5, p5

    iget v6, p0, Lcom/htc/widget/PopupBubbleWindow;->mWidthMode:I

    if-gez v6, :cond_b

    iget v1, p0, Lcom/htc/widget/PopupBubbleWindow;->mWidthMode:I

    :goto_1
    if-eq p3, v7, :cond_4

    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    if-eq v6, v1, :cond_4

    iput v1, p0, Lcom/htc/widget/PopupBubbleWindow;->mLastWidth:I

    iput v1, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v5, 0x1

    :cond_4
    iget v6, p0, Lcom/htc/widget/PopupBubbleWindow;->mHeightMode:I

    if-gez v6, :cond_c

    iget v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mHeightMode:I

    :goto_2
    if-eq p4, v7, :cond_5

    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    if-eq v6, v0, :cond_5

    iput v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mLastHeight:I

    iput v0, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v5, 0x1

    :cond_5
    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    if-eq v6, p1, :cond_6

    iput p1, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    const/4 v5, 0x1

    :cond_6
    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    if-eq v6, p2, :cond_7

    iput p2, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v5, 0x1

    :cond_7
    invoke-direct {p0}, Lcom/htc/widget/PopupBubbleWindow;->computeAnimationResource()I

    move-result v2

    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eq v2, v6, :cond_8

    iput v2, v4, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const/4 v5, 0x1

    :cond_8
    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v6}, Lcom/htc/widget/PopupBubbleWindow;->computeFlags(I)I

    move-result v3

    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eq v3, v6, :cond_9

    iput v3, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v5, 0x1

    :cond_9
    if-eqz v5, :cond_2

    if-eqz v4, :cond_a

    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    if-nez v6, :cond_a

    const/16 v6, 0x64

    iput v6, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    const-string v6, "PopupBubbleWindow"

    const-string v7, "update(): window height refine"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    const-string v6, "PopupBubbleWindow"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mPopupView = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/widget/PopupBubbleWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/htc/widget/PopupBubbleWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v7, p0, Lcom/htc/widget/PopupBubbleWindow;->mPopupView:Landroid/view/View;

    invoke-interface {v6, v7, v4}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    :cond_b
    iget v1, p0, Lcom/htc/widget/PopupBubbleWindow;->mLastWidth:I

    goto/16 :goto_1

    :cond_c
    iget v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mLastHeight:I

    goto :goto_2
.end method

.method public update(Landroid/view/View;II)V
    .locals 8

    const/4 v2, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v4, v2

    move v6, p2

    move v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/htc/widget/PopupBubbleWindow;->update(Landroid/view/View;ZIIZII)V

    return-void
.end method

.method public update(Landroid/view/View;IIII)V
    .locals 8

    const/4 v2, 0x1

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, v2

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/htc/widget/PopupBubbleWindow;->update(Landroid/view/View;ZIIZII)V

    return-void
.end method
