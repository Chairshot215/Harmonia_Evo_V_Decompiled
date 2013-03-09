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
    .parameter "context"

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 80
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 50
    iput v2, p0, Lcom/htc/widget/HeaderBarImage;->imageLabelSize:I

    .line 51
    iput v2, p0, Lcom/htc/widget/HeaderBarImage;->imageFrameSize:I

    .line 52
    iput v2, p0, Lcom/htc/widget/HeaderBarImage;->imageButtonSize:I

    .line 54
    iput v2, p0, Lcom/htc/widget/HeaderBarImage;->imageSelectWidth:I

    .line 55
    iput v2, p0, Lcom/htc/widget/HeaderBarImage;->imageSelectHeight:I

    .line 57
    iput v2, p0, Lcom/htc/widget/HeaderBarImage;->imageLabelUOffset:I

    .line 58
    iput v2, p0, Lcom/htc/widget/HeaderBarImage;->imageFrameLPadding:I

    .line 60
    iput v2, p0, Lcom/htc/widget/HeaderBarImage;->currentMode:I

    .line 62
    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->labelview:Landroid/widget/TextView;

    .line 63
    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->bubbleview:Landroid/widget/TextView;

    .line 64
    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->imageview:Landroid/widget/ImageView;

    .line 65
    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->quickcontact:Lcom/htc/widget/QuickContactBadge;

    .line 68
    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    .line 69
    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->selectedDrawable:Landroid/graphics/drawable/Drawable;

    .line 71
    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->backIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    .line 74
    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->layoutInflater:Landroid/view/LayoutInflater;

    .line 366
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HeaderBarImage;->skipChange:Z

    .line 368
    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->listHeaderView:Landroid/view/View;

    .line 369
    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->listFooterView:Landroid/view/View;

    .line 372
    iput v2, p0, Lcom/htc/widget/HeaderBarImage;->popupMaxWidth:I

    .line 374
    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->clickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 375
    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->clickListenerLong:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 377
    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->clickListenerChd:Landroid/widget/ExpandableListView$OnChildClickListener;

    .line 378
    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->clickListenerGrp:Landroid/widget/ExpandableListView$OnGroupClickListener;

    .line 381
    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    .line 382
    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->popupAdapter:Ljava/lang/ref/WeakReference;

    .line 385
    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    .line 386
    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->popupAdapterExp:Ljava/lang/ref/WeakReference;

    .line 388
    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->dismissListener:Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;

    .line 801
    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->onClickListener:Landroid/view/View$OnClickListener;

    .line 850
    const/16 v0, 0xff

    iput v0, p0, Lcom/htc/widget/HeaderBarImage;->imageAlphaEnable:I

    .line 851
    const/16 v0, 0x7f

    iput v0, p0, Lcom/htc/widget/HeaderBarImage;->imageAlphaDisable:I

    .line 82
    invoke-direct {p0}, Lcom/htc/widget/HeaderBarImage;->setupMeasurement()V

    .line 83
    invoke-direct {p0}, Lcom/htc/widget/HeaderBarImage;->setupEnvironment()V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrset"

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 88
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    iput v2, p0, Lcom/htc/widget/HeaderBarImage;->imageLabelSize:I

    .line 51
    iput v2, p0, Lcom/htc/widget/HeaderBarImage;->imageFrameSize:I

    .line 52
    iput v2, p0, Lcom/htc/widget/HeaderBarImage;->imageButtonSize:I

    .line 54
    iput v2, p0, Lcom/htc/widget/HeaderBarImage;->imageSelectWidth:I

    .line 55
    iput v2, p0, Lcom/htc/widget/HeaderBarImage;->imageSelectHeight:I

    .line 57
    iput v2, p0, Lcom/htc/widget/HeaderBarImage;->imageLabelUOffset:I

    .line 58
    iput v2, p0, Lcom/htc/widget/HeaderBarImage;->imageFrameLPadding:I

    .line 60
    iput v2, p0, Lcom/htc/widget/HeaderBarImage;->currentMode:I

    .line 62
    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->labelview:Landroid/widget/TextView;

    .line 63
    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->bubbleview:Landroid/widget/TextView;

    .line 64
    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->imageview:Landroid/widget/ImageView;

    .line 65
    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->quickcontact:Lcom/htc/widget/QuickContactBadge;

    .line 68
    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    .line 69
    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->selectedDrawable:Landroid/graphics/drawable/Drawable;

    .line 71
    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->backIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    .line 74
    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->layoutInflater:Landroid/view/LayoutInflater;

    .line 366
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HeaderBarImage;->skipChange:Z

    .line 368
    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->listHeaderView:Landroid/view/View;

    .line 369
    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->listFooterView:Landroid/view/View;

    .line 372
    iput v2, p0, Lcom/htc/widget/HeaderBarImage;->popupMaxWidth:I

    .line 374
    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->clickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 375
    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->clickListenerLong:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 377
    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->clickListenerChd:Landroid/widget/ExpandableListView$OnChildClickListener;

    .line 378
    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->clickListenerGrp:Landroid/widget/ExpandableListView$OnGroupClickListener;

    .line 381
    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    .line 382
    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->popupAdapter:Ljava/lang/ref/WeakReference;

    .line 385
    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    .line 386
    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->popupAdapterExp:Ljava/lang/ref/WeakReference;

    .line 388
    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->dismissListener:Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;

    .line 801
    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->onClickListener:Landroid/view/View$OnClickListener;

    .line 850
    const/16 v0, 0xff

    iput v0, p0, Lcom/htc/widget/HeaderBarImage;->imageAlphaEnable:I

    .line 851
    const/16 v0, 0x7f

    iput v0, p0, Lcom/htc/widget/HeaderBarImage;->imageAlphaDisable:I

    .line 90
    invoke-direct {p0}, Lcom/htc/widget/HeaderBarImage;->setupMeasurement()V

    .line 91
    invoke-direct {p0}, Lcom/htc/widget/HeaderBarImage;->setupEnvironment()V

    .line 92
    return-void
