.class Lcom/htc/android/htcime/XT9IME/XT9IME$XT9ForTrace;
.super Ljava/lang/Object;
.source "XT9IME.java"

# interfaces
.implements Lcom/htc/android/htcime/ezsip/trace/Trace$OnTraceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/htcime/XT9IME/XT9IME;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "XT9ForTrace"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/htcime/XT9IME/XT9IME;


# direct methods
.method private constructor <init>(Lcom/htc/android/htcime/XT9IME/XT9IME;)V
    .locals 0
    .parameter

    .prologue
    .line 5459
    iput-object p1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$XT9ForTrace;->this$0:Lcom/htc/android/htcime/XT9IME/XT9IME;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/android/htcime/XT9IME/XT9IME;Lcom/htc/android/htcime/XT9IME/XT9IME$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5459
    invoke-direct {p0, p1}, Lcom/htc/android/htcime/XT9IME/XT9IME$XT9ForTrace;-><init>(Lcom/htc/android/htcime/XT9IME/XT9IME;)V

    return-void
.end method

.method private reverseTouchDownJob(IZ)Z
    .locals 4
    .parameter "codePoint"
    .parameter "blockKeyDownJobByTrace"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 5669
    if-nez p2, :cond_0

    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$XT9ForTrace;->this$0:Lcom/htc/android/htcime/XT9IME/XT9IME;

    int-to-char v3, p1

    invoke-virtual {v2, v3}, Lcom/htc/android/htcime/XT9IME/XT9IME;->isHandledInKeyDown(I)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move v0, v1

    .line 5678
    :goto_0
    return v0

    .line 5673
    :cond_1
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$XT9ForTrace;->this$0:Lcom/htc/android/htcime/XT9IME/XT9IME;

    iget-object v2, v2, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 5674
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeClearOneSymbOnly()V

    goto :goto_0

    .line 5676
    :cond_2
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$XT9ForTrace;->this$0:Lcom/htc/android/htcime/XT9IME/XT9IME;

    iget-object v2, v2, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v2}, Lcom/htc/android/htcime/HTCIMEService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto :goto_0
.end method


# virtual methods
.method public getComposing()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5661
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$XT9ForTrace;->this$0:Lcom/htc/android/htcime/XT9IME/XT9IME;

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$XT9ForTrace;->this$0:Lcom/htc/android/htcime/XT9IME/XT9IME;

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    goto :goto_0
.end method

.method public getCurrLDBID()I
    .locals 1

    .prologue
    .line 5665
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$XT9ForTrace;->this$0:Lcom/htc/android/htcime/XT9IME/XT9IME;

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mNativeInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;

    iget v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;->mCurrLdbID:I

    return v0
.end method

