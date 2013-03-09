.class public Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;
.super Ljava/lang/Object;
.source "PurchaseInstrumentAndPriceViewBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$OnInstrumentSelectedListener;,
        Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$AddInstrumentSelectorItem;,
        Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$ExistingInstrumentSelectorItem;,
        Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$PlaceholderInstrumentSelectorItem;,
        Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$InstrumentSelectorItem;,
        Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$InstrumentAdapter;
    }
.end annotation


# static fields
.field private static final TAG_DYNAMIC_ROW:Ljava/lang/Integer;


# instance fields
.field private mAddInstrumentHint:Landroid/widget/TextView;

.field private mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

.field private mFragment:Landroid/support/v4/app/Fragment;

.field private mInstrumentAndPrice:Landroid/view/View;

.field private mInstrumentFactory:Lcom/google/android/finsky/billing/InstrumentFactory;

.field private mInstrumentSpinner:Landroid/widget/Spinner;

.field private mInstrumentSpinnerAdapter:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$InstrumentAdapter;

.field private mIsUserInitiatedSelection:Z

.field private mLoadingIndicator:Landroid/view/View;

.field private final mOnInstrumentSelectedListener:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$OnInstrumentSelectedListener;

.field private mPriceTable:Landroid/widget/TableLayout;

.field private mPriceTableExpanded:Z

.field private mPriceTableSummaryRow:Landroid/view/ViewGroup;

.field private mShowInstrumentAndPrice:Z

.field private purchaseSpinnerDescriptionBottomPadding:I

.field private purchaseSpinnerDescriptionRightPadding:I

.field private purchaseSpinnerDescriptionTopPadding:I

.field private purchaseSpinnerLeftPadding:I

.field private purchaseSpinnerRightPadding:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->TAG_DYNAMIC_ROW:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$OnInstrumentSelectedListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mShowInstrumentAndPrice:Z

    .line 324
    iput-object p1, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mOnInstrumentSelectedListener:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$OnInstrumentSelectedListener;

    .line 325
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;)Landroid/support/v4/app/Fragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mFragment:Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->purchaseSpinnerLeftPadding:I

    return v0
.end method

