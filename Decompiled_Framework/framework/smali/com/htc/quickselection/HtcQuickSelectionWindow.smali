.class public Lcom/htc/quickselection/HtcQuickSelectionWindow;
.super Ljava/lang/Object;
.source "HtcQuickSelectionWindow.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/view/KeyEvent$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/quickselection/HtcQuickSelectionWindow$Action;,
        Lcom/htc/quickselection/HtcQuickSelectionWindow$ActionSet;,
        Lcom/htc/quickselection/HtcQuickSelectionWindow$OutsideTouchListener;
    }
.end annotation


# static fields
.field private static ARROW_HEIGHT:I = 0x0

.field private static DENSITY:F = 0.0f

.field private static ICON_SIZE:I = 0x0

.field private static final LOCAL_DEBUG:Z = false

.field static final LOGD:Z = false

.field private static final TAG:Ljava/lang/String; = "HtcQuickSelect"

.field private static final TOKEN_DATA:I = 0x1

.field static final TRACE_LAUNCH:Z = false

.field static final TRACE_TAG:Ljava/lang/String; = "quickselection"

.field private static mANCHOR_HEIGHT:I


# instance fields
.field private isPasteWindow:Z

.field private mActionPool:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mActionRecycled:I

.field private mAnchor:Landroid/graphics/Rect;

.field private mArrowDown:Landroid/widget/ImageView;

.field private mArrowUp:Landroid/widget/ImageView;

.field private mCircularProgress:Landroid/graphics/drawable/Drawable;

.field private mContent:Landroid/widget/RelativeLayout;

.field private mContext:Landroid/content/Context;

.field private mCurrentView:Landroid/widget/TextView;

.field private mDescription:Landroid/widget/TextView;

.field private mFooter:Landroid/view/View;

.field private mFooterDisambig:Landroid/view/View;

.field private mHasData:Z

.field private mHasValidSocial:Z

.field private mHeader:Landroid/view/View;

.field private mHorizontalMargin:I

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsNotEnoughSpace:Z

.field private mLastAction:Lcom/htc/quickselection/HtcCheckableImageView;

.field private mMakePrimary:Z

.field private mMode:I

.field private mNeedFineTune:Z

.field private mOutsideTouchListener:Lcom/htc/quickselection/HtcQuickSelectionWindow$OutsideTouchListener;

.field private mPopupWindow:Landroid/widget/PopupWindow;

.field private mRect:Landroid/graphics/Rect;

.field private mRequestedY:I

.field private mResolveList:Landroid/widget/ListView;

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mSetPrimaryCheckBox:Landroid/widget/CheckBox;

.field private mShadowHoriz:I

.field private mShadowTouch:I

.field private mShadowVert:I

.field private mShowing:Z

.field private mTempRect:Landroid/graphics/Rect;

.field private mTrack:Landroid/view/ViewGroup;

.field private mTrackAnim:Landroid/view/animation/Animation;

.field private mTrackScroll:Landroid/widget/HorizontalScrollView;

