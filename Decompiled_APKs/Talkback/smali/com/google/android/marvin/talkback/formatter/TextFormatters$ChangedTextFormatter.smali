.class public final Lcom/google/android/marvin/talkback/formatter/TextFormatters$ChangedTextFormatter;
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
    name = "ChangedTextFormatter"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private appendLastWordIfNeeded(Landroid/view/accessibility/AccessibilityEvent;Landroid/content/Context;Ljava/lang/StringBuilder;)Z
    .locals 8
    .parameter "event"
    .parameter "context"
    .parameter "utteranceText"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 150
    #calls: Lcom/google/android/marvin/talkback/formatter/TextFormatters;->getEventText(Landroid/view/accessibility/AccessibilityEvent;)Ljava/lang/CharSequence;
    invoke-static {p1}, Lcom/google/android/marvin/talkback/formatter/TextFormatters;->access$2(Landroid/view/accessibility/AccessibilityEvent;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 151
    .local v2, text:Ljava/lang/CharSequence;
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getFromIndex()I

    move-result v1

    .line 153
    .local v1, fromIndex:I
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-le v1, v6, :cond_1

    .line 154
    const/4 v6, 0x5

    const-string v7, "Received event with invalid fromIndex: %s"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v4

    invoke-static {p0, v6, v7, v5}, Lcom/googlecode/eyesfree/utils/LogUtils;->log(Ljava/lang/Object;ILjava/lang/String;[Ljava/lang/Object;)V

    .line 172
    :cond_0
    :goto_0
    return v4

    .line 159
    :cond_1
    invoke-interface {v2, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 163
    invoke-static {v2, v1}, Lcom/google/android/marvin/talkback/formatter/TextFormatters$ChangedTextFormatter;->getPrecedingWhitespace(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 164
    .local v0, breakIndex:I
    invoke-interface {v2, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    .line 167
    .local v3, word:Ljava/lang/CharSequence;
    invoke-static {v3}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v6

    if-eqz v6, :cond_0

    .line 171
    new-array v6, v5, [Ljava/lang/Object;

    aput-object v3, v6, v4

    invoke-static {p3, v6}, Lcom/google/android/marvin/utils/StringBuilderUtils;->appendWithSeparator(Ljava/lang/StringBuilder;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move v4, v5

    .line 172
    goto :goto_0
.end method

.method private formatPassword(Landroid/view/accessibility/AccessibilityEvent;Landroid/content/Context;Ljava/lang/StringBuilder;)Z
    .locals 8
    .parameter "event"
    .parameter "context"
    .parameter "utteranceText"

    .prologue
    const v7, 0x7f0900e4

    const/4 v6, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 276
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getRemovedCount()I

    move-result v2

    .line 277
    .local v2, removed:I
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getAddedCount()I

    move-result v0

    .line 279
    .local v0, added:I
    if-nez v0, :cond_0

    if-nez v2, :cond_0

    .line 294
    :goto_0
    return v3

    .line 281
    :cond_0
    if-ne v0, v4, :cond_1

    if-nez v2, :cond_1

    .line 282
    new-array v5, v4, [Ljava/lang/Object;

    .line 283
    invoke-virtual {p2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    .line 282
    invoke-static {p3, v5}, Lcom/google/android/marvin/utils/StringBuilderUtils;->appendWithSeparator(Ljava/lang/StringBuilder;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_1
    move v3, v4

    .line 294
    goto :goto_0

    .line 284
    :cond_1
    if-nez v0, :cond_2

    if-ne v2, v4, :cond_2

    .line 285
    new-array v5, v6, [Ljava/lang/Object;

    .line 286
    invoke-virtual {p2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    .line 287
    const v3, 0x7f090054

    invoke-virtual {p2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v4

    .line 285
    invoke-static {p3, v5}, Lcom/google/android/marvin/utils/StringBuilderUtils;->appendWithSeparator(Ljava/lang/StringBuilder;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 290
    :cond_2
    const v5, 0x7f09003c

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-virtual {p2, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 291
    .local v1, formattedText:Ljava/lang/CharSequence;
    new-array v5, v4, [Ljava/lang/Object;

    aput-object v1, v5, v3

    invoke-static {p3, v5}, Lcom/google/android/marvin/utils/StringBuilderUtils;->appendWithSeparator(Ljava/lang/StringBuilder;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private getAddedText(Landroid/view/accessibility/AccessibilityEvent;Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 5
    .parameter "event"
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 222
    #calls: Lcom/google/android/marvin/talkback/formatter/TextFormatters;->getEventText(Landroid/view/accessibility/AccessibilityEvent;)Ljava/lang/CharSequence;
    invoke-static {p1}, Lcom/google/android/marvin/talkback/formatter/TextFormatters;->access$2(Landroid/view/accessibility/AccessibilityEvent;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 224
    .local v3, text:Ljava/lang/CharSequence;
    if-nez v3, :cond_1

    .line 237
    :cond_0
    :goto_0
    return-object v2

    .line 228
    :cond_1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getFromIndex()I

    move-result v0

    .line 229
    .local v0, addedBegIndex:I
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getAddedCount()I

    move-result v4

    add-int v1, v0, v4

    .line 231
    .local v1, addedEndIndex:I
    #calls: Lcom/google/android/marvin/talkback/formatter/TextFormatters;->areValidIndices(Ljava/lang/CharSequence;II)Z
    invoke-static {v3, v0, v1}, Lcom/google/android/marvin/talkback/formatter/TextFormatters;->access$3(Ljava/lang/CharSequence;II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 235
    invoke-interface {v3, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 237
    .local v2, addedText:Ljava/lang/CharSequence;
    goto :goto_0
.end method

.method private static getPrecedingWhitespace(Ljava/lang/CharSequence;I)I
    .locals 2
    .parameter "text"
    .parameter "fromIndex"

    .prologue
    .line 176
    add-int/lit8 v0, p1, -0x1

    .local v0, i:I
    :goto_0
    if-gtz v0, :cond_1

    .line 182
    const/4 v0, 0x0

    .end local v0           #i:I
    :cond_0
    return v0

    .line 177
    .restart local v0       #i:I
    :cond_1
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 176
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private getRemovedText(Landroid/view/accessibility/AccessibilityEvent;Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 5
    .parameter "event"
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 248
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getBeforeText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 250
    .local v2, beforeText:Ljava/lang/CharSequence;
    if-nez v2, :cond_1

    .line 263
    :cond_0
    :goto_0
    return-object v3

    .line 254
    :cond_1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getFromIndex()I

    move-result v0

    .line 255
    .local v0, beforeBegIndex:I
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getRemovedCount()I

    move-result v4

    add-int v1, v0, v4

    .line 257
    .local v1, beforeEndIndex:I
    #calls: Lcom/google/android/marvin/talkback/formatter/TextFormatters;->areValidIndices(Ljava/lang/CharSequence;II)Z
    invoke-static {v2, v0, v1}, Lcom/google/android/marvin/talkback/formatter/TextFormatters;->access$3(Ljava/lang/CharSequence;II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 261
    invoke-interface {v2, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    .line 263
    .local v3, removedText:Ljava/lang/CharSequence;
    goto :goto_0
.end method

.method private passesSanityCheck(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 195
    #calls: Lcom/google/android/marvin/talkback/formatter/TextFormatters;->getEventText(Landroid/view/accessibility/AccessibilityEvent;)Ljava/lang/CharSequence;
    invoke-static {p1}, Lcom/google/android/marvin/talkback/formatter/TextFormatters;->access$2(Landroid/view/accessibility/AccessibilityEvent;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 196
    .local v0, afterText:Ljava/lang/CharSequence;
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getBeforeText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 201
    .local v1, beforeText:Ljava/lang/CharSequence;
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getAddedCount()I

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getRemovedCount()I

    move-result v5

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-ne v5, v6, :cond_1

    .line 211
    :cond_0
    :goto_0
    return v3

    .line 205
    :cond_1
    if-eqz v0, :cond_2

    if-nez v1, :cond_3

    :cond_2
    move v3, v4

    .line 206
    goto :goto_0

    .line 209
    :cond_3
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getAddedCount()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getRemovedCount()I

    move-result v6

    sub-int v2, v5, v6

    .line 211
    .local v2, diff:I
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    add-int/2addr v5, v2

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-eq v5, v6, :cond_0

    move v3, v4

    goto :goto_0
.end method


# virtual methods
.method public format(Landroid/view/accessibility/AccessibilityEvent;Landroid/content/Context;Lcom/google/android/marvin/talkback/Utterance;)Z
    .locals 18
    .parameter "event"
    .parameter "context"
    .parameter "utterance"

    .prologue
    .line 67
    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventTime()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Lcom/google/android/marvin/talkback/formatter/TextFormatters;->access$0(J)V

    .line 68
    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityEvent;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v15

    invoke-static {v15}, Lcom/google/android/marvin/talkback/formatter/TextFormatters;->access$1(Ljava/lang/CharSequence;)V

    .line 71
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 72
    .local v9, params:Landroid/os/Bundle;
    const-string v15, "pitch"

    const v16, 0x3f99999a

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 73
    const-string v15, "rate"

    const/high16 v16, 0x3f80

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 74
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/marvin/talkback/Utterance;->getMetadata()Landroid/os/Bundle;

    move-result-object v15

    const-string v16, "speech_params"

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v9}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 76
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/marvin/talkback/Utterance;->getText()Ljava/lang/StringBuilder;

    move-result-object v14

    .line 77
    .local v14, utteranceText:Ljava/lang/StringBuilder;
    invoke-static/range {p2 .. p2}, Lcom/googlecode/eyesfree/compat/provider/SettingsCompatUtils$SecureCompatUtils;->shouldSpeakPasswords(Landroid/content/Context;)Z

    move-result v13

    .line 79
    .local v13, shouldSpeakPasswords:Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityEvent;->isPassword()Z

    move-result v15

    if-eqz v15, :cond_0

    if-nez v13, :cond_0

    .line 80
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v14}, Lcom/google/android/marvin/talkback/formatter/TextFormatters$ChangedTextFormatter;->formatPassword(Landroid/view/accessibility/AccessibilityEvent;Landroid/content/Context;Ljava/lang/StringBuilder;)Z

    move-result v15

    .line 145
    :goto_0
    return v15

    .line 83
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/google/android/marvin/talkback/formatter/TextFormatters$ChangedTextFormatter;->passesSanityCheck(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v15

    if-nez v15, :cond_1

    .line 84
    const/4 v15, 0x6

    const-string v16, "Inconsistent text change event detected"

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-static {v0, v15, v1, v2}, Lcom/googlecode/eyesfree/utils/LogUtils;->log(Ljava/lang/Object;ILjava/lang/String;[Ljava/lang/Object;)V

    .line 85
    const/4 v15, 0x0

    goto :goto_0

    .line 88
    :cond_1
    invoke-direct/range {p0 .. p2}, Lcom/google/android/marvin/talkback/formatter/TextFormatters$ChangedTextFormatter;->getRemovedText(Landroid/view/accessibility/AccessibilityEvent;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v12

    .line 89
    .local v12, removedText:Ljava/lang/CharSequence;
    invoke-direct/range {p0 .. p2}, Lcom/google/android/marvin/talkback/formatter/TextFormatters$ChangedTextFormatter;->getAddedText(Landroid/view/accessibility/AccessibilityEvent;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 92
    .local v5, addedText:Ljava/lang/CharSequence;
    invoke-static {v5, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 93
    const/4 v15, 0x0

    goto :goto_0

    .line 97
    :cond_2
    if-eqz v12, :cond_3

    if-nez v5, :cond_4

    .line 98
    :cond_3
    const/4 v15, 0x0

    goto :goto_0

    .line 101
    :cond_4
    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v11

    .line 102
    .local v11, removedLength:I
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 106
    .local v4, addedLength:I
    if-le v4, v11, :cond_7

    .line 107
    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v5, v15, v12, v0, v11}, Landroid/text/TextUtils;->regionMatches(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 108
    invoke-static {v5, v11, v4}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v5

    .line 109
    const-string v12, ""

    .line 119
    :cond_5
    :goto_1
    move-object/from16 v0, p2

    invoke-static {v0, v12}, Lcom/google/android/marvin/talkback/SpeechCleanupUtils;->cleanUp(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 120
    .local v7, cleanedRemovedText:Ljava/lang/CharSequence;
    move-object/from16 v0, p2

    invoke-static {v0, v5}, Lcom/google/android/marvin/talkback/SpeechCleanupUtils;->cleanUp(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 123
    .local v6, cleanedAddedText:Ljava/lang/CharSequence;
    if-eqz v7, :cond_6

    if-nez v6, :cond_8

    .line 124
    :cond_6
    const/4 v15, 0x0

    goto :goto_0

    .line 110
    .end local v6           #cleanedAddedText:Ljava/lang/CharSequence;
    .end local v7           #cleanedRemovedText:Ljava/lang/CharSequence;
    :cond_7
    if-le v11, v4, :cond_5

    .line 111
    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v12, v15, v5, v0, v4}, Landroid/text/TextUtils;->regionMatches(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 112
    const-string v5, ""

    .line 113
    invoke-static {v12, v4, v11}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v12

    goto :goto_1

    .line 127
    .restart local v6       #cleanedAddedText:Ljava/lang/CharSequence;
    .restart local v7       #cleanedRemovedText:Ljava/lang/CharSequence;
    :cond_8
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_a

    const/4 v3, 0x0

    .line 128
    .local v3, added:Z
    :goto_2
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_b

    const/4 v10, 0x0

    .line 130
    .local v10, removed:Z
    :goto_3
    if-eqz v3, :cond_c

    if-eqz v10, :cond_c

    .line 132
    const v15, 0x7f09003b

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v7, v16, v17

    const/16 v17, 0x1

    aput-object v6, v16, v17

    .line 131
    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 133
    .local v8, formattedText:Ljava/lang/String;
    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v8, v15, v16

    invoke-static {v14, v15}, Lcom/google/android/marvin/utils/StringBuilderUtils;->appendWithSeparator(Ljava/lang/StringBuilder;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 145
    .end local v8           #formattedText:Ljava/lang/String;
    :cond_9
    :goto_4
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 127
    .end local v3           #added:Z
    .end local v10           #removed:Z
    :cond_a
    const/4 v3, 0x1

    goto :goto_2

    .line 128
    .restart local v3       #added:Z
    :cond_b
    const/4 v10, 0x1

    goto :goto_3

    .line 134
    .restart local v10       #removed:Z
    :cond_c
    if-eqz v3, :cond_d

    .line 135
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v14}, Lcom/google/android/marvin/talkback/formatter/TextFormatters$ChangedTextFormatter;->appendLastWordIfNeeded(Landroid/view/accessibility/AccessibilityEvent;Landroid/content/Context;Ljava/lang/StringBuilder;)Z

    move-result v15

    if-nez v15, :cond_9

    .line 136
    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v6, v15, v16

    invoke-static {v14, v15}, Lcom/google/android/marvin/utils/StringBuilderUtils;->appendWithSeparator(Ljava/lang/StringBuilder;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 138
    :cond_d
    if-eqz v10, :cond_e

    .line 139
    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v7, v15, v16

    const/16 v16, 0x1

    .line 140
    const v17, 0x7f090054

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    .line 139
    invoke-static {v14, v15}, Lcom/google/android/marvin/utils/StringBuilderUtils;->appendWithSeparator(Ljava/lang/StringBuilder;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 142
    :cond_e
    const/4 v15, 0x0

    goto/16 :goto_0
.end method
