.class public Lcom/htc/widget/HeaderBarImage;
.super Landroid/widget/RelativeLayout;
.source "HeaderBarImage.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/HeaderBarImage$ImageSelectView;,
        Lcom/htc/widget/HeaderBarImage$ImageFrameView;
    }
.end annotation


# static fields
.field public static final ImageButton:I = 0x3

.field public static final ImageFrame:I = 0x2

.field public static final ImageLabel:I = 0x1

.field public static final ImageSelect:I = 0x4

.field public static final QuickContact:I = 0x5


# instance fields
.field private backIndicatorDrawable:Landroid/graphics/drawable/Drawable;

.field private bubbleview:Landroid/widget/TextView;

.field private clickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private clickListenerChd:Landroid/widget/ExpandableListView$OnChildClickListener;

.field private clickListenerGrp:Landroid/widget/ExpandableListView$OnGroupClickListener;

.field private clickListenerLong:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private currentMode:I

.field private dismissListener:Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;

.field private final imageAlphaDisable:I

.field private final imageAlphaEnable:I

.field private imageButtonSize:I

.field private imageFrameLPadding:I

.field private imageFrameSize:I

.field private imageLabelSize:I

.field private imageLabelUOffset:I

.field private imageSelectHeight:I

.field private imageSelectWidth:I

.field private imageview:Landroid/widget/ImageView;

.field private labelview:Landroid/widget/TextView;

.field private layoutInflater:Landroid/view/LayoutInflater;

.field private listFooterView:Landroid/view/View;

.field private listHeaderView:Landroid/view/View;

.field private onClickListener:Landroid/view/View$OnClickListener;

.field private popupAdapter:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ListAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private popupAdapterExp:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ExpandableListAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

.field private popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

.field private popupMaxWidth:I

.field private quickcontact:Lcom/htc/widget/QuickContactBadge;

.field private selectedDrawable:Landroid/graphics/drawable/Drawable;

.field private selectorDrawable:Landroid/graphics/drawable/Drawable;

.field private skipChange:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput v2, p0, Lcom/htc/widget/HeaderBarImage;->imageLabelSize:I

    iput v2, p0, Lcom/htc/widget/HeaderBarImage;->imageFrameSize:I

    iput v2, p0, Lcom/htc/widget/HeaderBarImage;->imageButtonSize:I

    iput v2, p0, Lcom/htc/widget/HeaderBarImage;->imageSelectWidth:I

    iput v2, p0, Lcom/htc/widget/HeaderBarImage;->imageSelectHeight:I

    iput v2, p0, Lcom/htc/widget/HeaderBarImage;->imageLabelUOffset:I

    iput v2, p0, Lcom/htc/widget/HeaderBarImage;->imageFrameLPadding:I

    iput v2, p0, Lcom/htc/widget/HeaderBarImage;->currentMode:I

    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->labelview:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->bubbleview:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->imageview:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->quickcontact:Lcom/htc/widget/QuickContactBadge;

    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->selectedDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->backIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->layoutInflater:Landroid/view/LayoutInflater;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HeaderBarImage;->skipChange:Z

    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->listHeaderView:Landroid/view/View;

    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->listFooterView:Landroid/view/View;

    iput v2, p0, Lcom/htc/widget/HeaderBarImage;->popupMaxWidth:I

    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->clickListener:Landroid/widget/AdapterView$OnItemClickListener;

    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->clickListenerLong:Landroid/widget/AdapterView$OnItemLongClickListener;

    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->clickListenerChd:Landroid/widget/ExpandableListView$OnChildClickListener;

    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->clickListenerGrp:Landroid/widget/ExpandableListView$OnGroupClickListener;

    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->popupAdapter:Ljava/lang/ref/WeakReference;

    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->popupAdapterExp:Ljava/lang/ref/WeakReference;

    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->dismissListener:Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;

    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->onClickListener:Landroid/view/View$OnClickListener;

    const/16 v0, 0xff

    iput v0, p0, Lcom/htc/widget/HeaderBarImage;->imageAlphaEnable:I

    const/16 v0, 0x7f

    iput v0, p0, Lcom/htc/widget/HeaderBarImage;->imageAlphaDisable:I

    invoke-direct {p0}, Lcom/htc/widget/HeaderBarImage;->setupMeasurement()V

    invoke-direct {p0}, Lcom/htc/widget/HeaderBarImage;->setupEnvironment()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v2, p0, Lcom/htc/widget/HeaderBarImage;->imageLabelSize:I

    iput v2, p0, Lcom/htc/widget/HeaderBarImage;->imageFrameSize:I

    iput v2, p0, Lcom/htc/widget/HeaderBarImage;->imageButtonSize:I

    iput v2, p0, Lcom/htc/widget/HeaderBarImage;->imageSelectWidth:I

    iput v2, p0, Lcom/htc/widget/HeaderBarImage;->imageSelectHeight:I

    iput v2, p0, Lcom/htc/widget/HeaderBarImage;->imageLabelUOffset:I

    iput v2, p0, Lcom/htc/widget/HeaderBarImage;->imageFrameLPadding:I

    iput v2, p0, Lcom/htc/widget/HeaderBarImage;->currentMode:I

    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->labelview:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->bubbleview:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->imageview:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->quickcontact:Lcom/htc/widget/QuickContactBadge;

    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->selectedDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->backIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->layoutInflater:Landroid/view/LayoutInflater;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HeaderBarImage;->skipChange:Z

    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->listHeaderView:Landroid/view/View;

    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->listFooterView:Landroid/view/View;

    iput v2, p0, Lcom/htc/widget/HeaderBarImage;->popupMaxWidth:I

    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->clickListener:Landroid/widget/AdapterView$OnItemClickListener;

    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->clickListenerLong:Landroid/widget/AdapterView$OnItemLongClickListener;

    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->clickListenerChd:Landroid/widget/ExpandableListView$OnChildClickListener;

    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->clickListenerGrp:Landroid/widget/ExpandableListView$OnGroupClickListener;

    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->popupAdapter:Ljava/lang/ref/WeakReference;

    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->popupAdapterExp:Ljava/lang/ref/WeakReference;

    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->dismissListener:Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;

    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->onClickListener:Landroid/view/View$OnClickListener;

    const/16 v0, 0xff

    iput v0, p0, Lcom/htc/widget/HeaderBarImage;->imageAlphaEnable:I

    const/16 v0, 0x7f

    iput v0, p0, Lcom/htc/widget/HeaderBarImage;->imageAlphaDisable:I

    invoke-direct {p0}, Lcom/htc/widget/HeaderBarImage;->setupMeasurement()V

    invoke-direct {p0}, Lcom/htc/widget/HeaderBarImage;->setupEnvironment()V

    return-void
