.class final Lcom/htc/Weather/AddCity$cityAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "AddCity.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/Weather/AddCity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "cityAdapter"
.end annotation


# instance fields
.field private mAlphabet:Ljava/lang/String;

.field private mIndexer:Landroid/widget/AlphabetIndexer;

.field private mLoading:Z

.field final synthetic this$0:Lcom/htc/Weather/AddCity;


# direct methods
.method public constructor <init>(Lcom/htc/Weather/AddCity;Landroid/content/Context;ILandroid/database/Cursor;)V
    .locals 3
    .parameter
    .parameter "context"
    .parameter "layout"
    .parameter "c"

    .prologue
    .line 494
    iput-object p1, p0, Lcom/htc/Weather/AddCity$cityAdapter;->this$0:Lcom/htc/Weather/AddCity;

    .line 495
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    .line 492
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/Weather/AddCity$cityAdapter;->mLoading:Z

    .line 496
    const v0, 0x1040419

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/Weather/AddCity$cityAdapter;->mAlphabet:Ljava/lang/String;

    .line 497
    if-eqz p4, :cond_0

    .line 498
    new-instance v0, Landroid/widget/AlphabetIndexer;

    #getter for: Lcom/htc/Weather/AddCity;->mIndexMode:I
    invoke-static {p1}, Lcom/htc/Weather/AddCity;->access$200(Lcom/htc/Weather/AddCity;)I

    move-result v1

    iget-object v2, p0, Lcom/htc/Weather/AddCity$cityAdapter;->mAlphabet:Ljava/lang/String;

    invoke-direct {v0, p4, v1, v2}, Landroid/widget/AlphabetIndexer;-><init>(Landroid/database/Cursor;ILjava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/htc/Weather/AddCity$cityAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    .line 500
    :cond_0
    return-void
.end method

.method private setSpannableString(Landroid/view/View;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "v"
    .parameter "primary"
    .parameter "str"
    .parameter "pattern"

    .prologue
    const/16 v5, 0x21

    .line 518
    if-eqz p1, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 539
    :cond_0
    :goto_0
    return-void

    .line 521
    :cond_1
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 522
    .local v0, displayString:Landroid/text/SpannableString;
    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 523
    .local v1, pos0:I
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v3

    add-int v2, v1, v3

    .line 524
    .local v2, pos1:I
    if-ltz v1, :cond_3

    .line 525
    invoke-static {}, Lcom/htc/Weather/AddCity;->access$300()Landroid/text/style/BackgroundColorSpan;

    move-result-object v3

    invoke-virtual {v0, v3, v1, v2, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 527
    invoke-static {}, Lcom/htc/Weather/AddCity;->access$400()Landroid/text/style/ForegroundColorSpan;

    move-result-object v3

    invoke-virtual {v0, v3, v1, v2, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 529
    if-eqz p2, :cond_2

    .line 530
    iget-object v3, p0, Lcom/htc/Weather/AddCity$cityAdapter;->this$0:Lcom/htc/Weather/AddCity;

    #getter for: Lcom/htc/Weather/AddCity;->mySkinUtil:Lcom/htc/Weather/util/SkinUtil;
    invoke-static {v3}, Lcom/htc/Weather/AddCity;->access$500(Lcom/htc/Weather/AddCity;)Lcom/htc/Weather/util/SkinUtil;

    move-result-object v3

    invoke-virtual {v3, p1, v0}, Lcom/htc/Weather/util/SkinUtil;->setCityString(Landroid/view/View;Landroid/text/SpannableString;)V

    goto :goto_0

    .line 532
    :cond_2
    iget-object v3, p0, Lcom/htc/Weather/AddCity$cityAdapter;->this$0:Lcom/htc/Weather/AddCity;

    #getter for: Lcom/htc/Weather/AddCity;->mySkinUtil:Lcom/htc/Weather/util/SkinUtil;
    invoke-static {v3}, Lcom/htc/Weather/AddCity;->access$500(Lcom/htc/Weather/AddCity;)Lcom/htc/Weather/util/SkinUtil;

    move-result-object v3

    invoke-virtual {v3, p1, v0}, Lcom/htc/Weather/util/SkinUtil;->setStateString(Landroid/view/View;Landroid/text/SpannableString;)V

    goto :goto_0

    .line 534
    :cond_3
    if-eqz p2, :cond_4

    .line 535
    iget-object v3, p0, Lcom/htc/Weather/AddCity$cityAdapter;->this$0:Lcom/htc/Weather/AddCity;

    #getter for: Lcom/htc/Weather/AddCity;->mySkinUtil:Lcom/htc/Weather/util/SkinUtil;
    invoke-static {v3}, Lcom/htc/Weather/AddCity;->access$500(Lcom/htc/Weather/AddCity;)Lcom/htc/Weather/util/SkinUtil;

    move-result-object v3

    invoke-virtual {v3, p1, p3}, Lcom/htc/Weather/util/SkinUtil;->setCityString(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    .line 537
    :cond_4
    iget-object v3, p0, Lcom/htc/Weather/AddCity$cityAdapter;->this$0:Lcom/htc/Weather/AddCity;

    #getter for: Lcom/htc/Weather/AddCity;->mySkinUtil:Lcom/htc/Weather/util/SkinUtil;
    invoke-static {v3}, Lcom/htc/Weather/AddCity;->access$500(Lcom/htc/Weather/AddCity;)Lcom/htc/Weather/util/SkinUtil;

    move-result-object v3

    invoke-virtual {v3, p1, p3}, Lcom/htc/Weather/util/SkinUtil;->setStateString(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateIndexer(Landroid/database/Cursor;)V
    .locals 3
    .parameter "cursor"

    .prologue
    .line 566
    iget-object v0, p0, Lcom/htc/Weather/AddCity$cityAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    if-eqz v0, :cond_0

    .line 567
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/Weather/AddCity$cityAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    .line 568
    if-eqz p1, :cond_0

    .line 569
    new-instance v0, Landroid/widget/AlphabetIndexer;

    iget-object v1, p0, Lcom/htc/Weather/AddCity$cityAdapter;->this$0:Lcom/htc/Weather/AddCity;

    #getter for: Lcom/htc/Weather/AddCity;->mIndexMode:I
    invoke-static {v1}, Lcom/htc/Weather/AddCity;->access$200(Lcom/htc/Weather/AddCity;)I

    move-result v1

    iget-object v2, p0, Lcom/htc/Weather/AddCity$cityAdapter;->mAlphabet:Ljava/lang/String;

    invoke-direct {v0, p1, v1, v2}, Landroid/widget/AlphabetIndexer;-><init>(Landroid/database/Cursor;ILjava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/htc/Weather/AddCity$cityAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    .line 570
    iget-object v0, p0, Lcom/htc/Weather/AddCity$cityAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    invoke-virtual {v0, p1}, Landroid/widget/AlphabetIndexer;->setCursor(Landroid/database/Cursor;)V

    .line 573
    :cond_0
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 6
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 543
    iget-object v2, p0, Lcom/htc/Weather/AddCity$cityAdapter;->this$0:Lcom/htc/Weather/AddCity;

    iget-object v3, p0, Lcom/htc/Weather/AddCity$cityAdapter;->this$0:Lcom/htc/Weather/AddCity;

    #getter for: Lcom/htc/Weather/AddCity;->mEditText:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/htc/Weather/AddCity;->access$600(Lcom/htc/Weather/AddCity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/htc/Weather/AddCity;->getTrimmedString(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/htc/Weather/AddCity;->access$700(Lcom/htc/Weather/AddCity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 544
    .local v0, pattern:Ljava/lang/String;
    invoke-static {p3}, Lcom/htc/util/weather/WeatherUtility;->generateDisplayText(Landroid/database/Cursor;)[Ljava/lang/String;

    move-result-object v1

    .line 546
    .local v1, text:[Ljava/lang/String;
    aget-object v2, v1, v4

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 547
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 548
    aget-object v2, v1, v4

    invoke-direct {p0, p1, v5, v2, v0}, Lcom/htc/Weather/AddCity$cityAdapter;->setSpannableString(Landroid/view/View;ZLjava/lang/String;Ljava/lang/String;)V

    .line 549
    aget-object v2, v1, v5

    invoke-direct {p0, p1, v4, v2, v0}, Lcom/htc/Weather/AddCity$cityAdapter;->setSpannableString(Landroid/view/View;ZLjava/lang/String;Ljava/lang/String;)V

    .line 557
    :cond_0
    :goto_0
    return-void

    .line 551
    :cond_1
    iget-object v2, p0, Lcom/htc/Weather/AddCity$cityAdapter;->this$0:Lcom/htc/Weather/AddCity;

    #getter for: Lcom/htc/Weather/AddCity;->mySkinUtil:Lcom/htc/Weather/util/SkinUtil;
    invoke-static {v2}, Lcom/htc/Weather/AddCity;->access$500(Lcom/htc/Weather/AddCity;)Lcom/htc/Weather/util/SkinUtil;

    move-result-object v2

    aget-object v3, v1, v4

    invoke-virtual {v2, p1, v3}, Lcom/htc/Weather/util/SkinUtil;->setCityString(Landroid/view/View;Ljava/lang/String;)V

    .line 552
    iget-object v2, p0, Lcom/htc/Weather/AddCity$cityAdapter;->this$0:Lcom/htc/Weather/AddCity;

    #getter for: Lcom/htc/Weather/AddCity;->mySkinUtil:Lcom/htc/Weather/util/SkinUtil;
    invoke-static {v2}, Lcom/htc/Weather/AddCity;->access$500(Lcom/htc/Weather/AddCity;)Lcom/htc/Weather/util/SkinUtil;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, p1, v3}, Lcom/htc/Weather/util/SkinUtil;->setStateString(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 0
    .parameter "cursor"

    .prologue
    .line 561
    invoke-super {p0, p1}, Landroid/widget/ResourceCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 562
    invoke-direct {p0, p1}, Lcom/htc/Weather/AddCity$cityAdapter;->updateIndexer(Landroid/database/Cursor;)V

    .line 563
    return-void
.end method

.method public getPositionForSection(I)I
    .locals 4
    .parameter "sectionIndex"

    .prologue
    .line 583
    iget-object v1, p0, Lcom/htc/Weather/AddCity$cityAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    if-nez v1, :cond_1

    .line 584
    iget-object v1, p0, Lcom/htc/Weather/AddCity$cityAdapter;->this$0:Lcom/htc/Weather/AddCity;

    iget-object v1, v1, Lcom/htc/Weather/AddCity;->mAdapter:Lcom/htc/Weather/AddCity$cityAdapter;

    invoke-virtual {v1}, Lcom/htc/Weather/AddCity$cityAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 585
    .local v0, cursor:Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 587
    const/4 v1, 0x0

    .line 592
    .end local v0           #cursor:Landroid/database/Cursor;
    :goto_0
    return v1

    .line 589
    .restart local v0       #cursor:Landroid/database/Cursor;
    :cond_0
    new-instance v1, Landroid/widget/AlphabetIndexer;

    iget-object v2, p0, Lcom/htc/Weather/AddCity$cityAdapter;->this$0:Lcom/htc/Weather/AddCity;

    #getter for: Lcom/htc/Weather/AddCity;->mIndexMode:I
    invoke-static {v2}, Lcom/htc/Weather/AddCity;->access$200(Lcom/htc/Weather/AddCity;)I

    move-result v2

    iget-object v3, p0, Lcom/htc/Weather/AddCity$cityAdapter;->mAlphabet:Ljava/lang/String;

    invoke-direct {v1, v0, v2, v3}, Landroid/widget/AlphabetIndexer;-><init>(Landroid/database/Cursor;ILjava/lang/CharSequence;)V

    iput-object v1, p0, Lcom/htc/Weather/AddCity$cityAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    .line 592
    .end local v0           #cursor:Landroid/database/Cursor;
    :cond_1
    iget-object v1, p0, Lcom/htc/Weather/AddCity$cityAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    invoke-virtual {v1, p1}, Landroid/widget/AlphabetIndexer;->getPositionForSection(I)I

    move-result v1

    goto :goto_0
.end method

.method public getSectionForPosition(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 596
    const/4 v0, 0x0

    return v0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 576
    iget-object v0, p0, Lcom/htc/Weather/AddCity$cityAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    if-eqz v0, :cond_0

    .line 577
    iget-object v0, p0, Lcom/htc/Weather/AddCity$cityAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    invoke-virtual {v0}, Landroid/widget/AlphabetIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    .line 578
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 508
    iget-boolean v0, p0, Lcom/htc/Weather/AddCity$cityAdapter;->mLoading:Z

    if-eqz v0, :cond_0

    .line 510
    const/4 v0, 0x0

    .line 512
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/ResourceCursorAdapter;->isEmpty()Z

    move-result v0

    goto :goto_0
.end method

.method public setLoading(Z)V
    .locals 0
    .parameter "loading"

    .prologue
    .line 503
    iput-boolean p1, p0, Lcom/htc/Weather/AddCity$cityAdapter;->mLoading:Z

    .line 504
    return-void
.end method