.field private mWasDownArrow:Z

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWindowRecycled:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mANCHOR_HEIGHT:I

    const/4 v0, 0x0

    sput v0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->DENSITY:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mRect:Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mTempRect:Landroid/graphics/Rect;

    iput-boolean v4, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mShowing:Z

    iput-boolean v4, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mHasValidSocial:Z

    iput-boolean v4, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mHasData:Z

    iput-boolean v4, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mMakePrimary:Z

    iput v4, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mWindowRecycled:I

    iput v4, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mActionRecycled:I

    iput-boolean v4, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mIsNotEnoughSpace:Z

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mActionPool:Ljava/util/LinkedList;

    iput-boolean v4, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->isPasteWindow:Z

    iput-boolean v4, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mNeedFineTune:Z

    iput-boolean v4, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mWasDownArrow:Z

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mOutsideTouchListener:Lcom/htc/quickselection/HtcQuickSelectionWindow$OutsideTouchListener;

    iput-object p1, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    iput-object v3, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mInflater:Landroid/view/LayoutInflater;

    iget-object v3, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    iput-object v3, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mWindowManager:Landroid/view/WindowManager;

    invoke-direct {p0}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->preparePopupWindow()Landroid/widget/PopupWindow;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mContent:Landroid/widget/RelativeLayout;

    const v4, 0x2020192

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mArrowUp:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mContent:Landroid/widget/RelativeLayout;

    const v4, 0x2020193

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mArrowDown:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mArrowUp:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    sput v3, Lcom/htc/quickselection/HtcQuickSelectionWindow;->ARROW_HEIGHT:I

    iget-object v3, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x20500ec

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mShadowHoriz:I

    const v3, 0x20500ed

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mShadowVert:I

    const v3, 0x20500ee

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mShadowTouch:I

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x28

    if-eq v3, v4, :cond_0

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x21

    if-eq v3, v4, :cond_0

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x22

    if-eq v3, v4, :cond_0

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x7c

    if-ne v3, v4, :cond_2

    :cond_0
    const/high16 v3, 0x4240

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    sput v3, Lcom/htc/quickselection/HtcQuickSelectionWindow;->ICON_SIZE:I

    :goto_0
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iget-object v3, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget v3, v1, Landroid/graphics/Point;->x:I

    iput v3, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mScreenWidth:I

    iget v3, v1, Landroid/graphics/Point;->y:I

    iput v3, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mScreenHeight:I

    iget-object v3, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mContent:Landroid/widget/RelativeLayout;

    const v4, 0x202018f

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mTrack:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mContent:Landroid/widget/RelativeLayout;

    const v4, 0x202018e

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/HorizontalScrollView;

    iput-object v3, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mTrackScroll:Landroid/widget/HorizontalScrollView;

    iget-object v3, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mTrack:Landroid/view/ViewGroup;

    invoke-virtual {v3, p0}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v3, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mContent:Landroid/widget/RelativeLayout;

    const v4, 0x20200fe

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mDescription:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mDescription:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mDescription:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    mul-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mHorizontalMargin:I

    :cond_1
    iget-object v3, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mContent:Landroid/widget/RelativeLayout;

    const v4, 0x202018c

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mHeader:Landroid/view/View;

    iget-object v3, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mContent:Landroid/widget/RelativeLayout;

    const v4, 0x2020190

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mFooter:Landroid/view/View;

    iget-object v3, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mContent:Landroid/widget/RelativeLayout;

    const v4, 0x102000a

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mResolveList:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mContent:Landroid/widget/RelativeLayout;

    const v4, 0x1020001

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mSetPrimaryCheckBox:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mSetPrimaryCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v3, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mContext:Landroid/content/Context;

    const v4, 0x2040005

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mTrackAnim:Landroid/view/animation/Animation;

    iget-object v3, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mTrackAnim:Landroid/view/animation/Animation;

    new-instance v4, Lcom/htc/quickselection/HtcQuickSelectionWindow$1;

    invoke-direct {v4, p0}, Lcom/htc/quickselection/HtcQuickSelectionWindow$1;-><init>(Lcom/htc/quickselection/HtcQuickSelectionWindow;)V

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const v3, 0x10804bb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mCircularProgress:Landroid/graphics/drawable/Drawable;

    const v3, 0x2080686

    :try_start_0
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    sput v3, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mANCHOR_HEIGHT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_2
    const/high16 v3, 0x4200

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    sput v3, Lcom/htc/quickselection/HtcQuickSelectionWindow;->ICON_SIZE:I

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    sput v3, Lcom/htc/quickselection/HtcQuickSelectionWindow;->DENSITY:F

    const/high16 v3, 0x4270

    sget v4, Lcom/htc/quickselection/HtcQuickSelectionWindow;->DENSITY:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    sput v3, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mANCHOR_HEIGHT:I

    goto :goto_1
.end method

.method private dismissInternal()V
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mShowing:Z

    iget-object v1, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mHeader:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "HtcQuickSelect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exeception while dismiss PopupWindow \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->preparePopupWindow()Landroid/widget/PopupWindow;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    goto :goto_0
.end method