.end method

.method static synthetic access$000(Lcom/htc/widget/HeaderBarImage;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/htc/widget/HeaderBarImage;->imageFrameSize:I

    return v0
.end method

.method static synthetic access$100(Lcom/htc/widget/HeaderBarImage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/htc/widget/HeaderBarImage;->enableMaskBitmap()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/htc/widget/HeaderBarImage;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/htc/widget/HeaderBarImage;->imageSelectWidth:I

    return v0
.end method

.method static synthetic access$300(Lcom/htc/widget/HeaderBarImage;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/htc/widget/HeaderBarImage;->imageSelectHeight:I

    return v0
.end method

.method private cleanPreviousWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 526
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ListPopupBubbleWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 531
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ListPopupBubbleWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 532
    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    .line 536
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 541
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 542
    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    .line 544
    :cond_1
    return-void
.end method

.method private enableMaskBitmap()Z
    .locals 2

    .prologue
    .line 965
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xe

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xf

    if-ne v0, v1, :cond_1

    .line 967
    :cond_0
    const/4 v0, 0x0

    .line 969
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private measureContentWidth(Landroid/widget/ExpandableListAdapter;)I
    .locals 13
    .parameter "adapter"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 769
    if-nez p1, :cond_0

    .line 796
    :goto_0
    return v3

    .line 772
    :cond_0
    const/4 v11, 0x0

    .line 773
    .local v11, maxWidth:I
    const/4 v9, 0x0

    .line 775
    .local v9, itemType:I
    const/4 v10, 0x0

    .line 777
    .local v10, itemView:Landroid/view/View;
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 778
    .local v12, widthMeasureSpec:I
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 780
    .local v8, heightMeasureSpec:I
    const/4 v1, 0x0

    .local v1, loopi:I
    invoke-interface {p1}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v7

    .local v7, groupCount:I
    :goto_1
    if-ge v1, v7, :cond_2

    .line 782
    invoke-interface {p1, v1, v3, v4, v4}, Landroid/widget/ExpandableListAdapter;->getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 783
    invoke-virtual {v10, v12, v8}, Landroid/view/View;->measure(II)V

    .line 785
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 787
    const/4 v2, 0x0

    .local v2, loopj:I
    invoke-interface {p1, v1}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result v6

    .local v6, childCount:I
    :goto_2
    if-ge v2, v6, :cond_1

    move-object v0, p1

    move-object v5, v4

    .line 789
    invoke-interface/range {v0 .. v5}, Landroid/widget/ExpandableListAdapter;->getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 790
    invoke-virtual {v10, v12, v8}, Landroid/view/View;->measure(II)V

    .line 792
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 787
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 780
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v2           #loopj:I
    .end local v6           #childCount:I
    :cond_2
    move v3, v11

    .line 796
    goto :goto_0
.end method

.method private measureContentWidth(Landroid/widget/ListAdapter;)I
    .locals 10
    .parameter "adapter"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 724
    if-nez p1, :cond_1

    move v5, v8

    .line 764
    :cond_0
    :goto_0
    return v5

    .line 727
    :cond_1
    const/4 v5, 0x0

    .line 728
    .local v5, maxWidth:I
    const/4 v2, 0x0

    .line 729
    .local v2, itemType:I
    const/4 v6, 0x0

    .line 731
    .local v6, positionType:I
    const/4 v3, 0x0

    .line 733
    .local v3, itemView:Landroid/view/View;
    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 734
    .local v7, widthMeasureSpec:I
    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 736
    .local v1, heightMeasureSpec:I
    const/4 v4, 0x0

    .local v4, loop:I
    invoke-interface {p1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .local v0, adapterCount:I
    :goto_1
    if-ge v4, v0, :cond_3

    .line 738
    invoke-interface {p1, v4}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v6

    .line 740
    if-eq v6, v2, :cond_2

    .line 742
    move v2, v6

    .line 743
    const/4 v3, 0x0

    .line 746
    :cond_2
    invoke-interface {p1, v4, v9, v9}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 747
    invoke-virtual {v3, v7, v1}, Landroid/view/View;->measure(II)V

    .line 748
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 736
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 752
    :cond_3
    iget-object v8, p0, Lcom/htc/widget/HeaderBarImage;->listHeaderView:Landroid/view/View;

    if-eqz v8, :cond_4

    .line 754
    iget-object v8, p0, Lcom/htc/widget/HeaderBarImage;->listHeaderView:Landroid/view/View;

    invoke-virtual {v8, v7, v1}, Landroid/view/View;->measure(II)V

    .line 755
    iget-object v8, p0, Lcom/htc/widget/HeaderBarImage;->listHeaderView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 758
    :cond_4
    iget-object v8, p0, Lcom/htc/widget/HeaderBarImage;->listFooterView:Landroid/view/View;

    if-eqz v8, :cond_0

    .line 760
    iget-object v8, p0, Lcom/htc/widget/HeaderBarImage;->listFooterView:Landroid/view/View;

    invoke-virtual {v8, v7, v1}, Landroid/view/View;->measure(II)V

    .line 761
    iget-object v8, p0, Lcom/htc/widget/HeaderBarImage;->listFooterView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_0
.end method

.method private setupEnvironment()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 145
    const/4 v0, -0x1

    .line 146
    .local v0, layoutH:I
    iget-object v3, p0, Lcom/htc/widget/HeaderBarImage;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x20d0083

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 148
    .local v1, layoutW:I
    iget-object v3, p0, Lcom/htc/widget/HeaderBarImage;->layoutInflater:Landroid/view/LayoutInflater;

    if-nez v3, :cond_0

    .line 149
    iget-object v3, p0, Lcom/htc/widget/HeaderBarImage;->mContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    iput-object v3, p0, Lcom/htc/widget/HeaderBarImage;->layoutInflater:Landroid/view/LayoutInflater;

    .line 152
    :cond_0
    iget v3, p0, Lcom/htc/widget/HeaderBarImage;->currentMode:I

    packed-switch v3, :pswitch_data_0

    .line 170
    :goto_0
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarImage;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 174
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarImage;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 175
    .local v2, lparams:Landroid/view/ViewGroup$LayoutParams;
    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 176
    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 178
    invoke-virtual {p0, v2}, Lcom/htc/widget/HeaderBarImage;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 183
    .end local v2           #lparams:Landroid/view/ViewGroup$LayoutParams;
    :goto_1
    iget-object v3, p0, Lcom/htc/widget/HeaderBarImage;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_1

    .line 184
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

    .line 187
    :cond_1
    iget-object v3, p0, Lcom/htc/widget/HeaderBarImage;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v3}, Lcom/htc/widget/HeaderBarImage;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 188
    invoke-virtual {p0, v7, v7, v7, v7}, Lcom/htc/widget/HeaderBarImage;->setPadding(IIII)V

    .line 190
    iget v3, p0, Lcom/htc/widget/HeaderBarImage;->popupMaxWidth:I

    if-gez v3, :cond_2

    .line 191
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarImage;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v3, p0, Lcom/htc/widget/HeaderBarImage;->popupMaxWidth:I

    .line 192
    :cond_2
    return-void

    .line 155
    :pswitch_1
    iget v3, p0, Lcom/htc/widget/HeaderBarImage;->imageFrameSize:I

    iget v4, p0, Lcom/htc/widget/HeaderBarImage;->imageFrameLPadding:I

    add-int v1, v3, v4

    .line 156
    const/4 v0, -0x1

    .line 157
    goto :goto_0

    .line 160
    :pswitch_2
    iget v3, p0, Lcom/htc/widget/HeaderBarImage;->imageSelectWidth:I

    iget v4, p0, Lcom/htc/widget/HeaderBarImage;->imageFrameLPadding:I

    add-int v1, v3, v4

    .line 161
    const/4 v0, -0x1

    .line 162
    goto :goto_0

    .line 165
    :pswitch_3
    iget v3, p0, Lcom/htc/widget/HeaderBarImage;->imageFrameSize:I

    iget v4, p0, Lcom/htc/widget/HeaderBarImage;->imageFrameLPadding:I

    add-int v1, v3, v4

    .line 166
    const/4 v0, -0x1

    goto :goto_0

    .line 181
    :cond_3
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v3}, Lcom/htc/widget/HeaderBarImage;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 152
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

    .prologue
    .line 225
    iget-object v4, p0, Lcom/htc/widget/HeaderBarImage;->bubbleview:Landroid/widget/TextView;

    if-nez v4, :cond_0

    .line 227
    iget-object v4, p0, Lcom/htc/widget/HeaderBarImage;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 229
    .local v3, resources:Landroid/content/res/Resources;
    const v4, 0x20d0086

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 230
    .local v1, bubbleSize:I
    const v4, 0x20d00a2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 232
    .local v0, bubbleMargin:I
    iget-object v4, p0, Lcom/htc/widget/HeaderBarImage;->layoutInflater:Landroid/view/LayoutInflater;

    const v5, 0x20900e6

    const/4 v6, 0x0

    invoke-virtual {v4, v5, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/htc/widget/HeaderBarImage;->bubbleview:Landroid/widget/TextView;

    .line 234
    iget-object v4, p0, Lcom/htc/widget/HeaderBarImage;->bubbleview:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage;->mContext:Landroid/content/Context;

    const-string v6, "common_notification_on"

    const v7, 0x208006a

    invoke-static {v5, v6, v7}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 239
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 240
    .local v2, layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v4, 0xb

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 241
    const/16 v4, 0xf

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 242
    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 244
    iget-object v4, p0, Lcom/htc/widget/HeaderBarImage;->bubbleview:Landroid/widget/TextView;

    invoke-virtual {p0, v4, v2}, Lcom/htc/widget/HeaderBarImage;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 246
    .end local v0           #bubbleMargin:I
    .end local v1           #bubbleSize:I
    .end local v2           #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v3           #resources:Landroid/content/res/Resources;
    :cond_0
    return-void
.end method

.method private setupImageButtonMode()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 260
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/htc/widget/HeaderBarImage;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/widget/HeaderBarImage;->imageview:Landroid/widget/ImageView;

    .line 261
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->imageview:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setDuplicateParentStateEnabled(Z)V

    .line 262
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->imageview:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lcom/htc/widget/HeaderBarImage;->imageButtonSize:I

    iget v3, p0, Lcom/htc/widget/HeaderBarImage;->imageButtonSize:I

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 265
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->imageview:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 267
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarImage;->removeAllViews()V

    .line 268
    invoke-virtual {p0, v4}, Lcom/htc/widget/HeaderBarImage;->setClickable(Z)V

    .line 269
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->imageview:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/htc/widget/HeaderBarImage;->addView(Landroid/view/View;)V

    .line 270
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/htc/widget/HeaderBarImage;->setGravity(I)V

    .line 271
    return-void
.end method

.method private setupImageFrameMode()V
    .locals 2

    .prologue
    .line 250
    new-instance v0, Lcom/htc/widget/HeaderBarImage$ImageFrameView;

    iget-object v1, p0, Lcom/htc/widget/HeaderBarImage;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/HeaderBarImage$ImageFrameView;-><init>(Lcom/htc/widget/HeaderBarImage;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/widget/HeaderBarImage;->imageview:Landroid/widget/ImageView;

    .line 252
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarImage;->removeAllViews()V

    .line 253
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->imageview:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/htc/widget/HeaderBarImage;->addView(Landroid/view/View;)V

    .line 254
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HeaderBarImage;->setClickable(Z)V

    .line 255
    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Lcom/htc/widget/HeaderBarImage;->setGravity(I)V

    .line 256
    return-void
.end method

.method private setupImageLabelMode()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 196
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarImage;->removeAllViews()V

    .line 197
    invoke-virtual {p0, v3}, Lcom/htc/widget/HeaderBarImage;->setClickable(Z)V

    .line 200
    iget-object v1, p0, Lcom/htc/widget/HeaderBarImage;->layoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x20900e8

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 202
    const v1, 0x2020262

    invoke-virtual {p0, v1}, Lcom/htc/widget/HeaderBarImage;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->labelview:Landroid/widget/TextView;

    .line 203
    const v1, 0x2020113

    invoke-virtual {p0, v1}, Lcom/htc/widget/HeaderBarImage;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->imageview:Landroid/widget/ImageView;

    .line 205
    iget-object v1, p0, Lcom/htc/widget/HeaderBarImage;->imageview:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setDuplicateParentStateEnabled(Z)V

    .line 206
    iget-object v1, p0, Lcom/htc/widget/HeaderBarImage;->labelview:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setDuplicateParentStateEnabled(Z)V

    .line 209
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarImage;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Lcom/htc/widget/HeaderBarTall;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/HeaderBarImage;->imageview:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 216
    iget-object v1, p0, Lcom/htc/widget/HeaderBarImage;->imageview:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 217
    .local v0, lparams:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v1, p0, Lcom/htc/widget/HeaderBarImage;->imageLabelUOffset:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 218
    iget-object v1, p0, Lcom/htc/widget/HeaderBarImage;->imageview:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 220
    .end local v0           #lparams:Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_0
    return-void
.end method

.method private setupImageSelectMode()V
    .locals 2

    .prologue
    .line 275
    new-instance v0, Lcom/htc/widget/HeaderBarImage$ImageSelectView;

    iget-object v1, p0, Lcom/htc/widget/HeaderBarImage;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/HeaderBarImage$ImageSelectView;-><init>(Lcom/htc/widget/HeaderBarImage;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/widget/HeaderBarImage;->imageview:Landroid/widget/ImageView;

    .line 277
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarImage;->removeAllViews()V

    .line 278
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->imageview:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/htc/widget/HeaderBarImage;->addView(Landroid/view/View;)V

    .line 279
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HeaderBarImage;->setClickable(Z)V

    .line 280
    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Lcom/htc/widget/HeaderBarImage;->setGravity(I)V

    .line 281
    return-void
.end method

.method private setupMeasurement()V
    .locals 2

    .prologue
    .line 120
    iget-object v1, p0, Lcom/htc/widget/HeaderBarImage;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 122
    .local v0, resources:Landroid/content/res/Resources;
    iget v1, p0, Lcom/htc/widget/HeaderBarImage;->imageLabelSize:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/htc/widget/HeaderBarImage;->imageFrameSize:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/htc/widget/HeaderBarImage;->imageButtonSize:I

    if-gez v1, :cond_1

    .line 124
    :cond_0
    const v1, 0x20d008a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HeaderBarImage;->imageLabelSize:I

    .line 125
    const v1, 0x20d008b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HeaderBarImage;->imageFrameSize:I

    .line 126
    const v1, 0x20d008c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HeaderBarImage;->imageButtonSize:I

    .line 129
    :cond_1
    iget v1, p0, Lcom/htc/widget/HeaderBarImage;->imageLabelUOffset:I

    if-ltz v1, :cond_2

    iget v1, p0, Lcom/htc/widget/HeaderBarImage;->imageFrameLPadding:I

    if-gez v1, :cond_3

    .line 131
    :cond_2
    const v1, 0x20d008e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HeaderBarImage;->imageLabelUOffset:I

    .line 132
    const v1, 0x20d0090

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HeaderBarImage;->imageFrameLPadding:I

    .line 135
    :cond_3
    iget v1, p0, Lcom/htc/widget/HeaderBarImage;->imageSelectWidth:I

    if-ltz v1, :cond_4

    iget v1, p0, Lcom/htc/widget/HeaderBarImage;->imageSelectHeight:I

    if-gez v1, :cond_5

    .line 137
    :cond_4
    const v1, 0x20d00a0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HeaderBarImage;->imageSelectWidth:I

    .line 138
    const v1, 0x20d00a1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HeaderBarImage;->imageSelectHeight:I

    .line 140
    :cond_5
    return-void
.end method

.method private setupQuickContactMode()V
    .locals 4

    .prologue
    .line 285
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/HeaderBarImage;->quickcontact:Lcom/htc/widget/QuickContactBadge;

    .line 286
    new-instance v0, Lcom/htc/widget/QuickContactBadge;

    iget-object v1, p0, Lcom/htc/widget/HeaderBarImage;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/htc/widget/QuickContactBadge;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/widget/HeaderBarImage;->quickcontact:Lcom/htc/widget/QuickContactBadge;

    .line 287
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->quickcontact:Lcom/htc/widget/QuickContactBadge;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    iget v2, p0, Lcom/htc/widget/HeaderBarImage;->imageFrameSize:I

    iget v3, p0, Lcom/htc/widget/HeaderBarImage;->imageFrameSize:I

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/QuickContactBadge;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 289
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarImage;->removeAllViews()V

    .line 290
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HeaderBarImage;->setClickable(Z)V

    .line 291
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->quickcontact:Lcom/htc/widget/QuickContactBadge;

    invoke-virtual {p0, v0}, Lcom/htc/widget/HeaderBarImage;->addView(Landroid/view/View;)V

    .line 292
    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Lcom/htc/widget/HeaderBarImage;->setGravity(I)V

    .line 293
    return-void
.end method


# virtual methods
.method public addFooterView(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 480
    iput-object p1, p0, Lcom/htc/widget/HeaderBarImage;->listFooterView:Landroid/view/View;

    .line 481
    return-void
.end method

.method public addHeaderView(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 475
    iput-object p1, p0, Lcom/htc/widget/HeaderBarImage;->listHeaderView:Landroid/view/View;

    .line 476
    return-void
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 459
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarImage;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 462
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ListPopupBubbleWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 463
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ListPopupBubbleWindow;->internalDismiss()V

    .line 466
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 467
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->internalDismiss()V

    .line 471
    :cond_1
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 826
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->draw(Landroid/graphics/Canvas;)V

    .line 828
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->backIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 829
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->backIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 830
    :cond_0
    return-void
.end method

.method public enableBackIndicator(Z)V
    .locals 4
    .parameter "enable"

    .prologue
    const/4 v3, 0x0

    .line 837
    if-eqz p1, :cond_1

    .line 839
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->backIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 841
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarImage;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x20807cd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/HeaderBarImage;->backIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    .line 842
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->backIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/htc/widget/HeaderBarImage;->backIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/htc/widget/HeaderBarImage;->backIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 848
    :cond_0
    :goto_0
    return-void

    .line 847
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/HeaderBarImage;->backIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public enableImageAlpha(Z)V
    .locals 2
    .parameter "alphaEnable"

    .prologue
    .line 855
    iget v0, p0, Lcom/htc/widget/HeaderBarImage;->currentMode:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/htc/widget/HeaderBarImage;->currentMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 856
    :cond_0
    iget-object v1, p0, Lcom/htc/widget/HeaderBarImage;->imageview:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    const/16 v0, 0xff

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 857
    :cond_1
    return-void

    .line 856
    :cond_2
    const/16 v0, 0x7f

    goto :goto_0
.end method

.method public getBubbleCount()I
    .locals 2

    .prologue
    .line 902
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

    .prologue
    .line 907
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

    .prologue
    .line 925
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

    .prologue
    .line 956
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

    .prologue
    .line 485
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

    .prologue
    .line 97
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 98
    invoke-direct {p0}, Lcom/htc/widget/HeaderBarImage;->setupEnvironment()V

    .line 100
    iget v1, p0, Lcom/htc/widget/HeaderBarImage;->currentMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarImage;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Lcom/htc/widget/HeaderBarTall;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/HeaderBarImage;->imageview:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 110
    iget-object v1, p0, Lcom/htc/widget/HeaderBarImage;->imageview:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 111
    .local v0, lparams:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v1, p0, Lcom/htc/widget/HeaderBarImage;->imageLabelUOffset:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 112
    iget-object v1, p0, Lcom/htc/widget/HeaderBarImage;->imageview:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 115
    .end local v0           #lparams:Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 318
    invoke-direct {p0}, Lcom/htc/widget/HeaderBarImage;->cleanPreviousWindow()V

    .line 320
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 321
    return-void
.end method

.method public onDismiss()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 667
    iput-boolean v4, p0, Lcom/htc/widget/HeaderBarImage;->skipChange:Z

    .line 669
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarImage;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 680
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarImage;->getPaddingLeft()I

    move-result v0

    .line 681
    .local v0, paddingLeft:I
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarImage;->getPaddingRight()I

    move-result v1

    .line 684
    .local v1, paddingRight:I
    iget-object v2, p0, Lcom/htc/widget/HeaderBarImage;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Lcom/htc/widget/HeaderBarImage;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 685
    invoke-virtual {p0, v0, v3, v1, v3}, Lcom/htc/widget/HeaderBarImage;->setPadding(IIII)V

    .line 687
    iget v2, p0, Lcom/htc/widget/HeaderBarImage;->currentMode:I

    if-ne v2, v4, :cond_0

    iget-object v2, p0, Lcom/htc/widget/HeaderBarImage;->labelview:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 688
    iget-object v2, p0, Lcom/htc/widget/HeaderBarImage;->labelview:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/htc/widget/HeaderBarImage;->mContext:Landroid/content/Context;

    const v4, 0x20300d8

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 690
    :cond_0
    iget-object v2, p0, Lcom/htc/widget/HeaderBarImage;->dismissListener:Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;

    if-eqz v2, :cond_1

    .line 691
    iget-object v2, p0, Lcom/htc/widget/HeaderBarImage;->dismissListener:Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;

    invoke-interface {v2}, Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;->onDismiss()V

    .line 692
    :cond_1
    return-void
.end method

.method public onGlobalLayout()V
    .locals 1

    .prologue
    .line 696
    iget-boolean v0, p0, Lcom/htc/widget/HeaderBarImage;->skipChange:Z

    if-eqz v0, :cond_1

    .line 714
    :cond_0
    :goto_0
    return-void

    .line 699
    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarImage;->isBubbleWindowShow()Z

    move-result v0

    if-nez v0, :cond_2

    .line 700
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarImage;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    .line 703
    :cond_2
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarImage;->isShown()Z

    move-result v0

    if-nez v0, :cond_3

    .line 704
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarImage;->dismiss()V

    goto :goto_0

    .line 707
    :cond_3
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    if-eqz v0, :cond_4

    .line 708
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ListPopupBubbleWindow;->show()V

    .line 710
    :cond_4
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    if-eqz v0, :cond_0

    .line 711
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->show()V

    goto :goto_0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "view"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 718
    const/4 v0, 0x0

    return v0
.end method

.method public setAdapter(Landroid/widget/ExpandableListAdapter;)V
    .locals 2
    .parameter "adapter"

    .prologue
    const/4 v1, 0x0

    .line 429
    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->popupAdapterExp:Ljava/lang/ref/WeakReference;

    .line 430
    if-eqz p1, :cond_4

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    :goto_0
    iput-object v0, p0, Lcom/htc/widget/HeaderBarImage;->popupAdapterExp:Ljava/lang/ref/WeakReference;

    .line 432
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 433
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 436
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->popupAdapter:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    if-eqz v0, :cond_3

    .line 441
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    if-eqz v0, :cond_2

    .line 443
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ListPopupBubbleWindow;->dismiss()V

    .line 449
    :cond_2
    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    .line 450
    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->popupAdapter:Ljava/lang/ref/WeakReference;

    .line 455
    :cond_3
    return-void

    :cond_4
    move-object v0, v1

    .line 430
    goto :goto_0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2
    .parameter "adapter"

    .prologue
    const/4 v1, 0x0

    .line 398
    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->popupAdapter:Ljava/lang/ref/WeakReference;

    .line 399
    if-eqz p1, :cond_4

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    :goto_0
    iput-object v0, p0, Lcom/htc/widget/HeaderBarImage;->popupAdapter:Ljava/lang/ref/WeakReference;

    .line 401
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 402
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ListPopupBubbleWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 405
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->popupAdapterExp:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    if-eqz v0, :cond_3

    .line 410
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    if-eqz v0, :cond_2

    .line 412
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->dismiss()V

    .line 418
    :cond_2
    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    .line 419
    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->popupAdapterExp:Ljava/lang/ref/WeakReference;

    .line 424
    :cond_3
    return-void

    :cond_4
    move-object v0, v1

    .line 399
    goto :goto_0
.end method

.method public setBubbleCount(I)V
    .locals 1
    .parameter "count"

    .prologue
    .line 885
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HeaderBarImage;->setBubbleText(Ljava/lang/String;)V

    .line 886
    return-void
.end method

.method public setBubbleText(Ljava/lang/String;)V
    .locals 4
    .parameter "string"

    .prologue
    .line 890
    iget v0, p0, Lcom/htc/widget/HeaderBarImage;->currentMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 892
    invoke-direct {p0}, Lcom/htc/widget/HeaderBarImage;->setupImageBubbleView()V

    .line 894
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->bubbleview:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 895
    iget-object v1, p0, Lcom/htc/widget/HeaderBarImage;->bubbleview:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/htc/widget/HeaderBarImage;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x2

    if-le v0, v3, :cond_1

    const v0, 0x20300d5

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 898
    :cond_0
    return-void

    .line 895
    :cond_1
    const v0, 0x20300d7

    goto :goto_0
.end method

.method public setBubbleVisibility(I)V
    .locals 2
    .parameter "visibility"

    .prologue
    .line 876
    iget v0, p0, Lcom/htc/widget/HeaderBarImage;->currentMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 878
    invoke-direct {p0}, Lcom/htc/widget/HeaderBarImage;->setupImageBubbleView()V

    .line 879
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->bubbleview:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 881
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 862
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 864
    iget v0, p0, Lcom/htc/widget/HeaderBarImage;->currentMode:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/htc/widget/HeaderBarImage;->currentMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 866
    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/widget/HeaderBarImage;->setClickable(Z)V

    .line 868
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->labelview:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->labelview:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 869
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->imageview:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->imageview:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 871
    :cond_2
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 931
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->imageview:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 932
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->imageview:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 933
    :cond_0
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "drawable"

    .prologue
    .line 937
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->imageview:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 938
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->imageview:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 939
    :cond_0
    return-void
.end method

.method public setImageMode(I)V
    .locals 2
    .parameter "mode"

    .prologue
    const/4 v1, 0x0

    .line 327
    iget v0, p0, Lcom/htc/widget/HeaderBarImage;->currentMode:I

    if-ne v0, p1, :cond_0

    .line 362
    :goto_0
    return-void

    .line 330
    :cond_0
    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->imageview:Landroid/widget/ImageView;

    .line 331
    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->labelview:Landroid/widget/TextView;

    .line 332
    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->bubbleview:Landroid/widget/TextView;

    .line 334
    iput p1, p0, Lcom/htc/widget/HeaderBarImage;->currentMode:I

    .line 335
    invoke-direct {p0}, Lcom/htc/widget/HeaderBarImage;->setupEnvironment()V

    .line 337
    packed-switch p1, :pswitch_data_0

    .line 361
    :goto_1
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 340
    :pswitch_0
    invoke-direct {p0}, Lcom/htc/widget/HeaderBarImage;->setupImageLabelMode()V

    goto :goto_1

    .line 344
    :pswitch_1
    invoke-direct {p0}, Lcom/htc/widget/HeaderBarImage;->setupImageFrameMode()V

    goto :goto_1

    .line 348
    :pswitch_2
    invoke-direct {p0}, Lcom/htc/widget/HeaderBarImage;->setupImageButtonMode()V

    goto :goto_1

    .line 352
    :pswitch_3
    invoke-direct {p0}, Lcom/htc/widget/HeaderBarImage;->setupImageSelectMode()V

    goto :goto_1

    .line 356
    :pswitch_4
    invoke-direct {p0}, Lcom/htc/widget/HeaderBarImage;->setupQuickContactMode()V

    goto :goto_1

    .line 337
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
    .parameter "resource"

    .prologue
    .line 943
    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->imageview:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 944
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->imageview:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 945
    :cond_0
    return-void
.end method

.method public setLabelText(I)V
    .locals 2
    .parameter "resource"

    .prologue
    .line 919
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->labelview:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/widget/HeaderBarImage;->currentMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 920
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->labelview:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 921
    :cond_0
    return-void
.end method

.method public setLabelText(Ljava/lang/String;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 913
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->labelview:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/widget/HeaderBarImage;->currentMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 914
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->labelview:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 915
    :cond_0
    return-void
.end method

.method public setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 509
    iput-object p1, p0, Lcom/htc/widget/HeaderBarImage;->clickListenerChd:Landroid/widget/ExpandableListView$OnChildClickListener;

    .line 511
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    if-eqz v0, :cond_0

    .line 512
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 513
    :cond_0
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 806
    iput-object p1, p0, Lcom/htc/widget/HeaderBarImage;->onClickListener:Landroid/view/View$OnClickListener;

    .line 808
    iget v0, p0, Lcom/htc/widget/HeaderBarImage;->currentMode:I

    packed-switch v0, :pswitch_data_0

    .line 820
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 821
    :cond_0
    :goto_0
    :pswitch_1
    return-void

    .line 815
    :pswitch_2
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->imageview:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 816
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->imageview:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/htc/widget/HeaderBarImage;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 808
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
    .parameter "listener"

    .prologue
    .line 392
    iput-object p1, p0, Lcom/htc/widget/HeaderBarImage;->dismissListener:Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;

    .line 393
    return-void
.end method

.method public setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 517
    iput-object p1, p0, Lcom/htc/widget/HeaderBarImage;->clickListenerGrp:Landroid/widget/ExpandableListView$OnGroupClickListener;

    .line 519
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    if-eqz v0, :cond_0

    .line 520
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    .line 521
    :cond_0
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 490
    iput-object p1, p0, Lcom/htc/widget/HeaderBarImage;->clickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 492
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    if-eqz v0, :cond_0

    .line 493
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ListPopupBubbleWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 495
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    if-eqz v0, :cond_1

    .line 496
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 497
    :cond_1
    return-void
.end method

.method public setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 501
    iput-object p1, p0, Lcom/htc/widget/HeaderBarImage;->clickListenerLong:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 503
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    if-eqz v0, :cond_0

    .line 504
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ListPopupBubbleWindow;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 505
    :cond_0
    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 1
    .parameter "type"

    .prologue
    .line 949
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->imageview:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 950
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->imageview:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 951
    :cond_0
    return-void
.end method

.method public show()V
    .locals 13

    .prologue
    const v12, 0x208073c

    const/4 v11, 0x2

    const/4 v10, -0x1

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 554
    invoke-direct {p0}, Lcom/htc/widget/HeaderBarImage;->cleanPreviousWindow()V

    .line 556
    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    if-eqz v5, :cond_1

    .line 663
    :cond_0
    :goto_0
    return-void

    .line 562
    :cond_1
    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage;->popupAdapter:Ljava/lang/ref/WeakReference;

    if-eqz v5, :cond_e

    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage;->popupAdapter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/ListAdapter;

    move-object v0, v5

    .line 564
    .local v0, adapter:Landroid/widget/ListAdapter;
    :goto_1
    if-eqz v0, :cond_8

    .line 566
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarImage;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 567
    new-instance v5, Lcom/htc/widget/ListPopupBubbleWindow;

    iget-object v6, p0, Lcom/htc/widget/HeaderBarImage;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/htc/widget/ListPopupBubbleWindow;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/htc/widget/HeaderBarImage;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    .line 572
    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage;->clickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v5, :cond_2

    .line 573
    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    iget-object v6, p0, Lcom/htc/widget/HeaderBarImage;->clickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v5, v6}, Lcom/htc/widget/ListPopupBubbleWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 575
    :cond_2
    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage;->clickListenerLong:Landroid/widget/AdapterView$OnItemLongClickListener;

    if-eqz v5, :cond_3

    .line 576
    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    iget-object v6, p0, Lcom/htc/widget/HeaderBarImage;->clickListenerLong:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {v5, v6}, Lcom/htc/widget/ListPopupBubbleWindow;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 578
    :cond_3
    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage;->listHeaderView:Landroid/view/View;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    iget-object v6, p0, Lcom/htc/widget/HeaderBarImage;->listHeaderView:Landroid/view/View;

    invoke-virtual {v5, v6}, Lcom/htc/widget/ListPopupBubbleWindow;->addHeaderView(Landroid/view/View;)V

    .line 579
    :cond_4
    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage;->listFooterView:Landroid/view/View;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    iget-object v6, p0, Lcom/htc/widget/HeaderBarImage;->listFooterView:Landroid/view/View;

    invoke-virtual {v5, v6}, Lcom/htc/widget/ListPopupBubbleWindow;->addFooterView(Landroid/view/View;)V

    .line 581
    :cond_5
    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v5, p0}, Lcom/htc/widget/ListPopupBubbleWindow;->setOnDismissListener(Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;)V

    .line 582
    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v5, p0}, Lcom/htc/widget/ListPopupBubbleWindow;->setAnchorView(Landroid/view/View;)V

    .line 583
    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v5, v0}, Lcom/htc/widget/ListPopupBubbleWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 584
    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v5, v9}, Lcom/htc/widget/ListPopupBubbleWindow;->setModal(Z)V

    .line 587
    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-direct {p0, v0}, Lcom/htc/widget/HeaderBarImage;->measureContentWidth(Landroid/widget/ListAdapter;)I

    move-result v6

    iget v7, p0, Lcom/htc/widget/HeaderBarImage;->popupMaxWidth:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/htc/widget/ListPopupBubbleWindow;->setContentWidth(I)V

    .line 588
    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v5, v11}, Lcom/htc/widget/ListPopupBubbleWindow;->setInputMethodMode(I)V

    .line 590
    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v5}, Lcom/htc/widget/ListPopupBubbleWindow;->show()V

    .line 591
    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v5}, Lcom/htc/widget/ListPopupBubbleWindow;->getListView()Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 593
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarImage;->getPaddingLeft()I

    move-result v2

    .line 594
    .local v2, paddingLeft:I
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarImage;->getPaddingRight()I

    move-result v3

    .line 597
    .local v3, paddingRight:I
    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage;->selectedDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_6

    .line 598
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

    .line 601
    :cond_6
    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage;->selectedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v5}, Lcom/htc/widget/HeaderBarImage;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 602
    invoke-virtual {p0, v2, v8, v3, v8}, Lcom/htc/widget/HeaderBarImage;->setPadding(IIII)V

    .line 604
    iget v5, p0, Lcom/htc/widget/HeaderBarImage;->currentMode:I

    if-ne v5, v9, :cond_7

    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage;->labelview:Landroid/widget/TextView;

    if-eqz v5, :cond_7

    .line 605
    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage;->labelview:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 607
    :cond_7
    iput-boolean v8, p0, Lcom/htc/widget/HeaderBarImage;->skipChange:Z

    .line 613
    .end local v2           #paddingLeft:I
    .end local v3           #paddingRight:I
    :cond_8
    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage;->popupAdapterExp:Ljava/lang/ref/WeakReference;

    if-eqz v5, :cond_f

    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage;->popupAdapterExp:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/ExpandableListAdapter;

    move-object v1, v5

    .line 615
    .local v1, adapterExp:Landroid/widget/ExpandableListAdapter;
    :goto_2
    if-eqz v1, :cond_0

    .line 619
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarImage;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 620
    new-instance v5, Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    iget-object v6, p0, Lcom/htc/widget/HeaderBarImage;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/htc/widget/HeaderBarImage;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    .line 625
    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage;->clickListenerChd:Landroid/widget/ExpandableListView$OnChildClickListener;

    if-eqz v5, :cond_9

    .line 626
    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    iget-object v6, p0, Lcom/htc/widget/HeaderBarImage;->clickListenerChd:Landroid/widget/ExpandableListView$OnChildClickListener;

    invoke-virtual {v5, v6}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 628
    :cond_9
    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage;->clickListenerGrp:Landroid/widget/ExpandableListView$OnGroupClickListener;

    if-eqz v5, :cond_a

    .line 629
    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    iget-object v6, p0, Lcom/htc/widget/HeaderBarImage;->clickListenerGrp:Landroid/widget/ExpandableListView$OnGroupClickListener;

    invoke-virtual {v5, v6}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    .line 631
    :cond_a
    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage;->clickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v5, :cond_b

    .line 632
    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    iget-object v6, p0, Lcom/htc/widget/HeaderBarImage;->clickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v5, v6}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 634
    :cond_b
    new-instance v4, Lcom/htc/widget/WrapingExpandedListAdapter;

    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, v1}, Lcom/htc/widget/WrapingExpandedListAdapter;-><init>(Landroid/content/Context;Landroid/widget/ExpandableListAdapter;)V

    .line 635
    .local v4, wrapAdapter:Lcom/htc/widget/WrapingExpandedListAdapter;
    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v5, p0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setOnDismissListener(Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;)V

    .line 636
    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v5, v4}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 637
    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v5, p0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setAnchorView(Landroid/view/View;)V

    .line 638
    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v5, v9}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setModal(Z)V

    .line 641
    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-direct {p0, v4}, Lcom/htc/widget/HeaderBarImage;->measureContentWidth(Landroid/widget/ExpandableListAdapter;)I

    move-result v6

    iget v7, p0, Lcom/htc/widget/HeaderBarImage;->popupMaxWidth:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setContentWidth(I)V

    .line 642
    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v5, v11}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setInputMethodMode(I)V

    .line 644
    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v5}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->show()V

    .line 645
    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v5}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->getExpandableListView()Landroid/widget/ExpandableListView;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/widget/ExpandableListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 647
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarImage;->getPaddingLeft()I

    move-result v2

    .line 648
    .restart local v2       #paddingLeft:I
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarImage;->getPaddingRight()I

    move-result v3

    .line 651
    .restart local v3       #paddingRight:I
    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage;->selectedDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_c

    .line 652
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

    .line 655
    :cond_c
    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage;->selectedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v5}, Lcom/htc/widget/HeaderBarImage;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 656
    invoke-virtual {p0, v2, v8, v3, v8}, Lcom/htc/widget/HeaderBarImage;->setPadding(IIII)V

    .line 658
    iget v5, p0, Lcom/htc/widget/HeaderBarImage;->currentMode:I

    if-ne v5, v9, :cond_d

    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage;->labelview:Landroid/widget/TextView;

    if-eqz v5, :cond_d

    .line 659
    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage;->labelview:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 661
    :cond_d
    iput-boolean v8, p0, Lcom/htc/widget/HeaderBarImage;->skipChange:Z

    goto/16 :goto_0

    .line 562
    .end local v0           #adapter:Landroid/widget/ListAdapter;
    .end local v1           #adapterExp:Landroid/widget/ExpandableListAdapter;
    .end local v2           #paddingLeft:I
    .end local v3           #paddingRight:I
    .end local v4           #wrapAdapter:Lcom/htc/widget/WrapingExpandedListAdapter;
    :cond_e
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 613
    .restart local v0       #adapter:Landroid/widget/ListAdapter;
    :cond_f
    const/4 v1, 0x0

    goto/16 :goto_2
.end method
