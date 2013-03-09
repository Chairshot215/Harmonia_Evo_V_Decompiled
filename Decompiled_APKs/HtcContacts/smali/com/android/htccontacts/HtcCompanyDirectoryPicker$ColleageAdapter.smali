.class Lcom/android/htccontacts/HtcCompanyDirectoryPicker$ColleageAdapter;
.super Landroid/widget/ArrayAdapter;
.source "HtcCompanyDirectoryPicker.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/HtcCompanyDirectoryPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ColleageAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/htc/android/pim/eas/EASGalElement;",
        ">;",
        "Landroid/widget/SectionIndexer;"
    }
.end annotation


# instance fields
.field private mAlphabet:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/htccontacts/HtcCompanyDirectoryPicker;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/HtcCompanyDirectoryPicker;Landroid/content/Context;Ljava/util/List;)V
    .locals 4
    .parameter
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/android/pim/eas/EASGalElement;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, objects:Ljava/util/List;,"Ljava/util/List<Lcom/htc/android/pim/eas/EASGalElement;>;"
    const/4 v3, 0x0

    .line 496
    iput-object p1, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$ColleageAdapter;->this$0:Lcom/android/htccontacts/HtcCompanyDirectoryPicker;

    .line 497
    const v0, 0x2090007

    invoke-direct {p0, p2, v0, v3, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 494
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$ColleageAdapter;->mAlphabet:Ljava/lang/String;

    .line 499
    const v0, 0x1040419

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$ColleageAdapter;->mAlphabet:Ljava/lang/String;

    .line 501
    invoke-direct {p0, p3}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$ColleageAdapter;->getMetrixCursor(Ljava/util/List;)Landroid/database/Cursor;

    move-result-object v0

    #setter for: Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mCursor:Landroid/database/Cursor;
    invoke-static {p1, v0}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->access$1402(Lcom/android/htccontacts/HtcCompanyDirectoryPicker;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 502
    #getter for: Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mCursor:Landroid/database/Cursor;
    invoke-static {p1}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->access$1400(Lcom/android/htccontacts/HtcCompanyDirectoryPicker;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 503
    new-instance v0, Landroid/widget/AlphabetIndexer;

    #getter for: Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mCursor:Landroid/database/Cursor;
    invoke-static {p1}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->access$1400(Lcom/android/htccontacts/HtcCompanyDirectoryPicker;)Landroid/database/Cursor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$ColleageAdapter;->mAlphabet:Ljava/lang/String;

    invoke-direct {v0, v1, v3, v2}, Landroid/widget/AlphabetIndexer;-><init>(Landroid/database/Cursor;ILjava/lang/CharSequence;)V

    #setter for: Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mIndexer:Landroid/widget/AlphabetIndexer;
    invoke-static {p1, v0}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->access$1502(Lcom/android/htccontacts/HtcCompanyDirectoryPicker;Landroid/widget/AlphabetIndexer;)Landroid/widget/AlphabetIndexer;

    .line 506
    :cond_0
    return-void
.end method

.method private getMetrixCursor(Ljava/util/List;)Landroid/database/Cursor;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/android/pim/eas/EASGalElement;",
            ">;)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .prologue
    .local p1, objs:Ljava/util/List;,"Ljava/util/List<Lcom/htc/android/pim/eas/EASGalElement;>;"
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 550
    new-array v0, v7, [Ljava/lang/String;

    const-string v5, "displayName"

    aput-object v5, v0, v6

    .line 551
    .local v0, columnName:[Ljava/lang/String;
    new-instance v1, Landroid/database/MatrixCursor;

    invoke-direct {v1, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 552
    .local v1, cursor:Landroid/database/MatrixCursor;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/android/pim/eas/EASGalElement;

    .line 553
    .local v3, obj:Lcom/htc/android/pim/eas/EASGalElement;
    new-array v4, v7, [Ljava/lang/String;

    iget-object v5, v3, Lcom/htc/android/pim/eas/EASGalElement;->DisplayName:Ljava/lang/String;

    aput-object v5, v4, v6

    .line 554
    .local v4, row:[Ljava/lang/String;
    invoke-virtual {v1, v4}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_0

    .line 556
    .end local v3           #obj:Lcom/htc/android/pim/eas/EASGalElement;
    .end local v4           #row:[Ljava/lang/String;
    :cond_0
    return-object v1
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 508
    const/4 v0, 0x1

    return v0
.end method

.method public getPositionForSection(I)I
    .locals 5
    .parameter "section"

    .prologue
    .line 560
    iget-object v2, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$ColleageAdapter;->this$0:Lcom/android/htccontacts/HtcCompanyDirectoryPicker;

    #getter for: Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mIndexer:Landroid/widget/AlphabetIndexer;
    invoke-static {v2}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->access$1500(Lcom/android/htccontacts/HtcCompanyDirectoryPicker;)Landroid/widget/AlphabetIndexer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/AlphabetIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    .line 561
    .local v0, objs:[Ljava/lang/Object;
    aget-object v2, v0, p1

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 562
    .local v1, string:Ljava/lang/String;
    const-string v2, "HtcCompanyDirectoryPicker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Section :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    iget-object v2, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$ColleageAdapter;->this$0:Lcom/android/htccontacts/HtcCompanyDirectoryPicker;

    #getter for: Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mIndexer:Landroid/widget/AlphabetIndexer;
    invoke-static {v2}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->access$1500(Lcom/android/htccontacts/HtcCompanyDirectoryPicker;)Landroid/widget/AlphabetIndexer;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/widget/AlphabetIndexer;->getPositionForSection(I)I

    move-result v2

    return v2
.end method

.method public getSectionForPosition(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 571
    iget-object v0, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$ColleageAdapter;->this$0:Lcom/android/htccontacts/HtcCompanyDirectoryPicker;

    #getter for: Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mIndexer:Landroid/widget/AlphabetIndexer;
    invoke-static {v0}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->access$1500(Lcom/android/htccontacts/HtcCompanyDirectoryPicker;)Landroid/widget/AlphabetIndexer;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/AlphabetIndexer;->getSectionForPosition(I)I

    move-result v0

    return v0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 567
    iget-object v0, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$ColleageAdapter;->this$0:Lcom/android/htccontacts/HtcCompanyDirectoryPicker;

    #getter for: Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mIndexer:Landroid/widget/AlphabetIndexer;
    invoke-static {v0}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->access$1500(Lcom/android/htccontacts/HtcCompanyDirectoryPicker;)Landroid/widget/AlphabetIndexer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/AlphabetIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 512
    const/4 v5, 0x0

    .line 514
    .local v5, view:Landroid/view/View;
    const/4 v2, 0x0

    .line 515
    .local v2, primarytext:Landroid/widget/TextView;
    if-nez p2, :cond_0

    .line 516
    iget-object v6, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$ColleageAdapter;->this$0:Lcom/android/htccontacts/HtcCompanyDirectoryPicker;

    #getter for: Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mInflaterService:Landroid/view/LayoutInflater;
    invoke-static {v6}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->access$1600(Lcom/android/htccontacts/HtcCompanyDirectoryPicker;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x2090007

    const/4 v8, 0x0

    invoke-virtual {v6, v7, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 519
    new-instance v4, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$ListItemTagData;

    invoke-direct {v4}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$ListItemTagData;-><init>()V

    .local v4, tag:Lcom/android/htccontacts/HtcCompanyDirectoryPicker$ListItemTagData;
    move-object v2, v5

    .line 521
    check-cast v2, Landroid/widget/TextView;

    .line 522
    iput-object v2, v4, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$ListItemTagData;->primaryTextView:Landroid/widget/TextView;

    .line 523
    invoke-virtual {v5, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 529
    .end local v4           #tag:Lcom/android/htccontacts/HtcCompanyDirectoryPicker$ListItemTagData;
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$ColleageAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/pim/eas/EASGalElement;

    .line 530
    .local v1, elm:Lcom/htc/android/pim/eas/EASGalElement;
    iget-object v0, v1, Lcom/htc/android/pim/eas/EASGalElement;->DisplayName:Ljava/lang/String;

    .line 534
    .local v0, dispaly:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$ColleageAdapter;->this$0:Lcom/android/htccontacts/HtcCompanyDirectoryPicker;

    #getter for: Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mSearchKey:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->access$1700(Lcom/android/htccontacts/HtcCompanyDirectoryPicker;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 535
    iget-object v6, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$ColleageAdapter;->this$0:Lcom/android/htccontacts/HtcCompanyDirectoryPicker;

    #getter for: Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mSearchKey:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->access$1700(Lcom/android/htccontacts/HtcCompanyDirectoryPicker;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->generateMarkedCharSequence(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 536
    .local v3, seq:Ljava/lang/CharSequence;
    if-eqz v3, :cond_1

    .line 537
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 546
    .end local v3           #seq:Ljava/lang/CharSequence;
    :goto_1
    return-object v5

    .line 525
    .end local v0           #dispaly:Ljava/lang/String;
    .end local v1           #elm:Lcom/htc/android/pim/eas/EASGalElement;
    :cond_0
    move-object v5, p2

    move-object v2, v5

    .line 526
    check-cast v2, Landroid/widget/TextView;

    goto :goto_0

    .line 540
    .restart local v0       #dispaly:Ljava/lang/String;
    .restart local v1       #elm:Lcom/htc/android/pim/eas/EASGalElement;
    .restart local v3       #seq:Ljava/lang/CharSequence;
    :cond_1
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 544
    .end local v3           #seq:Ljava/lang/CharSequence;
    :cond_2
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