.end method

.method static synthetic access$000(Lcom/htc/widget/HeaderBarImage;)I
    .locals 1

    iget v0, p0, Lcom/htc/widget/HeaderBarImage;->imageFrameSize:I

    return v0
.end method

.method static synthetic access$100(Lcom/htc/widget/HeaderBarImage;)Z
    .locals 1

    invoke-direct {p0}, Lcom/htc/widget/HeaderBarImage;->enableMaskBitmap()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/htc/widget/HeaderBarImage;)I
    .locals 1

    iget v0, p0, Lcom/htc/widget/HeaderBarImage;->imageSelectWidth:I

    return v0
.end method

.method static synthetic access$300(Lcom/htc/widget/HeaderBarImage;)I
    .locals 1

    iget v0, p0, Lcom/htc/widget/HeaderBarImage;->imageSelectHeight:I

    return v0
.end method

.method private cleanPreviousWindow()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ListPopupBubbleWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ListPopupBubbleWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    :cond_1
    return-void
.end method

.method private enableMaskBitmap()Z
    .locals 2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xe

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xf

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private measureContentWidth(Landroid/widget/ExpandableListAdapter;)I
    .locals 13

    const/4 v4, 0x0

    const/4 v3, 0x0

    if-nez p1, :cond_0

    :goto_0
    return v3

    :cond_0
    const/4 v11, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    const/4 v1, 0x0

    invoke-interface {p1}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v7

    :goto_1
    if-ge v1, v7, :cond_2

    invoke-interface {p1, v1, v3, v4, v4}, Landroid/widget/ExpandableListAdapter;->getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10, v12, v8}, Landroid/view/View;->measure(II)V

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    const/4 v2, 0x0

    invoke-interface {p1, v1}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result v6

    :goto_2
    if-ge v2, v6, :cond_1

    move-object v0, p1

    move-object v5, v4

    invoke-interface/range {v0 .. v5}, Landroid/widget/ExpandableListAdapter;->getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10, v12, v8}, Landroid/view/View;->measure(II)V

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move v3, v11

    goto :goto_0
.end method

