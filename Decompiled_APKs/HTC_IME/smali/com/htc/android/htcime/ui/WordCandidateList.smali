.class public Lcom/htc/android/htcime/ui/WordCandidateList;
.super Landroid/widget/LinearLayout;
.source "WordCandidateList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/htcime/ui/WordCandidateList$ScrollChangeListener;
    }
.end annotation


# static fields
.field public static final DEFAULT_WCL_HEIGHT:I = 0x1c

.field public static final DEFAULT_WCL_LINE:I = 0x1

.field private static final MARK_DEBUG:Z


# instance fields
.field private arrowDownDraw:Landroid/graphics/drawable/Drawable;

.field private arrowUpDraw:Landroid/graphics/drawable/Drawable;

.field private crossCloseDraw:Landroid/graphics/drawable/Drawable;

.field private isNoSIP:Z

.field private listener:Lcom/htc/android/htcime/ui/WordCandidateList$ScrollChangeListener;

.field private mDummyView:Landroid/view/View;

.field private mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

.field private mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

.field private mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

.field private mRatio:F

.field private mScroller:Landroid/widget/ScrollView;

.field private mVibratorPattern:[J

.field private mWclPageDown:Landroid/view/View;

.field private mWclPageUp:Landroid/view/View;

.field private mWclPageUpDown:Landroid/widget/LinearLayout;

.field private mWclSlide:Landroid/widget/LinearLayout;

.field private mWclSwitch:Landroid/widget/ImageView;

.field private mWcvArea:Lcom/htc/android/htcime/ui/SimpleWCL;

.field private mWordCandsList:Lcom/htc/android/htcime/ui/WordCandsListEX2;

.field private mbWclSpreaded:Z

.field private mbWclSwitchClose:Z

.field private moveByToush:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 121
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/android/htcime/ui/WordCandidateList;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 122
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 125
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    iput-object v0, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->mWordCandsList:Lcom/htc/android/htcime/ui/WordCandsListEX2;

    .line 66
    iput-object v0, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->mWcvArea:Lcom/htc/android/htcime/ui/SimpleWCL;

    .line 69
    iput-object v0, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->mWclPageUpDown:Landroid/widget/LinearLayout;

    .line 70
    iput-object v0, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->mWclPageUp:Landroid/view/View;

    .line 71
    iput-object v0, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->mWclPageDown:Landroid/view/View;

    .line 72
    iput-object v0, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->mWclSwitch:Landroid/widget/ImageView;

    .line 73
    iput-boolean v1, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->mbWclSwitchClose:Z

    .line 75
    iput-boolean v1, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->mbWclSpreaded:Z

    .line 76
    iput-object v0, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->mWclSlide:Landroid/widget/LinearLayout;

    .line 77
    iput-object v0, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->mScroller:Landroid/widget/ScrollView;

    .line 78
    iput-object v0, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->mDummyView:Landroid/view/View;

    .line 79
    iput-object v0, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->arrowDownDraw:Landroid/graphics/drawable/Drawable;

    .line 80
    iput-object v0, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->arrowUpDraw:Landroid/graphics/drawable/Drawable;

    .line 81
    iput-object v0, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->crossCloseDraw:Landroid/graphics/drawable/Drawable;

    .line 86
    iput-object v0, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    .line 87
    iput-object v0, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    .line 88
    iput-object v0, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    .line 90
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->mRatio:F

    .line 91
    new-instance v0, Lcom/htc/android/htcime/ui/WordCandidateList$ScrollChangeListener;

    invoke-direct {v0, p0}, Lcom/htc/android/htcime/ui/WordCandidateList$ScrollChangeListener;-><init>(Lcom/htc/android/htcime/ui/WordCandidateList;)V

    iput-object v0, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->listener:Lcom/htc/android/htcime/ui/WordCandidateList$ScrollChangeListener;

    .line 93
    iput-boolean v1, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->isNoSIP:Z

    .line 95
    const/4 v0, 0x2

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->mVibratorPattern:[J

    .line 455
    iput-boolean v1, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->moveByToush:Z

    .line 129
    return-void

    .line 95
    nop

    :array_0
    .array-data 0x8
        0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$000(Lcom/htc/android/htcime/ui/WordCandidateList;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->mbWclSpreaded:Z

    return v0
.end method

.method static synthetic access$100(Lcom/htc/android/htcime/ui/WordCandidateList;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->moveByToush:Z

    return v0
.end method

.method static synthetic access$200(Lcom/htc/android/htcime/ui/WordCandidateList;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->mWclPageUpDown:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/android/htcime/ui/WordCandidateList;)Landroid/widget/ScrollView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->mScroller:Landroid/widget/ScrollView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/android/htcime/ui/WordCandidateList;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->mRatio:F

    return v0
.end method

.method static synthetic access$500(Lcom/htc/android/htcime/ui/WordCandidateList;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->mbWclSwitchClose:Z

    return v0
.end method

.method static synthetic access$600(Lcom/htc/android/htcime/ui/WordCandidateList;)Lcom/htc/android/htcime/HTCIMMView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/android/htcime/ui/WordCandidateList;)Lcom/htc/android/htcime/HTCIMEService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    return-object v0
.end method


# virtual methods
.method public findLineSelection(Z)I
    .locals 1
    .parameter "toNextLine"

    .prologue
    .line 426
    iget-object v0, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->mWordCandsList:Lcom/htc/android/htcime/ui/WordCandsListEX2;

    invoke-virtual {v0, p1}, Lcom/htc/android/htcime/ui/WordCandsListEX2;->findLineSelection(Z)I

    move-result v0

    return v0
.end method

.method public init(Lcom/htc/android/htcime/HTCIMEService;Lcom/htc/android/htcime/HTCIMMView;)V
    .locals 2
    .parameter "htcIMM"
    .parameter "htcIMMView"

    .prologue
    .line 348
    iput-object p1, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    .line 349
    invoke-virtual {p1}, Lcom/htc/android/htcime/HTCIMEService;->getShareData()Lcom/htc/android/htcime/HTCIMMData;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    .line 350
    iput-object p2, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    .line 352
    iget-object v0, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->mWcvArea:Lcom/htc/android/htcime/ui/SimpleWCL;

    iget-object v1, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/ui/SimpleWCL;->init(Lcom/htc/android/htcime/HTCIMEService;)V

    .line 355
    iget-object v0, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->mWordCandsList:Lcom/htc/android/htcime/ui/WordCandsListEX2;

    invoke-virtual {v0, p1, p2}, Lcom/htc/android/htcime/ui/WordCandsListEX2;->init(Lcom/htc/android/htcime/HTCIMEService;Lcom/htc/android/htcime/HTCIMMView;)V

    .line 356
    iget-object v0, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->mWordCandsList:Lcom/htc/android/htcime/ui/WordCandsListEX2;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/ui/WordCandsListEX2;->setLineCount(I)V

    .line 358
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/WordCandidateList;->updateWclViewStatus()V

    .line 359
    return-void
.end method

.method public final isWclSpreaded()Z
    .locals 1

    .prologue
    .line 344
    iget-boolean v0, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->mbWclSpreaded:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 445
    iget-object v1, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->mWordCandsList:Lcom/htc/android/htcime/ui/WordCandsListEX2;

    invoke-virtual {v1}, Lcom/htc/android/htcime/ui/WordCandsListEX2;->getSelectionIndex()I

    move-result v0

    .line 448
    .local v0, selectIndx:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 453
    :goto_0
    return-void

    .line 451
    :cond_0
    iget-object v1, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->mWordCandsList:Lcom/htc/android/htcime/ui/WordCandsListEX2;

    iget-object v2, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->mWordCandsList:Lcom/htc/android/htcime/ui/WordCandsListEX2;

    invoke-virtual {v2}, Lcom/htc/android/htcime/ui/WordCandsListEX2;->getSelectionIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/android/htcime/ui/WordCandsListEX2;->sendWordToEditText(I)V

    .line 452
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ui/WordCandidateList;->setWclSpread(Z)Z

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 137
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 139
    const v0, 0x7f0e0026

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ui/WordCandidateList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/android/htcime/ui/WordCandsListEX2;

    iput-object v0, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->mWordCandsList:Lcom/htc/android/htcime/ui/WordCandsListEX2;

    .line 140
    iget-object v0, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->mWordCandsList:Lcom/htc/android/htcime/ui/WordCandsListEX2;

    invoke-virtual {v0, v5, v5}, Lcom/htc/android/htcime/ui/WordCandsListEX2;->measure(II)V

    .line 142
    iget-object v0, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->mWordCandsList:Lcom/htc/android/htcime/ui/WordCandsListEX2;

    invoke-virtual {v0, v5}, Lcom/htc/android/htcime/ui/WordCandsListEX2;->setHorizontalFadingEdgeEnabled(Z)V

    .line 143
    iget-object v0, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->mWordCandsList:Lcom/htc/android/htcime/ui/WordCandsListEX2;

    invoke-virtual {v0, v5}, Lcom/htc/android/htcime/ui/WordCandsListEX2;->setHorizontalScrollBarEnabled(Z)V

    .line 144
    iget-object v0, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->mWordCandsList:Lcom/htc/android/htcime/ui/WordCandsListEX2;

    invoke-virtual {v0, v5}, Lcom/htc/android/htcime/ui/WordCandsListEX2;->setVerticalFadingEdgeEnabled(Z)V

    .line 145
    iget-object v0, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->mWordCandsList:Lcom/htc/android/htcime/ui/WordCandsListEX2;

    invoke-virtual {v0, v5}, Lcom/htc/android/htcime/ui/WordCandsListEX2;->setVerticalScrollBarEnabled(Z)V

    .line 146
    iget-object v0, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->mWordCandsList:Lcom/htc/android/htcime/ui/WordCandsListEX2;

    invoke-virtual {v0, v7}, Lcom/htc/android/htcime/ui/WordCandsListEX2;->setScrollOrientation(I)V

    .line 147
    iget-object v0, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->mWordCandsList:Lcom/htc/android/htcime/ui/WordCandsListEX2;

    iget-object v1, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->listener:Lcom/htc/android/htcime/ui/WordCandidateList$ScrollChangeListener;

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/ui/WordCandsListEX2;->setOnScrollChangedListener(Lcom/htc/android/htcime/ezsip/common/GeneralScrollView$onScrollChangedListener;)V

    .line 148
    iget-object v0, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->mWordCandsList:Lcom/htc/android/htcime/ui/WordCandsListEX2;

    invoke-virtual {v0, p0}, Lcom/htc/android/htcime/ui/WordCandsListEX2;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 149
    iget-object v0, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->mWordCandsList:Lcom/htc/android/htcime/ui/WordCandsListEX2;

    invoke-virtual {v0, p0}, Lcom/htc/android/htcime/ui/WordCandsListEX2;->setEndScrollEventListerner(Ljava/util/Observer;)V

    .line 151
    const v0, 0x7f0e0028

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ui/WordCandidateList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/android/htcime/ui/SimpleWCL;

    iput-object v0, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->mWcvArea:Lcom/htc/android/htcime/ui/SimpleWCL;

    .line 153
    iget-object v0, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->mWcvArea:Lcom/htc/android/htcime/ui/SimpleWCL;

    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v2, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v2}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    new-instance v2, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v3, Landroid/graphics/drawable/shapes/RoundRectShape;

    const/16 v4, 0x8

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    invoke-direct {v3, v4, v8, v8}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/htcime/ui/SimpleWCL;->setDrawableSet(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 157
    iget-object v0, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->mWcvArea:Lcom/htc/android/htcime/ui/SimpleWCL;

    const/high16 v1, -0x100

    invoke-virtual {v0, v6, v6, v1}, Lcom/htc/android/htcime/ui/SimpleWCL;->setColorSet(III)V

    .line 159
    iget-object v0, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->mWcvArea:Lcom/htc/android/htcime/ui/SimpleWCL;

    invoke-virtual {v0, p0}, Lcom/htc/android/htcime/ui/SimpleWCL;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    iget-object v0, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->mWcvArea:Lcom/htc/android/htcime/ui/SimpleWCL;

    invoke-virtual {v0, p0}, Lcom/htc/android/htcime/ui/SimpleWCL;->setEndDrawListenner(Ljava/util/Observer;)V

    .line 163
    const v0, 0x7f0e0071

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ui/WordCandidateList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->mWclSlide:Landroid/widget/LinearLayout;

    .line 166
    iget-object v0, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->mWclSlide:Landroid/widget/LinearLayout;

    const v1, 0x7f0e0073

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->mWclPageUpDown:Landroid/widget/LinearLayout;

    .line 167
    iget-object v0, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->mWclSlide:Landroid/widget/LinearLayout;

    const v1, 0x7f0e0074

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->mWclPageUp:Landroid/view/View;

    .line 168
    iget-object v0, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->mWclSlide:Landroid/widget/LinearLayout;

    const v1, 0x7f0e0075

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->mWclPageDown:Landroid/view/View;

    .line 169
    iget-object v0, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->mWclSlide:Landroid/widget/LinearLayout;

    const v1, 0x7f0e0076

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->mScroller:Landroid/widget/ScrollView;

    .line 170
    iget-object v0, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->mScroller:Landroid/widget/ScrollView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setOverScrollMode(I)V

    .line 171
    iget-object v0, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->mWclSlide:Landroid/widget/LinearLayout;

    const v1, 0x7f0e0077

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->mDummyView:Landroid/view/View;

    .line 173
    iget-object v0, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->mWclSlide:Landroid/widget/LinearLayout;

    const v1, 0x7f0e0072

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->mWclSwitch:Landroid/widget/ImageView;

    .line 174
    iget-object v0, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->mWclSwitch:Landroid/widget/ImageView;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 175
    iget-object v0, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->mWclSwitch:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 176
    iget-object v0, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->mWclSwitch:Landroid/widget/ImageView;

    new-instance v1, Lcom/htc/android/htcime/ui/WordCandidateList$1;

    invoke-direct {v1, p0}, Lcom/htc/android/htcime/ui/WordCandidateList$1;-><init>(Lcom/htc/android/htcime/ui/WordCandidateList;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/WordCandidateList;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020140

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->arrowDownDraw:Landroid/graphics/drawable/Drawable;

    .line 196
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/WordCandidateList;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02013f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->arrowUpDraw:Landroid/graphics/drawable/Drawable;

    .line 197
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/WordCandidateList;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080038

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->crossCloseDraw:Landroid/graphics/drawable/Drawable;

    .line 198
    invoke-virtual {p0, v7}, Lcom/htc/android/htcime/ui/WordCandidateList;->setWclSwitchState(Z)V

    .line 199
    return-void

    .line 153
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x40t 0x41t
        0x0t 0x0t 0x40t 0x41t
        0x0t 0x0t 0x40t 0x41t
        0x0t 0x0t 0x40t 0x41t
        0x0t 0x0t 0x40t 0x41t
        0x0t 0x0t 0x40t 0x41t
        0x0t 0x0t 0x40t 0x41t
        0x0t 0x0t 0x40t 0x41t
    .end array-data
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    .line 457
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 459
    .local v0, action:I
    iget-object v1, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->mWclSwitch:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    .line 461
    iget-object v1, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v1}, Lcom/htc/android/htcime/HTCIMEService;->getVibrator()Landroid/os/Vibrator;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/android/htcime/util/VibrationUtil;->playVibrationEffectMS(Landroid/os/Vibrator;)V

    .line 482
    :cond_0
    :goto_0
    return v2

    .line 465
    :cond_1
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 474
    :pswitch_0
    iput-boolean v2, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->moveByToush:Z

    goto :goto_0

    .line 468
    :pswitch_1
    iget-boolean v1, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->moveByToush:Z

    if-nez v1, :cond_0

    .line 469
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->moveByToush:Z

    goto :goto_0

    .line 465
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setSelection(I)V
    .locals 1
    .parameter "indx"

    .prologue
    .line 422
    iget-object v0, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->mWordCandsList:Lcom/htc/android/htcime/ui/WordCandsListEX2;

    invoke-virtual {v0, p1}, Lcom/htc/android/htcime/ui/WordCandsListEX2;->setSelection(I)V

    .line 423
    return-void
.end method

.method public setWclSpread(Z)Z
    .locals 5
    .parameter "changeToFullWCL"

    .prologue
    const/4 v2, 0x1

    .line 242
    iget-object v3, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->mWordCandsList:Lcom/htc/android/htcime/ui/WordCandsListEX2;

    invoke-virtual {v3}, Lcom/htc/android/htcime/ui/WordCandsListEX2;->getTotalLineCount()I

    move-result v3

    if-gt v3, v2, :cond_0

    if-eqz p1, :cond_0

    .line 243
    const/4 p1, 0x0

    .line 245
    :cond_0
    iget-boolean v3, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->mbWclSpreaded:Z

    if-ne v3, p1, :cond_1

    .line 340
    :goto_0
    return p1

    .line 248
    :cond_1
    iput-boolean p1, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->mbWclSpreaded:Z

    .line 250
    iget-object v3, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v3, v3, Lcom/htc/android/htcime/HTCIMMData;->mOrientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    move v1, v2

    .line 251
    .local v1, isLandscape:Z
    :goto_1
    if-eqz p1, :cond_6

    iget-boolean v3, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->isNoSIP:Z

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v3}, Lcom/htc/android/htcime/HTCIMMView;->getHeight()I

    move-result v0

    .line 260
    .local v0, height:I
    :goto_2
    if-eqz p1, :cond_8

    .line 266
    iget-object v3, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->mWordCandsList:Lcom/htc/android/htcime/ui/WordCandsListEX2;

    iget-boolean v2, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->isNoSIP:Z

    if-nez v2, :cond_7

    if-nez v1, :cond_7

    const/4 v2, 0x6

    :goto_3
    invoke-virtual {v3, v2}, Lcom/htc/android/htcime/ui/WordCandsListEX2;->setLineCount(I)V

    .line 274
    iget-object v2, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->mWordCandsList:Lcom/htc/android/htcime/ui/WordCandsListEX2;

    invoke-virtual {v2}, Lcom/htc/android/htcime/ui/WordCandsListEX2;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 277
    iget-boolean v2, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->isNoSIP:Z

    if-eqz v2, :cond_2

    .line 299
    :cond_2
    :goto_4
    iget-object v2, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->mWordCandsList:Lcom/htc/android/htcime/ui/WordCandsListEX2;

    iget-object v3, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->mWordCandsList:Lcom/htc/android/htcime/ui/WordCandsListEX2;

    invoke-virtual {v3}, Lcom/htc/android/htcime/ui/WordCandsListEX2;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3, v0}, Lcom/htc/android/htcime/ui/WordCandsListEX2;->updateWCView(II)V

    .line 303
    iget-object v2, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->mWcvArea:Lcom/htc/android/htcime/ui/SimpleWCL;

    invoke-virtual {v2}, Lcom/htc/android/htcime/ui/SimpleWCL;->preDraw()V

    .line 304
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/WordCandidateList;->updateWclViewStatus()V

    .line 310
    if-eqz p1, :cond_3

    .line 311
    const/high16 v2, 0x3f80

    iget-object v3, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->mWclSwitch:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    sub-int v3, v0, v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    int-to-float v3, v0

    div-float/2addr v2, v3

    iput v2, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->mRatio:F

    .line 312
    iget-object v2, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->mDummyView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->mWcvArea:Lcom/htc/android/htcime/ui/SimpleWCL;

    invoke-virtual {v3}, Lcom/htc/android/htcime/ui/SimpleWCL;->getTotalRowNum()I

    move-result v3

    iget-object v4, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->mWcvArea:Lcom/htc/android/htcime/ui/SimpleWCL;

    invoke-virtual {v4}, Lcom/htc/android/htcime/ui/SimpleWCL;->getLineHeight()I

    move-result v4

    mul-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->mRatio:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 324
    :cond_3
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/WordCandidateList;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 250
    .end local v0           #height:I
    .end local v1           #isLandscape:Z
    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    .line 251
    .restart local v1       #isLandscape:Z
    :cond_5
    const/16 v0, 0x7f

    goto :goto_2

    :cond_6
    const/16 v0, 0x1c

    goto :goto_2

    .line 266
    .restart local v0       #height:I
    :cond_7
    const/4 v2, 0x4

    goto :goto_3

    .line 288
    :cond_8
    iget-object v3, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->mWordCandsList:Lcom/htc/android/htcime/ui/WordCandsListEX2;

    invoke-virtual {v3, v2}, Lcom/htc/android/htcime/ui/WordCandsListEX2;->setLineCount(I)V

    .line 289
    iget-object v2, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->mWordCandsList:Lcom/htc/android/htcime/ui/WordCandsListEX2;

    invoke-virtual {v2}, Lcom/htc/android/htcime/ui/WordCandsListEX2;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const/4 v3, -0x2

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_4
.end method

.method public setWclSwitchState(Z)V
    .locals 2
    .parameter "changeToClose"

    .prologue
    .line 434
    iget-boolean v0, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->mbWclSwitchClose:Z

    if-ne v0, p1, :cond_0

    .line 442
    :goto_0
    return-void

    .line 435
    :cond_0
    iput-boolean p1, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->mbWclSwitchClose:Z

    .line 438
    iget-object v0, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->mWclSwitch:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 439
    iget-object v0, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->mWclSwitch:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 440
    :cond_1
    iget-object v1, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->mWclSwitch:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->crossCloseDraw:Landroid/graphics/drawable/Drawable;

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 441
    iget-object v0, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->mWclSwitch:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->postInvalidate()V

    goto :goto_0

    .line 440
    :cond_2
    iget-boolean v0, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->isNoSIP:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->arrowUpDraw:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->arrowDownDraw:Landroid/graphics/drawable/Drawable;

    goto :goto_1
.end method

.method public showWCL(I)V
    .locals 5
    .parameter "idx"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 391
    const/4 v0, 0x3

    if-lt p1, v0, :cond_1

    .line 419
    :cond_0
    :goto_0
    return-void

    .line 399
    :cond_1
    iget-object v0, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->mWcvArea:Lcom/htc/android/htcime/ui/SimpleWCL;

    iget-object v3, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->mWordCandsList:Lcom/htc/android/htcime/ui/WordCandsListEX2;

    invoke-virtual {v3}, Lcom/htc/android/htcime/ui/WordCandsListEX2;->getWidth()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/htc/android/htcime/ui/SimpleWCL;->setViewWidth(I)V

    .line 401
    iget-object v0, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->mWcvArea:Lcom/htc/android/htcime/ui/SimpleWCL;

    const/16 v3, 0x1c

    invoke-virtual {v0, v3}, Lcom/htc/android/htcime/ui/SimpleWCL;->setViewHeight(I)V

    .line 403
    iget-object v0, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v0, Lcom/htc/android/htcime/HTCIMMData;->mbUseHWkeyboard:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    invoke-interface {v0}, Lcom/htc/android/htcime/Intf/IHTCSIP;->getSIPData()Lcom/htc/android/htcime/Intf/HTCSIPData;

    move-result-object v0

    iget v0, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipHeight:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v0}, Lcom/htc/android/htcime/HTCIMMView;->getHeight()I

    move-result v0

    if-nez v0, :cond_4

    :cond_2
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->isNoSIP:Z

    .line 406
    iget-object v0, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mWCLText:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5

    .line 407
    iget-object v0, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->mWordCandsList:Lcom/htc/android/htcime/ui/WordCandsListEX2;

    const-string v3, "-"

    iget-object v4, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v4, v4, Lcom/htc/android/htcime/HTCIMMData;->mWCLIdx:[I

    aget v4, v4, p1

    invoke-virtual {v0, v3, v4}, Lcom/htc/android/htcime/ui/WordCandsListEX2;->sendCandsStringToWCL(Ljava/lang/String;I)Z

    .line 408
    iget-boolean v0, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->mbWclSpreaded:Z

    if-eqz v0, :cond_3

    .line 409
    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/ui/WordCandidateList;->setWclSpread(Z)Z

    .line 410
    :cond_3
    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ui/WordCandidateList;->setWclSwitchState(Z)V

    goto :goto_0

    :cond_4
    move v0, v1

    .line 403
    goto :goto_1

    .line 411
    :cond_5
    iget-boolean v0, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->mbWclSwitchClose:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mWCLText:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->mWordCandsList:Lcom/htc/android/htcime/ui/WordCandsListEX2;

    const-string v3, ""

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Lcom/htc/android/htcime/ui/WordCandsListEX2;->sendCandsStringToWCL(Ljava/lang/String;I)Z

    .line 413
    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ui/WordCandidateList;->setWclSpread(Z)Z

    .line 414
    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/ui/WordCandidateList;->setWclSwitchState(Z)V

    goto :goto_0
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 2
    .parameter "o"
    .parameter "arg"

    .prologue
    .line 487
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 490
    iget-boolean v0, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->mbWclSpreaded:Z

    if-nez v0, :cond_0

    .line 491
    iget-object v1, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->mWclSwitch:Landroid/widget/ImageView;

    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 492
    iget-object v0, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->mWclSwitch:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->postInvalidate()V

    .line 495
    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v0, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    invoke-interface {v0}, Lcom/htc/android/htcime/Intf/IHTCIM;->getInputMethodData()Lcom/htc/android/htcime/Intf/HTCIMData;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->mWcvArea:Lcom/htc/android/htcime/ui/SimpleWCL;

    invoke-virtual {v1}, Lcom/htc/android/htcime/ui/SimpleWCL;->getCandsSize()I

    move-result v1

    iput v1, v0, Lcom/htc/android/htcime/Intf/HTCIMData;->imSelectIdxLimit:I

    .line 500
    :goto_1
    return-void

    .line 491
    :cond_1
    const/4 v0, 0x4

    goto :goto_0

    .line 497
    .restart local p2
    :cond_2
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/WordCandidateList;->updateWclViewStatus()V

    .line 498
    iget-object v0, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->mWordCandsList:Lcom/htc/android/htcime/ui/WordCandsListEX2;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/WordCandsListEX2;->postInvalidate()V

    goto :goto_1
.end method

.method public updateWclViewStatus()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 204
    iget-boolean v3, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->isNoSIP:Z

    if-eqz v3, :cond_2

    iget-object v2, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->arrowUpDraw:Landroid/graphics/drawable/Drawable;

    .line 205
    .local v2, switchExpand:Landroid/graphics/drawable/Drawable;
    :goto_0
    iget-boolean v3, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->isNoSIP:Z

    if-eqz v3, :cond_3

    iget-object v1, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->arrowDownDraw:Landroid/graphics/drawable/Drawable;

    .line 206
    .local v1, switchCollapse:Landroid/graphics/drawable/Drawable;
    :goto_1
    const/4 v0, 0x0

    .line 212
    .local v0, isShowUpDown:Z
    iget-boolean v3, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->mbWclSpreaded:Z

    if-eqz v3, :cond_6

    .line 213
    iget-boolean v3, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->mbWclSwitchClose:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->mWclSwitch:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->isNoSIP:Z

    if-eqz v3, :cond_1

    .line 214
    :cond_0
    iget-object v3, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->mWclSwitch:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 215
    iget-object v3, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->mWclSwitch:Landroid/widget/ImageView;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 217
    :cond_1
    iget-object v3, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->mWclPageUpDown:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 218
    iget-object v3, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->mScroller:Landroid/widget/ScrollView;

    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 219
    iget-object v3, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->mWordCandsList:Lcom/htc/android/htcime/ui/WordCandsListEX2;

    invoke-virtual {v3, v7}, Lcom/htc/android/htcime/ui/WordCandsListEX2;->hasNextPrevPage(Z)Z

    move-result v0

    .line 220
    iget-object v6, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->mWclPageDown:Landroid/view/View;

    if-eqz v0, :cond_4

    move v3, v4

    :goto_2
    invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V

    .line 221
    iget-object v3, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->mWordCandsList:Lcom/htc/android/htcime/ui/WordCandsListEX2;

    invoke-virtual {v3, v4}, Lcom/htc/android/htcime/ui/WordCandsListEX2;->hasNextPrevPage(Z)Z

    move-result v0

    .line 222
    iget-object v3, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->mWclPageUp:Landroid/view/View;

    if-eqz v0, :cond_5

    :goto_3
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 231
    :goto_4
    return-void

    .line 204
    .end local v0           #isShowUpDown:Z
    .end local v1           #switchCollapse:Landroid/graphics/drawable/Drawable;
    .end local v2           #switchExpand:Landroid/graphics/drawable/Drawable;
    :cond_2
    iget-object v2, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->arrowDownDraw:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 205
    .restart local v2       #switchExpand:Landroid/graphics/drawable/Drawable;
    :cond_3
    iget-object v1, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->arrowUpDraw:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .restart local v0       #isShowUpDown:Z
    .restart local v1       #switchCollapse:Landroid/graphics/drawable/Drawable;
    :cond_4
    move v3, v5

    .line 220
    goto :goto_2

    :cond_5
    move v4, v5

    .line 222
    goto :goto_3

    .line 224
    :cond_6
    iget-boolean v3, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->mbWclSwitchClose:Z

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->mWclSwitch:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_7

    iget-boolean v3, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->isNoSIP:Z

    if-eqz v3, :cond_8

    .line 225
    :cond_7
    iget-object v3, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->mWclSwitch:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 226
    iget-object v3, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->mWclSwitch:Landroid/widget/ImageView;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 228
    :cond_8
    iget-object v3, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->mWclPageUpDown:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 229
    iget-object v3, p0, Lcom/htc/android/htcime/ui/WordCandidateList;->mDummyView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_4
.end method
