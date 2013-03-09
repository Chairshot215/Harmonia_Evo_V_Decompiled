.class Lcom/android/ex/editstyledtext/EditStyledText$StyledTextArrowKeyMethod;
.super Landroid/text/method/ArrowKeyMovementMethod;
.source "EditStyledText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/editstyledtext/EditStyledText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StyledTextArrowKeyMethod"
.end annotation


# instance fields
.field LOG_TAG:Ljava/lang/String;

.field mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;


# direct methods
.method constructor <init>(Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;)V
    .locals 1
    .parameter "manager"

    .prologue
    .line 2350
    invoke-direct {p0}, Landroid/text/method/ArrowKeyMovementMethod;-><init>()V

    .line 2347
    const-string v0, "StyledTextArrowKeyMethod"

    iput-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextArrowKeyMethod;->LOG_TAG:Ljava/lang/String;

    .line 2351
    iput-object p1, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextArrowKeyMethod;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    .line 2352
    return-void
.end method

.method private executeDown(Landroid/widget/TextView;Landroid/text/Spannable;I)Z
    .locals 4
    .parameter "widget"
    .parameter "buffer"
    .parameter "keyCode"

    .prologue
    .line 2447
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextArrowKeyMethod;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--- executeDown: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2449
    const/4 v0, 0x0

    .line 2451
    .local v0, handled:Z
    packed-switch p3, :pswitch_data_0

    .line 2469
    :goto_0
    return v0

    .line 2453
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextArrowKeyMethod;->up(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 2454
    goto :goto_0

    .line 2456
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextArrowKeyMethod;->down(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 2457
    goto :goto_0

    .line 2459
    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextArrowKeyMethod;->left(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 2460
    goto :goto_0

    .line 2462
    :pswitch_3
    invoke-virtual {p0, p1, p2}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextArrowKeyMethod;->right(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 2463
    goto :goto_0

    .line 2465
    :pswitch_4
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextArrowKeyMethod;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-virtual {v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->onFixSelectedItem()V

    .line 2466
    const/4 v0, 0x1

    goto :goto_0

    .line 2451
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private getEndPos(Landroid/widget/TextView;)I
    .locals 3
    .parameter "widget"

    .prologue
    .line 2371
    invoke-virtual {p1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextArrowKeyMethod;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-virtual {v2}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->getSelectionStart()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 2372
    invoke-virtual {p1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 2376
    .local v0, end:I
    :goto_0
    return v0

    .line 2374
    .end local v0           #end:I
    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    .restart local v0       #end:I
    goto :goto_0
.end method


# virtual methods
.method protected down(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 7
    .parameter "widget"
    .parameter "buffer"

    .prologue
    .line 2403
    iget-object v5, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextArrowKeyMethod;->LOG_TAG:Ljava/lang/String;

    const-string v6, "--- down:"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2405
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    .line 2406
    .local v2, layout:Landroid/text/Layout;
    invoke-direct {p0, p1}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextArrowKeyMethod;->getEndPos(Landroid/widget/TextView;)I

    move-result v0

    .line 2407
    .local v0, end:I
    invoke-virtual {v2, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    .line 2408
    .local v3, line:I
    invoke-virtual {v2}, Landroid/text/Layout;->getLineCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v3, v5, :cond_0

    .line 2410
    invoke-virtual {v2, v3}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v5

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v2, v6}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v6

    if-ne v5, v6, :cond_1

    .line 2412
    invoke-virtual {v2, v0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v1

    .line 2413
    .local v1, h:F
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v2, v5, v1}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v4

    .line 2417
    .end local v1           #h:F
    .local v4, to:I
    :goto_0
    iget-object v5, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextArrowKeyMethod;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-virtual {v5, v4}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->setEndPos(I)V

    .line 2418
    iget-object v5, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextArrowKeyMethod;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-virtual {v5}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->onCursorMoved()V

    .line 2420
    .end local v4           #to:I
    :cond_0
    const/4 v5, 0x1

    return v5

    .line 2415
    :cond_1
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v2, v5}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    .restart local v4       #to:I
    goto :goto_0
.end method

.method protected left(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 4
    .parameter "widget"
    .parameter "buffer"

    .prologue
    .line 2425
    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextArrowKeyMethod;->LOG_TAG:Ljava/lang/String;

    const-string v3, "--- left:"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2427
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 2428
    .local v0, layout:Landroid/text/Layout;
    invoke-direct {p0, p1}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextArrowKeyMethod;->getEndPos(Landroid/widget/TextView;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/text/Layout;->getOffsetToLeftOf(I)I

    move-result v1

    .line 2429
    .local v1, to:I
    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextArrowKeyMethod;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-virtual {v2, v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->setEndPos(I)V

    .line 2430
    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextArrowKeyMethod;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-virtual {v2}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->onCursorMoved()V

    .line 2431
    const/4 v2, 0x1

    return v2
.end method

.method public onKeyDown(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "widget"
    .parameter "buffer"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 2358
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextArrowKeyMethod;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "---onkeydown:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2360
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextArrowKeyMethod;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->unsetTextComposingMask()V

    .line 2361
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextArrowKeyMethod;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->getSelectState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextArrowKeyMethod;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->getSelectState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 2363
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextArrowKeyMethod;->executeDown(Landroid/widget/TextView;Landroid/text/Spannable;I)Z

    move-result v0

    .line 2365
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/text/method/ArrowKeyMovementMethod;->onKeyDown(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected right(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 4
    .parameter "widget"
    .parameter "buffer"

    .prologue
    .line 2436
    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextArrowKeyMethod;->LOG_TAG:Ljava/lang/String;

    const-string v3, "--- right:"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2438
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 2439
    .local v0, layout:Landroid/text/Layout;
    invoke-direct {p0, p1}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextArrowKeyMethod;->getEndPos(Landroid/widget/TextView;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/text/Layout;->getOffsetToRightOf(I)I

    move-result v1

    .line 2440
    .local v1, to:I
    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextArrowKeyMethod;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-virtual {v2, v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->setEndPos(I)V

    .line 2441
    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextArrowKeyMethod;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-virtual {v2}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->onCursorMoved()V

    .line 2442
    const/4 v2, 0x1

    return v2
.end method

.method protected up(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 7
    .parameter "widget"
    .parameter "buffer"

    .prologue
    .line 2381
    iget-object v5, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextArrowKeyMethod;->LOG_TAG:Ljava/lang/String;

    const-string v6, "--- up:"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2383
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    .line 2384
    .local v2, layout:Landroid/text/Layout;
    invoke-direct {p0, p1}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextArrowKeyMethod;->getEndPos(Landroid/widget/TextView;)I

    move-result v0

    .line 2385
    .local v0, end:I
    invoke-virtual {v2, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    .line 2386
    .local v3, line:I
    if-lez v3, :cond_0

    .line 2388
    invoke-virtual {v2, v3}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v5

    add-int/lit8 v6, v3, -0x1

    invoke-virtual {v2, v6}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v6

    if-ne v5, v6, :cond_1

    .line 2390
    invoke-virtual {v2, v0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v1

    .line 2391
    .local v1, h:F
    add-int/lit8 v5, v3, -0x1

    invoke-virtual {v2, v5, v1}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v4

    .line 2395
    .end local v1           #h:F
    .local v4, to:I
    :goto_0
    iget-object v5, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextArrowKeyMethod;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-virtual {v5, v4}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->setEndPos(I)V

    .line 2396
    iget-object v5, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextArrowKeyMethod;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-virtual {v5}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->onCursorMoved()V

    .line 2398
    .end local v4           #to:I
    :cond_0
    const/4 v5, 0x1

    return v5

    .line 2393
    :cond_1
    add-int/lit8 v5, v3, -0x1

    invoke-virtual {v2, v5}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    .restart local v4       #to:I
    goto :goto_0
.end method
