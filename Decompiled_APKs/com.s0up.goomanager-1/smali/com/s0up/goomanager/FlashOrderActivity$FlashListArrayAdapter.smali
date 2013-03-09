.class Lcom/s0up/goomanager/FlashOrderActivity$FlashListArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "FlashOrderActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s0up/goomanager/FlashOrderActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FlashListArrayAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/s0up/goomanager/FlashOrderActivity$SelectedFileName;",
        ">;"
    }
.end annotation


# instance fields
.field private inflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/s0up/goomanager/FlashOrderActivity$SelectedFileName;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 250
    .local p2, fileList:Ljava/util/List;,"Ljava/util/List<Lcom/s0up/goomanager/FlashOrderActivity$SelectedFileName;>;"
    const v0, 0x7f030009

    const v1, 0x7f09001f

    invoke-direct {p0, p1, v0, v1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 252
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/s0up/goomanager/FlashOrderActivity$FlashListArrayAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 253
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 258
    invoke-virtual {p0, p1}, Lcom/s0up/goomanager/FlashOrderActivity$FlashListArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/s0up/goomanager/FlashOrderActivity$SelectedFileName;

    .line 264
    .local v2, flashName:Lcom/s0up/goomanager/FlashOrderActivity$SelectedFileName;
    if-nez p2, :cond_0

    .line 265
    iget-object v5, p0, Lcom/s0up/goomanager/FlashOrderActivity$FlashListArrayAdapter;->inflater:Landroid/view/LayoutInflater;

    const v6, 0x7f030009

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 267
    const v5, 0x7f09001f

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 268
    .local v3, textView:Landroid/widget/TextView;
    const v5, 0x7f090021

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 269
    .local v1, btnUp:Landroid/widget/ImageButton;
    const v5, 0x7f090020

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 271
    .local v0, btnDown:Landroid/widget/ImageButton;
    new-instance v5, Lcom/s0up/goomanager/FlashOrderActivity$FlashListViewHolder;

    invoke-direct {v5, v3, v1, v0}, Lcom/s0up/goomanager/FlashOrderActivity$FlashListViewHolder;-><init>(Landroid/widget/TextView;Landroid/widget/ImageButton;Landroid/widget/ImageButton;)V

    invoke-virtual {p2, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 273
    new-instance v5, Lcom/s0up/goomanager/FlashOrderActivity$FlashListArrayAdapter$1;

    invoke-direct {v5, p0, v2}, Lcom/s0up/goomanager/FlashOrderActivity$FlashListArrayAdapter$1;-><init>(Lcom/s0up/goomanager/FlashOrderActivity$FlashListArrayAdapter;Lcom/s0up/goomanager/FlashOrderActivity$SelectedFileName;)V

    invoke-virtual {v1, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 300
    new-instance v5, Lcom/s0up/goomanager/FlashOrderActivity$FlashListArrayAdapter$2;

    invoke-direct {v5, p0, v2}, Lcom/s0up/goomanager/FlashOrderActivity$FlashListArrayAdapter$2;-><init>(Lcom/s0up/goomanager/FlashOrderActivity$FlashListArrayAdapter;Lcom/s0up/goomanager/FlashOrderActivity$SelectedFileName;)V

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 334
    :goto_0
    invoke-virtual {v2}, Lcom/s0up/goomanager/FlashOrderActivity$SelectedFileName;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 336
    return-object p2

    .line 328
    .end local v0           #btnDown:Landroid/widget/ImageButton;
    .end local v1           #btnUp:Landroid/widget/ImageButton;
    .end local v3           #textView:Landroid/widget/TextView;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/s0up/goomanager/FlashOrderActivity$FlashListViewHolder;

    .line 329
    .local v4, viewHolder:Lcom/s0up/goomanager/FlashOrderActivity$FlashListViewHolder;
    invoke-virtual {v4}, Lcom/s0up/goomanager/FlashOrderActivity$FlashListViewHolder;->getBtnUp()Landroid/widget/ImageButton;

    move-result-object v1

    .line 330
    .restart local v1       #btnUp:Landroid/widget/ImageButton;
    invoke-virtual {v4}, Lcom/s0up/goomanager/FlashOrderActivity$FlashListViewHolder;->getBtnDown()Landroid/widget/ImageButton;

    move-result-object v0

    .line 331
    .restart local v0       #btnDown:Landroid/widget/ImageButton;
    invoke-virtual {v4}, Lcom/s0up/goomanager/FlashOrderActivity$FlashListViewHolder;->getTextView()Landroid/widget/TextView;

    move-result-object v3

    .restart local v3       #textView:Landroid/widget/TextView;
    goto :goto_0
.end method
