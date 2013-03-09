.class public Lcom/google/android/voicesearch/ime/DictationResultHandler;
.super Ljava/lang/Object;
.source "DictationResultHandler.java"


# instance fields
.field private final mClientReportLogger:Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;

.field private final mDelayBetweenCommittingNewTextMsec:J

.field private mDictationSegmentWithNewText:I

.field private final mDictationSegments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/voicesearch/ime/DictationSegment;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private final mInputMethodService:Landroid/inputmethodservice/InputMethodService;

.field private final mTextFormatter:Lcom/google/android/voicesearch/ime/formatter/TextFormatter;

.field private final mVoiceSearchLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger;


# direct methods
.method protected constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/voicesearch/ime/DictationResultHandler;->mDelayBetweenCommittingNewTextMsec:J

    .line 106
    iput-object v2, p0, Lcom/google/android/voicesearch/ime/DictationResultHandler;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    .line 107
    iput-object v2, p0, Lcom/google/android/voicesearch/ime/DictationResultHandler;->mDictationSegments:Ljava/util/List;

    .line 108
    iput-object v2, p0, Lcom/google/android/voicesearch/ime/DictationResultHandler;->mTextFormatter:Lcom/google/android/voicesearch/ime/formatter/TextFormatter;

    .line 109
    iput-object v2, p0, Lcom/google/android/voicesearch/ime/DictationResultHandler;->mClientReportLogger:Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;

    .line 110
    iput-object v2, p0, Lcom/google/android/voicesearch/ime/DictationResultHandler;->mVoiceSearchLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

    .line 111
    return-void
.end method

.method public constructor <init>(Landroid/inputmethodservice/InputMethodService;)V
    .locals 4
    .parameter "inputMethodService"

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/google/android/voicesearch/ime/DictationResultHandler;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    .line 89
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/google/android/voicesearch/ime/DictationResultHandler;->mDictationSegments:Ljava/util/List;

    .line 91
    invoke-virtual {p0}, Lcom/google/android/voicesearch/ime/DictationResultHandler;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/voicesearch/VoiceSearchApplication;->getContainer(Landroid/content/Context;)Lcom/google/android/voicesearch/VoiceSearchContainer;

    move-result-object v0

    .line 93
    .local v0, container:Lcom/google/android/voicesearch/VoiceSearchContainer;
    invoke-interface {v0}, Lcom/google/android/voicesearch/VoiceSearchContainer;->getGservicesHelper()Lcom/google/android/voicesearch/GservicesHelper;

    move-result-object v1

    .line 95
    .local v1, gservicesHelper:Lcom/google/android/voicesearch/GservicesHelper;
    invoke-interface {v0}, Lcom/google/android/voicesearch/VoiceSearchContainer;->getVoiceSearchLogger()Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->getClientReportLogger()Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/voicesearch/ime/DictationResultHandler;->mClientReportLogger:Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;

    .line 96
    invoke-interface {v0}, Lcom/google/android/voicesearch/VoiceSearchContainer;->getVoiceSearchLogger()Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/voicesearch/ime/DictationResultHandler;->mVoiceSearchLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

    .line 99
    invoke-virtual {v1}, Lcom/google/android/voicesearch/GservicesHelper;->getDelayBetweenCommittingNewText()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/voicesearch/ime/DictationResultHandler;->mDelayBetweenCommittingNewTextMsec:J

    .line 101
    invoke-virtual {p0}, Lcom/google/android/voicesearch/ime/DictationResultHandler;->createTextFormatter()Lcom/google/android/voicesearch/ime/formatter/TextFormatter;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/voicesearch/ime/DictationResultHandler;->mTextFormatter:Lcom/google/android/voicesearch/ime/formatter/TextFormatter;

    .line 102
    return-void
.end method