.method private inflateAction(Lcom/htc/quickselection/HtcQuickSelectionWindow$ActionSet;)Landroid/view/View;
    .locals 9

    const/4 v3, 0x1

    const/4 v8, 0x0

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->obtainView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/quickselection/HtcCheckableImageView;

    invoke-virtual {p1}, Lcom/htc/quickselection/HtcQuickSelectionWindow$ActionSet;->count()I

    move-result v5

    if-le v5, v3, :cond_0

    move v1, v3

    :goto_0
    invoke-virtual {v2, v4}, Lcom/htc/quickselection/HtcCheckableImageView;->setChecked(Z)V

    #getter for: Lcom/htc/quickselection/HtcQuickSelectionWindow$ActionSet;->mIcon:Landroid/graphics/drawable/Drawable;
    invoke-static {p1}, Lcom/htc/quickselection/HtcQuickSelectionWindow$ActionSet;->access$000(Lcom/htc/quickselection/HtcQuickSelectionWindow$ActionSet;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_1

    #getter for: Lcom/htc/quickselection/HtcQuickSelectionWindow$ActionSet;->mIcon:Landroid/graphics/drawable/Drawable;
    invoke-static {p1}, Lcom/htc/quickselection/HtcQuickSelectionWindow$ActionSet;->access$000(Lcom/htc/quickselection/HtcQuickSelectionWindow$ActionSet;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    sget v6, Lcom/htc/quickselection/HtcQuickSelectionWindow;->ICON_SIZE:I

    sget v7, Lcom/htc/quickselection/HtcQuickSelectionWindow;->ICON_SIZE:I

    invoke-virtual {v5, v4, v4, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #getter for: Lcom/htc/quickselection/HtcQuickSelectionWindow$ActionSet;->mIcon:Landroid/graphics/drawable/Drawable;
    invoke-static {p1}, Lcom/htc/quickselection/HtcQuickSelectionWindow$ActionSet;->access$000(Lcom/htc/quickselection/HtcQuickSelectionWindow$ActionSet;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v8, v5, v8, v8}, Lcom/htc/quickselection/HtcCheckableImageView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v4}, Lcom/htc/quickselection/HtcCheckableImageView;->setCompoundDrawablePadding(I)V

    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual {v2, p0}, Lcom/htc/quickselection/HtcCheckableImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, p1}, Lcom/htc/quickselection/HtcCheckableImageView;->setTag(Ljava/lang/Object;)V

    :goto_2
    return-object v2

    :cond_0
    move v1, v4

    goto :goto_0

    :cond_1
    invoke-virtual {v2, v8, v8, v8, v8}, Lcom/htc/quickselection/HtcCheckableImageView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v4}, Lcom/htc/quickselection/HtcQuickSelectionWindow$ActionSet;->getAction(I)Lcom/htc/quickselection/HtcQuickSelectionWindow$Action;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/quickselection/HtcQuickSelectionWindow$Action;->getListener()Landroid/view/View$OnClickListener;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/htc/quickselection/HtcCheckableImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Lcom/htc/quickselection/HtcQuickSelectionWindow$Action;->getID()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/htc/quickselection/HtcCheckableImageView;->setTag(Ljava/lang/Object;)V

    iget-object v5, v0, Lcom/htc/quickselection/HtcQuickSelectionWindow$Action;->description:Ljava/lang/String;

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/htc/quickselection/HtcQuickSelectionWindow$Action;->description:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3

    invoke-virtual {v2, v3}, Lcom/htc/quickselection/HtcCheckableImageView;->setLines(I)V

    iget-object v3, v0, Lcom/htc/quickselection/HtcQuickSelectionWindow$Action;->description:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/htc/quickselection/HtcCheckableImageView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_3
    invoke-virtual {v2, v4}, Lcom/htc/quickselection/HtcCheckableImageView;->setLines(I)V

    goto :goto_2
.end method

.method private isPositionVisible(III)Z
    .locals 3

    iget-object v0, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sget v1, Lcom/htc/quickselection/HtcQuickSelectionWindow;->ARROW_HEIGHT:I

    sub-int/2addr v0, v1

    sub-int/2addr v0, p2

    if-lt p1, v0, :cond_0

    add-int v0, p1, p2

    iget-object v1, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sget v2, Lcom/htc/quickselection/HtcQuickSelectionWindow;->ARROW_HEIGHT:I

    add-int/2addr v1, v2

    add-int/2addr v1, p2

    if-le v0, v1, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mIsNotEnoughSpace:Z

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sget v1, Lcom/htc/quickselection/HtcQuickSelectionWindow;->ARROW_HEIGHT:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_2

    const v0, 0x2020192

    if-eq p3, v0, :cond_3

    :cond_2
    add-int v0, p1, p2

    iget-object v1, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sget v2, Lcom/htc/quickselection/HtcQuickSelectionWindow;->ARROW_HEIGHT:I

    add-int/2addr v1, v2

    if-lt v0, v1, :cond_4

    const v0, 0x2020193

    if-ne p3, v0, :cond_4

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private declared-synchronized obtainView()Landroid/view/View;
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mActionPool:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x2090091

    iget-object v3, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mTrack:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private preparePopupWindow()Landroid/widget/PopupWindow;
    .locals 7

    const/4 v6, 0x0

    const v5, 0x20900a6

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mContent:Landroid/widget/RelativeLayout;

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v3, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mContent:Landroid/widget/RelativeLayout;

    :cond_0
    iget-object v3, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mContent:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1

    instance-of v3, v1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mContent:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    :goto_0
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mContent:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/PopupWindow;

    invoke-direct {v2, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, p0}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v2, v4}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    return-object v2

    :cond_2
    iget-object v3, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v3, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mContent:Landroid/widget/RelativeLayout;

    goto :goto_0
