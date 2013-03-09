.class Lcom/google/android/voicesearch/HelpDialog$HintAdapter;
.super Landroid/widget/BaseAdapter;
.source "HelpDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/voicesearch/HelpDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HintAdapter"
.end annotation


# instance fields
.field mActionTitles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field mHintIcons:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field mHintTexts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/android/voicesearch/HelpDialog;


# direct methods
.method public constructor <init>(Lcom/google/android/voicesearch/HelpDialog;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 6
    .parameter
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/voicesearch/Hints$HintData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, supportedHints:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/voicesearch/Hints$HintData;>;"
    const/4 v3, 0x0

    .line 506
    iput-object p1, p0, Lcom/google/android/voicesearch/HelpDialog$HintAdapter;->this$0:Lcom/google/android/voicesearch/HelpDialog;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 502
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/android/voicesearch/HelpDialog$HintAdapter;->mHintIcons:Ljava/util/ArrayList;

    .line 503
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/android/voicesearch/HelpDialog$HintAdapter;->mHintTexts:Ljava/util/ArrayList;

    .line 504
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/android/voicesearch/HelpDialog$HintAdapter;->mActionTitles:Ljava/util/ArrayList;

    .line 509
    #calls: Lcom/google/android/voicesearch/HelpDialog;->getTitleAction()Lcom/google/android/voicesearch/Hints$HintData;
    invoke-static {p1}, Lcom/google/android/voicesearch/HelpDialog;->access$1700(Lcom/google/android/voicesearch/HelpDialog;)Lcom/google/android/voicesearch/Hints$HintData;

    move-result-object v2

    invoke-virtual {p3, v3, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 510
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    #calls: Lcom/google/android/voicesearch/HelpDialog;->getSearchAction()Lcom/google/android/voicesearch/Hints$HintData;
    invoke-static {p1}, Lcom/google/android/voicesearch/HelpDialog;->access$1800(Lcom/google/android/voicesearch/HelpDialog;)Lcom/google/android/voicesearch/Hints$HintData;

    move-result-object v4

    invoke-virtual {p3, v2, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 512
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 513
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/voicesearch/Hints$HintData;

    .line 514
    .local v0, hint:Lcom/google/android/voicesearch/Hints$HintData;
    iget-object v2, p0, Lcom/google/android/voicesearch/HelpDialog$HintAdapter;->mHintTexts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/Hints$HintData;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    #calls: Lcom/google/android/voicesearch/HelpDialog;->formatDisplayText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    invoke-static {p1, v4}, Lcom/google/android/voicesearch/HelpDialog;->access$1900(Lcom/google/android/voicesearch/HelpDialog;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 515
    iget-object v2, p0, Lcom/google/android/voicesearch/HelpDialog$HintAdapter;->mHintIcons:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/Hints$HintData;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 517
    invoke-virtual {v0}, Lcom/google/android/voicesearch/Hints$HintData;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 518
    iget-object v2, p0, Lcom/google/android/voicesearch/HelpDialog$HintAdapter;->mActionTitles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/Hints$HintData;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 512
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 521
    :cond_0
    iget-object v4, p0, Lcom/google/android/voicesearch/HelpDialog$HintAdapter;->mActionTitles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/Hints$HintData;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    :goto_2
    #calls: Lcom/google/android/voicesearch/HelpDialog;->formatActionText(Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;
    invoke-static {p1, v5, v2}, Lcom/google/android/voicesearch/HelpDialog;->access$2000(Lcom/google/android/voicesearch/HelpDialog;Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    move v2, v3

    goto :goto_2

    .line 524
    .end local v0           #hint:Lcom/google/android/voicesearch/Hints$HintData;
    :cond_2
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 528
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog$HintAdapter;->mHintTexts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 533
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog$HintAdapter;->mHintTexts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 538
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 545
    if-nez p2, :cond_0

    .line 546
    iget-object v1, p0, Lcom/google/android/voicesearch/HelpDialog$HintAdapter;->this$0:Lcom/google/android/voicesearch/HelpDialog;

    #getter for: Lcom/google/android/voicesearch/HelpDialog;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v1}, Lcom/google/android/voicesearch/HelpDialog;->access$2100(Lcom/google/android/voicesearch/HelpDialog;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040008

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 552
    .local v0, galleryItem:Landroid/widget/LinearLayout;
    :goto_0
    const v1, 0x7f0e0014

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/google/android/voicesearch/HelpDialog$HintAdapter;->mActionTitles:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 555
    const v1, 0x7f0e0013

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/google/android/voicesearch/HelpDialog$HintAdapter;->mHintIcons:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 558
    return-object v0

    .end local v0           #galleryItem:Landroid/widget/LinearLayout;
    :cond_0
    move-object v0, p2

    .line 549
    check-cast v0, Landroid/widget/LinearLayout;

    .restart local v0       #galleryItem:Landroid/widget/LinearLayout;
    goto :goto_0
.end method