.method private measureContentWidth(Landroid/widget/ListAdapter;)I
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x0

    if-nez p1, :cond_1

    move v5, v8

    :cond_0
    :goto_0
    return v5

    :cond_1
    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    const/4 v4, 0x0

    invoke-interface {p1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    :goto_1
    if-ge v4, v0, :cond_3

    invoke-interface {p1, v4}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v6

    if-eq v6, v2, :cond_2

    move v2, v6

    const/4 v3, 0x0

    :cond_2
    invoke-interface {p1, v4, v9, v9}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7, v1}, Landroid/view/View;->measure(II)V

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    iget-object v8, p0, Lcom/htc/widget/HeaderBarImage;->listHeaderView:Landroid/view/View;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/htc/widget/HeaderBarImage;->listHeaderView:Landroid/view/View;

    invoke-virtual {v8, v7, v1}, Landroid/view/View;->measure(II)V

    iget-object v8, p0, Lcom/htc/widget/HeaderBarImage;->listHeaderView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    :cond_4
    iget-object v8, p0, Lcom/htc/widget/HeaderBarImage;->listFooterView:Landroid/view/View;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/htc/widget/HeaderBarImage;->listFooterView:Landroid/view/View;

    invoke-virtual {v8, v7, v1}, Landroid/view/View;->measure(II)V

    iget-object v8, p0, Lcom/htc/widget/HeaderBarImage;->listFooterView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_0
.end method

