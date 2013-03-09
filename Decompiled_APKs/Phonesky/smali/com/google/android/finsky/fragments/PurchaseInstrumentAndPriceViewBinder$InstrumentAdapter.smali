.class Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$InstrumentAdapter;
.super Landroid/widget/ArrayAdapter;
.source "PurchaseInstrumentAndPriceViewBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InstrumentAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$InstrumentSelectorItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final mSpinner:Landroid/widget/Spinner;

.field final synthetic this$0:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;Landroid/widget/Spinner;)V
    .locals 3
    .parameter
    .parameter "instrumentSpinner"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$InstrumentAdapter;->this$0:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;

    .line 68
    #getter for: Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mFragment:Landroid/support/v4/app/Fragment;
    invoke-static {p1}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->access$000(Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0400e0

    const v2, 0x7f08015b

    invoke-direct {p0, v0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II)V

    .line 70
    iput-object p2, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$InstrumentAdapter;->mSpinner:Landroid/widget/Spinner;

    .line 71
    return-void
.end method


# virtual methods
.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/16 v10, 0x8

    const/4 v7, 0x0

    .line 100
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$InstrumentAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$InstrumentSelectorItem;

    .line 101
    .local v2, item:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$InstrumentSelectorItem;
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 102
    .local v5, view:Landroid/view/View;
    iget-object v6, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$InstrumentAdapter;->this$0:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;

    #getter for: Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->purchaseSpinnerLeftPadding:I
    invoke-static {v6}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->access$100(Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;)I

    move-result v6

    iget-object v8, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$InstrumentAdapter;->this$0:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;

    #getter for: Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->purchaseSpinnerRightPadding:I
    invoke-static {v8}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->access$200(Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;)I

    move-result v8

    invoke-virtual {v5, v6, v7, v8, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 104
    const v6, 0x7f08015b

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 105
    .local v1, description:Landroid/widget/TextView;
    iget-object v6, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$InstrumentAdapter;->this$0:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;

    #getter for: Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->purchaseSpinnerDescriptionTopPadding:I
    invoke-static {v6}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->access$300(Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;)I

    move-result v6

    iget-object v8, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$InstrumentAdapter;->this$0:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;

    #getter for: Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->purchaseSpinnerDescriptionRightPadding:I
    invoke-static {v8}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->access$400(Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;)I

    move-result v8

    iget-object v9, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$InstrumentAdapter;->this$0:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;

    #getter for: Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->purchaseSpinnerDescriptionBottomPadding:I
    invoke-static {v9}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->access$500(Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;)I

    move-result v9

    invoke-virtual {v1, v7, v6, v8, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 109
    const v6, 0x7f08015c

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 110
    .local v0, button:Landroid/widget/RadioButton;
    invoke-interface {v2}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$InstrumentSelectorItem;->isValidSelection()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 111
    sget-object v6, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 112
    invoke-virtual {v0, v7}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 113
    iget-object v6, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$InstrumentAdapter;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v6}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v6

    if-ne v6, p1, :cond_0

    const/4 v6, 0x1

    :goto_0
    invoke-virtual {v0, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 114
    invoke-interface {v2}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$InstrumentSelectorItem;->isEnabled()Z

    move-result v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 115
    const v6, 0x7f0801c8

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 116
    .local v4, messageView:Landroid/widget/TextView;
    invoke-interface {v2}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$InstrumentSelectorItem;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 117
    .local v3, message:Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 118
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    invoke-interface {v2}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$InstrumentSelectorItem;->isEnabled()Z

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 120
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 128
    .end local v3           #message:Ljava/lang/String;
    .end local v4           #messageView:Landroid/widget/TextView;
    :goto_1
    return-object v5

    :cond_0
    move v6, v7

    .line 113
    goto :goto_0

    .line 122
    .restart local v3       #message:Ljava/lang/String;
    .restart local v4       #messageView:Landroid/widget/TextView;
    :cond_1
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 125
    .end local v3           #message:Ljava/lang/String;
    .end local v4           #messageView:Landroid/widget/TextView;
    :cond_2
    sget-object v6, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 126
    invoke-virtual {v0, v10}, Landroid/widget/RadioButton;->setVisibility(I)V

    goto :goto_1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 80
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$InstrumentAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$InstrumentSelectorItem;

    .line 81
    .local v2, item:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$InstrumentSelectorItem;
    if-nez p2, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$InstrumentAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 84
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f0400e1

    const/4 v4, 0x0

    invoke-virtual {v1, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .end local v1           #inflater:Landroid/view/LayoutInflater;
    :cond_0
    move-object v0, p2

    .line 87
    check-cast v0, Landroid/widget/TextView;

    .line 88
    .local v0, description:Landroid/widget/TextView;
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    invoke-interface {v2}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$InstrumentSelectorItem;->isValidSelection()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 90
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 95
    :goto_0
    return-object p2

    .line 92
    :cond_1
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 75
    invoke-super {p0, p1}, Landroid/widget/ArrayAdapter;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$InstrumentAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$InstrumentSelectorItem;

    invoke-interface {v0}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$InstrumentSelectorItem;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
