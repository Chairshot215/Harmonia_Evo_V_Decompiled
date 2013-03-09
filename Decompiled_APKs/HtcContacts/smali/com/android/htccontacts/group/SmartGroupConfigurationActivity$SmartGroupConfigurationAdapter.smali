.class Lcom/android/htccontacts/group/SmartGroupConfigurationActivity$SmartGroupConfigurationAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SmartGroupConfigurationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/group/SmartGroupConfigurationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SmartGroupConfigurationAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/htccontacts/group/SmartGroupConfigurationActivity$ListItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/group/SmartGroupConfigurationActivity;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/group/SmartGroupConfigurationActivity;Landroid/content/Context;ILjava/util/List;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "textViewResourceId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/android/htccontacts/group/SmartGroupConfigurationActivity$ListItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 306
    .local p4, objects:Ljava/util/List;,"Ljava/util/List<Lcom/android/htccontacts/group/SmartGroupConfigurationActivity$ListItem;>;"
    iput-object p1, p0, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity$SmartGroupConfigurationAdapter;->this$0:Lcom/android/htccontacts/group/SmartGroupConfigurationActivity;

    .line 307
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 308
    return-void
.end method

.method private checkBottom(I)Z
    .locals 6
    .parameter "position"

    .prologue
    const/4 v3, 0x0

    .line 401
    iget-object v4, p0, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity$SmartGroupConfigurationAdapter;->this$0:Lcom/android/htccontacts/group/SmartGroupConfigurationActivity;

    #calls: Lcom/android/htccontacts/group/SmartGroupConfigurationActivity;->enableTopBottomRound()Z
    invoke-static {v4}, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity;->access$200(Lcom/android/htccontacts/group/SmartGroupConfigurationActivity;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 421
    :cond_0
    :goto_0
    return v3

    .line 404
    :cond_1
    invoke-virtual {p0}, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity$SmartGroupConfigurationAdapter;->getCount()I

    move-result v2

    .line 405
    .local v2, size:I
    add-int/lit8 v4, v2, -0x1

    if-ge p1, v4, :cond_0

    .line 409
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity$SmartGroupConfigurationAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity$ListItem;

    .line 410
    .local v0, curItem:Lcom/android/htccontacts/group/SmartGroupConfigurationActivity$ListItem;
    add-int/lit8 v4, p1, 0x1

    invoke-virtual {p0, v4}, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity$SmartGroupConfigurationAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity$ListItem;

    .line 412
    .local v1, nextItem:Lcom/android/htccontacts/group/SmartGroupConfigurationActivity$ListItem;
    const/4 v3, 0x0

    .line 414
    .local v3, toRound:Z
    iget v4, v0, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity$ListItem;->itemType:I

    iget v5, v1, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity$ListItem;->itemType:I

    if-eq v4, v5, :cond_2

    .line 416
    const/4 v3, 0x1

    goto :goto_0

    .line 419
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private checkTop(I)Z
    .locals 5
    .parameter "position"

    .prologue
    .line 381
    const/4 v2, 0x0

    .line 383
    .local v2, toRound:Z
    if-nez p1, :cond_0

    .line 384
    const/4 v3, 0x1

    .line 396
    :goto_0
    return v3

    .line 387
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity$SmartGroupConfigurationAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity$ListItem;

    .line 388
    .local v0, curItem:Lcom/android/htccontacts/group/SmartGroupConfigurationActivity$ListItem;
    add-int/lit8 v3, p1, -0x1

    invoke-virtual {p0, v3}, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity$SmartGroupConfigurationAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity$ListItem;

    .line 390
    .local v1, prevItem:Lcom/android/htccontacts/group/SmartGroupConfigurationActivity$ListItem;
    iget v3, v0, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity$ListItem;->itemType:I

    iget v4, v1, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity$ListItem;->itemType:I

    if-eq v3, v4, :cond_1

    .line 391
    const/4 v2, 0x1

    :goto_1
    move v3, v2

    .line 396
    goto :goto_0

    .line 394
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method


# virtual methods
.method public getItemViewType(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 313
    if-nez p1, :cond_0

    .line 314
    const/4 v0, 0x0

    .line 317
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v7, 0x1

    .line 331
    const/4 v2, 0x0

    .line 332
    .local v2, listItem:Lcom/android/htccontacts/widget/HtcListItemBuilder;
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity$SmartGroupConfigurationAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity$ListItem;

    .line 336
    .local v1, item:Lcom/android/htccontacts/group/SmartGroupConfigurationActivity$ListItem;
    if-nez p1, :cond_0

    .line 337
    iget-object v4, p0, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity$SmartGroupConfigurationAdapter;->this$0:Lcom/android/htccontacts/group/SmartGroupConfigurationActivity;

    #getter for: Lcom/android/htccontacts/group/SmartGroupConfigurationActivity;->mTitleView:Lcom/android/htccontacts/widget/HtcListItemBuilder;
    invoke-static {v4}, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity;->access$100(Lcom/android/htccontacts/group/SmartGroupConfigurationActivity;)Lcom/android/htccontacts/widget/HtcListItemBuilder;

    move-result-object v2

    .line 355
    .end local p2
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity$SmartGroupConfigurationAdapter;->checkTop(I)Z

    move-result v3

    .line 356
    .local v3, topRoundCorners:Z
    invoke-direct {p0, p1}, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity$SmartGroupConfigurationAdapter;->checkBottom(I)Z

    move-result v0

    .line 360
    .local v0, bottomRoundCorners:Z
    if-ne v7, v3, :cond_2

    if-ne v7, v0, :cond_2

    .line 361
    const/16 v4, 0xd

    invoke-virtual {v2, v4}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->setRoundCorner(I)V

    .line 374
    :goto_1
    return-object v2

    .line 341
    .end local v0           #bottomRoundCorners:Z
    .end local v3           #topRoundCorners:Z
    .restart local p2
    :cond_0
    if-nez p2, :cond_1

    .line 342
    iget-object v4, p0, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity$SmartGroupConfigurationAdapter;->this$0:Lcom/android/htccontacts/group/SmartGroupConfigurationActivity;

    iget-object v5, p0, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity$SmartGroupConfigurationAdapter;->this$0:Lcom/android/htccontacts/group/SmartGroupConfigurationActivity;

    invoke-virtual {v4, v5}, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity;->createHtclistItemForSelection(Landroid/content/Context;)Lcom/android/htccontacts/widget/HtcListItemBuilder;

    move-result-object v2

    .line 348
    .end local p2
    :goto_2
    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity$SmartGroupConfigurationAdapter;->this$0:Lcom/android/htccontacts/group/SmartGroupConfigurationActivity;

    iget v6, v1, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity$ListItem;->textId:I

    invoke-virtual {v5, v6}, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->setListItem2Text(ILjava/lang/CharSequence;)V

    .line 351
    iget-object v4, p0, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity$SmartGroupConfigurationAdapter;->this$0:Lcom/android/htccontacts/group/SmartGroupConfigurationActivity;

    iget-object v4, v4, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity;->mBooleanArray:Landroid/util/SparseBooleanArray;

    iget v5, v1, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity$ListItem;->actionKind:I

    invoke-virtual {v4, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->setCheckBox(Z)V

    goto :goto_0

    .line 345
    .restart local p2
    :cond_1
    check-cast p2, Lcom/android/htccontacts/widget/HtcListItemBuilder;

    .end local p2
    move-object v2, p2

    check-cast v2, Lcom/android/htccontacts/widget/HtcListItemBuilder;

    goto :goto_2

    .line 363
    .restart local v0       #bottomRoundCorners:Z
    .restart local v3       #topRoundCorners:Z
    :cond_2
    if-nez v3, :cond_3

    if-ne v7, v0, :cond_3

    .line 364
    const/16 v4, 0xb

    invoke-virtual {v2, v4}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->setRoundCorner(I)V

    goto :goto_1

    .line 366
    :cond_3
    if-ne v7, v3, :cond_4

    if-nez v0, :cond_4

    .line 367
    const/16 v4, 0xa

    invoke-virtual {v2, v4}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->setRoundCorner(I)V

    goto :goto_1

    .line 370
    :cond_4
    const/16 v4, 0xc

    invoke-virtual {v2, v4}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->setRoundCorner(I)V

    goto :goto_1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 325
    const/4 v0, 0x2

    return v0
.end method
