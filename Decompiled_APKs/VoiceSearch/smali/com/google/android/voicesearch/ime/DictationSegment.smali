.class public Lcom/google/android/voicesearch/ime/DictationSegment;
.super Ljava/lang/Object;
.source "DictationSegment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/voicesearch/ime/DictationSegment$UpdateText;
    }
.end annotation


# instance fields
.field private mAlternateSpans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/speech/common/Alternates$AlternateSpan;",
            ">;"
        }
    .end annotation
.end field

.field private mClientReportLogger:Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;

.field private mContext:Landroid/content/Context;

.field private mDisplayLength:I

.field private mId:Ljava/lang/String;

.field private mRecParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

.field private mText:Ljava/lang/String;

.field private mVoiceSearchLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/voicesearch/ime/DictationSegment;->mDisplayLength:I

    .line 81
    iput-object p1, p0, Lcom/google/android/voicesearch/ime/DictationSegment;->mContext:Landroid/content/Context;

    .line 82
    invoke-static {p1}, Lcom/google/android/voicesearch/VoiceSearchApplication;->getContainer(Landroid/content/Context;)Lcom/google/android/voicesearch/VoiceSearchContainer;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/voicesearch/VoiceSearchContainer;->getVoiceSearchLogger()Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/ime/DictationSegment;->mVoiceSearchLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

    .line 83
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/DictationSegment;->mVoiceSearchLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->getClientReportLogger()Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/ime/DictationSegment;->mClientReportLogger:Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;

    .line 84
    return-void
.end method