.end method

.method private declared-synchronized releaseView(Landroid/view/View;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mActionPool:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mActionRecycled:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mActionRecycled:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private resetTrack()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mLastAction:Lcom/htc/quickselection/HtcCheckableImageView;

    :goto_0
    iget-object v0, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mTrack:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mTrack:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->releaseView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mTrack:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->removeViewAt(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mTrackScroll:Landroid/widget/HorizontalScrollView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->fullScroll(I)Z

    iput-boolean v2, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mWasDownArrow:Z

    iput-boolean v2, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mMakePrimary:Z

    iget-object v0, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mSetPrimaryCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method

.method private setResolveVisible(ZLcom/htc/quickselection/HtcCheckableImageView;)V
    .locals 7

    const/16 v4, 0x8

    const/4 v5, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mFooterDisambig:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mLastAction:Lcom/htc/quickselection/HtcCheckableImageView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mLastAction:Lcom/htc/quickselection/HtcCheckableImageView;

    invoke-virtual {v3, v2}, Lcom/htc/quickselection/HtcCheckableImageView;->setChecked(Z)V

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2, v1}, Lcom/htc/quickselection/HtcCheckableImageView;->setChecked(Z)V

    :cond_1
    iput-object p2, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mLastAction:Lcom/htc/quickselection/HtcCheckableImageView;

    if-ne p1, v0, :cond_3

    :goto_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    iget-object v6, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mFooter:Landroid/view/View;

    if-eqz p1, :cond_7

    move v3, v4

    :goto_2
    invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mFooterDisambig:Landroid/view/View;

    if-eqz p1, :cond_4

    move v4, v2

    :cond_4
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_8

    iget-boolean v3, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mWasDownArrow:Z

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mArrowDown:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_6

    :cond_5
    move v2, v1

    :cond_6
    iput-boolean v2, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mWasDownArrow:Z

    iget-object v1, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mArrowDown:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_7
    move v3, v2

    goto :goto_2

    :cond_8
    iget-object v1, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mArrowDown:Landroid/widget/ImageView;

    iget-boolean v3, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mWasDownArrow:Z

    if-eqz v3, :cond_9

    :goto_3
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_9
    move v2, v5

    goto :goto_3
.end method

.method private showArrow(II)V
    .locals 9

    const v7, 0x2020192

    if-ne p1, v7, :cond_1

    iget-object v6, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mArrowUp:Landroid/widget/ImageView;

    :goto_0
    if-ne p1, v7, :cond_2

    iget-object v2, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mArrowDown:Landroid/widget/ImageView;

    :goto_1
    iget-object v7, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mArrowUp:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    shr-int/lit8 v1, v0, 0x1

    iget v7, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mShadowHoriz:I

    shr-int/lit8 v3, v7, 0x1

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v7, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mContent:Landroid/widget/RelativeLayout;

    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v7

    sub-int/2addr v7, v3

    sub-int/2addr v7, v1

    invoke-static {p2, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    add-int v8, v3, v1

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    sub-int v4, v7, v1

    const/4 v7, 0x4

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    iget v7, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-eq v7, v4, :cond_0

    iput v4, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-virtual {v6}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void

    :cond_1
    iget-object v6, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mArrowDown:Landroid/widget/ImageView;

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mArrowUp:Landroid/widget/ImageView;

    goto :goto_1
.end method

.method private declared-synchronized showInternal(Landroid/view/View;Landroid/graphics/Rect;Z)V
    .locals 19

    monitor-enter p0

    const/16 p3, 0x0

    const/4 v13, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mIsNotEnoughSpace:Z

    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v13

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mTrack:Landroid/view/ViewGroup;

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mTrack:Landroid/view/ViewGroup;

    invoke-virtual {v13}, Landroid/view/ViewGroup;->getChildCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v13

    const/4 v14, 0x2

    if-gt v13, v14, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mShowing:Z

    if-nez v13, :cond_2

    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6}, Landroid/graphics/Point;-><init>()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v13}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v13

    invoke-virtual {v13, v6}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget v13, v6, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mScreenWidth:I

    iget v13, v6, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mScreenHeight:I

    :cond_2
    const/4 v13, 0x2

    new-array v5, v13, [I

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/View;->getLocationInWindow([I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    const/4 v13, 0x0

    aget v13, v5, v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollX()I

    move-result v14

    sub-int/2addr v13, v14

    const/4 v14, 0x1

    aget v14, v5, v14

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollY()I

    move-result v15

    sub-int/2addr v14, v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/graphics/Rect;->offset(II)V

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mTempRect:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->left:I

    if-ge v13, v14, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mTempRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p2

    iput v13, v0, Landroid/graphics/Rect;->left:I

    :cond_3
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mTempRect:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->right:I

    if-le v13, v14, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mTempRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p2

    iput v13, v0, Landroid/graphics/Rect;->right:I

    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->centerX()I

    move-result v13

    int-to-float v1, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mTempRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p2

    iget v14, v0, Landroid/graphics/Rect;->top:I

    if-ge v13, v14, :cond_a

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->top:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    int-to-float v9, v13

    :goto_1
    :try_start_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mHeader:Landroid/view/View;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mContent:Landroid/widget/RelativeLayout;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/widget/RelativeLayout;->measure(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    :try_start_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mContent:Landroid/widget/RelativeLayout;

    invoke-virtual {v13}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mScreenWidth:I

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v10

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mContent:Landroid/widget/RelativeLayout;

    invoke-virtual {v13}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v3

    const v8, 0x2020193

    float-to-int v13, v1

    shr-int/lit8 v14, v10, 0x1

    sub-int v11, v13, v14

    if-gez v11, :cond_b

    const/4 v11, 0x0

    :cond_5
    :goto_3
    float-to-int v13, v9

    sub-int/2addr v13, v3

    sget v14, Lcom/htc/quickselection/HtcQuickSelectionWindow;->ARROW_HEIGHT:I

    add-int v12, v13, v14

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mTempRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    sget v14, Lcom/htc/quickselection/HtcQuickSelectionWindow;->ARROW_HEIGHT:I

    sub-int/2addr v13, v14

    if-ge v12, v13, :cond_6

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    sget v14, Lcom/htc/quickselection/HtcQuickSelectionWindow;->ARROW_HEIGHT:I

    sub-int v12, v13, v14

    const v8, 0x2020192

    add-int v13, v12, v3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mTempRect:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->bottom:I

    sget v15, Lcom/htc/quickselection/HtcQuickSelectionWindow;->ARROW_HEIGHT:I

    add-int/2addr v14, v15

    if-le v13, v14, :cond_6

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mIsNotEnoughSpace:Z

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v13

    sget v14, Lcom/htc/quickselection/HtcQuickSelectionWindow;->ARROW_HEIGHT:I

    mul-int/lit8 v14, v14, 0x4

    add-int/2addr v14, v3

    if-le v13, v14, :cond_c

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->centerY()I

    move-result v13

    shr-int/lit8 v14, v3, 0x1

    sub-int v12, v13, v14

    const/4 v4, 0x1

    :cond_6
    :goto_4
    if-eqz v4, :cond_8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mTempRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->left:I

    if-le v13, v11, :cond_e

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mTempRect:Landroid/graphics/Rect;

    iget v11, v13, Landroid/graphics/Rect;->left:I

    :cond_7
    :goto_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mTempRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    if-le v13, v12, :cond_f

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mTempRect:Landroid/graphics/Rect;

    iget v12, v13, Landroid/graphics/Rect;->top:I

    :cond_8
    :goto_6
    if-eqz p3, :cond_11

    const v13, 0x2020192

    if-ne v8, v13, :cond_10

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const v14, 0x203008b

    invoke-virtual {v13, v14}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    :goto_7
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mNeedFineTune:Z

    if-eqz v13, :cond_9

    const v13, 0x2020193

    if-ne v8, v13, :cond_9

    sget v13, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mANCHOR_HEIGHT:I

    add-int/2addr v13, v12

    sget v14, Lcom/htc/quickselection/HtcQuickSelectionWindow;->ARROW_HEIGHT:I

    sub-int v12, v13, v14

    :cond_9
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v3, v8}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->isPositionVisible(III)Z

    move-result v13

    if-nez v13, :cond_12

    const-string v13, "TAG"

    const-string v14, "The position is out of current visible rectangle."

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mContent:Landroid/widget/RelativeLayout;

    const/4 v14, 0x4

    invoke-virtual {v13, v14}, Landroid/widget/RelativeLayout;->setVisibility(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v13

    monitor-exit p0

    throw v13

    :cond_a
    :try_start_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mTempRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    int-to-float v9, v13

    goto/16 :goto_1

    :catch_0
    move-exception v2

    const-string v13, "HtcQuickSelect"

    const-string/jumbo v14, "measure error!"

    invoke-static {v13, v14, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    :cond_b
    add-int v13, v11, v10

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mScreenWidth:I

    if-le v13, v14, :cond_5

    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mScreenWidth:I

    sub-int v11, v13, v10

    goto/16 :goto_3

    :cond_c
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->centerY()I

    move-result v13

    int-to-double v13, v13

    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mScreenHeight:I

    int-to-double v15, v15

    const-wide/high16 v17, 0x3fe0

    mul-double v15, v15, v17

    cmpl-double v13, v13, v15

    if-lez v13, :cond_d

    float-to-int v13, v9

    sub-int/2addr v13, v3

    sget v14, Lcom/htc/quickselection/HtcQuickSelectionWindow;->ARROW_HEIGHT:I

    add-int v12, v13, v14

    const v8, 0x2020193

    goto/16 :goto_4

    :cond_d
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    sget v14, Lcom/htc/quickselection/HtcQuickSelectionWindow;->ARROW_HEIGHT:I

    sub-int v12, v13, v14

    goto/16 :goto_4

    :cond_e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mTempRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->right:I

    add-int v14, v11, v10

    if-ge v13, v14, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mTempRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->right:I

    sub-int v11, v13, v10

    goto/16 :goto_5

    :cond_f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mTempRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    add-int v14, v12, v3

    if-ge v13, v14, :cond_8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mTempRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    sub-int v12, v13, v3

    goto/16 :goto_6

    :cond_10
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const v14, 0x203008a

    invoke-virtual {v13, v14}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto/16 :goto_7

    :cond_11
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto/16 :goto_7

    :cond_12
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mShowing:Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v13}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v13

    if-eqz v13, :cond_14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v13, v11, v12, v10, v3}, Landroid/widget/PopupWindow;->update(IIII)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mContent:Landroid/widget/RelativeLayout;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    if-eqz p3, :cond_13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mTrack:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mTrackAnim:Landroid/view/animation/Animation;

    invoke-virtual {v13, v14}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_13
    :goto_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v13}, Landroid/widget/PopupWindow;->isClippingEnabled()Z

    move-result v13

    if-eqz v13, :cond_15

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mScreenWidth:I

    sub-int/2addr v14, v10

    invoke-static {v11, v14}, Ljava/lang/Math;->min(II)I

    move-result v14

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v7

    :goto_9
    int-to-float v13, v7

    sub-float v13, v1, v13

    float-to-int v13, v13

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v13}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->showArrow(II)V

    goto/16 :goto_0

    :cond_14
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mContent:Landroid/widget/RelativeLayout;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v13, v10}, Landroid/widget/PopupWindow;->setWidth(I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v13, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v14, v11, v12}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    if-eqz p3, :cond_13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mTrack:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mTrackAnim:Landroid/view/animation/Animation;

    invoke-virtual {v13, v14}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_8

    :cond_15
    move v7, v11

    goto :goto_9