.method private varargs apply([Lcom/google/android/voicesearch/ime/DictationSegment$UpdateText;)V
    .locals 7
    .parameter "updateTexts"

    .prologue
    .line 314
    invoke-static {p1}, Lcom/google/android/voicesearch/util/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 316
    invoke-virtual {p0}, Lcom/google/android/voicesearch/ime/DictationResultHandler;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    .line 318
    .local v2, ic:Landroid/view/inputmethod/InputConnection;
    if-nez v2, :cond_0

    .line 335
    :goto_0
    return-void

    .line 322
    :cond_0
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 325
    :try_start_0
    iget-object v5, p0, Lcom/google/android/voicesearch/ime/DictationResultHandler;->mTextFormatter:Lcom/google/android/voicesearch/ime/formatter/TextFormatter;

    invoke-direct {p0, v2}, Lcom/google/android/voicesearch/ime/DictationResultHandler;->extractText(Landroid/view/inputmethod/InputConnection;)Landroid/view/inputmethod/ExtractedText;

    move-result-object v6

    invoke-interface {v5, v2, v6}, Lcom/google/android/voicesearch/ime/formatter/TextFormatter;->handleCommit(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/ExtractedText;)V

    .line 327
    move-object v0, p1

    .local v0, arr$:[Lcom/google/android/voicesearch/ime/DictationSegment$UpdateText;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v3, :cond_2

    aget-object v4, v0, v1

    .line 328
    .local v4, updateText:Lcom/google/android/voicesearch/ime/DictationSegment$UpdateText;
    if-eqz v4, :cond_1

    .line 329
    invoke-virtual {v4, v2}, Lcom/google/android/voicesearch/ime/DictationSegment$UpdateText;->apply(Landroid/view/inputmethod/InputConnection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 327
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 333
    .end local v4           #updateText:Lcom/google/android/voicesearch/ime/DictationSegment$UpdateText;
    :cond_2
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto :goto_0

    .end local v0           #arr$:[Lcom/google/android/voicesearch/ime/DictationSegment$UpdateText;
    .end local v1           #i$:I
    .end local v3           #len$:I
    :catchall_0
    move-exception v5

    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    throw v5
.end method

.method private extractText(Landroid/view/inputmethod/InputConnection;)Landroid/view/inputmethod/ExtractedText;
    .locals 4
    .parameter "ic"

    .prologue
    const/4 v2, 0x0

    .line 423
    if-nez p1, :cond_1

    move-object v0, v2

    .line 433
    :cond_0
    :goto_0
    return-object v0

    .line 427
    :cond_1
    new-instance v1, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v1}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    .line 428
    .local v1, etr:Landroid/view/inputmethod/ExtractedTextRequest;
    const/4 v3, 0x1

    iput v3, v1, Landroid/view/inputmethod/ExtractedTextRequest;->flags:I

    .line 429
    const/4 v3, 0x0

    invoke-interface {p1, v1, v3}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v0

    .line 430
    .local v0, et:Landroid/view/inputmethod/ExtractedText;
    if-eqz v0, :cond_2

    iget-object v3, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    if-eqz v3, :cond_2

    iget-object v3, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    instance-of v3, v3, Landroid/text/Spanned;

    if-nez v3, :cond_0

    :cond_2
    move-object v0, v2

    .line 431
    goto :goto_0
.end method

.method private forceCommitAllText()V
    .locals 4

    .prologue
    .line 283
    const/4 v0, 0x0

    .line 284
    .local v0, dictationSegment:Lcom/google/android/voicesearch/ime/DictationSegment;
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/google/android/voicesearch/ime/DictationResultHandler;->getDictationSegmentWithNewText()Lcom/google/android/voicesearch/ime/DictationSegment;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 285
    invoke-virtual {v0}, Lcom/google/android/voicesearch/ime/DictationSegment;->getAllNextText()Lcom/google/android/voicesearch/ime/DictationSegment$UpdateText;

    move-result-object v1

    .line 286
    .local v1, updateText:Lcom/google/android/voicesearch/ime/DictationSegment$UpdateText;
    if-eqz v1, :cond_0

    .line 287
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/google/android/voicesearch/ime/DictationSegment$UpdateText;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-direct {p0, v2}, Lcom/google/android/voicesearch/ime/DictationResultHandler;->apply([Lcom/google/android/voicesearch/ime/DictationSegment$UpdateText;)V

    goto :goto_0

    .line 290
    .end local v1           #updateText:Lcom/google/android/voicesearch/ime/DictationSegment$UpdateText;
    :cond_1
    return-void
.end method

.method private getDictationSegmentWithNewText()Lcom/google/android/voicesearch/ime/DictationSegment;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 240
    iget-object v2, p0, Lcom/google/android/voicesearch/ime/DictationResultHandler;->mDictationSegments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    move-object v0, v1

    .line 255
    :cond_0
    :goto_0
    return-object v0

    .line 244
    :cond_1
    iget-object v2, p0, Lcom/google/android/voicesearch/ime/DictationResultHandler;->mDictationSegments:Ljava/util/List;

    iget v3, p0, Lcom/google/android/voicesearch/ime/DictationResultHandler;->mDictationSegmentWithNewText:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/voicesearch/ime/DictationSegment;

    .line 246
    .local v0, dictationSegment:Lcom/google/android/voicesearch/ime/DictationSegment;
    invoke-virtual {v0}, Lcom/google/android/voicesearch/ime/DictationSegment;->hasMoreText()Z

    move-result v2

    if-nez v2, :cond_0

    .line 250
    invoke-virtual {v0}, Lcom/google/android/voicesearch/ime/DictationSegment;->isFinal()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/google/android/voicesearch/ime/DictationResultHandler;->mDictationSegmentWithNewText:I

    iget-object v3, p0, Lcom/google/android/voicesearch/ime/DictationResultHandler;->mDictationSegments:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_2

    .line 252
    iget v1, p0, Lcom/google/android/voicesearch/ime/DictationResultHandler;->mDictationSegmentWithNewText:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/voicesearch/ime/DictationResultHandler;->mDictationSegmentWithNewText:I

    .line 253
    invoke-direct {p0}, Lcom/google/android/voicesearch/ime/DictationResultHandler;->getDictationSegmentWithNewText()Lcom/google/android/voicesearch/ime/DictationSegment;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 255
    goto :goto_0
.end method

.method private getPartialDictationSegment()Lcom/google/android/voicesearch/ime/DictationSegment;
    .locals 3

    .prologue
    .line 264
    const/4 v0, 0x0

    .line 265
    .local v0, dictationSegment:Lcom/google/android/voicesearch/ime/DictationSegment;
    iget-object v1, p0, Lcom/google/android/voicesearch/ime/DictationResultHandler;->mDictationSegments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 266
    iget-object v1, p0, Lcom/google/android/voicesearch/ime/DictationResultHandler;->mDictationSegments:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/voicesearch/ime/DictationResultHandler;->mDictationSegments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #dictationSegment:Lcom/google/android/voicesearch/ime/DictationSegment;
    check-cast v0, Lcom/google/android/voicesearch/ime/DictationSegment;

    .line 267
    .restart local v0       #dictationSegment:Lcom/google/android/voicesearch/ime/DictationSegment;
    invoke-virtual {v0}, Lcom/google/android/voicesearch/ime/DictationSegment;->isFinal()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 268
    const/4 v0, 0x0

    .line 272
    :cond_0
    if-nez v0, :cond_1

    .line 273
    new-instance v0, Lcom/google/android/voicesearch/ime/DictationSegment;

    .end local v0           #dictationSegment:Lcom/google/android/voicesearch/ime/DictationSegment;
    invoke-virtual {p0}, Lcom/google/android/voicesearch/ime/DictationResultHandler;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/voicesearch/ime/DictationSegment;-><init>(Landroid/content/Context;)V

    .line 274
    .restart local v0       #dictationSegment:Lcom/google/android/voicesearch/ime/DictationSegment;
    iget-object v1, p0, Lcom/google/android/voicesearch/ime/DictationResultHandler;->mDictationSegments:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    :cond_1
    return-object v0
.end method

.method private declared-synchronized logPreviousDictations()V
    .locals 9

    .prologue
    .line 140
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/voicesearch/ime/DictationResultHandler;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 141
    .local v3, ic:Landroid/view/inputmethod/InputConnection;
    if-nez v3, :cond_1

    .line 166
    :cond_0
    monitor-exit p0

    return-void

    .line 146
    :cond_1
    :try_start_1
    invoke-direct {p0, v3}, Lcom/google/android/voicesearch/ime/DictationResultHandler;->extractText(Landroid/view/inputmethod/InputConnection;)Landroid/view/inputmethod/ExtractedText;

    move-result-object v1

    .line 147
    .local v1, extractedText:Landroid/view/inputmethod/ExtractedText;
    if-eqz v1, :cond_0

    .line 151
    iget-object v8, v1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    instance-of v8, v8, Landroid/text/Spanned;

    if-eqz v8, :cond_0

    .line 155
    iget-object v7, v1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    check-cast v7, Landroid/text/Spanned;

    .line 157
    .local v7, spanned:Landroid/text/Spanned;
    invoke-static {v7}, Lcom/google/android/voicesearch/util/TextUtil;->getSegmentAnnotations(Landroid/text/Spanned;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/Annotation;

    .line 158
    .local v0, ann:Landroid/text/Annotation;
    invoke-virtual {v0}, Landroid/text/Annotation;->getValue()Ljava/lang/String;

    move-result-object v6

    .line 159
    .local v6, segmentId:Ljava/lang/String;
    invoke-static {v7, v0}, Lcom/google/android/voicesearch/util/TextUtil;->getTextSpan(Landroid/text/Spanned;Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 160
    .local v4, newText:Ljava/lang/String;
    iget-object v8, p0, Lcom/google/android/voicesearch/ime/DictationResultHandler;->mClientReportLogger:Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;

    invoke-virtual {v8, v6, v4}, Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;->notifyPossibleSegmentChanged(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    .line 162
    .local v5, segmentChanged:Z
    if-eqz v5, :cond_2

    .line 163
    iget-object v8, p0, Lcom/google/android/voicesearch/ime/DictationResultHandler;->mVoiceSearchLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

    invoke-virtual {v8}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->imeUserTypedCorrection()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 140
    .end local v0           #ann:Landroid/text/Annotation;
    .end local v1           #extractedText:Landroid/view/inputmethod/ExtractedText;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #ic:Landroid/view/inputmethod/InputConnection;
    .end local v4           #newText:Ljava/lang/String;
    .end local v5           #segmentChanged:Z
    .end local v6           #segmentId:Ljava/lang/String;
    .end local v7           #spanned:Landroid/text/Spanned;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8
.end method

.method private declared-synchronized startDictation()V
    .locals 5

    .prologue
    .line 193
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/voicesearch/ime/DictationResultHandler;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 194
    .local v1, ic:Landroid/view/inputmethod/InputConnection;
    if-nez v1, :cond_0

    .line 221
    :goto_0
    monitor-exit p0

    return-void

    .line 197
    :cond_0
    :try_start_1
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 200
    :try_start_2
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 203
    invoke-direct {p0, v1}, Lcom/google/android/voicesearch/ime/DictationResultHandler;->extractText(Landroid/view/inputmethod/InputConnection;)Landroid/view/inputmethod/ExtractedText;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v0

    .line 204
    .local v0, extractedText:Landroid/view/inputmethod/ExtractedText;
    if-nez v0, :cond_1

    .line 219
    :try_start_3
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 193
    .end local v0           #extractedText:Landroid/view/inputmethod/ExtractedText;
    .end local v1           #ic:Landroid/view/inputmethod/InputConnection;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 208
    .restart local v0       #extractedText:Landroid/view/inputmethod/ExtractedText;
    .restart local v1       #ic:Landroid/view/inputmethod/InputConnection;
    :cond_1
    :try_start_4
    iget v2, v0, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    if-ltz v2, :cond_2

    iget v2, v0, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    iget v3, v0, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    if-ge v2, v3, :cond_2

    .line 211
    const-string v2, "DictationResultHandler"

    const-string v3, "Removing selected text"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget v2, v0, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    iget v3, v0, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    invoke-interface {v1, v2, v3}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    .line 214
    const/4 v2, 0x0

    iget v3, v0, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    iget v4, v0, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    sub-int/2addr v3, v4

    invoke-interface {v1, v2, v3}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 217
    :cond_2
    iget-object v2, p0, Lcom/google/android/voicesearch/ime/DictationResultHandler;->mTextFormatter:Lcom/google/android/voicesearch/ime/formatter/TextFormatter;

    invoke-interface {v2, v0}, Lcom/google/android/voicesearch/ime/formatter/TextFormatter;->startDictation(Landroid/view/inputmethod/ExtractedText;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 219
    :try_start_5
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto :goto_0

    .end local v0           #extractedText:Landroid/view/inputmethod/ExtractedText;
    :catchall_1
    move-exception v2

    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method


# virtual methods
.method protected declared-synchronized commitNewText()V
    .locals 4

    .prologue
    .line 401
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/voicesearch/ime/DictationResultHandler;->getDictationSegmentWithNewText()Lcom/google/android/voicesearch/ime/DictationSegment;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 403
    .local v0, dictationSegment:Lcom/google/android/voicesearch/ime/DictationSegment;
    if-nez v0, :cond_1

    .line 420
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 408
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Lcom/google/android/voicesearch/ime/DictationSegment;->getNextText()Lcom/google/android/voicesearch/ime/DictationSegment$UpdateText;

    move-result-object v1

    .line 409
    .local v1, updateText:Lcom/google/android/voicesearch/ime/DictationSegment$UpdateText;
    if-eqz v1, :cond_2

    .line 410
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/google/android/voicesearch/ime/DictationSegment$UpdateText;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-direct {p0, v2}, Lcom/google/android/voicesearch/ime/DictationResultHandler;->apply([Lcom/google/android/voicesearch/ime/DictationSegment$UpdateText;)V

    .line 413
    :cond_2
    invoke-direct {p0}, Lcom/google/android/voicesearch/ime/DictationResultHandler;->getDictationSegmentWithNewText()Lcom/google/android/voicesearch/ime/DictationSegment;

    move-result-object v0

    .line 414
    if-eqz v0, :cond_0

    .line 419
    iget-wide v2, p0, Lcom/google/android/voicesearch/ime/DictationResultHandler;->mDelayBetweenCommittingNewTextMsec:J

    invoke-virtual {p0, v2, v3}, Lcom/google/android/voicesearch/ime/DictationResultHandler;->scheduleCommitNewText(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 401
    .end local v0           #dictationSegment:Lcom/google/android/voicesearch/ime/DictationSegment;
    .end local v1           #updateText:Lcom/google/android/voicesearch/ime/DictationSegment$UpdateText;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method protected createHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 169
    new-instance v0, Lcom/google/android/voicesearch/ime/DictationResultHandler$1;

    invoke-direct {v0, p0}, Lcom/google/android/voicesearch/ime/DictationResultHandler$1;-><init>(Lcom/google/android/voicesearch/ime/DictationResultHandler;)V

    return-object v0
.end method

.method protected createTextFormatter()Lcom/google/android/voicesearch/ime/formatter/TextFormatter;
    .locals 1

    .prologue
    .line 114
    new-instance v0, Lcom/google/android/voicesearch/ime/formatter/LatinTextFormatter;

    invoke-direct {v0}, Lcom/google/android/voicesearch/ime/formatter/LatinTextFormatter;-><init>()V

    return-object v0
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/DictationResultHandler;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 186
    return-void
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/DictationResultHandler;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    return-object v0
.end method

.method protected getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;
    .locals 1

    .prologue
    .line 444
    invoke-static {p0}, Lcom/google/android/voicesearch/util/Assert;->assertLock(Ljava/lang/Object;)V

    .line 445
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/DictationResultHandler;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized handleError()V
    .locals 1

    .prologue
    .line 228
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/voicesearch/ime/DictationResultHandler;->forceCommitAllText()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    monitor-exit p0

    return-void

    .line 228
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized handlePartialRecognitionResult(Ljava/lang/String;)V
    .locals 4
    .parameter "text"

    .prologue
    .line 297
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/google/android/voicesearch/ime/DictationResultHandler;->mTextFormatter:Lcom/google/android/voicesearch/ime/formatter/TextFormatter;

    invoke-interface {v2, p1}, Lcom/google/android/voicesearch/ime/formatter/TextFormatter;->formatPartialResult(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 298
    invoke-direct {p0}, Lcom/google/android/voicesearch/ime/DictationResultHandler;->getPartialDictationSegment()Lcom/google/android/voicesearch/ime/DictationSegment;

    move-result-object v0

    .line 300
    .local v0, dictationSegment:Lcom/google/android/voicesearch/ime/DictationSegment;
    invoke-virtual {v0, p1}, Lcom/google/android/voicesearch/ime/DictationSegment;->updatePartial(Ljava/lang/String;)Lcom/google/android/voicesearch/ime/DictationSegment$UpdateText;

    move-result-object v1

    .line 301
    .local v1, updateText:Lcom/google/android/voicesearch/ime/DictationSegment$UpdateText;
    if-eqz v1, :cond_0

    .line 302
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/google/android/voicesearch/ime/DictationSegment$UpdateText;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-direct {p0, v2}, Lcom/google/android/voicesearch/ime/DictationResultHandler;->apply([Lcom/google/android/voicesearch/ime/DictationSegment$UpdateText;)V

    .line 305
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/voicesearch/ime/DictationResultHandler;->isCommitNewTextSchedule()Z

    move-result v2

    if-nez v2, :cond_1

    .line 306
    invoke-virtual {p0}, Lcom/google/android/voicesearch/ime/DictationResultHandler;->commitNewText()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 308
    :cond_1
    monitor-exit p0

    return-void

    .line 297
    .end local v0           #dictationSegment:Lcom/google/android/voicesearch/ime/DictationSegment;
    .end local v1           #updateText:Lcom/google/android/voicesearch/ime/DictationSegment$UpdateText;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized handleRecognitionResult(Lcom/google/android/voicesearch/speechservice/RecognitionParameters;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 5
    .parameter "recParams"
    .parameter "segmentId"
    .parameter "text"
    .parameter
    .parameter "partialText"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/voicesearch/speechservice/RecognitionParameters;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/speech/common/Alternates$AlternateSpan;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 349
    .local p4, alternateSpans:Ljava/util/List;,"Ljava/util/List<Lcom/google/protos/speech/common/Alternates$AlternateSpan;>;"
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/google/android/voicesearch/ime/DictationResultHandler;->mTextFormatter:Lcom/google/android/voicesearch/ime/formatter/TextFormatter;

    invoke-interface {v3, p3}, Lcom/google/android/voicesearch/ime/formatter/TextFormatter;->formatResult(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 350
    iget-object v3, p0, Lcom/google/android/voicesearch/ime/DictationResultHandler;->mTextFormatter:Lcom/google/android/voicesearch/ime/formatter/TextFormatter;

    invoke-interface {v3, p4}, Lcom/google/android/voicesearch/ime/formatter/TextFormatter;->formatAlternateSpan(Ljava/util/List;)Ljava/util/List;

    move-result-object p4

    .line 351
    iget-object v3, p0, Lcom/google/android/voicesearch/ime/DictationResultHandler;->mTextFormatter:Lcom/google/android/voicesearch/ime/formatter/TextFormatter;

    invoke-interface {v3}, Lcom/google/android/voicesearch/ime/formatter/TextFormatter;->reset()V

    .line 353
    invoke-direct {p0}, Lcom/google/android/voicesearch/ime/DictationResultHandler;->getPartialDictationSegment()Lcom/google/android/voicesearch/ime/DictationSegment;

    move-result-object v0

    .line 355
    .local v0, dictationSegment:Lcom/google/android/voicesearch/ime/DictationSegment;
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/voicesearch/ime/DictationSegment;->updateFinal(Lcom/google/android/voicesearch/speechservice/RecognitionParameters;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/google/android/voicesearch/ime/DictationSegment$UpdateText;

    move-result-object v2

    .line 358
    .local v2, updateText:Lcom/google/android/voicesearch/ime/DictationSegment$UpdateText;
    const/4 v1, 0x0

    .line 359
    .local v1, updatePartialText:Lcom/google/android/voicesearch/ime/DictationSegment$UpdateText;
    if-eqz p5, :cond_0

    .line 360
    invoke-virtual {v0, p5}, Lcom/google/android/voicesearch/ime/DictationSegment;->updatePartial(Ljava/lang/String;)Lcom/google/android/voicesearch/ime/DictationSegment$UpdateText;

    move-result-object v1

    .line 363
    :cond_0
    if-eqz v2, :cond_1

    .line 364
    const/4 v3, 0x2

    new-array v3, v3, [Lcom/google/android/voicesearch/ime/DictationSegment$UpdateText;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-direct {p0, v3}, Lcom/google/android/voicesearch/ime/DictationResultHandler;->apply([Lcom/google/android/voicesearch/ime/DictationSegment$UpdateText;)V

    .line 367
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/voicesearch/ime/DictationResultHandler;->isCommitNewTextSchedule()Z

    move-result v3

    if-nez v3, :cond_2

    .line 368
    invoke-virtual {p0}, Lcom/google/android/voicesearch/ime/DictationResultHandler;->commitNewText()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 370
    :cond_2
    monitor-exit p0

    return-void

    .line 349
    .end local v0           #dictationSegment:Lcom/google/android/voicesearch/ime/DictationSegment;
    .end local v1           #updatePartialText:Lcom/google/android/voicesearch/ime/DictationSegment$UpdateText;
    .end local v2           #updateText:Lcom/google/android/voicesearch/ime/DictationSegment$UpdateText;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized handleStop()V
    .locals 1

    .prologue
    .line 232
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/voicesearch/ime/DictationResultHandler;->forceCommitAllText()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    monitor-exit p0

    return-void

    .line 232
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public init()V
    .locals 1

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/google/android/voicesearch/ime/DictationResultHandler;->createHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/ime/DictationResultHandler;->mHandler:Landroid/os/Handler;

    .line 131
    invoke-direct {p0}, Lcom/google/android/voicesearch/ime/DictationResultHandler;->logPreviousDictations()V

    .line 133
    invoke-direct {p0}, Lcom/google/android/voicesearch/ime/DictationResultHandler;->startDictation()V

    .line 134
    return-void
.end method

.method protected isCommitNewTextSchedule()Z
    .locals 2

    .prologue
    .line 376
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/DictationResultHandler;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method protected scheduleCommitNewText(J)V
    .locals 3
    .parameter "delay"

    .prologue
    const/4 v2, 0x1

    .line 387
    iget-object v1, p0, Lcom/google/android/voicesearch/ime/DictationResultHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 391
    iget-object v1, p0, Lcom/google/android/voicesearch/ime/DictationResultHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 392
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/google/android/voicesearch/ime/DictationResultHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 398
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method
