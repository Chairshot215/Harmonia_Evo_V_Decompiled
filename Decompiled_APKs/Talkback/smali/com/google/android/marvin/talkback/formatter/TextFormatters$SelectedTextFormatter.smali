.class public final Lcom/google/android/marvin/talkback/formatter/TextFormatters$SelectedTextFormatter;
.super Ljava/lang/Object;
.source "TextFormatters.java"

# interfaces
.implements Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$AccessibilityEventFormatter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/marvin/talkback/formatter/TextFormatters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SelectedTextFormatter"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private formatPassword(Landroid/view/accessibility/AccessibilityEvent;Landroid/content/Context;Ljava/lang/StringBuilder;)Z
    .locals 9
    .parameter "event"
    .parameter "context"
    .parameter "utteranceText"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 373
    new-instance v2, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;

    invoke-direct {v2, p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;-><init>(Ljava/lang/Object;)V

    .line 374
    .local v2, record:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getFromIndex()I

    move-result v1

    .line 375
    .local v1, fromIndex:I
    invoke-virtual {v2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->getToIndex()I

    move-result v3

    .line 377
    .local v3, toIndex:I
    if-gt v3, v1, :cond_0

    .line 384
    :goto_0
    return v4

    .line 382
    :cond_0
    const v6, 0x7f09004c

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    .line 381
    invoke-virtual {p2, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 383
    .local v0, formattedText:Ljava/lang/CharSequence;
    new-array v6, v5, [Ljava/lang/Object;

    aput-object v0, v6, v4

    invoke-static {p3, v6}, Lcom/google/android/marvin/utils/StringBuilderUtils;->appendWithSeparator(Ljava/lang/StringBuilder;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move v4, v5

    .line 384
    goto :goto_0
.end method


# virtual methods
.method public format(Landroid/view/accessibility/AccessibilityEvent;Landroid/content/Context;Lcom/google/android/marvin/talkback/Utterance;)Z
    .locals 19
    .parameter "event"
    .parameter "context"
    .parameter "utterance"

    .prologue
    .line 304
    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventTime()J

    move-result-wide v10

    .line 305
    .local v10, selectedTimestamp:J
    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityEvent;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v8

    .line 308
    .local v8, selectedPackage:Ljava/lang/CharSequence;
    invoke-static {}, Lcom/google/android/marvin/talkback/formatter/TextFormatters;->access$4()J

    move-result-wide v15

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-lez v15, :cond_0

    .line 309
    invoke-static {}, Lcom/google/android/marvin/talkback/formatter/TextFormatters;->access$4()J

    move-result-wide v15

    sub-long v15, v10, v15

    const-wide/16 v17, 0x64

    cmp-long v15, v15, v17

    if-gez v15, :cond_0

    .line 310
    invoke-static {}, Lcom/google/android/marvin/talkback/formatter/TextFormatters;->access$5()Ljava/lang/CharSequence;

    move-result-object v15

    invoke-static {v8, v15}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 311
    const-wide/16 v15, -0x1

    invoke-static/range {v15 .. v16}, Lcom/google/android/marvin/talkback/formatter/TextFormatters;->access$0(J)V

    .line 312
    const/4 v15, 0x0

    invoke-static {v15}, Lcom/google/android/marvin/talkback/formatter/TextFormatters;->access$1(Ljava/lang/CharSequence;)V

    .line 313
    const/4 v15, 0x0

    .line 360
    :goto_0
    return v15

    .line 316
    :cond_0
    new-instance v7, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;

    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;-><init>(Ljava/lang/Object;)V

    .line 319
    .local v7, record:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;
    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v15

    .line 320
    const/high16 v16, 0x2

    .line 319
    move/from16 v0, v16

    if-ne v15, v0, :cond_1

    .line 321
    invoke-static/range {p1 .. p1}, Lcom/google/android/marvin/talkback/AccessibilityEventUtils;->getEventText(Landroid/view/accessibility/AccessibilityEvent;)Ljava/lang/CharSequence;

    move-result-object v13

    .line 326
    .local v13, text:Ljava/lang/CharSequence;
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityEvent;->getItemCount()I

    move-result v5

    .line 327
    .local v5, count:I
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/marvin/talkback/Utterance;->getText()Ljava/lang/StringBuilder;

    move-result-object v14

    .line 328
    .local v14, utteranceText:Ljava/lang/StringBuilder;
    invoke-static/range {p2 .. p2}, Lcom/googlecode/eyesfree/compat/provider/SettingsCompatUtils$SecureCompatUtils;->shouldSpeakPasswords(Landroid/content/Context;)Z

    move-result v12

    .line 330
    .local v12, shouldSpeakPasswords:Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityEvent;->isPassword()Z

    move-result v15

    if-eqz v15, :cond_2

    if-nez v12, :cond_2

    .line 331
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v14}, Lcom/google/android/marvin/talkback/formatter/TextFormatters$SelectedTextFormatter;->formatPassword(Landroid/view/accessibility/AccessibilityEvent;Landroid/content/Context;Ljava/lang/StringBuilder;)Z

    move-result v15

    goto :goto_0

    .line 323
    .end local v5           #count:I
    .end local v12           #shouldSpeakPasswords:Z
    .end local v13           #text:Ljava/lang/CharSequence;
    .end local v14           #utteranceText:Ljava/lang/StringBuilder;
    :cond_1
    #calls: Lcom/google/android/marvin/talkback/formatter/TextFormatters;->getEventText(Landroid/view/accessibility/AccessibilityEvent;)Ljava/lang/CharSequence;
    invoke-static/range {p1 .. p1}, Lcom/google/android/marvin/talkback/formatter/TextFormatters;->access$2(Landroid/view/accessibility/AccessibilityEvent;)Ljava/lang/CharSequence;

    move-result-object v13

    .restart local v13       #text:Ljava/lang/CharSequence;
    goto :goto_1

    .line 338
    .restart local v5       #count:I
    .restart local v12       #shouldSpeakPasswords:Z
    .restart local v14       #utteranceText:Ljava/lang/StringBuilder;
    :cond_2
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_3

    if-nez v5, :cond_4

    .line 339
    :cond_3
    const/4 v15, 0x0

    goto :goto_0

    .line 342
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityEvent;->getFromIndex()I

    move-result v3

    .line 343
    .local v3, begIndex:I
    invoke-virtual {v7}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->getToIndex()I

    move-result v6

    .line 345
    .local v6, endIndex:I
    #calls: Lcom/google/android/marvin/talkback/formatter/TextFormatters;->areValidIndices(Ljava/lang/CharSequence;II)Z
    invoke-static {v13, v3, v6}, Lcom/google/android/marvin/talkback/formatter/TextFormatters;->access$3(Ljava/lang/CharSequence;II)Z

    move-result v15

    if-nez v15, :cond_5

    .line 346
    const/4 v15, 0x0

    goto :goto_0

    .line 351
    :cond_5
    if-ne v3, v6, :cond_6

    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    move-result v15

    if-ge v6, v15, :cond_6

    .line 353
    add-int/lit8 v15, v6, 0x1

    invoke-interface {v13, v3, v15}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v9

    .line 358
    .local v9, selectedText:Ljava/lang/CharSequence;
    :goto_2
    move-object/from16 v0, p2

    invoke-static {v0, v9}, Lcom/google/android/marvin/talkback/SpeechCleanupUtils;->cleanUp(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 359
    .local v4, cleanedText:Ljava/lang/CharSequence;
    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v4, v15, v16

    invoke-static {v14, v15}, Lcom/google/android/marvin/utils/StringBuilderUtils;->appendWithSeparator(Ljava/lang/StringBuilder;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 360
    const/4 v15, 0x1

    goto :goto_0

    .line 355
    .end local v4           #cleanedText:Ljava/lang/CharSequence;
    .end local v9           #selectedText:Ljava/lang/CharSequence;
    :cond_6
    invoke-interface {v13, v3, v6}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v9

    .restart local v9       #selectedText:Ljava/lang/CharSequence;
    goto :goto_2
.end method
