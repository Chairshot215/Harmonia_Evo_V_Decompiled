.class public Lcom/google/android/finsky/layout/ReviewsControlContainer;
.super Landroid/widget/LinearLayout;
.source "ReviewsControlContainer.java"


# instance fields
.field private mFilterBox:Landroid/widget/TextView;

.field private mSortSpinner:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method

.method private setSortAdapter()V
    .locals 3

    .prologue
    .line 85
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/ReviewsControlContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0400fa

    invoke-direct {v0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 87
    .local v0, sortOptionsList:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v1, 0x1090009

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 89
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/ReviewsControlContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f07015c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 90
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/ReviewsControlContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f07015d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 91
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/ReviewsControlContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f07015e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 92
    iget-object v1, p0, Lcom/google/android/finsky/layout/ReviewsControlContainer;->mSortSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 93
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 30
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 32
    const v0, 0x7f0801f7

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/ReviewsControlContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/google/android/finsky/layout/ReviewsControlContainer;->mSortSpinner:Landroid/widget/Spinner;

    .line 33
    const v0, 0x7f0801f8

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/ReviewsControlContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/ReviewsControlContainer;->mFilterBox:Landroid/widget/TextView;

    .line 34
    invoke-direct {p0}, Lcom/google/android/finsky/layout/ReviewsControlContainer;->setSortAdapter()V

    .line 35
    return-void
.end method

.method public setData(Lcom/google/android/finsky/api/model/DfeReviews;)V
    .locals 2
    .parameter "data"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/finsky/layout/ReviewsControlContainer;->mSortSpinner:Landroid/widget/Spinner;

    new-instance v1, Lcom/google/android/finsky/layout/ReviewsControlContainer$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/finsky/layout/ReviewsControlContainer$1;-><init>(Lcom/google/android/finsky/layout/ReviewsControlContainer;Lcom/google/android/finsky/api/model/DfeReviews;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 62
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/DfeReviews;->getSortType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 73
    :goto_0
    return-void

    .line 64
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/finsky/layout/ReviewsControlContainer;->mSortSpinner:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0

    .line 67
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/finsky/layout/ReviewsControlContainer;->mSortSpinner:Landroid/widget/Spinner;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0

    .line 70
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/finsky/layout/ReviewsControlContainer;->mSortSpinner:Landroid/widget/Spinner;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0

    .line 62
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public setFilterHandler(Lcom/google/android/finsky/adapters/ReviewsAdapter$ChooseFilterOptionsHandler;)V
    .locals 2
    .parameter "filterHandler"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/android/finsky/layout/ReviewsControlContainer;->mFilterBox:Landroid/widget/TextView;

    new-instance v1, Lcom/google/android/finsky/layout/ReviewsControlContainer$2;

    invoke-direct {v1, p0, p1}, Lcom/google/android/finsky/layout/ReviewsControlContainer$2;-><init>(Lcom/google/android/finsky/layout/ReviewsControlContainer;Lcom/google/android/finsky/adapters/ReviewsAdapter$ChooseFilterOptionsHandler;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    return-void
.end method