.method private setupEnvironment()V
    .locals 8

    const/4 v7, 0x0

    const/4 v0, -0x1

    iget-object v3, p0, Lcom/htc/widget/HeaderBarImage;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x20d0083

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iget-object v3, p0, Lcom/htc/widget/HeaderBarImage;->layoutInflater:Landroid/view/LayoutInflater;

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/htc/widget/HeaderBarImage;->mContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    iput-object v3, p0, Lcom/htc/widget/HeaderBarImage;->layoutInflater:Landroid/view/LayoutInflater;

    :cond_0
    iget v3, p0, Lcom/htc/widget/HeaderBarImage;->currentMode:I

    packed-switch v3, :pswitch_data_0

    :goto_0
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarImage;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarImage;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0, v2}, Lcom/htc/widget/HeaderBarImage;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    iget-object v3, p0, Lcom/htc/widget/HeaderBarImage;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/htc/widget/HeaderBarImage;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/widget/HeaderBarImage;->mContext:Landroid/content/Context;

    const-string v5, "common_titlebar_btn"

    const v6, 0x208072d

    invoke-static {v4, v5, v6}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/widget/HeaderBarImage;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    :cond_1
    iget-object v3, p0, Lcom/htc/widget/HeaderBarImage;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v3}, Lcom/htc/widget/HeaderBarImage;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v7, v7, v7, v7}, Lcom/htc/widget/HeaderBarImage;->setPadding(IIII)V

    iget v3, p0, Lcom/htc/widget/HeaderBarImage;->popupMaxWidth:I

    if-gez v3, :cond_2

    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarImage;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v3, p0, Lcom/htc/widget/HeaderBarImage;->popupMaxWidth:I

    :cond_2
    return-void

    :pswitch_1
    iget v3, p0, Lcom/htc/widget/HeaderBarImage;->imageFrameSize:I

    iget v4, p0, Lcom/htc/widget/HeaderBarImage;->imageFrameLPadding:I

    add-int v1, v3, v4

    const/4 v0, -0x1

    goto :goto_0

    :pswitch_2
    iget v3, p0, Lcom/htc/widget/HeaderBarImage;->imageSelectWidth:I

    iget v4, p0, Lcom/htc/widget/HeaderBarImage;->imageFrameLPadding:I

    add-int v1, v3, v4

    const/4 v0, -0x1

    goto :goto_0

    :pswitch_3
    iget v3, p0, Lcom/htc/widget/HeaderBarImage;->imageFrameSize:I

    iget v4, p0, Lcom/htc/widget/HeaderBarImage;->imageFrameLPadding:I

    add-int v1, v3, v4

    const/4 v0, -0x1

    goto :goto_0

    :cond_3
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v3}, Lcom/htc/widget/HeaderBarImage;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setupImageBubbleView()V
    .locals 8

    iget-object v4, p0, Lcom/htc/widget/HeaderBarImage;->bubbleview:Landroid/widget/TextView;

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/htc/widget/HeaderBarImage;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x20d0086

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const v4, 0x20d00a2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iget-object v4, p0, Lcom/htc/widget/HeaderBarImage;->layoutInflater:Landroid/view/LayoutInflater;

    const v5, 0x20900e6

    const/4 v6, 0x0

    invoke-virtual {v4, v5, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/htc/widget/HeaderBarImage;->bubbleview:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/htc/widget/HeaderBarImage;->bubbleview:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage;->mContext:Landroid/content/Context;

    const-string v6, "common_notification_on"

    const v7, 0x208006a

    invoke-static {v5, v6, v7}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xb

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v4, 0xf

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iput v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget-object v4, p0, Lcom/htc/widget/HeaderBarImage;->bubbleview:Landroid/widget/TextView;

    invoke-virtual {p0, v4, v2}, Lcom/htc/widget/HeaderBarImage;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private setupImageButtonMode()V
    .locals 5

    const/4 v4, 0x1

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/htc/widget/HeaderBarImage;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/widget/HeaderBarImage;->imageview:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->imageview:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setDuplicateParentStateEnabled(Z)V

    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->imageview:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lcom/htc/widget/HeaderBarImage;->imageButtonSize:I

    iget v3, p0, Lcom/htc/widget/HeaderBarImage;->imageButtonSize:I

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->imageview:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarImage;->removeAllViews()V

    invoke-virtual {p0, v4}, Lcom/htc/widget/HeaderBarImage;->setClickable(Z)V

    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->imageview:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/htc/widget/HeaderBarImage;->addView(Landroid/view/View;)V

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/htc/widget/HeaderBarImage;->setGravity(I)V

    return-void
.end method

.method private setupImageFrameMode()V
    .locals 2

    new-instance v0, Lcom/htc/widget/HeaderBarImage$ImageFrameView;

    iget-object v1, p0, Lcom/htc/widget/HeaderBarImage;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/HeaderBarImage$ImageFrameView;-><init>(Lcom/htc/widget/HeaderBarImage;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/widget/HeaderBarImage;->imageview:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarImage;->removeAllViews()V

    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->imageview:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/htc/widget/HeaderBarImage;->addView(Landroid/view/View;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HeaderBarImage;->setClickable(Z)V

    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Lcom/htc/widget/HeaderBarImage;->setGravity(I)V

    return-void
.end method

.method private setupImageLabelMode()V
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarImage;->removeAllViews()V

    invoke-virtual {p0, v3}, Lcom/htc/widget/HeaderBarImage;->setClickable(Z)V

    iget-object v1, p0, Lcom/htc/widget/HeaderBarImage;->layoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x20900e8

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v1, 0x2020262

    invoke-virtual {p0, v1}, Lcom/htc/widget/HeaderBarImage;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->labelview:Landroid/widget/TextView;

    const v1, 0x2020113

    invoke-virtual {p0, v1}, Lcom/htc/widget/HeaderBarImage;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->imageview:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/htc/widget/HeaderBarImage;->imageview:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setDuplicateParentStateEnabled(Z)V

    iget-object v1, p0, Lcom/htc/widget/HeaderBarImage;->labelview:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setDuplicateParentStateEnabled(Z)V

    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarImage;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Lcom/htc/widget/HeaderBarTall;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/HeaderBarImage;->imageview:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/HeaderBarImage;->imageview:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, p0, Lcom/htc/widget/HeaderBarImage;->imageLabelUOffset:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/htc/widget/HeaderBarImage;->imageview:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private setupImageSelectMode()V
    .locals 2

    new-instance v0, Lcom/htc/widget/HeaderBarImage$ImageSelectView;

    iget-object v1, p0, Lcom/htc/widget/HeaderBarImage;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/HeaderBarImage$ImageSelectView;-><init>(Lcom/htc/widget/HeaderBarImage;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/widget/HeaderBarImage;->imageview:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarImage;->removeAllViews()V

    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->imageview:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/htc/widget/HeaderBarImage;->addView(Landroid/view/View;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HeaderBarImage;->setClickable(Z)V

    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Lcom/htc/widget/HeaderBarImage;->setGravity(I)V

    return-void
.end method

.method private setupMeasurement()V
    .locals 2

    iget-object v1, p0, Lcom/htc/widget/HeaderBarImage;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/htc/widget/HeaderBarImage;->imageLabelSize:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/htc/widget/HeaderBarImage;->imageFrameSize:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/htc/widget/HeaderBarImage;->imageButtonSize:I

    if-gez v1, :cond_1

    :cond_0
    const v1, 0x20d008a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HeaderBarImage;->imageLabelSize:I

    const v1, 0x20d008b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HeaderBarImage;->imageFrameSize:I

    const v1, 0x20d008c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HeaderBarImage;->imageButtonSize:I

    :cond_1
    iget v1, p0, Lcom/htc/widget/HeaderBarImage;->imageLabelUOffset:I

    if-ltz v1, :cond_2

    iget v1, p0, Lcom/htc/widget/HeaderBarImage;->imageFrameLPadding:I

    if-gez v1, :cond_3

    :cond_2
    const v1, 0x20d008e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HeaderBarImage;->imageLabelUOffset:I

    const v1, 0x20d0090

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HeaderBarImage;->imageFrameLPadding:I

    :cond_3
    iget v1, p0, Lcom/htc/widget/HeaderBarImage;->imageSelectWidth:I

    if-ltz v1, :cond_4

    iget v1, p0, Lcom/htc/widget/HeaderBarImage;->imageSelectHeight:I

    if-gez v1, :cond_5

    :cond_4
    const v1, 0x20d00a0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HeaderBarImage;->imageSelectWidth:I

    const v1, 0x20d00a1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HeaderBarImage;->imageSelectHeight:I

    :cond_5
    return-void
.end method

.method private setupQuickContactMode()V
    .locals 4

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/HeaderBarImage;->quickcontact:Lcom/htc/widget/QuickContactBadge;

    new-instance v0, Lcom/htc/widget/QuickContactBadge;

    iget-object v1, p0, Lcom/htc/widget/HeaderBarImage;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/htc/widget/QuickContactBadge;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/widget/HeaderBarImage;->quickcontact:Lcom/htc/widget/QuickContactBadge;

    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->quickcontact:Lcom/htc/widget/QuickContactBadge;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    iget v2, p0, Lcom/htc/widget/HeaderBarImage;->imageFrameSize:I

    iget v3, p0, Lcom/htc/widget/HeaderBarImage;->imageFrameSize:I

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/QuickContactBadge;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarImage;->removeAllViews()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HeaderBarImage;->setClickable(Z)V

    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->quickcontact:Lcom/htc/widget/QuickContactBadge;

    invoke-virtual {p0, v0}, Lcom/htc/widget/HeaderBarImage;->addView(Landroid/view/View;)V

    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Lcom/htc/widget/HeaderBarImage;->setGravity(I)V

    return-void
.end method


# virtual methods
.method public addFooterView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/HeaderBarImage;->listFooterView:Landroid/view/View;

    return-void
.end method

.method public addHeaderView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/HeaderBarImage;->listHeaderView:Landroid/view/View;

    return-void
.end method

.method public dismiss()V
    .locals 1

    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarImage;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ListPopupBubbleWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ListPopupBubbleWindow;->internalDismiss()V

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->internalDismiss()V

    :cond_1
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->backIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->backIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public enableBackIndicator(Z)V
    .locals 4

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->backIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarImage;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x20807cd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/HeaderBarImage;->backIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->backIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/htc/widget/HeaderBarImage;->backIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/htc/widget/HeaderBarImage;->backIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/HeaderBarImage;->backIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public enableImageAlpha(Z)V
    .locals 2

    iget v0, p0, Lcom/htc/widget/HeaderBarImage;->currentMode:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/htc/widget/HeaderBarImage;->currentMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/htc/widget/HeaderBarImage;->imageview:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    const/16 v0, 0xff

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAlpha(I)V

    :cond_1
    return-void

    :cond_2
    const/16 v0, 0x7f

    goto :goto_0
.end method

.method public getBubbleCount()I
    .locals 2

    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->bubbleview:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/widget/HeaderBarImage;->currentMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->bubbleview:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/high16 v0, -0x8000

    goto :goto_0
.end method

.method public getBubbleText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->bubbleview:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->bubbleview:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLabelText()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->labelview:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/widget/HeaderBarImage;->currentMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->labelview:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getQuickContact()Lcom/htc/widget/QuickContactBadge;
    .locals 2

    iget v0, p0, Lcom/htc/widget/HeaderBarImage;->currentMode:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->quickcontact:Lcom/htc/widget/QuickContactBadge;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBubbleWindowShow()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ListPopupBubbleWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    invoke-direct {p0}, Lcom/htc/widget/HeaderBarImage;->setupEnvironment()V

    iget v1, p0, Lcom/htc/widget/HeaderBarImage;->currentMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarImage;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Lcom/htc/widget/HeaderBarTall;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/HeaderBarImage;->imageview:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/HeaderBarImage;->imageview:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, p0, Lcom/htc/widget/HeaderBarImage;->imageLabelUOffset:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/htc/widget/HeaderBarImage;->imageview:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    invoke-direct {p0}, Lcom/htc/widget/HeaderBarImage;->cleanPreviousWindow()V

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public onDismiss()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iput-boolean v4, p0, Lcom/htc/widget/HeaderBarImage;->skipChange:Z

    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarImage;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarImage;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarImage;->getPaddingRight()I

    move-result v1

    iget-object v2, p0, Lcom/htc/widget/HeaderBarImage;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Lcom/htc/widget/HeaderBarImage;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v0, v3, v1, v3}, Lcom/htc/widget/HeaderBarImage;->setPadding(IIII)V

    iget v2, p0, Lcom/htc/widget/HeaderBarImage;->currentMode:I

    if-ne v2, v4, :cond_0

    iget-object v2, p0, Lcom/htc/widget/HeaderBarImage;->labelview:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/widget/HeaderBarImage;->labelview:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/htc/widget/HeaderBarImage;->mContext:Landroid/content/Context;

    const v4, 0x20300d8

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_0
    iget-object v2, p0, Lcom/htc/widget/HeaderBarImage;->dismissListener:Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/widget/HeaderBarImage;->dismissListener:Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;

    invoke-interface {v2}, Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;->onDismiss()V

    :cond_1
    return-void
.end method

.method public onGlobalLayout()V
    .locals 1

    iget-boolean v0, p0, Lcom/htc/widget/HeaderBarImage;->skipChange:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarImage;->isBubbleWindowShow()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarImage;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarImage;->isShown()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarImage;->dismiss()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ListPopupBubbleWindow;->show()V

    :cond_4
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->show()V

    goto :goto_0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setAdapter(Landroid/widget/ExpandableListAdapter;)V
    .locals 2

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->popupAdapterExp:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_4

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    :goto_0
    iput-object v0, p0, Lcom/htc/widget/HeaderBarImage;->popupAdapterExp:Ljava/lang/ref/WeakReference;

    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->popupAdapter:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ListPopupBubbleWindow;->dismiss()V

    :cond_2
    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->popupAdapter:Ljava/lang/ref/WeakReference;

    :cond_3
    return-void

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->popupAdapter:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_4

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    :goto_0
    iput-object v0, p0, Lcom/htc/widget/HeaderBarImage;->popupAdapter:Ljava/lang/ref/WeakReference;

    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ListPopupBubbleWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->popupAdapterExp:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->dismiss()V

    :cond_2
    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->popupAdapterExp:Ljava/lang/ref/WeakReference;

    :cond_3
    return-void

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method

.method public setBubbleCount(I)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HeaderBarImage;->setBubbleText(Ljava/lang/String;)V

    return-void
.end method

.method public setBubbleText(Ljava/lang/String;)V
    .locals 4

    iget v0, p0, Lcom/htc/widget/HeaderBarImage;->currentMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/htc/widget/HeaderBarImage;->setupImageBubbleView()V

    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->bubbleview:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/htc/widget/HeaderBarImage;->bubbleview:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/htc/widget/HeaderBarImage;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x2

    if-le v0, v3, :cond_1

    const v0, 0x20300d5

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_0
    return-void

    :cond_1
    const v0, 0x20300d7

    goto :goto_0
.end method

.method public setBubbleVisibility(I)V
    .locals 2

    iget v0, p0, Lcom/htc/widget/HeaderBarImage;->currentMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/htc/widget/HeaderBarImage;->setupImageBubbleView()V

    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->bubbleview:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    iget v0, p0, Lcom/htc/widget/HeaderBarImage;->currentMode:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/htc/widget/HeaderBarImage;->currentMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/widget/HeaderBarImage;->setClickable(Z)V

    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->labelview:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->labelview:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->imageview:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->imageview:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    :cond_2
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->imageview:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->imageview:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->imageview:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->imageview:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setImageMode(I)V
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Lcom/htc/widget/HeaderBarImage;->currentMode:I

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->imageview:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->labelview:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->bubbleview:Landroid/widget/TextView;

    iput p1, p0, Lcom/htc/widget/HeaderBarImage;->currentMode:I

    invoke-direct {p0}, Lcom/htc/widget/HeaderBarImage;->setupEnvironment()V

    packed-switch p1, :pswitch_data_0

    :goto_1
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :pswitch_0
    invoke-direct {p0}, Lcom/htc/widget/HeaderBarImage;->setupImageLabelMode()V

    goto :goto_1

    :pswitch_1
    invoke-direct {p0}, Lcom/htc/widget/HeaderBarImage;->setupImageFrameMode()V

    goto :goto_1

    :pswitch_2
    invoke-direct {p0}, Lcom/htc/widget/HeaderBarImage;->setupImageButtonMode()V

    goto :goto_1

    :pswitch_3
    invoke-direct {p0}, Lcom/htc/widget/HeaderBarImage;->setupImageSelectMode()V

    goto :goto_1

    :pswitch_4
    invoke-direct {p0}, Lcom/htc/widget/HeaderBarImage;->setupQuickContactMode()V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public setImageResource(I)V
    .locals 1

    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->imageview:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->imageview:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    return-void
.end method

.method public setLabelText(I)V
    .locals 2

    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->labelview:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/widget/HeaderBarImage;->currentMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->labelview:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    return-void
.end method

.method public setLabelText(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->labelview:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/widget/HeaderBarImage;->currentMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->labelview:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V
    .locals 1

    iput-object p1, p0, Lcom/htc/widget/HeaderBarImage;->clickListenerChd:Landroid/widget/ExpandableListView$OnChildClickListener;

    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    :cond_0
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2

    iput-object p1, p0, Lcom/htc/widget/HeaderBarImage;->onClickListener:Landroid/view/View$OnClickListener;

    iget v0, p0, Lcom/htc/widget/HeaderBarImage;->currentMode:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    :goto_0
    :pswitch_1
    return-void

    :pswitch_2
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->imageview:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->imageview:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/htc/widget/HeaderBarImage;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setOnDismissListener(Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/HeaderBarImage;->dismissListener:Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;

    return-void
.end method

.method public setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V
    .locals 1

    iput-object p1, p0, Lcom/htc/widget/HeaderBarImage;->clickListenerGrp:Landroid/widget/ExpandableListView$OnGroupClickListener;

    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    :cond_0
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 1

    iput-object p1, p0, Lcom/htc/widget/HeaderBarImage;->clickListener:Landroid/widget/AdapterView$OnItemClickListener;

    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ListPopupBubbleWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_1
    return-void
.end method

.method public setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .locals 1

    iput-object p1, p0, Lcom/htc/widget/HeaderBarImage;->clickListenerLong:Landroid/widget/AdapterView$OnItemLongClickListener;

    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ListPopupBubbleWindow;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    :cond_0
    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->imageview:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->imageview:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 13

    const v12, 0x208073c

    const/4 v11, 0x2

    const/4 v10, -0x1

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-direct {p0}, Lcom/htc/widget/HeaderBarImage;->cleanPreviousWindow()V

    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    if-eqz v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage;->popupAdapter:Ljava/lang/ref/WeakReference;

    if-eqz v5, :cond_e

    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage;->popupAdapter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/ListAdapter;

    move-object v0, v5

    :goto_1
    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarImage;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    new-instance v5, Lcom/htc/widget/ListPopupBubbleWindow;

    iget-object v6, p0, Lcom/htc/widget/HeaderBarImage;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/htc/widget/ListPopupBubbleWindow;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/htc/widget/HeaderBarImage;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage;->clickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    iget-object v6, p0, Lcom/htc/widget/HeaderBarImage;->clickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v5, v6}, Lcom/htc/widget/ListPopupBubbleWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_2
    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage;->clickListenerLong:Landroid/widget/AdapterView$OnItemLongClickListener;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    iget-object v6, p0, Lcom/htc/widget/HeaderBarImage;->clickListenerLong:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {v5, v6}, Lcom/htc/widget/ListPopupBubbleWindow;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    :cond_3
    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage;->listHeaderView:Landroid/view/View;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    iget-object v6, p0, Lcom/htc/widget/HeaderBarImage;->listHeaderView:Landroid/view/View;

    invoke-virtual {v5, v6}, Lcom/htc/widget/ListPopupBubbleWindow;->addHeaderView(Landroid/view/View;)V

    :cond_4
    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage;->listFooterView:Landroid/view/View;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    iget-object v6, p0, Lcom/htc/widget/HeaderBarImage;->listFooterView:Landroid/view/View;

    invoke-virtual {v5, v6}, Lcom/htc/widget/ListPopupBubbleWindow;->addFooterView(Landroid/view/View;)V

    :cond_5
    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v5, p0}, Lcom/htc/widget/ListPopupBubbleWindow;->setOnDismissListener(Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;)V

    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v5, p0}, Lcom/htc/widget/ListPopupBubbleWindow;->setAnchorView(Landroid/view/View;)V

    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v5, v0}, Lcom/htc/widget/ListPopupBubbleWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v5, v9}, Lcom/htc/widget/ListPopupBubbleWindow;->setModal(Z)V

    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-direct {p0, v0}, Lcom/htc/widget/HeaderBarImage;->measureContentWidth(Landroid/widget/ListAdapter;)I

    move-result v6

    iget v7, p0, Lcom/htc/widget/HeaderBarImage;->popupMaxWidth:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/htc/widget/ListPopupBubbleWindow;->setContentWidth(I)V

    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v5, v11}, Lcom/htc/widget/ListPopupBubbleWindow;->setInputMethodMode(I)V

    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v5}, Lcom/htc/widget/ListPopupBubbleWindow;->show()V

    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v5}, Lcom/htc/widget/ListPopupBubbleWindow;->getListView()Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarImage;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarImage;->getPaddingRight()I

    move-result v3

    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage;->selectedDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_6

    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/widget/HeaderBarImage;->mContext:Landroid/content/Context;

    const-string v7, "common_titlebar_btn_selected"

    invoke-static {v6, v7, v12}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/widget/HeaderBarImage;->selectedDrawable:Landroid/graphics/drawable/Drawable;

    :cond_6
    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage;->selectedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v5}, Lcom/htc/widget/HeaderBarImage;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v2, v8, v3, v8}, Lcom/htc/widget/HeaderBarImage;->setPadding(IIII)V

    iget v5, p0, Lcom/htc/widget/HeaderBarImage;->currentMode:I

    if-ne v5, v9, :cond_7

    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage;->labelview:Landroid/widget/TextView;

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage;->labelview:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_7
    iput-boolean v8, p0, Lcom/htc/widget/HeaderBarImage;->skipChange:Z

    :cond_8
    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage;->popupAdapterExp:Ljava/lang/ref/WeakReference;

    if-eqz v5, :cond_f

    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage;->popupAdapterExp:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/ExpandableListAdapter;

    move-object v1, v5

    :goto_2
    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarImage;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    new-instance v5, Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    iget-object v6, p0, Lcom/htc/widget/HeaderBarImage;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/htc/widget/HeaderBarImage;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage;->clickListenerChd:Landroid/widget/ExpandableListView$OnChildClickListener;

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    iget-object v6, p0, Lcom/htc/widget/HeaderBarImage;->clickListenerChd:Landroid/widget/ExpandableListView$OnChildClickListener;

    invoke-virtual {v5, v6}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    :cond_9
    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage;->clickListenerGrp:Landroid/widget/ExpandableListView$OnGroupClickListener;

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    iget-object v6, p0, Lcom/htc/widget/HeaderBarImage;->clickListenerGrp:Landroid/widget/ExpandableListView$OnGroupClickListener;

    invoke-virtual {v5, v6}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    :cond_a
    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage;->clickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    iget-object v6, p0, Lcom/htc/widget/HeaderBarImage;->clickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v5, v6}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_b
    new-instance v4, Lcom/htc/widget/WrapingExpandedListAdapter;

    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, v1}, Lcom/htc/widget/WrapingExpandedListAdapter;-><init>(Landroid/content/Context;Landroid/widget/ExpandableListAdapter;)V

    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v5, p0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setOnDismissListener(Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;)V

    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v5, v4}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v5, p0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setAnchorView(Landroid/view/View;)V

    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v5, v9}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setModal(Z)V

    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-direct {p0, v4}, Lcom/htc/widget/HeaderBarImage;->measureContentWidth(Landroid/widget/ExpandableListAdapter;)I

    move-result v6

    iget v7, p0, Lcom/htc/widget/HeaderBarImage;->popupMaxWidth:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setContentWidth(I)V

    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v5, v11}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setInputMethodMode(I)V

    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v5}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->show()V

    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v5}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->getExpandableListView()Landroid/widget/ExpandableListView;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/widget/ExpandableListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarImage;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarImage;->getPaddingRight()I

    move-result v3

    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage;->selectedDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_c

    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/widget/HeaderBarImage;->mContext:Landroid/content/Context;

    const-string v7, "common_titlebar_btn_selected"

    invoke-static {v6, v7, v12}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/widget/HeaderBarImage;->selectedDrawable:Landroid/graphics/drawable/Drawable;

    :cond_c
    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage;->selectedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v5}, Lcom/htc/widget/HeaderBarImage;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v2, v8, v3, v8}, Lcom/htc/widget/HeaderBarImage;->setPadding(IIII)V

    iget v5, p0, Lcom/htc/widget/HeaderBarImage;->currentMode:I

    if-ne v5, v9, :cond_d

    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage;->labelview:Landroid/widget/TextView;

    if-eqz v5, :cond_d

    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage;->labelview:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_d
    iput-boolean v8, p0, Lcom/htc/widget/HeaderBarImage;->skipChange:Z

    goto/16 :goto_0

    :cond_e
    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_f
    const/4 v1, 0x0

    goto/16 :goto_2
.end method
