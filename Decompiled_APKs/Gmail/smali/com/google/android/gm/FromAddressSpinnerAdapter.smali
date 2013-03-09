.class public Lcom/google/android/gm/FromAddressSpinnerAdapter;
.super Landroid/widget/ArrayAdapter;
.source "FromAddressSpinnerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<[",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field private mSpinner:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 27
    const v0, 0x7f04002e

    const v1, 0x7f0f0082

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II)V

    .line 28
    return-void
.end method


# virtual methods
.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v8, 0x0

    const v7, 0x7f0f0082

    const v6, 0x7f0f0083

    .line 70
    invoke-virtual {p0, p1}, Lcom/google/android/gm/FromAddressSpinnerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 72
    .local v3, fromItem:[Ljava/lang/String;
    sget v4, Lcom/google/android/gm/ComposeActivity;->IS_CUSTOMFROM:I

    aget-object v4, v3, v4

    const-string v5, "true"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 74
    if-eqz p2, :cond_0

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 76
    move-object v2, p2

    .line 80
    .local v2, fromEntry:Landroid/view/View;
    :goto_0
    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 81
    .local v1, acctName:Landroid/widget/TextView;
    sget v4, Lcom/google/android/gm/utils/CustomFromUtils;->ACCOUNT_DISPLAY:I

    aget-object v4, v3, v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 84
    .local v0, acctAddress:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/google/android/gm/FromAddressSpinnerAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0003

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    sget v8, Lcom/google/android/gm/utils/CustomFromUtils;->ACCOUNT_ADDRESS:I

    aget-object v8, v3, v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    .end local v0           #acctAddress:Landroid/widget/TextView;
    :goto_1
    return-object v2

    .line 78
    .end local v1           #acctName:Landroid/widget/TextView;
    .end local v2           #fromEntry:Landroid/view/View;
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gm/FromAddressSpinnerAdapter;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f040026

    invoke-virtual {v4, v5, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .restart local v2       #fromEntry:Landroid/view/View;
    goto :goto_0

    .line 89
    .end local v2           #fromEntry:Landroid/view/View;
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_2

    .line 91
    move-object v2, p2

    .line 95
    .restart local v2       #fromEntry:Landroid/view/View;
    :goto_2
    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 96
    .restart local v1       #acctName:Landroid/widget/TextView;
    sget v4, Lcom/google/android/gm/utils/CustomFromUtils;->ACCOUNT_DISPLAY:I

    aget-object v4, v3, v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 93
    .end local v1           #acctName:Landroid/widget/TextView;
    .end local v2           #fromEntry:Landroid/view/View;
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gm/FromAddressSpinnerAdapter;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f04002d

    invoke-virtual {v4, v5, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .restart local v2       #fromEntry:Landroid/view/View;
    goto :goto_2
.end method

.method protected getInflater()Landroid/view/LayoutInflater;
    .locals 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/gm/FromAddressSpinnerAdapter;->mInflater:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    .line 32
    invoke-virtual {p0}, Lcom/google/android/gm/FromAddressSpinnerAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/google/android/gm/FromAddressSpinnerAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/FromAddressSpinnerAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v6, 0x0

    const v5, 0x7f0f0082

    const v4, 0x7f0f0083

    .line 40
    invoke-virtual {p0, p1}, Lcom/google/android/gm/FromAddressSpinnerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 43
    .local v1, fromItem:[Ljava/lang/String;
    sget v2, Lcom/google/android/gm/ComposeActivity;->IS_CUSTOMFROM:I

    aget-object v2, v1, v2

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 44
    if-eqz p2, :cond_0

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 46
    move-object v0, p2

    .line 50
    .local v0, fromEntry:Landroid/view/View;
    :goto_0
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sget v3, Lcom/google/android/gm/utils/CustomFromUtils;->ACCOUNT_DISPLAY:I

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/android/gm/FromAddressSpinnerAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0003

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    sget v7, Lcom/google/android/gm/utils/CustomFromUtils;->ACCOUNT_ADDRESS:I

    aget-object v7, v1, v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    :goto_1
    return-object v0

    .line 48
    .end local v0           #fromEntry:Landroid/view/View;
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gm/FromAddressSpinnerAdapter;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040027

    invoke-virtual {v2, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .restart local v0       #fromEntry:Landroid/view/View;
    goto :goto_0

    .line 56
    .end local v0           #fromEntry:Landroid/view/View;
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_2

    .line 58
    move-object v0, p2

    .line 62
    .restart local v0       #fromEntry:Landroid/view/View;
    :goto_2
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sget v3, Lcom/google/android/gm/utils/CustomFromUtils;->ACCOUNT_ADDRESS:I

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 60
    .end local v0           #fromEntry:Landroid/view/View;
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gm/FromAddressSpinnerAdapter;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f04002e

    invoke-virtual {v2, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .restart local v0       #fromEntry:Landroid/view/View;
    goto :goto_2
.end method

.method public setSpinner(Landroid/widget/Spinner;)V
    .locals 0
    .parameter "spinner"

    .prologue
    .line 107
    iput-object p1, p0, Lcom/google/android/gm/FromAddressSpinnerAdapter;->mSpinner:Landroid/widget/Spinner;

    .line 108
    return-void
.end method