.end method


# virtual methods
.method public HideDescription()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mDescription:Landroid/widget/TextView;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mDescription:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mContent:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2, v2}, Landroid/widget/RelativeLayout;->measure(II)V

    iget-object v0, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mContent:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mContent:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/PopupWindow;->update(II)V

    goto :goto_0
.end method

.method public ShowDescription(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mDescription:Landroid/widget/TextView;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mDescription:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mTrack:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mHorizontalMargin:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    iget-object v0, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mDescription:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mDescription:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mContent:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3, v3}, Landroid/widget/RelativeLayout;->measure(II)V

    iget-object v0, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mContent:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mContent:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/PopupWindow;->update(II)V

    goto :goto_0
.end method

.method public addActionSet(Lcom/htc/quickselection/HtcQuickSelectionWindow$ActionSet;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->inflateAction(Lcom/htc/quickselection/HtcQuickSelectionWindow$ActionSet;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mTrack:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    iget-object v2, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mTrack:Landroid/view/ViewGroup;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public addButton(Ljava/lang/Object;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/htc/quickselection/HtcQuickSelectionWindow$ActionSet;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/htc/quickselection/HtcQuickSelectionWindow$ActionSet;-><init>(Lcom/htc/quickselection/HtcQuickSelectionWindow;I)V

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p3}, Lcom/htc/quickselection/HtcQuickSelectionWindow$ActionSet;->AddAction(Ljava/lang/Object;Ljava/lang/String;Landroid/view/View$OnClickListener;)Z

    invoke-virtual {v0, p2}, Lcom/htc/quickselection/HtcQuickSelectionWindow$ActionSet;->setIcon(Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/quickselection/HtcQuickSelectionWindow$ActionSet;->getAction(I)Lcom/htc/quickselection/HtcQuickSelectionWindow$Action;

    move-result-object v1

    iput-object p4, v1, Lcom/htc/quickselection/HtcQuickSelectionWindow$Action;->description:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->addActionSet(Lcom/htc/quickselection/HtcQuickSelectionWindow$ActionSet;)V

    return-void
.end method

.method public declared-synchronized dismiss()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->dismissInternal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized fakeDismiss()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mContent:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mShowing:Z

    iget-object v0, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    iget-object v0, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->update()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isShowing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mShowing:Z

    return v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    iput-boolean p2, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mMakePrimary:Z

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mOutsideTouchListener:Lcom/htc/quickselection/HtcQuickSelectionWindow$OutsideTouchListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mOutsideTouchListener:Lcom/htc/quickselection/HtcQuickSelectionWindow$OutsideTouchListener;

    invoke-interface {v0, p2}, Lcom/htc/quickselection/HtcQuickSelectionWindow$OutsideTouchListener;->onOutsideTouched(Landroid/view/MotionEvent;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 0

    invoke-direct {p0}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->resetTrack()V

    return-void
.end method

.method public setFineTune(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mNeedFineTune:Z

    return-void
.end method

.method public setOutsideTouchListener(Lcom/htc/quickselection/HtcQuickSelectionWindow$OutsideTouchListener;)V
    .locals 2

    iget-object v1, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iput-object p1, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mOutsideTouchListener:Lcom/htc/quickselection/HtcQuickSelectionWindow$OutsideTouchListener;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized show(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->show(Landroid/view/View;Landroid/graphics/Rect;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized show(Landroid/view/View;Landroid/graphics/Rect;Z)V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->showInternal(Landroid/view/View;Landroid/graphics/Rect;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "HtcQuickSelect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exeception while show PopupWindow \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->preparePopupWindow()Landroid/widget/PopupWindow;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mPopupWindow:Landroid/widget/PopupWindow;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public showDescriptionWithProgress(Ljava/lang/String;Z)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mDescription:Landroid/widget/TextView;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mDescription:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mTrack:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mHorizontalMargin:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    iget-object v0, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mDescription:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mDescription:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mDescription:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mCircularProgress:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mCircularProgress:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    :goto_1
    invoke-virtual {p0}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mContent:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4, v4}, Landroid/widget/RelativeLayout;->measure(II)V

    iget-object v0, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mContent:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mContent:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/PopupWindow;->update(II)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mDescription:Landroid/widget/TextView;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mCircularProgress:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->stop()V

    goto :goto_1
.end method

.method public declared-synchronized showPaste(Landroid/widget/TextView;Landroid/graphics/Rect;Z)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->mCurrentView:Landroid/widget/TextView;

    move-object v0, p1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow;->isPasteWindow:Z

    invoke-virtual {p0, v0, p2, p3}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->show(Landroid/view/View;Landroid/graphics/Rect;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
