.class Lcom/android/browser/PieControlBase$TabAdapter;
.super Landroid/widget/BaseAdapter;
.source "PieControlBase.java"

# interfaces
.implements Lcom/android/browser/view/PieStackView$OnCurrentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/PieControlBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TabAdapter"
.end annotation


# instance fields
.field private mCurrent:I

.field mInflater:Landroid/view/LayoutInflater;

.field private mTabs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/browser/Tab;",
            ">;"
        }
    .end annotation
.end field

.field mUiController:Lcom/android/browser/UiController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/browser/UiController;)V
    .locals 1
    .parameter "ctx"
    .parameter "ctl"

    .prologue
    .line 125
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 126
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/PieControlBase$TabAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 127
    iput-object p2, p0, Lcom/android/browser/PieControlBase$TabAdapter;->mUiController:Lcom/android/browser/UiController;

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/browser/PieControlBase$TabAdapter;->mTabs:Ljava/util/List;

    .line 129
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/browser/PieControlBase$TabAdapter;->mCurrent:I

    .line 130
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/browser/PieControlBase$TabAdapter;->mTabs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/android/browser/Tab;
    .locals 1
    .parameter "position"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/browser/PieControlBase$TabAdapter;->mTabs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/browser/Tab;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    invoke-virtual {p0, p1}, Lcom/android/browser/PieControlBase$TabAdapter;->getItem(I)Lcom/android/browser/Tab;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 149
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/16 v9, 0x8

    .line 154
    iget-object v6, p0, Lcom/android/browser/PieControlBase$TabAdapter;->mTabs:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/browser/Tab;

    .line 155
    .local v1, tab:Lcom/android/browser/Tab;
    iget-object v6, p0, Lcom/android/browser/PieControlBase$TabAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f040026

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 157
    .local v5, view:Landroid/view/View;
    const v6, 0x7f0d001d

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 158
    .local v2, thumb:Landroid/widget/ImageView;
    const v6, 0x7f0d0061

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 159
    .local v3, title1:Landroid/widget/TextView;
    const v6, 0x7f0d0062

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 160
    .local v4, title2:Landroid/widget/TextView;
    invoke-virtual {v1}, Lcom/android/browser/Tab;->getScreenshot()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 161
    .local v0, b:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 164
    :cond_0
    iget v6, p0, Lcom/android/browser/PieControlBase$TabAdapter;->mCurrent:I

    if-le p1, v6, :cond_1

    .line 165
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 166
    invoke-virtual {v1}, Lcom/android/browser/Tab;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    :goto_0
    new-instance v6, Lcom/android/browser/PieControlBase$TabAdapter$1;

    invoke-direct {v6, p0, v1}, Lcom/android/browser/PieControlBase$TabAdapter$1;-><init>(Lcom/android/browser/PieControlBase$TabAdapter;Lcom/android/browser/Tab;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    return-object v5

    .line 168
    :cond_1
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 169
    invoke-virtual {v1}, Lcom/android/browser/Tab;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onSetCurrent(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 182
    iput p1, p0, Lcom/android/browser/PieControlBase$TabAdapter;->mCurrent:I

    .line 183
    return-void
.end method

.method public setTabs(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/browser/Tab;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 133
    .local p1, tabs:Ljava/util/List;,"Ljava/util/List<Lcom/android/browser/Tab;>;"
    iput-object p1, p0, Lcom/android/browser/PieControlBase$TabAdapter;->mTabs:Ljava/util/List;

    .line 134
    invoke-virtual {p0}, Lcom/android/browser/PieControlBase$TabAdapter;->notifyDataSetChanged()V

    .line 135
    return-void
.end method