.method public isInComposing()Z
    .locals 1

    .prologue
    .line 5654
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$XT9ForTrace;->this$0:Lcom/htc/android/htcime/XT9IME/XT9IME;

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 5655
    const/4 v0, 0x1

    .line 5657
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAlphabetKey(ILandroid/graphics/Point;Z)V
    .locals 10
    .parameter "unicode"
    .parameter "point"
    .parameter "appendSpaceAfterCommit"

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 5540
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$XT9ForTrace;->this$0:Lcom/htc/android/htcime/XT9IME/XT9IME;

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v0}, Lcom/htc/android/htcime/HTCIMEService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 5542
    .local v1, ic:Landroid/view/inputmethod/InputConnection;
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 5544
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$XT9ForTrace;->this$0:Lcom/htc/android/htcime/XT9IME/XT9IME;

    #calls: Lcom/htc/android/htcime/XT9IME/XT9IME;->acceptSuggestion()V
    invoke-static {v0}, Lcom/htc/android/htcime/XT9IME/XT9IME;->access$200(Lcom/htc/android/htcime/XT9IME/XT9IME;)V

    .line 5546
    if-eqz p3, :cond_0

    .line 5547
    :try_start_0
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$XT9ForTrace;->this$0:Lcom/htc/android/htcime/XT9IME/XT9IME;

    const-string v3, ""

    const-string v7, " "

    const/4 v8, 0x0

    invoke-virtual {v0, v1, v3, v7, v8}, Lcom/htc/android/htcime/XT9IME/XT9IME;->replaceInlineString(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 5549
    :cond_0
    new-instance v4, Landroid/view/KeyEvent;

    const/4 v0, 0x0

    invoke-direct {v4, v0, p1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 5550
    .local v4, event:Landroid/view/KeyEvent;
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$XT9ForTrace;->this$0:Lcom/htc/android/htcime/XT9IME/XT9IME;

    new-instance v3, Lcom/htc/android/htcime/XT9IME/XT9IME$Position;

    iget-object v7, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$XT9ForTrace;->this$0:Lcom/htc/android/htcime/XT9IME/XT9IME;

    iget v8, p2, Landroid/graphics/Point;->x:I

    iget v9, p2, Landroid/graphics/Point;->y:I

    invoke-direct {v3, v7, v8, v9}, Lcom/htc/android/htcime/XT9IME/XT9IME$Position;-><init>(Lcom/htc/android/htcime/XT9IME/XT9IME;II)V

    iget-object v7, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$XT9ForTrace;->this$0:Lcom/htc/android/htcime/XT9IME/XT9IME;

    iget-object v7, v7, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v7, v7, Lcom/htc/android/htcime/HTCIMMData;->mOrientation:I

    if-ne v7, v5, :cond_1

    :goto_0
    move v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/htcime/XT9IME/XT9IME;->handleQWERTYKey(Landroid/view/inputmethod/InputConnection;ILcom/htc/android/htcime/XT9IME/XT9IME$Position;Landroid/view/KeyEvent;Z)Z
    :try_end_0
    .catch Landroid/util/AndroidException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5556
    .end local v4           #event:Landroid/view/KeyEvent;
    :goto_1
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 5557
    return-void

    .restart local v4       #event:Landroid/view/KeyEvent;
    :cond_1
    move v5, v2

    .line 5550
    goto :goto_0

    .line 5552
    .end local v4           #event:Landroid/view/KeyEvent;
    :catch_0
    move-exception v6

    .line 5553
    .local v6, e:Landroid/util/AndroidException;
    invoke-virtual {v6}, Landroid/util/AndroidException;->printStackTrace()V

    goto :goto_1
.end method

.method public onCancel()V
    .locals 1

    .prologue
    .line 5611
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$XT9ForTrace;->this$0:Lcom/htc/android/htcime/XT9IME/XT9IME;

    #calls: Lcom/htc/android/htcime/XT9IME/XT9IME;->cancelComposing()V
    invoke-static {v0}, Lcom/htc/android/htcime/XT9IME/XT9IME;->access$300(Lcom/htc/android/htcime/XT9IME/XT9IME;)V

    .line 5612
    return-void
.end method

.method public onCommit(Z)V
    .locals 6
    .parameter "appendSpace"

    .prologue
    .line 5594
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$XT9ForTrace;->this$0:Lcom/htc/android/htcime/XT9IME/XT9IME;

    iget-object v2, v2, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v2}, Lcom/htc/android/htcime/HTCIMEService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 5596
    .local v1, ic:Landroid/view/inputmethod/InputConnection;
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 5598
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$XT9ForTrace;->this$0:Lcom/htc/android/htcime/XT9IME/XT9IME;

    #calls: Lcom/htc/android/htcime/XT9IME/XT9IME;->acceptSuggestion()V
    invoke-static {v2}, Lcom/htc/android/htcime/XT9IME/XT9IME;->access$200(Lcom/htc/android/htcime/XT9IME/XT9IME;)V

    .line 5599
    if-eqz p1, :cond_0

    .line 5601
    :try_start_0
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$XT9ForTrace;->this$0:Lcom/htc/android/htcime/XT9IME/XT9IME;

    const-string v3, ""

    const-string v4, " "

    const/4 v5, 0x0

    invoke-virtual {v2, v1, v3, v4, v5}, Lcom/htc/android/htcime/XT9IME/XT9IME;->replaceInlineString(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/util/AndroidException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5607
    :cond_0
    :goto_0
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 5608
    return-void

    .line 5602
    :catch_0
    move-exception v0

    .line 5603
    .local v0, e:Landroid/util/AndroidException;
    invoke-virtual {v0}, Landroid/util/AndroidException;->printStackTrace()V

    goto :goto_0
.end method

.method public onCommitTapPD(IZ)V
    .locals 9
    .parameter "codePoint"
    .parameter "blockKeyDownJobByTrace"

    .prologue
    .line 5615
    iget-object v5, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$XT9ForTrace;->this$0:Lcom/htc/android/htcime/XT9IME/XT9IME;

    iget-object v5, v5, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v5}, Lcom/htc/android/htcime/HTCIMEService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v3

    .line 5617
    .local v3, ic:Landroid/view/inputmethod/InputConnection;
    invoke-interface {v3}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 5620
    :try_start_0
    iget-object v5, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$XT9ForTrace;->this$0:Lcom/htc/android/htcime/XT9IME/XT9IME;

    iget v4, v5, Lcom/htc/android/htcime/XT9IME/XT9IME;->candidate_count:I

    .line 5622
    .local v4, tmp_candidate_count:I
    invoke-direct {p0, p1, p2}, Lcom/htc/android/htcime/XT9IME/XT9IME$XT9ForTrace;->reverseTouchDownJob(IZ)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 5623
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeBuildCandList()I

    move-result v4

    .line 5626
    :cond_0
    iget-object v5, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$XT9ForTrace;->this$0:Lcom/htc/android/htcime/XT9IME/XT9IME;

    iget-object v5, v5, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    if-eqz v5, :cond_2

    if-lez v4, :cond_2

    .line 5630
    iget-object v5, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$XT9ForTrace;->this$0:Lcom/htc/android/htcime/XT9IME/XT9IME;

    iget-object v5, v5, Lcom/htc/android/htcime/XT9IME/XT9IME;->mNativeInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;

    iget v5, v5, Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;->exactWordPos:I

    invoke-static {v5}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeGetCandString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/android/htcime/XT9IME/XT9IME;->pureCandStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5631
    .local v1, exactWord:Ljava/lang/String;
    const-string v5, "i"

    invoke-virtual {v1, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_1

    .line 5632
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 5633
    .local v2, finalChar:C
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeClearOneSymbOnly()V

    .line 5634
    invoke-static {v2}, Lcom/htc/android/htcime/XT9IME/LatinIM;->isWordComponent(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 5635
    const/4 v5, 0x0

    const/4 v6, -0x1

    invoke-static {v2, v5, v6}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeProcessKeyBySymbol(CZI)I

    .line 5640
    .end local v2           #finalChar:C
    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$XT9ForTrace;->this$0:Lcom/htc/android/htcime/XT9IME/XT9IME;

    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$XT9ForTrace;->this$0:Lcom/htc/android/htcime/XT9IME/XT9IME;

    invoke-virtual {v6, v3}, Lcom/htc/android/htcime/XT9IME/XT9IME;->buildWCL_QW(Landroid/view/inputmethod/InputConnection;)I

    move-result v6

    iput v6, v5, Lcom/htc/android/htcime/XT9IME/XT9IME;->candidate_count:I

    .line 5642
    iget-object v5, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$XT9ForTrace;->this$0:Lcom/htc/android/htcime/XT9IME/XT9IME;

    #calls: Lcom/htc/android/htcime/XT9IME/XT9IME;->acceptSuggestion()V
    invoke-static {v5}, Lcom/htc/android/htcime/XT9IME/XT9IME;->access$200(Lcom/htc/android/htcime/XT9IME/XT9IME;)V

    .line 5644
    iget-object v5, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$XT9ForTrace;->this$0:Lcom/htc/android/htcime/XT9IME/XT9IME;

    const-string v6, ""

    const-string v7, " "

    const/4 v8, 0x0

    invoke-virtual {v5, v3, v6, v7, v8}, Lcom/htc/android/htcime/XT9IME/XT9IME;->replaceInlineString(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/util/AndroidException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5650
    .end local v1           #exactWord:Ljava/lang/String;
    .end local v4           #tmp_candidate_count:I
    :cond_2
    :goto_1
    invoke-interface {v3}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 5651
    return-void

    .line 5637
    .restart local v1       #exactWord:Ljava/lang/String;
    .restart local v2       #finalChar:C
    .restart local v4       #tmp_candidate_count:I
    :cond_3
    :try_start_1
    invoke-static {v2}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeAddSymbol(I)V
    :try_end_1
    .catch Landroid/util/AndroidException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 5646
    .end local v1           #exactWord:Ljava/lang/String;
    .end local v2           #finalChar:C
    .end local v4           #tmp_candidate_count:I
    :catch_0
    move-exception v0

    .line 5647
    .local v0, e:Landroid/util/AndroidException;
    invoke-virtual {v0}, Landroid/util/AndroidException;->printStackTrace()V

    goto :goto_1
.end method

.method public onDelKey()V
    .locals 4

    .prologue
    .line 5529
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$XT9ForTrace;->this$0:Lcom/htc/android/htcime/XT9IME/XT9IME;

    iget-object v2, v2, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v2}, Lcom/htc/android/htcime/HTCIMEService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 5532
    .local v1, ic:Landroid/view/inputmethod/InputConnection;
    :try_start_0
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeClearOneSymb()V

    .line 5533
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$XT9ForTrace;->this$0:Lcom/htc/android/htcime/XT9IME/XT9IME;

    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$XT9ForTrace;->this$0:Lcom/htc/android/htcime/XT9IME/XT9IME;

    invoke-virtual {v3, v1}, Lcom/htc/android/htcime/XT9IME/XT9IME;->buildWCL_Trace(Landroid/view/inputmethod/InputConnection;)I

    move-result v3

    iput v3, v2, Lcom/htc/android/htcime/XT9IME/XT9IME;->candidate_count:I
    :try_end_0
    .catch Landroid/util/AndroidException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5537
    :goto_0
    return-void

    .line 5534
    :catch_0
    move-exception v0

    .line 5535
    .local v0, e:Landroid/util/AndroidException;
    invoke-virtual {v0}, Landroid/util/AndroidException;->printStackTrace()V

    goto :goto_0
.end method

.method public onEnterKey()V
    .locals 1

    .prologue
    .line 5525
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$XT9ForTrace;->this$0:Lcom/htc/android/htcime/XT9IME/XT9IME;

    #calls: Lcom/htc/android/htcime/XT9IME/XT9IME;->acceptSuggestion()V
    invoke-static {v0}, Lcom/htc/android/htcime/XT9IME/XT9IME;->access$200(Lcom/htc/android/htcime/XT9IME/XT9IME;)V

    .line 5526
    return-void
.end method

.method public onPreAccent(IZ)V
    .locals 6
    .parameter "codePoint"
    .parameter "blockKeyDownJobByTrace"

    .prologue
    .line 5575
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$XT9ForTrace;->this$0:Lcom/htc/android/htcime/XT9IME/XT9IME;

    iget-object v2, v2, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v2}, Lcom/htc/android/htcime/HTCIMEService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 5577
    .local v1, ic:Landroid/view/inputmethod/InputConnection;
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 5579
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$XT9ForTrace;->this$0:Lcom/htc/android/htcime/XT9IME/XT9IME;

    #calls: Lcom/htc/android/htcime/XT9IME/XT9IME;->acceptSuggestion()V
    invoke-static {v2}, Lcom/htc/android/htcime/XT9IME/XT9IME;->access$200(Lcom/htc/android/htcime/XT9IME/XT9IME;)V

    .line 5582
    if-nez p2, :cond_0

    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$XT9ForTrace;->this$0:Lcom/htc/android/htcime/XT9IME/XT9IME;

    invoke-virtual {v2, p1}, Lcom/htc/android/htcime/XT9IME/XT9IME;->isHandledInKeyDown(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5584
    :try_start_0
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$XT9ForTrace;->this$0:Lcom/htc/android/htcime/XT9IME/XT9IME;

    const-string v3, ""

    int-to-char v4, p1

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v1, v3, v4, v5}, Lcom/htc/android/htcime/XT9IME/XT9IME;->replaceInlineString(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/util/AndroidException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5590
    :cond_0
    :goto_0
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 5591
    return-void

    .line 5585
    :catch_0
    move-exception v0

    .line 5586
    .local v0, e:Landroid/util/AndroidException;
    invoke-virtual {v0}, Landroid/util/AndroidException;->printStackTrace()V

    goto :goto_0
.end method

.method public onPreDict(I)Z
    .locals 6
    .parameter "shiftState"

    .prologue
    .line 5462
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$XT9ForTrace;->this$0:Lcom/htc/android/htcime/XT9IME/XT9IME;

    iget-object v3, v3, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v3}, Lcom/htc/android/htcime/HTCIMEService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 5464
    .local v1, ic:Landroid/view/inputmethod/InputConnection;
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$XT9ForTrace;->this$0:Lcom/htc/android/htcime/XT9IME/XT9IME;

    iget-object v3, v3, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v3, v3, Lcom/htc/android/htcime/HTCIMMData;->mTrace:Lcom/htc/android/htcime/ezsip/trace/Trace;

    invoke-virtual {v3}, Lcom/htc/android/htcime/ezsip/trace/Trace;->getRawData()[I

    move-result-object v2

    .line 5470
    .local v2, rawData:[I
    invoke-static {p1}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeSetShiftMode(I)V

    .line 5472
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 5476
    :try_start_0
    array-length v3, v2

    const/16 v4, 0x7d0

    if-gt v3, v4, :cond_1

    .line 5478
    invoke-static {v2}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeProcessTrace([I)I

    .line 5480
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeGetCandCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 5481
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$XT9ForTrace;->this$0:Lcom/htc/android/htcime/XT9IME/XT9IME;

    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$XT9ForTrace;->this$0:Lcom/htc/android/htcime/XT9IME/XT9IME;

    invoke-virtual {v4, v1}, Lcom/htc/android/htcime/XT9IME/XT9IME;->buildWCL_Trace(Landroid/view/inputmethod/InputConnection;)I

    move-result v4

    iput v4, v3, Lcom/htc/android/htcime/XT9IME/XT9IME;->candidate_count:I
    :try_end_0
    .catch Landroid/util/AndroidException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5499
    :goto_0
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 5501
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$XT9ForTrace;->this$0:Lcom/htc/android/htcime/XT9IME/XT9IME;

    iget v3, v3, Lcom/htc/android/htcime/XT9IME/XT9IME;->candidate_count:I

    if-nez v3, :cond_3

    .line 5502
    const/4 v3, 0x0

    .line 5504
    :goto_1
    return v3

    .line 5484
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeClearOneSymb()V

    .line 5485
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$XT9ForTrace;->this$0:Lcom/htc/android/htcime/XT9IME/XT9IME;

    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$XT9ForTrace;->this$0:Lcom/htc/android/htcime/XT9IME/XT9IME;

    invoke-virtual {v4, v1}, Lcom/htc/android/htcime/XT9IME/XT9IME;->buildWCL_Trace(Landroid/view/inputmethod/InputConnection;)I

    move-result v4

    iput v4, v3, Lcom/htc/android/htcime/XT9IME/XT9IME;->candidate_count:I
    :try_end_1
    .catch Landroid/util/AndroidException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 5495
    :catch_0
    move-exception v0

    .line 5496
    .local v0, e:Landroid/util/AndroidException;
    invoke-virtual {v0}, Landroid/util/AndroidException;->printStackTrace()V

    goto :goto_0

    .line 5490
    .end local v0           #e:Landroid/util/AndroidException;
    :cond_1
    :try_start_2
    const-string v3, "XT9IME"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[XT9ForTrace.onPreDict] Large data length = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5491
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$XT9ForTrace;->this$0:Lcom/htc/android/htcime/XT9IME/XT9IME;

    iget-object v3, v3, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 5492
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeBuildCandList()I

    .line 5493
    :cond_2
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$XT9ForTrace;->this$0:Lcom/htc/android/htcime/XT9IME/XT9IME;

    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$XT9ForTrace;->this$0:Lcom/htc/android/htcime/XT9IME/XT9IME;

    invoke-virtual {v4, v1}, Lcom/htc/android/htcime/XT9IME/XT9IME;->buildWCL_Trace(Landroid/view/inputmethod/InputConnection;)I

    move-result v4

    iput v4, v3, Lcom/htc/android/htcime/XT9IME/XT9IME;->candidate_count:I
    :try_end_2
    .catch Landroid/util/AndroidException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 5504
    :cond_3
    const/4 v3, 0x1

    goto :goto_1
.end method

.method public onPunctKey(C)V
    .locals 6
    .parameter "punct"

    .prologue
    .line 5560
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$XT9ForTrace;->this$0:Lcom/htc/android/htcime/XT9IME/XT9IME;

    iget-object v2, v2, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v2}, Lcom/htc/android/htcime/HTCIMEService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 5562
    .local v1, ic:Landroid/view/inputmethod/InputConnection;
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 5564
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$XT9ForTrace;->this$0:Lcom/htc/android/htcime/XT9IME/XT9IME;

    #calls: Lcom/htc/android/htcime/XT9IME/XT9IME;->acceptSuggestion()V
    invoke-static {v2}, Lcom/htc/android/htcime/XT9IME/XT9IME;->access$200(Lcom/htc/android/htcime/XT9IME/XT9IME;)V

    .line 5566
    :try_start_0
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$XT9ForTrace;->this$0:Lcom/htc/android/htcime/XT9IME/XT9IME;

    const-string v3, ""

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v1, v3, v4, v5}, Lcom/htc/android/htcime/XT9IME/XT9IME;->replaceInlineString(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/util/AndroidException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5571
    :goto_0
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 5572
    return-void

    .line 5567
    :catch_0
    move-exception v0

    .line 5568
    .local v0, e:Landroid/util/AndroidException;
    invoke-virtual {v0}, Landroid/util/AndroidException;->printStackTrace()V

    goto :goto_0
.end method

.method public onSpaceKey()V
    .locals 6

    .prologue
    .line 5508
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$XT9ForTrace;->this$0:Lcom/htc/android/htcime/XT9IME/XT9IME;

    iget-object v2, v2, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v2}, Lcom/htc/android/htcime/HTCIMEService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 5510
    .local v1, ic:Landroid/view/inputmethod/InputConnection;
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 5512
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$XT9ForTrace;->this$0:Lcom/htc/android/htcime/XT9IME/XT9IME;

    #calls: Lcom/htc/android/htcime/XT9IME/XT9IME;->acceptSuggestion()V
    invoke-static {v2}, Lcom/htc/android/htcime/XT9IME/XT9IME;->access$200(Lcom/htc/android/htcime/XT9IME/XT9IME;)V

    .line 5514
    :try_start_0
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$XT9ForTrace;->this$0:Lcom/htc/android/htcime/XT9IME/XT9IME;

    const-string v3, ""

    const-string v4, " "

    const/4 v5, 0x0

    invoke-virtual {v2, v1, v3, v4, v5}, Lcom/htc/android/htcime/XT9IME/XT9IME;->replaceInlineString(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/util/AndroidException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5519
    :goto_0
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 5521
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/htc/android/htcime/XT9IME/XT9IME;->mLastSpaceTime:J

    .line 5522
    return-void

    .line 5515
    :catch_0
    move-exception v0

    .line 5516
    .local v0, e:Landroid/util/AndroidException;
    invoke-virtual {v0}, Landroid/util/AndroidException;->printStackTrace()V

    goto :goto_0
.end method
