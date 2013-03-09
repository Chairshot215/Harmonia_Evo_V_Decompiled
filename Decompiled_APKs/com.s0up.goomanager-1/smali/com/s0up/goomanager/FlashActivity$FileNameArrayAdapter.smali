.class Lcom/s0up/goomanager/FlashActivity$FileNameArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "FlashActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s0up/goomanager/FlashActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FileNameArrayAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/s0up/goomanager/FlashActivity$FileName;",
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
            "Lcom/s0up/goomanager/FlashActivity$FileName;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 295
    .local p2, fileList:Ljava/util/List;,"Ljava/util/List<Lcom/s0up/goomanager/FlashActivity$FileName;>;"
    const v0, 0x7f030007

    const v1, 0x7f090018

    invoke-direct {p0, p1, v0, v1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 297
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/s0up/goomanager/FlashActivity$FileNameArrayAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 298
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 303
    invoke-virtual {p0, p1}, Lcom/s0up/goomanager/FlashActivity$FileNameArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/s0up/goomanager/FlashActivity$FileName;

    .line 308
    .local v1, fileName:Lcom/s0up/goomanager/FlashActivity$FileName;
    if-nez p2, :cond_0

    .line 309
    iget-object v4, p0, Lcom/s0up/goomanager/FlashActivity$FileNameArrayAdapter;->inflater:Landroid/view/LayoutInflater;

    const v5, 0x7f030007

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 311
    const v4, 0x7f090018

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 312
    .local v2, textView:Landroid/widget/TextView;
    const v4, 0x7f090017

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 314
    .local v0, checkBox:Landroid/widget/CheckBox;
    new-instance v4, Lcom/s0up/goomanager/FlashActivity$FileNameViewHolder;

    invoke-direct {v4, v2, v0}, Lcom/s0up/goomanager/FlashActivity$FileNameViewHolder;-><init>(Landroid/widget/TextView;Landroid/widget/CheckBox;)V

    invoke-virtual {p2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 316
    new-instance v4, Lcom/s0up/goomanager/FlashActivity$FileNameArrayAdapter$1;

    invoke-direct {v4, p0}, Lcom/s0up/goomanager/FlashActivity$FileNameArrayAdapter$1;-><init>(Lcom/s0up/goomanager/FlashActivity$FileNameArrayAdapter;)V

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 329
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 331
    invoke-virtual {v1}, Lcom/s0up/goomanager/FlashActivity$FileName;->isChecked()Z

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 332
    invoke-virtual {v1}, Lcom/s0up/goomanager/FlashActivity$FileName;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 334
    return-object p2

    .line 324
    .end local v0           #checkBox:Landroid/widget/CheckBox;
    .end local v2           #textView:Landroid/widget/TextView;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/s0up/goomanager/FlashActivity$FileNameViewHolder;

    .line 325
    .local v3, viewHolder:Lcom/s0up/goomanager/FlashActivity$FileNameViewHolder;
    invoke-virtual {v3}, Lcom/s0up/goomanager/FlashActivity$FileNameViewHolder;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v0

    .line 326
    .restart local v0       #checkBox:Landroid/widget/CheckBox;
    invoke-virtual {v3}, Lcom/s0up/goomanager/FlashActivity$FileNameViewHolder;->getTextView()Landroid/widget/TextView;

    move-result-object v2

    .restart local v2       #textView:Landroid/widget/TextView;
    goto :goto_0
.end method