.method private static getCommonStart(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 3
    .parameter "oldSt"
    .parameter "newSt"
    .parameter "length"

    .prologue
    .line 260
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 261
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 262
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v1, v2, :cond_0

    .line 266
    .end local v0           #i:I
    :goto_1
    return v0

    .line 261
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, p2

    .line 266
    goto :goto_1
.end method

.method private getFinalText()Ljava/lang/CharSequence;
    .locals 7

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/google/android/voicesearch/ime/DictationSegment;->isFinal()Z

    move-result v0

    if-nez v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/DictationSegment;->mText:Ljava/lang/String;

    .line 218
    :goto_0
    return-object v0

    .line 211
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/DictationSegment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/voicesearch/ime/DictationSegment;->mId:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/voicesearch/ime/DictationSegment;->mText:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/voicesearch/ime/DictationSegment;->mAlternateSpans:Ljava/util/List;

    iget-object v4, p0, Lcom/google/android/voicesearch/ime/DictationSegment;->mClientReportLogger:Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;

    iget-object v5, p0, Lcom/google/android/voicesearch/ime/DictationSegment;->mRecParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    invoke-static/range {v0 .. v5}, Lcom/google/android/voicesearch/util/TextUtil;->getSuggestionSpan(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;Lcom/google/android/voicesearch/speechservice/RecognitionParameters;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 213
    :catch_0
    move-exception v6

    .line 217
    .local v6, e:Ljava/io/UnsupportedEncodingException;
    const-string v0, "DictationResult"

    const-string v1, "Unable to encode text"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 218
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/DictationSegment;->mText:Ljava/lang/String;

    goto :goto_0
.end method

.method private static getNextSplitPos(Ljava/lang/String;I)I
    .locals 3
    .parameter "text"
    .parameter "pos"

    .prologue
    .line 242
    const-string v1, " "

    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 243
    .local v0, offset:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 244
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 246
    :goto_0
    return v1

    :cond_0
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0
.end method

.method private updateText(Ljava/lang/String;)Lcom/google/android/voicesearch/ime/DictationSegment$UpdateText;
    .locals 6
    .parameter "text"

    .prologue
    .line 136
    iget v3, p0, Lcom/google/android/voicesearch/ime/DictationSegment;->mDisplayLength:I

    iget-object v4, p0, Lcom/google/android/voicesearch/ime/DictationSegment;->mText:Ljava/lang/String;

    iget v5, p0, Lcom/google/android/voicesearch/ime/DictationSegment;->mDisplayLength:I

    invoke-static {v4, p1, v5}, Lcom/google/android/voicesearch/ime/DictationSegment;->getCommonStart(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    sub-int v0, v3, v4

    .line 137
    .local v0, deleteChars:I
    iput-object p1, p0, Lcom/google/android/voicesearch/ime/DictationSegment;->mText:Ljava/lang/String;

    .line 139
    if-nez v0, :cond_0

    .line 141
    const/4 v2, 0x0

    .line 154
    :goto_0
    return-object v2

    .line 144
    :cond_0
    iget-object v3, p0, Lcom/google/android/voicesearch/ime/DictationSegment;->mVoiceSearchLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

    invoke-virtual {v3}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->imeDisplayedTextChanged()V

    .line 146
    iget v3, p0, Lcom/google/android/voicesearch/ime/DictationSegment;->mDisplayLength:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 147
    .local v1, newDisplayLength:I
    add-int/lit8 v3, v1, -0x1

    if-ltz v3, :cond_1

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-eq v3, v4, :cond_1

    .line 148
    iget v3, p0, Lcom/google/android/voicesearch/ime/DictationSegment;->mDisplayLength:I

    invoke-static {p1, v3}, Lcom/google/android/voicesearch/ime/DictationSegment;->getNextSplitPos(Ljava/lang/String;I)I

    move-result v1

    .line 150
    :cond_1
    new-instance v2, Lcom/google/android/voicesearch/ime/DictationSegment$UpdateText;

    iget v3, p0, Lcom/google/android/voicesearch/ime/DictationSegment;->mDisplayLength:I

    sub-int/2addr v3, v0

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {v2, p0, v0, v3}, Lcom/google/android/voicesearch/ime/DictationSegment$UpdateText;-><init>(Lcom/google/android/voicesearch/ime/DictationSegment;ILjava/lang/CharSequence;)V

    .line 152
    .local v2, updateResult:Lcom/google/android/voicesearch/ime/DictationSegment$UpdateText;
    iput v1, p0, Lcom/google/android/voicesearch/ime/DictationSegment;->mDisplayLength:I

    goto :goto_0
.end method


# virtual methods
.method public getAllNextText()Lcom/google/android/voicesearch/ime/DictationSegment$UpdateText;
    .locals 3

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/google/android/voicesearch/ime/DictationSegment;->hasMoreText()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 191
    new-instance v0, Lcom/google/android/voicesearch/ime/DictationSegment$UpdateText;

    iget v1, p0, Lcom/google/android/voicesearch/ime/DictationSegment;->mDisplayLength:I

    invoke-direct {p0}, Lcom/google/android/voicesearch/ime/DictationSegment;->getFinalText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/voicesearch/ime/DictationSegment$UpdateText;-><init>(Lcom/google/android/voicesearch/ime/DictationSegment;ILjava/lang/CharSequence;)V

    .line 192
    .local v0, updateText:Lcom/google/android/voicesearch/ime/DictationSegment$UpdateText;
    invoke-direct {p0}, Lcom/google/android/voicesearch/ime/DictationSegment;->getFinalText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iput v1, p0, Lcom/google/android/voicesearch/ime/DictationSegment;->mDisplayLength:I

    .line 195
    .end local v0           #updateText:Lcom/google/android/voicesearch/ime/DictationSegment$UpdateText;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNextText()Lcom/google/android/voicesearch/ime/DictationSegment$UpdateText;
    .locals 5

    .prologue
    .line 172
    iget-object v3, p0, Lcom/google/android/voicesearch/ime/DictationSegment;->mText:Ljava/lang/String;

    iget v4, p0, Lcom/google/android/voicesearch/ime/DictationSegment;->mDisplayLength:I

    add-int/lit8 v4, v4, 0x1

    invoke-static {v3, v4}, Lcom/google/android/voicesearch/ime/DictationSegment;->getNextSplitPos(Ljava/lang/String;I)I

    move-result v0

    .line 174
    .local v0, newDisplayLength:I
    iget-object v3, p0, Lcom/google/android/voicesearch/ime/DictationSegment;->mText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v0, v3, :cond_0

    iget-object v3, p0, Lcom/google/android/voicesearch/ime/DictationSegment;->mId:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 176
    new-instance v2, Lcom/google/android/voicesearch/ime/DictationSegment$UpdateText;

    iget v3, p0, Lcom/google/android/voicesearch/ime/DictationSegment;->mDisplayLength:I

    invoke-direct {p0}, Lcom/google/android/voicesearch/ime/DictationSegment;->getFinalText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/google/android/voicesearch/ime/DictationSegment$UpdateText;-><init>(Lcom/google/android/voicesearch/ime/DictationSegment;ILjava/lang/CharSequence;)V

    .line 177
    .local v2, updateResult:Lcom/google/android/voicesearch/ime/DictationSegment$UpdateText;
    iget-object v3, p0, Lcom/google/android/voicesearch/ime/DictationSegment;->mText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iput v3, p0, Lcom/google/android/voicesearch/ime/DictationSegment;->mDisplayLength:I

    .line 182
    .end local v2           #updateResult:Lcom/google/android/voicesearch/ime/DictationSegment$UpdateText;
    :goto_0
    return-object v2

    .line 180
    :cond_0
    iget-object v3, p0, Lcom/google/android/voicesearch/ime/DictationSegment;->mText:Ljava/lang/String;

    iget v4, p0, Lcom/google/android/voicesearch/ime/DictationSegment;->mDisplayLength:I

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 181
    .local v1, newText:Ljava/lang/CharSequence;
    iput v0, p0, Lcom/google/android/voicesearch/ime/DictationSegment;->mDisplayLength:I

    .line 182
    new-instance v2, Lcom/google/android/voicesearch/ime/DictationSegment$UpdateText;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3, v1}, Lcom/google/android/voicesearch/ime/DictationSegment$UpdateText;-><init>(Lcom/google/android/voicesearch/ime/DictationSegment;ILjava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public hasMoreText()Z
    .locals 2

    .prologue
    .line 161
    iget v0, p0, Lcom/google/android/voicesearch/ime/DictationSegment;->mDisplayLength:I

    iget-object v1, p0, Lcom/google/android/voicesearch/ime/DictationSegment;->mText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFinal()Z
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/DictationSegment;->mId:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateFinal(Lcom/google/android/voicesearch/speechservice/RecognitionParameters;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/google/android/voicesearch/ime/DictationSegment$UpdateText;
    .locals 4
    .parameter "recParameters"
    .parameter "segmentId"
    .parameter "text"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/voicesearch/speechservice/RecognitionParameters;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/speech/common/Alternates$AlternateSpan;",
            ">;)",
            "Lcom/google/android/voicesearch/ime/DictationSegment$UpdateText;"
        }
    .end annotation

    .prologue
    .line 109
    .local p4, alternateSpans:Ljava/util/List;,"Ljava/util/List<Lcom/google/protos/speech/common/Alternates$AlternateSpan;>;"
    iget-object v2, p0, Lcom/google/android/voicesearch/ime/DictationSegment;->mId:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/voicesearch/util/Assert;->assertNull(Ljava/lang/Object;)V

    .line 110
    invoke-direct {p0, p3}, Lcom/google/android/voicesearch/ime/DictationSegment;->updateText(Ljava/lang/String;)Lcom/google/android/voicesearch/ime/DictationSegment$UpdateText;

    move-result-object v1

    .line 112
    .local v1, updateResult:Lcom/google/android/voicesearch/ime/DictationSegment$UpdateText;
    iput-object p4, p0, Lcom/google/android/voicesearch/ime/DictationSegment;->mAlternateSpans:Ljava/util/List;

    .line 113
    iput-object p2, p0, Lcom/google/android/voicesearch/ime/DictationSegment;->mId:Ljava/lang/String;

    .line 114
    iput-object p1, p0, Lcom/google/android/voicesearch/ime/DictationSegment;->mRecParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    .line 116
    iget v2, p0, Lcom/google/android/voicesearch/ime/DictationSegment;->mDisplayLength:I

    iget-object v3, p0, Lcom/google/android/voicesearch/ime/DictationSegment;->mText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 119
    if-eqz v1, :cond_1

    .line 120
    #getter for: Lcom/google/android/voicesearch/ime/DictationSegment$UpdateText;->mDeleteChars:I
    invoke-static {v1}, Lcom/google/android/voicesearch/ime/DictationSegment$UpdateText;->access$000(Lcom/google/android/voicesearch/ime/DictationSegment$UpdateText;)I

    move-result v2

    iget v3, p0, Lcom/google/android/voicesearch/ime/DictationSegment;->mDisplayLength:I

    add-int/2addr v2, v3

    #getter for: Lcom/google/android/voicesearch/ime/DictationSegment$UpdateText;->mNewText:Ljava/lang/CharSequence;
    invoke-static {v1}, Lcom/google/android/voicesearch/ime/DictationSegment$UpdateText;->access$100(Lcom/google/android/voicesearch/ime/DictationSegment$UpdateText;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    sub-int v0, v2, v3

    .line 127
    .local v0, deleteChars:I
    :goto_0
    new-instance v1, Lcom/google/android/voicesearch/ime/DictationSegment$UpdateText;

    .end local v1           #updateResult:Lcom/google/android/voicesearch/ime/DictationSegment$UpdateText;
    invoke-direct {p0}, Lcom/google/android/voicesearch/ime/DictationSegment;->getFinalText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v1, p0, v0, v2}, Lcom/google/android/voicesearch/ime/DictationSegment$UpdateText;-><init>(Lcom/google/android/voicesearch/ime/DictationSegment;ILjava/lang/CharSequence;)V

    .line 129
    .end local v0           #deleteChars:I
    .restart local v1       #updateResult:Lcom/google/android/voicesearch/ime/DictationSegment$UpdateText;
    :cond_0
    return-object v1

    .line 123
    :cond_1
    iget v0, p0, Lcom/google/android/voicesearch/ime/DictationSegment;->mDisplayLength:I

    .restart local v0       #deleteChars:I
    goto :goto_0
.end method

.method public updatePartial(Ljava/lang/String;)Lcom/google/android/voicesearch/ime/DictationSegment$UpdateText;
    .locals 1
    .parameter "text"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/DictationSegment;->mId:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/voicesearch/util/Assert;->assertNull(Ljava/lang/Object;)V

    .line 95
    invoke-direct {p0, p1}, Lcom/google/android/voicesearch/ime/DictationSegment;->updateText(Ljava/lang/String;)Lcom/google/android/voicesearch/ime/DictationSegment$UpdateText;

    move-result-object v0

    return-object v0
.end method
