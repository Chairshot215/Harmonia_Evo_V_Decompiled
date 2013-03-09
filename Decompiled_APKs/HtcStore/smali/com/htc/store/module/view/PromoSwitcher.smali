.class public Lcom/htc/store/module/view/PromoSwitcher;
.super Landroid/widget/FrameLayout;
.source "PromoSwitcher.java"


# static fields
.field private static final MAJOR_MOVE:I = 0x3c

.field private static final MESSAGE_CHANGE_PROMO:I = 0xc7b0

.field private static final MESSAGE_REMOVE_PROMO:I = 0xc7b1

.field private static final PERIOD_CHANGE_PROMO:J = 0x1770L

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAnimDuration:I

.field private mAnimationEndListener:Landroid/view/animation/Animation$AnimationListener;

.field private mCanChangePromo:Z

.field private mCurrentPromo:I

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mHasNext:Z

.field private mHasPrevious:Z

.field private mInLeft:Landroid/view/animation/AlphaAnimation;

.field private mInRight:Landroid/view/animation/AlphaAnimation;

.field private mIndexOfPromoItems:I

.field private mNextPromo:I

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOutLeft:Landroid/view/animation/AlphaAnimation;

.field private mOutRight:Landroid/view/animation/AlphaAnimation;

.field private mPreviousPromo:I

.field private mPromoHandler:Landroid/os/Handler;

.field private mPromoImageHeightForRetrieval:I

.field private mPromoImageWidthForRetrieval:I

.field private mPromoItemOnlineIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPromoItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/store/module/vo/PromoItem;",
            ">;"
        }
    .end annotation
.end field