.method static synthetic access$1000(Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mIsUserInitiatedSelection:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mIsUserInitiatedSelection:Z

    return p1
.end method

.method static synthetic access$1302(Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mPriceTableExpanded:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;)Landroid/widget/TableLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mPriceTable:Landroid/widget/TableLayout;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;Ljava/util/List;Lcom/google/android/finsky/remoting/protos/Buy$LineItem;Lcom/google/android/finsky/remoting/protos/Buy$LineItem;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->setupPriceTable(Ljava/util/List;Lcom/google/android/finsky/remoting/protos/Buy$LineItem;Lcom/google/android/finsky/remoting/protos/Buy$LineItem;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mPriceTableSummaryRow:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->purchaseSpinnerRightPadding:I

    return v0
.end method

.method static synthetic access$300(Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->purchaseSpinnerDescriptionTopPadding:I

    return v0
.end method

.method static synthetic access$400(Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->purchaseSpinnerDescriptionRightPadding:I

    return v0
.end method

.method static synthetic access$500(Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->purchaseSpinnerDescriptionBottomPadding:I

    return v0
.end method

.method static synthetic access$600(Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;Lcom/google/android/finsky/billing/Instrument;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->updatePriceFromInstrument(Lcom/google/android/finsky/billing/Instrument;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;)Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$OnInstrumentSelectedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mOnInstrumentSelectedListener:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$OnInstrumentSelectedListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;)Lcom/google/android/finsky/billing/InstrumentFactory;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mInstrumentFactory:Lcom/google/android/finsky/billing/InstrumentFactory;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;)Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$InstrumentAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mInstrumentSpinnerAdapter:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$InstrumentAdapter;

    return-object v0
.end method

.method private addInstrumentsWithSpecificFamilyFirst(Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$InstrumentAdapter;Lcom/google/android/finsky/billing/CheckoutPurchase;I)I
    .locals 9
    .parameter "adapter"
    .parameter "checkoutPurchase"
    .parameter "familyFirst"

    .prologue
    .line 465
    invoke-virtual {p2}, Lcom/google/android/finsky/billing/CheckoutPurchase;->getInstruments()Ljava/util/List;

    move-result-object v6

    .line 466
    .local v6, instruments:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/billing/Instrument;>;"
    invoke-virtual {p2}, Lcom/google/android/finsky/billing/CheckoutPurchase;->getEligibleInstruments()Ljava/util/List;

    move-result-object v3

    .line 468
    .local v3, eligibleInstruments:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;>;"
    invoke-virtual {p2}, Lcom/google/android/finsky/billing/CheckoutPurchase;->getDefaultInstrument()Lcom/google/android/finsky/billing/Instrument;

    move-result-object v0

    .line 469
    .local v0, defaultInstrument:Lcom/google/android/finsky/billing/Instrument;
    const/4 v1, 0x0

    .line 472
    .local v1, defaultItem:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$InstrumentSelectorItem;
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/finsky/billing/Instrument;

    .line 473
    .local v5, instrument:Lcom/google/android/finsky/billing/Instrument;
    invoke-virtual {v5}, Lcom/google/android/finsky/billing/Instrument;->getInstrumentFamily()I

    move-result v8

    if-ne v8, p3, :cond_0

    .line 474
    new-instance v7, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$ExistingInstrumentSelectorItem;

    invoke-direct {v7, p0, v5}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$ExistingInstrumentSelectorItem;-><init>(Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;Lcom/google/android/finsky/billing/Instrument;)V

    .line 476
    .local v7, item:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$ExistingInstrumentSelectorItem;
    invoke-virtual {p1, v7}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$InstrumentAdapter;->add(Ljava/lang/Object;)V

    .line 478
    if-eqz v0, :cond_0

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 479
    move-object v1, v7

    goto :goto_0

    .line 484
    .end local v5           #instrument:Lcom/google/android/finsky/billing/Instrument;
    .end local v7           #item:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$ExistingInstrumentSelectorItem;
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    .line 485
    .local v2, eligibleInstrument:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;
    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->getInstrumentFamily()I

    move-result v8

    if-ne v8, p3, :cond_2

    .line 486
    new-instance v7, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$AddInstrumentSelectorItem;

    invoke-direct {v7, p0, v2}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$AddInstrumentSelectorItem;-><init>(Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;)V

    .line 487
    .local v7, item:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$AddInstrumentSelectorItem;
    invoke-virtual {p1, v7}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$InstrumentAdapter;->add(Ljava/lang/Object;)V

    .line 489
    if-nez v1, :cond_2

    invoke-virtual {v7}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$AddInstrumentSelectorItem;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 490
    move-object v1, v7

    goto :goto_1

    .line 495
    .end local v2           #eligibleInstrument:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;
    .end local v7           #item:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$AddInstrumentSelectorItem;
    :cond_3
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/finsky/billing/Instrument;

    .line 496
    .restart local v5       #instrument:Lcom/google/android/finsky/billing/Instrument;
    invoke-virtual {v5}, Lcom/google/android/finsky/billing/Instrument;->getInstrumentFamily()I

    move-result v8

    if-eq v8, p3, :cond_4

    .line 497
    new-instance v7, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$ExistingInstrumentSelectorItem;

    invoke-direct {v7, p0, v5}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$ExistingInstrumentSelectorItem;-><init>(Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;Lcom/google/android/finsky/billing/Instrument;)V

    .line 499
    .local v7, item:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$ExistingInstrumentSelectorItem;
    invoke-virtual {p1, v7}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$InstrumentAdapter;->add(Ljava/lang/Object;)V

    .line 501
    if-eqz v0, :cond_4

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 502
    move-object v1, v7

    goto :goto_2

    .line 507
    .end local v5           #instrument:Lcom/google/android/finsky/billing/Instrument;
    .end local v7           #item:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$ExistingInstrumentSelectorItem;
    :cond_5
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    .line 508
    .restart local v2       #eligibleInstrument:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;
    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->getInstrumentFamily()I

    move-result v8

    if-eq v8, p3, :cond_6

    .line 509
    new-instance v7, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$AddInstrumentSelectorItem;

    invoke-direct {v7, p0, v2}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$AddInstrumentSelectorItem;-><init>(Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;)V

    .line 510
    .local v7, item:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$AddInstrumentSelectorItem;
    invoke-virtual {p1, v7}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$InstrumentAdapter;->add(Ljava/lang/Object;)V

    .line 512
    if-nez v1, :cond_6

    .line 513
    move-object v1, v7

    goto :goto_3

    .line 518
    .end local v2           #eligibleInstrument:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;
    .end local v7           #item:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$AddInstrumentSelectorItem;
    :cond_7
    if-eqz v1, :cond_8

    .line 519
    invoke-virtual {p1, v1}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$InstrumentAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v8

    .line 521
    :goto_4
    return v8

    :cond_8
    const/4 v8, -0x1

    goto :goto_4
.end method

.method private initPurchaseSpinnerDimens()V
    .locals 2

    .prologue
    .line 339
    iget-object v1, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 340
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f0b002f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->purchaseSpinnerLeftPadding:I

    .line 342
    const v1, 0x7f0b0030

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->purchaseSpinnerRightPadding:I

    .line 344
    const v1, 0x7f0b0031

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->purchaseSpinnerDescriptionTopPadding:I

    .line 346
    const v1, 0x7f0b0032

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->purchaseSpinnerDescriptionRightPadding:I

    .line 348
    const v1, 0x7f0b0033

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->purchaseSpinnerDescriptionBottomPadding:I

    .line 350
    return-void
.end method

.method private resetPriceTable()V
    .locals 6

    .prologue
    .line 529
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 530
    .local v1, dynamicRows:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v4, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mPriceTable:Landroid/widget/TableLayout;

    invoke-virtual {v4}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 531
    iget-object v4, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mPriceTable:Landroid/widget/TableLayout;

    invoke-virtual {v4, v2}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->TAG_DYNAMIC_ROW:Ljava/lang/Integer;

    if-ne v4, v5, :cond_0

    .line 532
    iget-object v4, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mPriceTable:Landroid/widget/TableLayout;

    invoke-virtual {v4, v2}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 530
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 535
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 536
    .local v0, dynamicRow:Landroid/view/View;
    iget-object v4, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mPriceTable:Landroid/widget/TableLayout;

    invoke-virtual {v4, v0}, Landroid/widget/TableLayout;->removeView(Landroid/view/View;)V

    goto :goto_1

    .line 538
    .end local v0           #dynamicRow:Landroid/view/View;
    :cond_2
    return-void
.end method

.method private setSpinnerSelection(I)V
    .locals 1
    .parameter "i"

    .prologue
    .line 440
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mIsUserInitiatedSelection:Z

    .line 441
    iget-object v0, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mInstrumentSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 442
    return-void
.end method

.method private setupPriceRow(Lcom/google/android/finsky/remoting/protos/Buy$LineItem;Landroid/view/View;ZI)V
    .locals 9
    .parameter "lineItem"
    .parameter "row"
    .parameter "useBoldTypeface"
    .parameter "backgroundResourceId"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 612
    const v6, 0x7f0801ab

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 613
    .local v0, label:Landroid/widget/TextView;
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 614
    const v6, 0x7f0801ac

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 615
    .local v5, price:Landroid/widget/TextView;
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->hasAmount()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 616
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->getAmount()Lcom/google/android/finsky/remoting/protos/Buy$Money;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/finsky/remoting/protos/Buy$Money;->getFormattedAmount()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 618
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->hasOffer()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 619
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->getOffer()Lcom/google/android/finsky/remoting/protos/Common$Offer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getFormattedAmount()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 621
    :cond_1
    if-eqz p3, :cond_2

    .line 622
    invoke-virtual {v0, v8, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 623
    invoke-virtual {v5, v8, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 627
    :cond_2
    invoke-virtual {v5}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v2

    .line 628
    .local v2, paddingLeft:I
    invoke-virtual {v5}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v3

    .line 629
    .local v3, paddingRight:I
    invoke-virtual {v5}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v4

    .line 630
    .local v4, paddingTop:I
    invoke-virtual {v5}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v1

    .line 631
    .local v1, paddingBottom:I
    invoke-virtual {v5, p4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 632
    invoke-virtual {v5, v2, v4, v3, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 633
    return-void
.end method

.method private setupPriceTable(Ljava/util/List;Lcom/google/android/finsky/remoting/protos/Buy$LineItem;)V
    .locals 0
    .parameter
    .parameter "total"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Buy$LineItem;",
            ">;",
            "Lcom/google/android/finsky/remoting/protos/Buy$LineItem;",
            ")V"
        }
    .end annotation

    .prologue
    .line 541
    .local p1, lineItems:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/remoting/protos/Buy$LineItem;>;"
    invoke-direct {p0, p1, p2, p2}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->setupPriceTable(Ljava/util/List;Lcom/google/android/finsky/remoting/protos/Buy$LineItem;Lcom/google/android/finsky/remoting/protos/Buy$LineItem;)V

    .line 542
    return-void
.end method

.method private setupPriceTable(Ljava/util/List;Lcom/google/android/finsky/remoting/protos/Buy$LineItem;Lcom/google/android/finsky/remoting/protos/Buy$LineItem;)V
    .locals 9
    .parameter
    .parameter "total"
    .parameter "summary"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Buy$LineItem;",
            ">;",
            "Lcom/google/android/finsky/remoting/protos/Buy$LineItem;",
            "Lcom/google/android/finsky/remoting/protos/Buy$LineItem;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, lineItems:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/remoting/protos/Buy$LineItem;>;"
    const/16 v7, 0x8

    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 546
    iget-boolean v5, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mPriceTableExpanded:Z

    if-eqz v5, :cond_1

    .line 547
    iget-object v5, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mPriceTable:Landroid/widget/TableLayout;

    invoke-virtual {v5, v6}, Landroid/widget/TableLayout;->setVisibility(I)V

    .line 548
    iget-object v5, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mPriceTableSummaryRow:Landroid/view/ViewGroup;

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 550
    invoke-direct {p0}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->resetPriceTable()V

    .line 551
    new-instance v2, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$2;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$2;-><init>(Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;Ljava/util/List;Lcom/google/android/finsky/remoting/protos/Buy$LineItem;Lcom/google/android/finsky/remoting/protos/Buy$LineItem;)V

    .line 563
    .local v2, rowClickListener:Landroid/view/View$OnClickListener;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 564
    iget-object v5, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v5}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v7, 0x7f0400d1

    iget-object v8, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mPriceTable:Landroid/widget/TableLayout;

    invoke-virtual {v5, v7, v8, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 566
    .local v1, row:Landroid/view/View;
    sget-object v5, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->TAG_DYNAMIC_ROW:Ljava/lang/Integer;

    invoke-virtual {v1, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 567
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;

    invoke-direct {p0, v5, v1, v6, v6}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->setupPriceRow(Lcom/google/android/finsky/remoting/protos/Buy$LineItem;Landroid/view/View;ZI)V

    .line 568
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 570
    iget-object v5, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mPriceTable:Landroid/widget/TableLayout;

    invoke-virtual {v5, v1, v6}, Landroid/widget/TableLayout;->addView(Landroid/view/View;I)V

    .line 563
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 573
    .end local v1           #row:Landroid/view/View;
    :cond_0
    iget-object v5, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mPriceTable:Landroid/widget/TableLayout;

    const v7, 0x7f0801aa

    invoke-virtual {v5, v7}, Landroid/widget/TableLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 574
    .local v4, totalRow:Landroid/view/View;
    invoke-direct {p0, p2, v4, v3, v6}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->setupPriceRow(Lcom/google/android/finsky/remoting/protos/Buy$LineItem;Landroid/view/View;ZI)V

    .line 575
    invoke-virtual {v4, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 608
    .end local v0           #i:I
    .end local v2           #rowClickListener:Landroid/view/View$OnClickListener;
    .end local v4           #totalRow:Landroid/view/View;
    :goto_1
    return-void

    .line 577
    :cond_1
    iget-object v5, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mPriceTable:Landroid/widget/TableLayout;

    invoke-virtual {v5, v7}, Landroid/widget/TableLayout;->setVisibility(I)V

    .line 578
    iget-object v5, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mPriceTableSummaryRow:Landroid/view/ViewGroup;

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 582
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    const/4 v7, 0x2

    if-lt v5, v7, :cond_2

    .line 583
    .local v3, showLineItems:Z
    :goto_2
    if-eqz v3, :cond_3

    .line 584
    iget-object v5, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mPriceTableSummaryRow:Landroid/view/ViewGroup;

    new-instance v7, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$3;

    invoke-direct {v7, p0, p1, p2, p3}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$3;-><init>(Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;Ljava/util/List;Lcom/google/android/finsky/remoting/protos/Buy$LineItem;Lcom/google/android/finsky/remoting/protos/Buy$LineItem;)V

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 602
    :goto_3
    iget-object v5, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mPriceTableSummaryRow:Landroid/view/ViewGroup;

    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 604
    iget-object v7, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mPriceTableSummaryRow:Landroid/view/ViewGroup;

    if-eqz v3, :cond_4

    const v5, 0x7f0200f9

    :goto_4
    invoke-direct {p0, p3, v7, v6, v5}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->setupPriceRow(Lcom/google/android/finsky/remoting/protos/Buy$LineItem;Landroid/view/View;ZI)V

    goto :goto_1

    .end local v3           #showLineItems:Z
    :cond_2
    move v3, v6

    .line 582
    goto :goto_2

    .line 600
    .restart local v3       #showLineItems:Z
    :cond_3
    iget-object v5, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mPriceTableSummaryRow:Landroid/view/ViewGroup;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    .line 604
    :cond_4
    const v5, 0x7f020059

    goto :goto_4
.end method

.method private updatePriceFromInstrument(Lcom/google/android/finsky/billing/Instrument;)V
    .locals 6
    .parameter "instrument"

    .prologue
    .line 636
    if-eqz p1, :cond_1

    .line 637
    invoke-virtual {p1}, Lcom/google/android/finsky/billing/Instrument;->getCheckoutOption()Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;

    move-result-object v2

    .line 638
    .local v2, option:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->hasTotal()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 639
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 640
    .local v1, lineItems:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/remoting/protos/Buy$LineItem;>;"
    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->getItemList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 641
    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->getSubItemList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 642
    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->getTotal()Lcom/google/android/finsky/remoting/protos/Buy$LineItem;

    move-result-object v4

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->getSummary()Lcom/google/android/finsky/remoting/protos/Buy$LineItem;

    move-result-object v5

    invoke-direct {p0, v1, v4, v5}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->setupPriceTable(Ljava/util/List;Lcom/google/android/finsky/remoting/protos/Buy$LineItem;Lcom/google/android/finsky/remoting/protos/Buy$LineItem;)V

    .line 656
    .end local v1           #lineItems:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/remoting/protos/Buy$LineItem;>;"
    .end local v2           #option:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;
    :cond_0
    :goto_0
    return-void

    .line 645
    :cond_1
    iget-object v4, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    invoke-virtual {v4}, Lcom/google/android/finsky/billing/CheckoutPurchase;->getState()Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    move-result-object v4

    sget-object v5, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->PREPARED:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    invoke-virtual {v4}, Lcom/google/android/finsky/billing/CheckoutPurchase;->hasAddInstrumentHintText()Z

    move-result v4

    if-nez v4, :cond_0

    .line 647
    iget-object v4, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    invoke-virtual {v4}, Lcom/google/android/finsky/billing/CheckoutPurchase;->getCheckoutInfo()Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;->getItem()Lcom/google/android/finsky/remoting/protos/Buy$LineItem;

    move-result-object v0

    .line 648
    .local v0, item:Lcom/google/android/finsky/remoting/protos/Buy$LineItem;
    new-instance v3, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;

    invoke-direct {v3}, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;-><init>()V

    .line 650
    .local v3, total:Lcom/google/android/finsky/remoting/protos/Buy$LineItem;
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->hasAmount()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->getAmount()Lcom/google/android/finsky/remoting/protos/Buy$Money;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->setAmount(Lcom/google/android/finsky/remoting/protos/Buy$Money;)Lcom/google/android/finsky/remoting/protos/Buy$LineItem;

    .line 651
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->hasOffer()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->getOffer()Lcom/google/android/finsky/remoting/protos/Common$Offer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->setOffer(Lcom/google/android/finsky/remoting/protos/Common$Offer;)Lcom/google/android/finsky/remoting/protos/Buy$LineItem;

    .line 653
    :cond_3
    iget-object v4, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v4}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const v5, 0x7f0701ab

    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->setName(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Buy$LineItem;

    .line 654
    const/4 v4, 0x1

    new-array v4, v4, [Lcom/google/android/finsky/remoting/protos/Buy$LineItem;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v4}, Lcom/google/android/finsky/utils/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {p0, v4, v3}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->setupPriceTable(Ljava/util/List;Lcom/google/android/finsky/remoting/protos/Buy$LineItem;)V

    goto :goto_0
.end method


# virtual methods
.method public bind(Landroid/view/ViewGroup;Lcom/google/android/finsky/billing/CheckoutPurchase;)V
    .locals 9
    .parameter "parent"
    .parameter "checkoutPurchase"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 353
    iput-object p2, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    .line 354
    const v2, 0x7f0801c2

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mInstrumentAndPrice:Landroid/view/View;

    .line 355
    const v2, 0x7f080058

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mLoadingIndicator:Landroid/view/View;

    .line 356
    const v2, 0x7f0801c5

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TableLayout;

    iput-object v2, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mPriceTable:Landroid/widget/TableLayout;

    .line 357
    const v2, 0x7f0801c4

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mPriceTableSummaryRow:Landroid/view/ViewGroup;

    .line 358
    const v2, 0x7f0801c3

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mInstrumentSpinner:Landroid/widget/Spinner;

    .line 359
    new-instance v2, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$InstrumentAdapter;

    iget-object v3, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mInstrumentSpinner:Landroid/widget/Spinner;

    invoke-direct {v2, p0, v3}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$InstrumentAdapter;-><init>(Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;Landroid/widget/Spinner;)V

    iput-object v2, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mInstrumentSpinnerAdapter:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$InstrumentAdapter;

    .line 360
    const v2, 0x7f0801c1

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mAddInstrumentHint:Landroid/widget/TextView;

    .line 362
    iget-object v2, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    if-eqz v2, :cond_3

    .line 363
    iget-object v2, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    invoke-virtual {v2}, Lcom/google/android/finsky/billing/CheckoutPurchase;->isInstrumentRequired()Z

    move-result v2

    if-nez v2, :cond_0

    .line 365
    iget-object v2, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mInstrumentSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v6}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 366
    iput-boolean v7, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mShowInstrumentAndPrice:Z

    .line 367
    invoke-direct {p0, v8}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->updatePriceFromInstrument(Lcom/google/android/finsky/billing/Instrument;)V

    .line 418
    :goto_0
    return-void

    .line 368
    :cond_0
    iget-object v2, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    invoke-virtual {v2}, Lcom/google/android/finsky/billing/CheckoutPurchase;->hasAddInstrumentHintText()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 369
    iget-object v2, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mAddInstrumentHint:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    invoke-virtual {v3}, Lcom/google/android/finsky/billing/CheckoutPurchase;->getAddInstrumentHintText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 370
    iget-object v2, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mAddInstrumentHint:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 371
    iget-object v2, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mInstrumentAndPrice:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 372
    iput-boolean v4, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mShowInstrumentAndPrice:Z

    .line 373
    iget-object v2, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mInstrumentSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v5}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 374
    iget-object v2, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mPriceTable:Landroid/widget/TableLayout;

    invoke-virtual {v2, v6}, Landroid/widget/TableLayout;->setVisibility(I)V

    .line 375
    iget-object v2, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mPriceTableSummaryRow:Landroid/view/ViewGroup;

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 377
    :cond_1
    iget-object v2, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mAddInstrumentHint:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 378
    iget-object v2, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mInstrumentAndPrice:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 379
    iput-boolean v7, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mShowInstrumentAndPrice:Z

    .line 380
    iget-object v2, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mInstrumentSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v4}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 381
    iget-object v2, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mPriceTableSummaryRow:Landroid/view/ViewGroup;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 382
    iget-object v2, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mInstrumentSpinnerAdapter:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$InstrumentAdapter;

    const/4 v3, 0x2

    invoke-direct {p0, v2, p2, v3}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->addInstrumentsWithSpecificFamilyFirst(Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$InstrumentAdapter;Lcom/google/android/finsky/billing/CheckoutPurchase;I)I

    move-result v1

    .line 384
    .local v1, position:I
    iget-object v2, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mInstrumentSpinner:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mInstrumentSpinnerAdapter:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$InstrumentAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 387
    iget-object v2, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mInstrumentSpinner:Landroid/widget/Spinner;

    new-instance v3, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$1;

    invoke-direct {v3, p0}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$1;-><init>(Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;)V

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 404
    if-gez v1, :cond_2

    .line 405
    const/4 v1, 0x0

    .line 407
    :cond_2
    invoke-direct {p0, v1}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->setSpinnerSelection(I)V

    .line 408
    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->showInstrumentAndPrice()V

    goto :goto_0

    .line 413
    .end local v1           #position:I
    :cond_3
    new-instance v0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$InstrumentAdapter;

    iget-object v2, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mInstrumentSpinner:Landroid/widget/Spinner;

    invoke-direct {v0, p0, v2}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$InstrumentAdapter;-><init>(Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;Landroid/widget/Spinner;)V

    .line 414
    .local v0, dummyAdapter:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$InstrumentAdapter;
    new-instance v2, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$PlaceholderInstrumentSelectorItem;

    invoke-direct {v2, p0, v8}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$PlaceholderInstrumentSelectorItem;-><init>(Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$1;)V

    invoke-virtual {v0, v2}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$InstrumentAdapter;->add(Ljava/lang/Object;)V

    .line 415
    iget-object v2, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mInstrumentSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 416
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->switchToLoading(I)V

    goto :goto_0
.end method

.method public init(Landroid/support/v4/app/Fragment;Lcom/google/android/finsky/billing/InstrumentFactory;Landroid/os/Bundle;)V
    .locals 1
    .parameter "activity"
    .parameter "instrumentFactory"
    .parameter "savedState"

    .prologue
    .line 328
    iput-object p1, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mFragment:Landroid/support/v4/app/Fragment;

    .line 329
    iput-object p2, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mInstrumentFactory:Lcom/google/android/finsky/billing/InstrumentFactory;

    .line 330
    if-eqz p3, :cond_0

    const-string v0, "expanded"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mPriceTableExpanded:Z

    .line 331
    invoke-direct {p0}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->initPurchaseSpinnerDimens()V

    .line 332
    return-void

    .line 330
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public saveState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 335
    const-string v0, "expanded"

    iget-boolean v1, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mPriceTableExpanded:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 336
    return-void
.end method

.method public selectAddInstrument(II)V
    .locals 5
    .parameter "instrumentFamily"
    .parameter "version"

    .prologue
    .line 448
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v4, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mInstrumentSpinnerAdapter:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$InstrumentAdapter;

    invoke-virtual {v4}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$InstrumentAdapter;->getCount()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 449
    iget-object v4, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mInstrumentSpinnerAdapter:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$InstrumentAdapter;

    invoke-virtual {v4, v1}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$InstrumentAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$InstrumentSelectorItem;

    .line 450
    .local v3, item:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$InstrumentSelectorItem;
    instance-of v4, v3, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$AddInstrumentSelectorItem;

    if-eqz v4, :cond_1

    move-object v0, v3

    .line 451
    check-cast v0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$AddInstrumentSelectorItem;

    .line 452
    .local v0, addInstrumentItem:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$AddInstrumentSelectorItem;
    #getter for: Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$AddInstrumentSelectorItem;->mEligibleInstrument:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;
    invoke-static {v0}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$AddInstrumentSelectorItem;->access$1200(Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$AddInstrumentSelectorItem;)Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    move-result-object v2

    .line 453
    .local v2, instrument:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;
    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->getInstrumentFamily()I

    move-result v4

    if-ne v4, p1, :cond_1

    invoke-static {v2}, Lcom/google/android/finsky/billing/BillingUtils;->getFopVersion(Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;)I

    move-result v4

    if-ne v4, p2, :cond_1

    .line 455
    invoke-direct {p0, v1}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->setSpinnerSelection(I)V

    .line 460
    .end local v0           #addInstrumentItem:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$AddInstrumentSelectorItem;
    .end local v2           #instrument:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;
    .end local v3           #item:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$InstrumentSelectorItem;
    :cond_0
    return-void

    .line 448
    .restart local v3       #item:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$InstrumentSelectorItem;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public selectInstrument(Ljava/lang/String;)V
    .locals 4
    .parameter "instrumentId"

    .prologue
    const/4 v3, 0x0

    .line 424
    if-nez p1, :cond_0

    .line 425
    invoke-direct {p0, v3}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->setSpinnerSelection(I)V

    .line 437
    :goto_0
    return-void

    .line 428
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mInstrumentSpinnerAdapter:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$InstrumentAdapter;

    invoke-virtual {v2}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$InstrumentAdapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 429
    iget-object v2, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mInstrumentSpinnerAdapter:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$InstrumentAdapter;

    invoke-virtual {v2, v0}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$InstrumentAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$InstrumentSelectorItem;

    .line 430
    .local v1, selectorItem:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$InstrumentSelectorItem;
    invoke-interface {v1}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$InstrumentSelectorItem;->getInstrument()Lcom/google/android/finsky/billing/Instrument;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$InstrumentSelectorItem;->getInstrument()Lcom/google/android/finsky/billing/Instrument;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/billing/Instrument;->getInstrumentId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 432
    invoke-direct {p0, v0}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->setSpinnerSelection(I)V

    goto :goto_0

    .line 428
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 436
    .end local v1           #selectorItem:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$InstrumentSelectorItem;
    :cond_2
    invoke-direct {p0, v3}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->setSpinnerSelection(I)V

    goto :goto_0
.end method

.method public showInstrumentAndPrice()V
    .locals 2

    .prologue
    .line 677
    iget-object v0, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mLoadingIndicator:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 678
    iget-boolean v0, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mShowInstrumentAndPrice:Z

    if-eqz v0, :cond_0

    .line 679
    iget-object v0, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mInstrumentAndPrice:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 681
    :cond_0
    return-void
.end method

.method public switchToFreeUi()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 60
    iget-object v0, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mInstrumentAndPrice:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 61
    iget-object v0, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mLoadingIndicator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 62
    return-void
.end method

.method public switchToLoading(I)V
    .locals 3
    .parameter "loadingLabel"

    .prologue
    .line 664
    if-ltz p1, :cond_0

    .line 665
    iget-object v1, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mLoadingIndicator:Landroid/view/View;

    const v2, 0x7f0801c7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 666
    .local v0, label:Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 668
    .end local v0           #label:Landroid/widget/TextView;
    :cond_0
    iget-object v1, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mLoadingIndicator:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 669
    iget-object v1, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mInstrumentAndPrice:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 670
    iget-object v1, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mAddInstrumentHint:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 671
    return-void
.end method
