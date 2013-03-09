.class public Lcom/htc/android/worldclock/TimeZonePicker$CityListAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "TimeZonePicker.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/worldclock/TimeZonePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CityListAdapter"
.end annotation


# instance fields
.field private mAlphabet:Ljava/lang/String;

.field private mIndexer:Landroid/widget/AlphabetIndexer;

.field final synthetic this$0:Lcom/htc/android/worldclock/TimeZonePicker;


# direct methods
.method public constructor <init>(Lcom/htc/android/worldclock/TimeZonePicker;Landroid/content/Context;ILandroid/database/Cursor;)V
    .locals 3
    .parameter
    .parameter "context"
    .parameter "resource"
    .parameter "c"

    .prologue
    .line 376
    iput-object p1, p0, Lcom/htc/android/worldclock/TimeZonePicker$CityListAdapter;->this$0:Lcom/htc/android/worldclock/TimeZonePicker;

    .line 377
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    .line 378
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 380
    const v0, 0x1040419

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/worldclock/TimeZonePicker$CityListAdapter;->mAlphabet:Ljava/lang/String;

    .line 381
    if-eqz p4, :cond_0

    .line 382
    new-instance v0, Landroid/widget/AlphabetIndexer;

    const-string v1, "name"

    invoke-interface {p4, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/htc/android/worldclock/TimeZonePicker$CityListAdapter;->mAlphabet:Ljava/lang/String;

    invoke-direct {v0, p4, v1, v2}, Landroid/widget/AlphabetIndexer;-><init>(Landroid/database/Cursor;ILjava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/htc/android/worldclock/TimeZonePicker$CityListAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    .line 384
    :cond_0
    return-void
.end method

.method private spanSearchView(Ljava/lang/String;Ljava/lang/String;Lcom/htc/widget/HtcListItem2LineText;I)V
    .locals 6
    .parameter "pattern"
    .parameter "text"
    .parameter "view"
    .parameter "lineIndex"

    .prologue
    const/16 v5, 0x21

    .line 405
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 406
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 408
    .local v0, displayString:Landroid/text/SpannableString;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 409
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 410
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 411
    .local v1, pos0:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int v2, v1, v3

    .line 412
    .local v2, pos1:I
    if-ltz v1, :cond_0

    .line 413
    invoke-static {}, Lcom/htc/android/worldclock/TimeZonePicker;->access$800()Landroid/text/style/BackgroundColorSpan;

    move-result-object v3

    invoke-virtual {v0, v3, v1, v2, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 415
    invoke-static {}, Lcom/htc/android/worldclock/TimeZonePicker;->access$900()Landroid/text/style/ForegroundColorSpan;

    move-result-object v3

    invoke-virtual {v0, v3, v1, v2, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 420
    .end local v1           #pos0:I
    .end local v2           #pos1:I
    :cond_0
    if-nez p4, :cond_2

    .line 421
    invoke-virtual {p3, v0}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/CharSequence;)V

    .line 428
    :cond_1
    :goto_0
    return-void

    .line 422
    :cond_2
    const/4 v3, 0x1

    if-ne p4, v3, :cond_3

    .line 423
    invoke-virtual {p3, v0}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 425
    :cond_3
    const-string v3, "TimeZonePicker.spanSearchView: error lineIndex"

    invoke-static {v3}, Lcom/htc/android/worldclock/htclog/HtcLog;->w(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateIndexer(Landroid/database/Cursor;)V
    .locals 3
    .parameter "cursor"

    .prologue
    .line 438
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 439
    iget-object v0, p0, Lcom/htc/android/worldclock/TimeZonePicker$CityListAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    if-nez v0, :cond_0

    .line 440
    new-instance v0, Landroid/widget/AlphabetIndexer;

    const-string v1, "name"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/htc/android/worldclock/TimeZonePicker$CityListAdapter;->mAlphabet:Ljava/lang/String;

    invoke-direct {v0, p1, v1, v2}, Landroid/widget/AlphabetIndexer;-><init>(Landroid/database/Cursor;ILjava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/htc/android/worldclock/TimeZonePicker$CityListAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    .line 444
    :goto_0
    return-void

    .line 442
    :cond_0
    iget-object v0, p0, Lcom/htc/android/worldclock/TimeZonePicker$CityListAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    invoke-virtual {v0, p1}, Landroid/widget/AlphabetIndexer;->setCursor(Landroid/database/Cursor;)V

    goto :goto_0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 494
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 495
    iget-object v0, p0, Lcom/htc/android/worldclock/TimeZonePicker$CityListAdapter;->this$0:Lcom/htc/android/worldclock/TimeZonePicker;

    #getter for: Lcom/htc/android/worldclock/TimeZonePicker;->mAdded:Z
    invoke-static {v0}, Lcom/htc/android/worldclock/TimeZonePicker;->access$500(Lcom/htc/android/worldclock/TimeZonePicker;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 496
    const/4 v0, 0x0

    .line 498
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/ResourceCursorAdapter;->areAllItemsEnabled()Z

    move-result v0

    goto :goto_0
.end method

.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 6
    .parameter "view"
    .parameter "context"
    .parameter "c"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 395
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 396
    const v3, 0x7f0b001d

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListItem2LineText;

    .line 398
    .local v0, item2LineView:Lcom/htc/widget/HtcListItem2LineText;
    iget-object v3, p0, Lcom/htc/android/worldclock/TimeZonePicker$CityListAdapter;->this$0:Lcom/htc/android/worldclock/TimeZonePicker;

    #calls: Lcom/htc/android/worldclock/TimeZonePicker;->getInputText()Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/android/worldclock/TimeZonePicker;->access$700(Lcom/htc/android/worldclock/TimeZonePicker;)Ljava/lang/String;

    move-result-object v1

    .line 399
    .local v1, pattern:Ljava/lang/String;
    invoke-static {p3}, Lcom/htc/util/weather/WeatherUtility;->generateDisplayText(Landroid/database/Cursor;)[Ljava/lang/String;

    move-result-object v2

    .line 400
    .local v2, text:[Ljava/lang/String;
    aget-object v3, v2, v4

    invoke-direct {p0, v1, v3, v0, v4}, Lcom/htc/android/worldclock/TimeZonePicker$CityListAdapter;->spanSearchView(Ljava/lang/String;Ljava/lang/String;Lcom/htc/widget/HtcListItem2LineText;I)V

    .line 401
    aget-object v3, v2, v5

    invoke-direct {p0, v1, v3, v0, v5}, Lcom/htc/android/worldclock/TimeZonePicker$CityListAdapter;->spanSearchView(Ljava/lang/String;Ljava/lang/String;Lcom/htc/widget/HtcListItem2LineText;I)V

    .line 402
    return-void
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 0
    .parameter "cursor"

    .prologue
    .line 432
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 433
    invoke-super {p0, p1}, Landroid/widget/ResourceCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 434
    invoke-direct {p0, p1}, Lcom/htc/android/worldclock/TimeZonePicker$CityListAdapter;->updateIndexer(Landroid/database/Cursor;)V

    .line 435
    return-void
.end method

.method public getPositionForSection(I)I
    .locals 4
    .parameter "section"

    .prologue
    .line 463
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 464
    iget-object v1, p0, Lcom/htc/android/worldclock/TimeZonePicker$CityListAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    if-nez v1, :cond_1

    .line 465
    invoke-virtual {p0}, Lcom/htc/android/worldclock/TimeZonePicker$CityListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 467
    .local v0, cursor:Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 469
    const/4 v1, 0x0

    .line 473
    .end local v0           #cursor:Landroid/database/Cursor;
    :goto_0
    return v1

    .line 471
    .restart local v0       #cursor:Landroid/database/Cursor;
    :cond_0
    new-instance v1, Landroid/widget/AlphabetIndexer;

    const-string v2, "name"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/htc/android/worldclock/TimeZonePicker$CityListAdapter;->mAlphabet:Ljava/lang/String;

    invoke-direct {v1, v0, v2, v3}, Landroid/widget/AlphabetIndexer;-><init>(Landroid/database/Cursor;ILjava/lang/CharSequence;)V

    iput-object v1, p0, Lcom/htc/android/worldclock/TimeZonePicker$CityListAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    .line 473
    .end local v0           #cursor:Landroid/database/Cursor;
    :cond_1
    iget-object v1, p0, Lcom/htc/android/worldclock/TimeZonePicker$CityListAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    invoke-virtual {v1, p1}, Landroid/widget/AlphabetIndexer;->getPositionForSection(I)I

    move-result v1

    goto :goto_0
.end method

.method public getSectionForPosition(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 457
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 458
    const/4 v0, 0x0

    return v0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 448
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 449
    iget-object v0, p0, Lcom/htc/android/worldclock/TimeZonePicker$CityListAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    if-eqz v0, :cond_0

    .line 450
    iget-object v0, p0, Lcom/htc/android/worldclock/TimeZonePicker$CityListAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    invoke-virtual {v0}, Landroid/widget/AlphabetIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    .line 452
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 484
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 486
    iget-object v0, p0, Lcom/htc/android/worldclock/TimeZonePicker$CityListAdapter;->this$0:Lcom/htc/android/worldclock/TimeZonePicker;

    #getter for: Lcom/htc/android/worldclock/TimeZonePicker;->mAdded:Z
    invoke-static {v0}, Lcom/htc/android/worldclock/TimeZonePicker;->access$500(Lcom/htc/android/worldclock/TimeZonePicker;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 487
    const/4 v0, 0x0

    .line 489
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ResourceCursorAdapter;->isEnabled(I)Z

    move-result v0

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 388
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 389
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ResourceCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 390
    .local v0, view:Landroid/view/View;
    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 477
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 478
    iput-object v0, p0, Lcom/htc/android/worldclock/TimeZonePicker$CityListAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    .line 479
    iput-object v0, p0, Lcom/htc/android/worldclock/TimeZonePicker$CityListAdapter;->mAlphabet:Ljava/lang/String;

    .line 480
    return-void
.end method