.field private mPromos:[Lcom/htc/store/module/view/Promo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/htc/store/module/view/PromoSwitcher;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/store/module/view/PromoSwitcher;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 56
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    iput-boolean v3, p0, Lcom/htc/store/module/view/PromoSwitcher;->mHasPrevious:Z

    .line 34
    iput-boolean v3, p0, Lcom/htc/store/module/view/PromoSwitcher;->mHasNext:Z

    .line 35
    iput-boolean v4, p0, Lcom/htc/store/module/view/PromoSwitcher;->mCanChangePromo:Z

    .line 39
    iput v3, p0, Lcom/htc/store/module/view/PromoSwitcher;->mIndexOfPromoItems:I

    .line 41
    const/16 v1, 0x258

    iput v1, p0, Lcom/htc/store/module/view/PromoSwitcher;->mAnimDuration:I

    .line 508
    new-instance v1, Lcom/htc/store/module/view/PromoSwitcher$2;

    invoke-direct {v1, p0}, Lcom/htc/store/module/view/PromoSwitcher$2;-><init>(Lcom/htc/store/module/view/PromoSwitcher;)V

    iput-object v1, p0, Lcom/htc/store/module/view/PromoSwitcher;->mAnimationEndListener:Landroid/view/animation/Animation$AnimationListener;

    .line 535
    new-instance v1, Lcom/htc/store/module/view/PromoSwitcher$3;

    invoke-direct {v1, p0}, Lcom/htc/store/module/view/PromoSwitcher$3;-><init>(Lcom/htc/store/module/view/PromoSwitcher;)V

    iput-object v1, p0, Lcom/htc/store/module/view/PromoSwitcher;->mPromoHandler:Landroid/os/Handler;

    .line 57
    const/4 v1, 0x3

    new-array v1, v1, [Lcom/htc/store/module/view/Promo;

    new-instance v2, Lcom/htc/store/module/view/Promo;

    invoke-direct {v2, p1}, Lcom/htc/store/module/view/Promo;-><init>(Landroid/content/Context;)V

    aput-object v2, v1, v3

    new-instance v2, Lcom/htc/store/module/view/Promo;

    invoke-direct {v2, p1}, Lcom/htc/store/module/view/Promo;-><init>(Landroid/content/Context;)V

    aput-object v2, v1, v4

    new-instance v2, Lcom/htc/store/module/view/Promo;

    invoke-direct {v2, p1}, Lcom/htc/store/module/view/Promo;-><init>(Landroid/content/Context;)V

    aput-object v2, v1, v5

    iput-object v1, p0, Lcom/htc/store/module/view/PromoSwitcher;->mPromos:[Lcom/htc/store/module/view/Promo;

    .line 62
    iget-object v1, p0, Lcom/htc/store/module/view/PromoSwitcher;->mPromos:[Lcom/htc/store/module/view/Promo;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lcom/htc/store/module/view/Promo;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/htc/store/module/view/PromoSwitcher;->addView(Landroid/view/View;)V

    .line 63
    iget-object v1, p0, Lcom/htc/store/module/view/PromoSwitcher;->mPromos:[Lcom/htc/store/module/view/Promo;

    aget-object v1, v1, v4

    invoke-virtual {v1}, Lcom/htc/store/module/view/Promo;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/htc/store/module/view/PromoSwitcher;->addView(Landroid/view/View;)V

    .line 64
    iget-object v1, p0, Lcom/htc/store/module/view/PromoSwitcher;->mPromos:[Lcom/htc/store/module/view/Promo;

    aget-object v1, v1, v5

    invoke-virtual {v1}, Lcom/htc/store/module/view/Promo;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/htc/store/module/view/PromoSwitcher;->addView(Landroid/view/View;)V

    .line 65
    iput v3, p0, Lcom/htc/store/module/view/PromoSwitcher;->mCurrentPromo:I

    .line 66
    iput v4, p0, Lcom/htc/store/module/view/PromoSwitcher;->mPreviousPromo:I

    .line 67
    iput v5, p0, Lcom/htc/store/module/view/PromoSwitcher;->mNextPromo:I

    .line 69
    new-instance v1, Landroid/view/GestureDetector;

    new-instance v2, Lcom/htc/store/module/view/PromoSwitcher$1;

    invoke-direct {v2, p0}, Lcom/htc/store/module/view/PromoSwitcher$1;-><init>(Lcom/htc/store/module/view/PromoSwitcher;)V

    invoke-direct {v1, p1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/htc/store/module/view/PromoSwitcher;->mGestureDetector:Landroid/view/GestureDetector;

    .line 105
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 108
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f080004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/htc/store/module/view/PromoSwitcher;->mPromoImageWidthForRetrieval:I

    .line 109
    const v1, 0x7f080005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/htc/store/module/view/PromoSwitcher;->mPromoImageHeightForRetrieval:I

    .line 110
    invoke-direct {p0}, Lcom/htc/store/module/view/PromoSwitcher;->updateAnim()V

    .line 111
    return-void
.end method

.method static synthetic access$000(Lcom/htc/store/module/view/PromoSwitcher;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/htc/store/module/view/PromoSwitcher;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/htc/store/module/view/PromoSwitcher;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/store/module/view/PromoSwitcher;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/htc/store/module/view/PromoSwitcher;->mPromoItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/store/module/view/PromoSwitcher;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/htc/store/module/view/PromoSwitcher;->mPromoHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/store/module/view/PromoSwitcher;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/htc/store/module/view/PromoSwitcher;->mCanChangePromo:Z

    return v0
.end method

.method static synthetic access$402(Lcom/htc/store/module/view/PromoSwitcher;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/htc/store/module/view/PromoSwitcher;->mCanChangePromo:Z

    return p1
.end method

.method static synthetic access$502(Lcom/htc/store/module/view/PromoSwitcher;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput p1, p0, Lcom/htc/store/module/view/PromoSwitcher;->mIndexOfPromoItems:I

    return p1
.end method

.method static synthetic access$600(Lcom/htc/store/module/view/PromoSwitcher;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/htc/store/module/view/PromoSwitcher;->mPromoItemOnlineIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/store/module/view/PromoSwitcher;)Lcom/htc/store/module/view/Promo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/htc/store/module/view/PromoSwitcher;->getNextPromo()Lcom/htc/store/module/view/Promo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$802(Lcom/htc/store/module/view/PromoSwitcher;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/htc/store/module/view/PromoSwitcher;->mHasPrevious:Z

    return p1
.end method

.method static synthetic access$902(Lcom/htc/store/module/view/PromoSwitcher;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/htc/store/module/view/PromoSwitcher;->mHasNext:Z

    return p1
.end method

.method private getCurrentPromo()Lcom/htc/store/module/view/Promo;
    .locals 2

    .prologue
    .line 497
    iget-object v0, p0, Lcom/htc/store/module/view/PromoSwitcher;->mPromos:[Lcom/htc/store/module/view/Promo;

    iget v1, p0, Lcom/htc/store/module/view/PromoSwitcher;->mCurrentPromo:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method private getNextPromo()Lcom/htc/store/module/view/Promo;
    .locals 2

    .prologue
    .line 505
    iget-object v0, p0, Lcom/htc/store/module/view/PromoSwitcher;->mPromos:[Lcom/htc/store/module/view/Promo;

    iget v1, p0, Lcom/htc/store/module/view/PromoSwitcher;->mNextPromo:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method private getPreviousPromo()Lcom/htc/store/module/view/Promo;
    .locals 2

    .prologue
    .line 501
    iget-object v0, p0, Lcom/htc/store/module/view/PromoSwitcher;->mPromos:[Lcom/htc/store/module/view/Promo;

    iget v1, p0, Lcom/htc/store/module/view/PromoSwitcher;->mPreviousPromo:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method private setNextPromoView()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 478
    iget v0, p0, Lcom/htc/store/module/view/PromoSwitcher;->mIndexOfPromoItems:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/store/module/view/PromoSwitcher;->mIndexOfPromoItems:I

    .line 479
    iget-object v0, p0, Lcom/htc/store/module/view/PromoSwitcher;->mPromoItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 480
    .local v9, promoSize:I
    iget v0, p0, Lcom/htc/store/module/view/PromoSwitcher;->mIndexOfPromoItems:I

    if-lt v0, v9, :cond_0

    .line 481
    iput v10, p0, Lcom/htc/store/module/view/PromoSwitcher;->mIndexOfPromoItems:I

    .line 483
    :cond_0
    iget v0, p0, Lcom/htc/store/module/view/PromoSwitcher;->mIndexOfPromoItems:I

    add-int/lit8 v8, v0, 0x1

    .line 484
    .local v8, nextIndex:I
    if-lt v8, v9, :cond_1

    .line 485
    const/4 v8, 0x0

    .line 487
    :cond_1
    if-lez v9, :cond_2

    .line 488
    iget-object v0, p0, Lcom/htc/store/module/view/PromoSwitcher;->mPromoItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/store/module/vo/PromoItem;

    .line 489
    .local v7, item:Lcom/htc/store/module/vo/PromoItem;
    invoke-virtual {p0}, Lcom/htc/store/module/view/PromoSwitcher;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v7}, Lcom/htc/store/module/vo/PromoItem;->getCategoryId()J

    move-result-wide v1

    invoke-virtual {v7}, Lcom/htc/store/module/vo/PromoItem;->getOnlineItemId()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/htc/store/module/view/PromoSwitcher;->mPromoImageWidthForRetrieval:I

    iget v5, p0, Lcom/htc/store/module/view/PromoSwitcher;->mPromoImageHeightForRetrieval:I

    invoke-static/range {v0 .. v5}, Lcom/htc/store/util/ImageUtils;->getPromoPreview(Landroid/content/Context;JLjava/lang/String;II)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 491
    .local v6, drawable:Landroid/graphics/drawable/Drawable;
    invoke-direct {p0}, Lcom/htc/store/module/view/PromoSwitcher;->getNextPromo()Lcom/htc/store/module/view/Promo;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/htc/store/module/view/Promo;->setPromoImage(Landroid/graphics/drawable/Drawable;)V

    .line 493
    .end local v6           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v7           #item:Lcom/htc/store/module/vo/PromoItem;
    :cond_2
    sget-object v0, Lcom/htc/store/module/view/PromoSwitcher;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "mIndexOfPromoItems: "

    aput-object v2, v1, v10

    const/4 v2, 0x1

    iget v3, p0, Lcom/htc/store/module/view/PromoSwitcher;->mIndexOfPromoItems:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 494
    return-void
.end method

.method private setPreviousPromoView()V
    .locals 10

    .prologue
    .line 459
    iget v0, p0, Lcom/htc/store/module/view/PromoSwitcher;->mIndexOfPromoItems:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/store/module/view/PromoSwitcher;->mIndexOfPromoItems:I

    .line 460
    iget-object v0, p0, Lcom/htc/store/module/view/PromoSwitcher;->mPromoItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 461
    .local v9, promoSize:I
    iget v0, p0, Lcom/htc/store/module/view/PromoSwitcher;->mIndexOfPromoItems:I

    if-gez v0, :cond_0

    .line 462
    add-int/lit8 v0, v9, -0x1

    iput v0, p0, Lcom/htc/store/module/view/PromoSwitcher;->mIndexOfPromoItems:I

    .line 464
    :cond_0
    iget v0, p0, Lcom/htc/store/module/view/PromoSwitcher;->mIndexOfPromoItems:I

    add-int/lit8 v8, v0, -0x1

    .line 465
    .local v8, previousIndex:I
    if-gez v8, :cond_1

    .line 466
    add-int/lit8 v8, v9, -0x1

    .line 468
    :cond_1
    if-lez v9, :cond_2

    .line 469
    iget-object v0, p0, Lcom/htc/store/module/view/PromoSwitcher;->mPromoItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/store/module/vo/PromoItem;

    .line 470
    .local v7, item:Lcom/htc/store/module/vo/PromoItem;
    invoke-virtual {p0}, Lcom/htc/store/module/view/PromoSwitcher;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v7}, Lcom/htc/store/module/vo/PromoItem;->getCategoryId()J

    move-result-wide v1

    invoke-virtual {v7}, Lcom/htc/store/module/vo/PromoItem;->getOnlineItemId()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/htc/store/module/view/PromoSwitcher;->mPromoImageWidthForRetrieval:I

    iget v5, p0, Lcom/htc/store/module/view/PromoSwitcher;->mPromoImageHeightForRetrieval:I

    invoke-static/range {v0 .. v5}, Lcom/htc/store/util/ImageUtils;->getPromoPreview(Landroid/content/Context;JLjava/lang/String;II)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 472
    .local v6, drawable:Landroid/graphics/drawable/Drawable;
    invoke-direct {p0}, Lcom/htc/store/module/view/PromoSwitcher;->getPreviousPromo()Lcom/htc/store/module/view/Promo;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/htc/store/module/view/Promo;->setPromoImage(Landroid/graphics/drawable/Drawable;)V

    .line 474
    .end local v6           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v7           #item:Lcom/htc/store/module/vo/PromoItem;
    :cond_2
    sget-object v0, Lcom/htc/store/module/view/PromoSwitcher;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "mIndexOfPromoItems: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/htc/store/module/view/PromoSwitcher;->mIndexOfPromoItems:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 475
    return-void
.end method

.method private updateAnim()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    .line 444
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/htc/store/module/view/PromoSwitcher;->mInLeft:Landroid/view/animation/AlphaAnimation;

    .line 445
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v2, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/htc/store/module/view/PromoSwitcher;->mOutLeft:Landroid/view/animation/AlphaAnimation;

    .line 446
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/htc/store/module/view/PromoSwitcher;->mInRight:Landroid/view/animation/AlphaAnimation;

    .line 447
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v2, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/htc/store/module/view/PromoSwitcher;->mOutRight:Landroid/view/animation/AlphaAnimation;

    .line 449
    iget-object v0, p0, Lcom/htc/store/module/view/PromoSwitcher;->mInLeft:Landroid/view/animation/AlphaAnimation;

    iget v1, p0, Lcom/htc/store/module/view/PromoSwitcher;->mAnimDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 450
    iget-object v0, p0, Lcom/htc/store/module/view/PromoSwitcher;->mOutLeft:Landroid/view/animation/AlphaAnimation;

    iget v1, p0, Lcom/htc/store/module/view/PromoSwitcher;->mAnimDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 451
    iget-object v0, p0, Lcom/htc/store/module/view/PromoSwitcher;->mInRight:Landroid/view/animation/AlphaAnimation;

    iget v1, p0, Lcom/htc/store/module/view/PromoSwitcher;->mAnimDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 452
    iget-object v0, p0, Lcom/htc/store/module/view/PromoSwitcher;->mOutRight:Landroid/view/animation/AlphaAnimation;

    iget v1, p0, Lcom/htc/store/module/view/PromoSwitcher;->mAnimDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 454
    iget-object v0, p0, Lcom/htc/store/module/view/PromoSwitcher;->mInLeft:Landroid/view/animation/AlphaAnimation;

    iget-object v1, p0, Lcom/htc/store/module/view/PromoSwitcher;->mAnimationEndListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 455
    iget-object v0, p0, Lcom/htc/store/module/view/PromoSwitcher;->mInRight:Landroid/view/animation/AlphaAnimation;

    iget-object v1, p0, Lcom/htc/store/module/view/PromoSwitcher;->mAnimationEndListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 456
    return-void
.end method


# virtual methods
.method public declared-synchronized addPromoItem(Lcom/htc/store/module/vo/PromoItem;)V
    .locals 10
    .parameter "promoItem"

    .prologue
    const/4 v4, 0x1

    .line 272
    monitor-enter p0

    :try_start_0
    sget-object v1, Lcom/htc/store/module/view/PromoSwitcher;->TAG:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v3, "addPromoItem: "

    aput-object v3, v2, v0

    const/4 v3, 0x1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/htc/store/module/vo/PromoItem;->getOnlineItemId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 273
    iget-object v0, p0, Lcom/htc/store/module/view/PromoSwitcher;->mPromoItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/store/module/view/PromoSwitcher;->mPromoItemOnlineIds:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 274
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/store/module/view/PromoSwitcher;->mPromoItems:Ljava/util/ArrayList;

    .line 275
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/store/module/view/PromoSwitcher;->mPromoItemOnlineIds:Ljava/util/ArrayList;

    .line 277
    :cond_1
    iget-object v0, p0, Lcom/htc/store/module/view/PromoSwitcher;->mPromoItemOnlineIds:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/htc/store/module/vo/PromoItem;->getOnlineItemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 278
    iget-object v0, p0, Lcom/htc/store/module/view/PromoSwitcher;->mPromoItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    iget-object v0, p0, Lcom/htc/store/module/view/PromoSwitcher;->mPromoItemOnlineIds:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/htc/store/module/vo/PromoItem;->getOnlineItemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    iget-object v0, p0, Lcom/htc/store/module/view/PromoSwitcher;->mPromoItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 281
    .local v8, size:I
    if-ne v8, v4, :cond_3

    .line 282
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/store/module/view/PromoSwitcher;->mIndexOfPromoItems:I

    .line 283
    iget-object v0, p0, Lcom/htc/store/module/view/PromoSwitcher;->mPromoItems:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/store/module/vo/PromoItem;

    .line 284
    .local v7, item:Lcom/htc/store/module/vo/PromoItem;
    invoke-direct {p0}, Lcom/htc/store/module/view/PromoSwitcher;->getNextPromo()Lcom/htc/store/module/view/Promo;

    move-result-object v9

    invoke-virtual {p0}, Lcom/htc/store/module/view/PromoSwitcher;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v7}, Lcom/htc/store/module/vo/PromoItem;->getCategoryId()J

    move-result-wide v1

    invoke-virtual {v7}, Lcom/htc/store/module/vo/PromoItem;->getOnlineItemId()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/htc/store/module/view/PromoSwitcher;->mPromoImageWidthForRetrieval:I

    iget v5, p0, Lcom/htc/store/module/view/PromoSwitcher;->mPromoImageHeightForRetrieval:I

    invoke-static/range {v0 .. v5}, Lcom/htc/store/util/ImageUtils;->getPromoPreview(Landroid/content/Context;JLjava/lang/String;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/htc/store/module/view/Promo;->setPromoImage(Landroid/graphics/drawable/Drawable;)V

    .line 286
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/store/module/view/PromoSwitcher;->mHasNext:Z

    .line 287
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/store/module/view/PromoSwitcher;->moveNext(Z)V

    .line 288
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/store/module/view/PromoSwitcher;->mHasPrevious:Z

    .line 289
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/store/module/view/PromoSwitcher;->mHasNext:Z

    .line 308
    .end local v7           #item:Lcom/htc/store/module/vo/PromoItem;
    .end local v8           #size:I
    :goto_1
    sget-object v0, Lcom/htc/store/module/view/PromoSwitcher;->TAG:Ljava/lang/String;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "mHasPrevious : "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/htc/store/module/view/PromoSwitcher;->mHasPrevious:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, ", mHasNext : "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-boolean v3, p0, Lcom/htc/store/module/view/PromoSwitcher;->mHasNext:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 309
    monitor-exit p0

    return-void

    .line 272
    :cond_2
    :try_start_1
    const-string v0, "null"

    goto/16 :goto_0

    .line 291
    .restart local v8       #size:I
    :cond_3
    iget v0, p0, Lcom/htc/store/module/view/PromoSwitcher;->mIndexOfPromoItems:I

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/htc/store/module/view/PromoSwitcher;->mIndexOfPromoItems:I

    add-int/lit8 v1, v8, -0x2

    if-ne v0, v1, :cond_6

    .line 292
    :cond_4
    iget-object v0, p0, Lcom/htc/store/module/view/PromoSwitcher;->mPromoItems:Ljava/util/ArrayList;

    add-int/lit8 v1, v8, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/store/module/vo/PromoItem;

    .line 293
    .restart local v7       #item:Lcom/htc/store/module/vo/PromoItem;
    invoke-virtual {p0}, Lcom/htc/store/module/view/PromoSwitcher;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v7}, Lcom/htc/store/module/vo/PromoItem;->getCategoryId()J

    move-result-wide v1

    invoke-virtual {v7}, Lcom/htc/store/module/vo/PromoItem;->getOnlineItemId()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/htc/store/module/view/PromoSwitcher;->mPromoImageWidthForRetrieval:I

    iget v5, p0, Lcom/htc/store/module/view/PromoSwitcher;->mPromoImageHeightForRetrieval:I

    invoke-static/range {v0 .. v5}, Lcom/htc/store/util/ImageUtils;->getPromoPreview(Landroid/content/Context;JLjava/lang/String;II)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 295
    .local v6, drawable:Landroid/graphics/drawable/Drawable;
    iget v0, p0, Lcom/htc/store/module/view/PromoSwitcher;->mIndexOfPromoItems:I

    if-nez v0, :cond_5

    .line 296
    invoke-direct {p0}, Lcom/htc/store/module/view/PromoSwitcher;->getPreviousPromo()Lcom/htc/store/module/view/Promo;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/htc/store/module/view/Promo;->setPromoImage(Landroid/graphics/drawable/Drawable;)V

    .line 298
    :cond_5
    iget v0, p0, Lcom/htc/store/module/view/PromoSwitcher;->mIndexOfPromoItems:I

    add-int/lit8 v1, v8, -0x2

    if-ne v0, v1, :cond_6

    .line 299
    invoke-direct {p0}, Lcom/htc/store/module/view/PromoSwitcher;->getNextPromo()Lcom/htc/store/module/view/Promo;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/htc/store/module/view/Promo;->setPromoImage(Landroid/graphics/drawable/Drawable;)V

    .line 302
    .end local v6           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v7           #item:Lcom/htc/store/module/vo/PromoItem;
    :cond_6
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/store/module/view/PromoSwitcher;->mHasPrevious:Z

    .line 303
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/store/module/view/PromoSwitcher;->mHasNext:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 272
    .end local v8           #size:I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 306
    :cond_7
    :try_start_2
    sget-object v0, Lcom/htc/store/module/view/PromoSwitcher;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "skip adding "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/htc/store/module/vo/PromoItem;->getOnlineItemId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1
.end method

.method public declared-synchronized addPromoItem(Lcom/htc/store/module/vo/PromoItem;Landroid/graphics/drawable/Drawable;)V
    .locals 6
    .parameter "promoItem"
    .parameter "promoDrawable"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 237
    monitor-enter p0

    :try_start_0
    sget-object v2, Lcom/htc/store/module/view/PromoSwitcher;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v4, "addPromoItem: "

    aput-object v4, v3, v1

    const/4 v4, 0x1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/htc/store/module/vo/PromoItem;->getOnlineItemId()Ljava/lang/String;

    move-result-object v1

    :goto_0
    aput-object v1, v3, v4

    invoke-static {v2, v3}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 238
    iget-object v1, p0, Lcom/htc/store/module/view/PromoSwitcher;->mPromoItems:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/store/module/view/PromoSwitcher;->mPromoItemOnlineIds:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 239
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/htc/store/module/view/PromoSwitcher;->mPromoItems:Ljava/util/ArrayList;

    .line 240
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/htc/store/module/view/PromoSwitcher;->mPromoItemOnlineIds:Ljava/util/ArrayList;

    .line 242
    :cond_1
    iget-object v1, p0, Lcom/htc/store/module/view/PromoSwitcher;->mPromoItemOnlineIds:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/htc/store/module/vo/PromoItem;->getOnlineItemId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 243
    iget-object v1, p0, Lcom/htc/store/module/view/PromoSwitcher;->mPromoItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    iget-object v1, p0, Lcom/htc/store/module/view/PromoSwitcher;->mPromoItemOnlineIds:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/htc/store/module/vo/PromoItem;->getOnlineItemId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    iget-object v1, p0, Lcom/htc/store/module/view/PromoSwitcher;->mPromoItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 246
    .local v0, size:I
    if-ne v0, v5, :cond_3

    .line 247
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/store/module/view/PromoSwitcher;->mIndexOfPromoItems:I

    .line 248
    invoke-direct {p0}, Lcom/htc/store/module/view/PromoSwitcher;->getNextPromo()Lcom/htc/store/module/view/Promo;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/htc/store/module/view/Promo;->setPromoImage(Landroid/graphics/drawable/Drawable;)V

    .line 249
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/store/module/view/PromoSwitcher;->mHasNext:Z

    .line 250
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/htc/store/module/view/PromoSwitcher;->moveNext(Z)V

    .line 251
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/store/module/view/PromoSwitcher;->mHasPrevious:Z

    .line 252
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/store/module/view/PromoSwitcher;->mHasNext:Z

    .line 268
    .end local v0           #size:I
    :goto_1
    sget-object v1, Lcom/htc/store/module/view/PromoSwitcher;->TAG:Ljava/lang/String;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "mHasPrevious : "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-boolean v4, p0, Lcom/htc/store/module/view/PromoSwitcher;->mHasPrevious:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, ", mHasNext : "

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-boolean v4, p0, Lcom/htc/store/module/view/PromoSwitcher;->mHasNext:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 269
    monitor-exit p0

    return-void

    .line 237
    :cond_2
    :try_start_1
    const-string v1, "null"

    goto :goto_0

    .line 254
    .restart local v0       #size:I
    :cond_3
    iget v1, p0, Lcom/htc/store/module/view/PromoSwitcher;->mIndexOfPromoItems:I

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/htc/store/module/view/PromoSwitcher;->mIndexOfPromoItems:I

    add-int/lit8 v2, v0, -0x2

    if-ne v1, v2, :cond_6

    .line 255
    :cond_4
    iget v1, p0, Lcom/htc/store/module/view/PromoSwitcher;->mIndexOfPromoItems:I

    if-nez v1, :cond_5

    .line 256
    invoke-direct {p0}, Lcom/htc/store/module/view/PromoSwitcher;->getPreviousPromo()Lcom/htc/store/module/view/Promo;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/htc/store/module/view/Promo;->setPromoImage(Landroid/graphics/drawable/Drawable;)V

    .line 258
    :cond_5
    iget v1, p0, Lcom/htc/store/module/view/PromoSwitcher;->mIndexOfPromoItems:I

    add-int/lit8 v2, v0, -0x2

    if-ne v1, v2, :cond_6

    .line 259
    invoke-direct {p0}, Lcom/htc/store/module/view/PromoSwitcher;->getNextPromo()Lcom/htc/store/module/view/Promo;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/htc/store/module/view/Promo;->setPromoImage(Landroid/graphics/drawable/Drawable;)V

    .line 262
    :cond_6
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/store/module/view/PromoSwitcher;->mHasPrevious:Z

    .line 263
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/store/module/view/PromoSwitcher;->mHasNext:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 237
    .end local v0           #size:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 266
    :cond_7
    :try_start_2
    sget-object v1, Lcom/htc/store/module/view/PromoSwitcher;->TAG:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "skip adding "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/htc/store/module/vo/PromoItem;->getOnlineItemId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized addPromoItems(Ljava/util/ArrayList;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/store/module/vo/PromoItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 226
    .local p1, promoItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/PromoItem;>;"
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 227
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/store/module/vo/PromoItem;

    .line 228
    .local v1, item:Lcom/htc/store/module/vo/PromoItem;
    invoke-virtual {p0, v1}, Lcom/htc/store/module/view/PromoSwitcher;->addPromoItem(Lcom/htc/store/module/vo/PromoItem;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 226
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #item:Lcom/htc/store/module/vo/PromoItem;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 231
    :cond_0
    :try_start_1
    sget-object v2, Lcom/htc/store/module/view/PromoSwitcher;->TAG:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "promoItems is empty."

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/htc/store/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 233
    :cond_1
    monitor-exit p0

    return-void
.end method

.method public destroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 141
    invoke-virtual {p0, v2}, Lcom/htc/store/module/view/PromoSwitcher;->setOnPromoClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    iget-object v0, p0, Lcom/htc/store/module/view/PromoSwitcher;->mPromoItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/htc/store/module/view/PromoSwitcher;->mPromoItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/htc/store/module/view/PromoSwitcher;->mPromoItemOnlineIds:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/htc/store/module/view/PromoSwitcher;->mPromoItemOnlineIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 148
    :cond_1
    iget-object v0, p0, Lcom/htc/store/module/view/PromoSwitcher;->mInLeft:Landroid/view/animation/AlphaAnimation;

    if-eqz v0, :cond_2

    .line 149
    iget-object v0, p0, Lcom/htc/store/module/view/PromoSwitcher;->mInLeft:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v2}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 151
    :cond_2
    iget-object v0, p0, Lcom/htc/store/module/view/PromoSwitcher;->mInRight:Landroid/view/animation/AlphaAnimation;

    if-eqz v0, :cond_3

    .line 152
    iget-object v0, p0, Lcom/htc/store/module/view/PromoSwitcher;->mInRight:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v2}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 154
    :cond_3
    iget-object v0, p0, Lcom/htc/store/module/view/PromoSwitcher;->mPromoHandler:Landroid/os/Handler;

    const v1, 0xc7b0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 155
    iput-object v2, p0, Lcom/htc/store/module/view/PromoSwitcher;->mPromos:[Lcom/htc/store/module/view/Promo;

    .line 156
    return-void
.end method

.method public getCurrentPromoitem()Lcom/htc/store/module/vo/PromoItem;
    .locals 5

    .prologue
    .line 159
    const/4 v0, 0x0

    .line 160
    .local v0, item:Lcom/htc/store/module/vo/PromoItem;
    iget-object v1, p0, Lcom/htc/store/module/view/PromoSwitcher;->mPromoItems:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/store/module/view/PromoSwitcher;->mPromoItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 161
    iget-object v1, p0, Lcom/htc/store/module/view/PromoSwitcher;->mPromoItems:Ljava/util/ArrayList;

    iget v2, p0, Lcom/htc/store/module/view/PromoSwitcher;->mIndexOfPromoItems:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #item:Lcom/htc/store/module/vo/PromoItem;
    check-cast v0, Lcom/htc/store/module/vo/PromoItem;

    .line 162
    .restart local v0       #item:Lcom/htc/store/module/vo/PromoItem;
    sget-object v1, Lcom/htc/store/module/view/PromoSwitcher;->TAG:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "current selected item index is "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/htc/store/module/view/PromoSwitcher;->mIndexOfPromoItems:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 164
    :cond_0
    return-object v0
.end method

.method public getOnPromoClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/htc/store/module/view/PromoSwitcher;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public getPromoItemSize()I
    .locals 2

    .prologue
    .line 169
    iget-object v1, p0, Lcom/htc/store/module/view/PromoSwitcher;->mPromoItems:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 170
    const/4 v0, 0x0

    .line 174
    .local v0, result:I
    :goto_0
    return v0

    .line 172
    .end local v0           #result:I
    :cond_0
    iget-object v1, p0, Lcom/htc/store/module/view/PromoSwitcher;->mPromoItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .restart local v0       #result:I
    goto :goto_0
.end method

.method public getPromoItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/store/module/vo/PromoItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 178
    iget-object v0, p0, Lcom/htc/store/module/view/PromoSwitcher;->mPromoItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public moveNext(Z)V
    .locals 1
    .parameter "animated"

    .prologue
    .line 410
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/store/module/view/PromoSwitcher;->moveNext(ZZ)V

    .line 411
    return-void
.end method

.method public moveNext(ZZ)V
    .locals 10
    .parameter "animated"
    .parameter "force"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 414
    sget-object v4, Lcom/htc/store/module/view/PromoSwitcher;->TAG:Ljava/lang/String;

    new-array v5, v8, [Ljava/lang/Object;

    const-string v6, "moveNext"

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 415
    const/4 v1, 0x1

    .line 416
    .local v1, doMove:Z
    if-nez p2, :cond_0

    if-eqz p1, :cond_0

    .line 417
    iget-boolean v4, p0, Lcom/htc/store/module/view/PromoSwitcher;->mCanChangePromo:Z

    if-eqz v4, :cond_3

    .line 418
    iput-boolean v7, p0, Lcom/htc/store/module/view/PromoSwitcher;->mCanChangePromo:Z

    .line 423
    :cond_0
    :goto_0
    sget-object v4, Lcom/htc/store/module/view/PromoSwitcher;->TAG:Ljava/lang/String;

    new-array v5, v9, [Ljava/lang/Object;

    const-string v6, "mCanChangePromo: "

    aput-object v6, v5, v7

    iget-boolean v6, p0, Lcom/htc/store/module/view/PromoSwitcher;->mCanChangePromo:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 424
    sget-object v4, Lcom/htc/store/module/view/PromoSwitcher;->TAG:Ljava/lang/String;

    new-array v5, v9, [Ljava/lang/Object;

    const-string v6, "doMove: "

    aput-object v6, v5, v7

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 425
    iget-boolean v4, p0, Lcom/htc/store/module/view/PromoSwitcher;->mHasNext:Z

    if-eqz v4, :cond_2

    if-eqz v1, :cond_2

    .line 426
    iget-object v4, p0, Lcom/htc/store/module/view/PromoSwitcher;->mPromos:[Lcom/htc/store/module/view/Promo;

    iget v5, p0, Lcom/htc/store/module/view/PromoSwitcher;->mNextPromo:I

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/htc/store/module/view/Promo;->getView()Landroid/view/View;

    move-result-object v2

    .line 427
    .local v2, next:Landroid/view/View;
    iget-object v4, p0, Lcom/htc/store/module/view/PromoSwitcher;->mPromos:[Lcom/htc/store/module/view/Promo;

    iget v5, p0, Lcom/htc/store/module/view/PromoSwitcher;->mCurrentPromo:I

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/htc/store/module/view/Promo;->getView()Landroid/view/View;

    move-result-object v0

    .line 428
    .local v0, current:Landroid/view/View;
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 429
    if-eqz p1, :cond_1

    .line 430
    iget-object v4, p0, Lcom/htc/store/module/view/PromoSwitcher;->mInRight:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v2, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 431
    iget-object v4, p0, Lcom/htc/store/module/view/PromoSwitcher;->mOutRight:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 433
    :cond_1
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 434
    iget v3, p0, Lcom/htc/store/module/view/PromoSwitcher;->mCurrentPromo:I

    .line 435
    .local v3, temp:I
    iget v4, p0, Lcom/htc/store/module/view/PromoSwitcher;->mNextPromo:I

    iput v4, p0, Lcom/htc/store/module/view/PromoSwitcher;->mCurrentPromo:I

    .line 436
    iget v4, p0, Lcom/htc/store/module/view/PromoSwitcher;->mPreviousPromo:I

    iput v4, p0, Lcom/htc/store/module/view/PromoSwitcher;->mNextPromo:I

    .line 437
    iput v3, p0, Lcom/htc/store/module/view/PromoSwitcher;->mPreviousPromo:I

    .line 439
    invoke-direct {p0}, Lcom/htc/store/module/view/PromoSwitcher;->setNextPromoView()V

    .line 441
    .end local v0           #current:Landroid/view/View;
    .end local v2           #next:Landroid/view/View;
    .end local v3           #temp:I
    :cond_2
    return-void

    .line 420
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public movePrevious(Z)V
    .locals 10
    .parameter "animated"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 380
    sget-object v4, Lcom/htc/store/module/view/PromoSwitcher;->TAG:Ljava/lang/String;

    new-array v5, v8, [Ljava/lang/Object;

    const-string v6, "movePrevious"

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 381
    const/4 v1, 0x1

    .line 382
    .local v1, doMove:Z
    if-eqz p1, :cond_0

    .line 383
    iget-boolean v4, p0, Lcom/htc/store/module/view/PromoSwitcher;->mCanChangePromo:Z

    if-eqz v4, :cond_3

    .line 384
    iput-boolean v7, p0, Lcom/htc/store/module/view/PromoSwitcher;->mCanChangePromo:Z

    .line 389
    :cond_0
    :goto_0
    sget-object v4, Lcom/htc/store/module/view/PromoSwitcher;->TAG:Ljava/lang/String;

    new-array v5, v9, [Ljava/lang/Object;

    const-string v6, "mCanChangePromo: "

    aput-object v6, v5, v7

    iget-boolean v6, p0, Lcom/htc/store/module/view/PromoSwitcher;->mCanChangePromo:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 390
    sget-object v4, Lcom/htc/store/module/view/PromoSwitcher;->TAG:Ljava/lang/String;

    new-array v5, v9, [Ljava/lang/Object;

    const-string v6, "doMove: "

    aput-object v6, v5, v7

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 391
    iget-boolean v4, p0, Lcom/htc/store/module/view/PromoSwitcher;->mHasPrevious:Z

    if-eqz v4, :cond_2

    if-eqz v1, :cond_2

    .line 392
    iget-object v4, p0, Lcom/htc/store/module/view/PromoSwitcher;->mPromos:[Lcom/htc/store/module/view/Promo;

    iget v5, p0, Lcom/htc/store/module/view/PromoSwitcher;->mPreviousPromo:I

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/htc/store/module/view/Promo;->getView()Landroid/view/View;

    move-result-object v2

    .line 393
    .local v2, previous:Landroid/view/View;
    iget-object v4, p0, Lcom/htc/store/module/view/PromoSwitcher;->mPromos:[Lcom/htc/store/module/view/Promo;

    iget v5, p0, Lcom/htc/store/module/view/PromoSwitcher;->mCurrentPromo:I

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/htc/store/module/view/Promo;->getView()Landroid/view/View;

    move-result-object v0

    .line 394
    .local v0, current:Landroid/view/View;
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 395
    if-eqz p1, :cond_1

    .line 396
    iget-object v4, p0, Lcom/htc/store/module/view/PromoSwitcher;->mInLeft:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v2, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 397
    iget-object v4, p0, Lcom/htc/store/module/view/PromoSwitcher;->mOutLeft:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 399
    :cond_1
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 400
    iget v3, p0, Lcom/htc/store/module/view/PromoSwitcher;->mCurrentPromo:I

    .line 401
    .local v3, temp:I
    iget v4, p0, Lcom/htc/store/module/view/PromoSwitcher;->mPreviousPromo:I

    iput v4, p0, Lcom/htc/store/module/view/PromoSwitcher;->mCurrentPromo:I

    .line 402
    iget v4, p0, Lcom/htc/store/module/view/PromoSwitcher;->mNextPromo:I

    iput v4, p0, Lcom/htc/store/module/view/PromoSwitcher;->mPreviousPromo:I

    .line 403
    iput v3, p0, Lcom/htc/store/module/view/PromoSwitcher;->mNextPromo:I

    .line 405
    invoke-direct {p0}, Lcom/htc/store/module/view/PromoSwitcher;->setPreviousPromoView()V

    .line 407
    .end local v0           #current:Landroid/view/View;
    .end local v2           #previous:Landroid/view/View;
    .end local v3           #temp:I
    :cond_2
    return-void

    .line 386
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 114
    iget-object v0, p0, Lcom/htc/store/module/view/PromoSwitcher;->mPromos:[Lcom/htc/store/module/view/Promo;

    iget v1, p0, Lcom/htc/store/module/view/PromoSwitcher;->mPreviousPromo:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/htc/store/module/view/Promo;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 115
    iget-object v0, p0, Lcom/htc/store/module/view/PromoSwitcher;->mPromos:[Lcom/htc/store/module/view/Promo;

    iget v1, p0, Lcom/htc/store/module/view/PromoSwitcher;->mNextPromo:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/htc/store/module/view/Promo;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 116
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/htc/store/module/view/PromoSwitcher;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/htc/store/module/view/PromoSwitcher;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 121
    const/4 v0, 0x1

    return v0
.end method

.method public pause()V
    .locals 4

    .prologue
    .line 136
    sget-object v0, Lcom/htc/store/module/view/PromoSwitcher;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "pause"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    iget-object v0, p0, Lcom/htc/store/module/view/PromoSwitcher;->mPromoHandler:Landroid/os/Handler;

    const v1, 0xc7b0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 138
    return-void
.end method

.method public declared-synchronized removePromoItems()V
    .locals 2

    .prologue
    .line 344
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/store/module/view/PromoSwitcher;->mPromoItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/htc/store/module/view/PromoSwitcher;->mPromoHandler:Landroid/os/Handler;

    const v1, 0xc7b1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 347
    :cond_0
    monitor-exit p0

    return-void

    .line 344
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removePromoItems(Z)V
    .locals 2
    .parameter "isImmediately"

    .prologue
    .line 354
    monitor-enter p0

    if-eqz p1, :cond_2

    .line 355
    :try_start_0
    iget-object v0, p0, Lcom/htc/store/module/view/PromoSwitcher;->mPromoItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 356
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/store/module/view/PromoSwitcher;->mIndexOfPromoItems:I

    .line 357
    iget-object v0, p0, Lcom/htc/store/module/view/PromoSwitcher;->mPromoItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 358
    iget-object v0, p0, Lcom/htc/store/module/view/PromoSwitcher;->mPromoItemOnlineIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 359
    invoke-virtual {p0}, Lcom/htc/store/module/view/PromoSwitcher;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 360
    invoke-direct {p0}, Lcom/htc/store/module/view/PromoSwitcher;->getNextPromo()Lcom/htc/store/module/view/Promo;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/store/module/view/Promo;->setPromoImage(Landroid/graphics/drawable/Drawable;)V

    .line 361
    const/4 v0, 0x1

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/htc/store/module/view/PromoSwitcher;->moveNext(ZZ)V

    .line 363
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/store/module/view/PromoSwitcher;->mHasPrevious:Z

    .line 364
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/store/module/view/PromoSwitcher;->mHasNext:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 369
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 367
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/htc/store/module/view/PromoSwitcher;->removePromoItems()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 354
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public resume()V
    .locals 5

    .prologue
    const v4, 0xc7b0

    .line 130
    sget-object v0, Lcom/htc/store/module/view/PromoSwitcher;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "resume"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 131
    iget-object v0, p0, Lcom/htc/store/module/view/PromoSwitcher;->mPromoHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 132
    iget-object v0, p0, Lcom/htc/store/module/view/PromoSwitcher;->mPromoHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1770

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 133
    return-void
.end method

.method public setOnPromoClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "onClickListener"

    .prologue
    .line 372
    iput-object p1, p0, Lcom/htc/store/module/view/PromoSwitcher;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 373
    return-void
.end method

.method public declared-synchronized setPromoItems(Ljava/util/ArrayList;)V
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/store/module/vo/PromoItem;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .local p1, promoItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/PromoItem;>;"
    const/4 v10, 0x1

    .line 183
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/htc/store/module/view/PromoSwitcher;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "setPromoItems"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 184
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 185
    iget-object v0, p0, Lcom/htc/store/module/view/PromoSwitcher;->mPromoItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/htc/store/module/view/PromoSwitcher;->mPromoItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 188
    :cond_0
    iput-object p1, p0, Lcom/htc/store/module/view/PromoSwitcher;->mPromoItems:Ljava/util/ArrayList;

    .line 189
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/store/module/view/PromoSwitcher;->mIndexOfPromoItems:I

    .line 190
    iget-object v0, p0, Lcom/htc/store/module/view/PromoSwitcher;->mPromoItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 192
    .local v8, size:I
    iget-object v0, p0, Lcom/htc/store/module/view/PromoSwitcher;->mPromoItemOnlineIds:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 193
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v8}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/htc/store/module/view/PromoSwitcher;->mPromoItemOnlineIds:Ljava/util/ArrayList;

    .line 197
    :goto_0
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    if-ge v6, v8, :cond_2

    .line 198
    iget-object v1, p0, Lcom/htc/store/module/view/PromoSwitcher;->mPromoItemOnlineIds:Ljava/util/ArrayList;

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/store/module/vo/PromoItem;

    invoke-virtual {v0}, Lcom/htc/store/module/vo/PromoItem;->getOnlineItemId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 195
    .end local v6           #i:I
    :cond_1
    iget-object v0, p0, Lcom/htc/store/module/view/PromoSwitcher;->mPromoItemOnlineIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 183
    .end local v8           #size:I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 201
    .restart local v6       #i:I
    .restart local v8       #size:I
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/htc/store/module/view/PromoSwitcher;->mPromoItems:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/store/module/vo/PromoItem;

    .line 202
    .local v7, item:Lcom/htc/store/module/vo/PromoItem;
    invoke-direct {p0}, Lcom/htc/store/module/view/PromoSwitcher;->getNextPromo()Lcom/htc/store/module/view/Promo;

    move-result-object v9

    invoke-virtual {p0}, Lcom/htc/store/module/view/PromoSwitcher;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v7}, Lcom/htc/store/module/vo/PromoItem;->getCategoryId()J

    move-result-wide v1

    invoke-virtual {v7}, Lcom/htc/store/module/vo/PromoItem;->getOnlineItemId()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/htc/store/module/view/PromoSwitcher;->mPromoImageWidthForRetrieval:I

    iget v5, p0, Lcom/htc/store/module/view/PromoSwitcher;->mPromoImageHeightForRetrieval:I

    invoke-static/range {v0 .. v5}, Lcom/htc/store/util/ImageUtils;->getPromoPreview(Landroid/content/Context;JLjava/lang/String;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/htc/store/module/view/Promo;->setPromoImage(Landroid/graphics/drawable/Drawable;)V

    .line 204
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/store/module/view/PromoSwitcher;->mHasNext:Z

    .line 205
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/store/module/view/PromoSwitcher;->moveNext(Z)V

    .line 207
    if-ne v8, v10, :cond_3

    .line 208
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/store/module/view/PromoSwitcher;->mHasPrevious:Z

    .line 209
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/store/module/view/PromoSwitcher;->mHasNext:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 223
    .end local v6           #i:I
    .end local v7           #item:Lcom/htc/store/module/vo/PromoItem;
    .end local v8           #size:I
    :goto_2
    monitor-exit p0

    return-void

    .line 211
    .restart local v6       #i:I
    .restart local v7       #item:Lcom/htc/store/module/vo/PromoItem;
    .restart local v8       #size:I
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/htc/store/module/view/PromoSwitcher;->mPromoItems:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #item:Lcom/htc/store/module/vo/PromoItem;
    check-cast v7, Lcom/htc/store/module/vo/PromoItem;

    .line 212
    .restart local v7       #item:Lcom/htc/store/module/vo/PromoItem;
    invoke-direct {p0}, Lcom/htc/store/module/view/PromoSwitcher;->getNextPromo()Lcom/htc/store/module/view/Promo;

    move-result-object v9

    invoke-virtual {p0}, Lcom/htc/store/module/view/PromoSwitcher;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v7}, Lcom/htc/store/module/vo/PromoItem;->getCategoryId()J

    move-result-wide v1

    invoke-virtual {v7}, Lcom/htc/store/module/vo/PromoItem;->getOnlineItemId()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/htc/store/module/view/PromoSwitcher;->mPromoImageWidthForRetrieval:I

    iget v5, p0, Lcom/htc/store/module/view/PromoSwitcher;->mPromoImageHeightForRetrieval:I

    invoke-static/range {v0 .. v5}, Lcom/htc/store/util/ImageUtils;->getPromoPreview(Landroid/content/Context;JLjava/lang/String;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/htc/store/module/view/Promo;->setPromoImage(Landroid/graphics/drawable/Drawable;)V

    .line 214
    iget-object v0, p0, Lcom/htc/store/module/view/PromoSwitcher;->mPromoItems:Ljava/util/ArrayList;

    add-int/lit8 v1, v8, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #item:Lcom/htc/store/module/vo/PromoItem;
    check-cast v7, Lcom/htc/store/module/vo/PromoItem;

    .line 215
    .restart local v7       #item:Lcom/htc/store/module/vo/PromoItem;
    invoke-direct {p0}, Lcom/htc/store/module/view/PromoSwitcher;->getPreviousPromo()Lcom/htc/store/module/view/Promo;

    move-result-object v9

    invoke-virtual {p0}, Lcom/htc/store/module/view/PromoSwitcher;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v7}, Lcom/htc/store/module/vo/PromoItem;->getCategoryId()J

    move-result-wide v1

    invoke-virtual {v7}, Lcom/htc/store/module/vo/PromoItem;->getOnlineItemId()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/htc/store/module/view/PromoSwitcher;->mPromoImageWidthForRetrieval:I

    iget v5, p0, Lcom/htc/store/module/view/PromoSwitcher;->mPromoImageHeightForRetrieval:I

    invoke-static/range {v0 .. v5}, Lcom/htc/store/util/ImageUtils;->getPromoPreview(Landroid/content/Context;JLjava/lang/String;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/htc/store/module/view/Promo;->setPromoImage(Landroid/graphics/drawable/Drawable;)V

    .line 217
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/store/module/view/PromoSwitcher;->mHasPrevious:Z

    .line 218
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/store/module/view/PromoSwitcher;->mHasNext:Z

    goto :goto_2

    .line 221
    .end local v6           #i:I
    .end local v7           #item:Lcom/htc/store/module/vo/PromoItem;
    .end local v8           #size:I
    :cond_4
    sget-object v0, Lcom/htc/store/module/view/PromoSwitcher;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "promoItems is empty."

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public declared-synchronized setSelection(Ljava/lang/String;)V
    .locals 12
    .parameter "onlineId"

    .prologue
    const/4 v11, 0x1

    .line 312
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/htc/store/module/view/PromoSwitcher;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "setSelection: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 313
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/htc/store/module/view/PromoSwitcher;->mPromoItemOnlineIds:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/store/module/view/PromoSwitcher;->mPromoItemOnlineIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 314
    iget-object v0, p0, Lcom/htc/store/module/view/PromoSwitcher;->mPromoItemOnlineIds:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v9

    .line 315
    .local v9, index:I
    sget-object v0, Lcom/htc/store/module/view/PromoSwitcher;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "index: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 316
    if-ltz v9, :cond_2

    .line 317
    iget v0, p0, Lcom/htc/store/module/view/PromoSwitcher;->mIndexOfPromoItems:I

    if-eq v0, v9, :cond_3

    .line 318
    add-int/lit8 v6, v9, -0x1

    .line 319
    .local v6, currentIndex:I
    if-gez v6, :cond_0

    .line 320
    iget-object v0, p0, Lcom/htc/store/module/view/PromoSwitcher;->mPromoItemOnlineIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v6, v0, -0x1

    .line 322
    :cond_0
    iget v0, p0, Lcom/htc/store/module/view/PromoSwitcher;->mIndexOfPromoItems:I

    if-eq v0, v6, :cond_1

    .line 323
    iput v6, p0, Lcom/htc/store/module/view/PromoSwitcher;->mIndexOfPromoItems:I

    .line 324
    iget-object v0, p0, Lcom/htc/store/module/view/PromoSwitcher;->mPromoItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/htc/store/module/vo/PromoItem;

    .line 325
    .local v10, item:Lcom/htc/store/module/vo/PromoItem;
    invoke-virtual {p0}, Lcom/htc/store/module/view/PromoSwitcher;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v10}, Lcom/htc/store/module/vo/PromoItem;->getCategoryId()J

    move-result-wide v1

    invoke-virtual {v10}, Lcom/htc/store/module/vo/PromoItem;->getOnlineItemId()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/htc/store/module/view/PromoSwitcher;->mPromoImageWidthForRetrieval:I

    iget v5, p0, Lcom/htc/store/module/view/PromoSwitcher;->mPromoImageHeightForRetrieval:I

    invoke-static/range {v0 .. v5}, Lcom/htc/store/util/ImageUtils;->getPromoPreview(Landroid/content/Context;JLjava/lang/String;II)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 327
    .local v8, drawable:Landroid/graphics/drawable/Drawable;
    invoke-direct {p0}, Lcom/htc/store/module/view/PromoSwitcher;->getNextPromo()Lcom/htc/store/module/view/Promo;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/htc/store/module/view/Promo;->setPromoImage(Landroid/graphics/drawable/Drawable;)V

    .line 329
    .end local v8           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v10           #item:Lcom/htc/store/module/vo/PromoItem;
    :cond_1
    iget-object v0, p0, Lcom/htc/store/module/view/PromoSwitcher;->mPromoItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/store/module/view/PromoSwitcher;->mPromoItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v11, :cond_2

    .line 330
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/store/module/view/PromoSwitcher;->moveNext(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 341
    .end local v6           #currentIndex:I
    .end local v9           #index:I
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    .line 333
    .restart local v9       #index:I
    :cond_3
    :try_start_1
    invoke-direct {p0}, Lcom/htc/store/module/view/PromoSwitcher;->getCurrentPromo()Lcom/htc/store/module/view/Promo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/store/module/view/Promo;->getView()Landroid/view/View;

    move-result-object v7

    .line 334
    .local v7, currentPromoView:Landroid/view/View;
    const/16 v0, 0x8

    invoke-virtual {v7, v0}, Landroid/view/View;->setVisibility(I)V

    .line 335
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Landroid/view/View;->setVisibility(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 312
    .end local v7           #currentPromoView:Landroid/view/View;
    .end local v9           #index:I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 339
    :cond_4
    :try_start_2
    sget-object v0, Lcom/htc/store/module/view/PromoSwitcher;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "mPromoItemOnlineIds is empty."

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
