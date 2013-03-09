.class public Lcom/google/android/voicesearch/ime/formatter/LatinTextFormatter;
.super Ljava/lang/Object;
.source "LatinTextFormatter.java"

# interfaces
.implements Lcom/google/android/voicesearch/ime/formatter/TextFormatter;


# static fields
.field private static DEBUG:Z


# instance fields
.field private mFirstCharUppercase:Z

.field private mFirstCommit:Z

.field private upperCaseChars:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/voicesearch/ime/formatter/LatinTextFormatter;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/voicesearch/ime/formatter/LatinTextFormatter;->upperCaseChars:Ljava/util/Set;

    .line 52
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/formatter/LatinTextFormatter;->upperCaseChars:Ljava/util/Set;

    const/16 v1, 0x2e

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 53
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/formatter/LatinTextFormatter;->upperCaseChars:Ljava/util/Set;

    const/16 v1, 0x21

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 54
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/formatter/LatinTextFormatter;->upperCaseChars:Ljava/util/Set;

    const/16 v1, 0x3f

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 55
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/formatter/LatinTextFormatter;->upperCaseChars:Ljava/util/Set;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 56
    return-void
.end method

.method private forceFirstCharUppercase(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "text"

    .prologue
    .line 224
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 227
    :cond_0
    return-object p1
.end method

.method private formatAlternateSpan(Lcom/google/protos/speech/common/Alternates$AlternateSpan;)Lcom/google/protos/speech/common/Alternates$AlternateSpan;
    .locals 8
    .parameter "alternateSpan"

    .prologue
    .line 194
    invoke-virtual {p1}, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->toBuilder()Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;

    move-result-object v2

    .line 198
    .local v2, alternateSpanBuilder:Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 200
    .local v3, alternateTextSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 202
    .local v4, alternates:Ljava/util/List;,"Ljava/util/List<Lcom/google/protos/speech/common/Alternates$Alternate;>;"
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    invoke-virtual {v2}, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->getAlternatesCount()I

    move-result v7

    if-ge v6, v7, :cond_1

    .line 203
    invoke-virtual {v2, v6}, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->getAlternates(I)Lcom/google/protos/speech/common/Alternates$Alternate;

    move-result-object v0

    .line 205
    .local v0, alternate:Lcom/google/protos/speech/common/Alternates$Alternate;
    invoke-virtual {v0}, Lcom/google/protos/speech/common/Alternates$Alternate;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/google/android/voicesearch/ime/formatter/LatinTextFormatter;->formatPartialResult(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 206
    .local v5, formattedText:Ljava/lang/String;
    invoke-interface {v3, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 207
    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 209
    invoke-virtual {v0}, Lcom/google/protos/speech/common/Alternates$Alternate;->toBuilder()Lcom/google/protos/speech/common/Alternates$Alternate$Builder;

    move-result-object v1

    .line 210
    .local v1, alternateBuilder:Lcom/google/protos/speech/common/Alternates$Alternate$Builder;
    invoke-virtual {v1, v5}, Lcom/google/protos/speech/common/Alternates$Alternate$Builder;->setText(Ljava/lang/String;)Lcom/google/protos/speech/common/Alternates$Alternate$Builder;

    .line 211
    invoke-virtual {v1}, Lcom/google/protos/speech/common/Alternates$Alternate$Builder;->build()Lcom/google/protos/speech/common/Alternates$Alternate;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    .end local v1           #alternateBuilder:Lcom/google/protos/speech/common/Alternates$Alternate$Builder;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 215
    .end local v0           #alternate:Lcom/google/protos/speech/common/Alternates$Alternate;
    .end local v5           #formattedText:Ljava/lang/String;
    :cond_1
    invoke-virtual {v2}, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->clearAlternates()Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->addAllAlternates(Ljava/lang/Iterable;)Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;

    .line 217
    invoke-virtual {v2}, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->build()Lcom/google/protos/speech/common/Alternates$AlternateSpan;

    move-result-object v7

    return-object v7
.end method

.method private isAtBeginning(Landroid/view/inputmethod/ExtractedText;)Z
    .locals 1
    .parameter "et"

    .prologue
    .line 116
    iget v0, p1, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPrevCharForceUppercase(Landroid/view/inputmethod/ExtractedText;)Z
    .locals 3
    .parameter "et"

    .prologue
    .line 120
    iget v1, p1, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    add-int/lit8 v0, v1, -0x1

    .line 121
    .local v0, pos:I
    :goto_0
    if-lez v0, :cond_0

    iget-object v1, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-direct {p0, v1}, Lcom/google/android/voicesearch/ime/formatter/LatinTextFormatter;->isSkipChar(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 125
    :cond_0
    iget-object v1, p0, Lcom/google/android/voicesearch/ime/formatter/LatinTextFormatter;->upperCaseChars:Ljava/util/Set;

    iget-object v2, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private isPrevTextForceUppercase(Landroid/view/inputmethod/ExtractedText;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 139
    iget-object v0, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spanned;

    if-nez v0, :cond_0

    move v0, v2

    .line 152
    :goto_0
    return v0

    .line 143
    :cond_0
    iget-object v0, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spanned;

    .line 145
    iget v1, p1, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    const-class v3, Landroid/text/Annotation;

    invoke-interface {v0, v2, v1, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/Annotation;

    .line 147
    array-length v4, v1

    move v3, v2

    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v5, v1, v3

    .line 148
    invoke-interface {v0, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    iget v7, p1, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    if-ne v6, v7, :cond_1

    invoke-static {v5}, Lcom/google/android/voicesearch/util/TextUtil;->isForceUppercase(Landroid/text/Annotation;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 149
    const/4 v0, 0x1

    goto :goto_0

    .line 147
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    move v0, v2

    .line 152
    goto :goto_0
.end method

.method private isSkipChar(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 135
    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    invoke-static {p1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public formatAlternateSpan(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/speech/common/Alternates$AlternateSpan;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/speech/common/Alternates$AlternateSpan;",
            ">;"
        }
    .end annotation

    .prologue
    .line 175
    .local p1, alternateSpans:Ljava/util/List;,"Ljava/util/List<Lcom/google/protos/speech/common/Alternates$AlternateSpan;>;"
    iget-boolean v3, p0, Lcom/google/android/voicesearch/ime/formatter/LatinTextFormatter;->mFirstCharUppercase:Z

    if-eqz v3, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move-object v1, p1

    .line 190
    .end local p1           #alternateSpans:Ljava/util/List;,"Ljava/util/List<Lcom/google/protos/speech/common/Alternates$AlternateSpan;>;"
    .local v1, alternateSpans:Ljava/util/List;,"Ljava/util/List<Lcom/google/protos/speech/common/Alternates$AlternateSpan;>;"
    :goto_0
    return-object v1

    .line 179
    .end local v1           #alternateSpans:Ljava/util/List;,"Ljava/util/List<Lcom/google/protos/speech/common/Alternates$AlternateSpan;>;"
    .restart local p1       #alternateSpans:Ljava/util/List;,"Ljava/util/List<Lcom/google/protos/speech/common/Alternates$AlternateSpan;>;"
    :cond_1
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 181
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1, p1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 182
    .end local p1           #alternateSpans:Ljava/util/List;,"Ljava/util/List<Lcom/google/protos/speech/common/Alternates$AlternateSpan;>;"
    .restart local v1       #alternateSpans:Ljava/util/List;,"Ljava/util/List<Lcom/google/protos/speech/common/Alternates$AlternateSpan;>;"
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;

    .line 184
    .local v0, alternateSpan:Lcom/google/protos/speech/common/Alternates$AlternateSpan;
    invoke-virtual {v0}, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->getStart()I

    move-result v3

    if-nez v3, :cond_2

    .line 185
    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/ime/formatter/LatinTextFormatter;->formatAlternateSpan(Lcom/google/protos/speech/common/Alternates$AlternateSpan;)Lcom/google/protos/speech/common/Alternates$AlternateSpan;

    move-result-object v0

    .line 186
    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 187
    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 179
    :cond_2
    add-int/lit8 v2, v2, 0x1

    move-object p1, v1

    .end local v1           #alternateSpans:Ljava/util/List;,"Ljava/util/List<Lcom/google/protos/speech/common/Alternates$AlternateSpan;>;"
    .restart local p1       #alternateSpans:Ljava/util/List;,"Ljava/util/List<Lcom/google/protos/speech/common/Alternates$AlternateSpan;>;"
    goto :goto_1

    .end local v0           #alternateSpan:Lcom/google/protos/speech/common/Alternates$AlternateSpan;
    :cond_3
    move-object v1, p1

    .line 190
    .end local p1           #alternateSpans:Ljava/util/List;,"Ljava/util/List<Lcom/google/protos/speech/common/Alternates$AlternateSpan;>;"
    .restart local v1       #alternateSpans:Ljava/util/List;,"Ljava/util/List<Lcom/google/protos/speech/common/Alternates$AlternateSpan;>;"
    goto :goto_0
.end method

.method public formatPartialResult(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "text"

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/google/android/voicesearch/ime/formatter/LatinTextFormatter;->mFirstCharUppercase:Z

    if-eqz v0, :cond_0

    .line 158
    invoke-direct {p0, p1}, Lcom/google/android/voicesearch/ime/formatter/LatinTextFormatter;->forceFirstCharUppercase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 160
    .end local p1
    :cond_0
    return-object p1
.end method

.method public formatResult(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "text"

    .prologue
    .line 165
    invoke-virtual {p0, p1}, Lcom/google/android/voicesearch/ime/formatter/LatinTextFormatter;->formatPartialResult(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleCommit(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/ExtractedText;)V
    .locals 4
    .parameter "ic"
    .parameter "et"

    .prologue
    const/4 v3, 0x0

    .line 61
    iget-boolean v1, p0, Lcom/google/android/voicesearch/ime/formatter/LatinTextFormatter;->mFirstCommit:Z

    if-nez v1, :cond_1

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    if-eqz p2, :cond_0

    .line 73
    iget v0, p2, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    .line 75
    .local v0, newSelectionStart:I
    iget v1, p2, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    iget-object v2, p2, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 76
    iget-object v1, p2, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    iget v2, p2, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_3

    .line 79
    sget-boolean v1, Lcom/google/android/voicesearch/ime/formatter/LatinTextFormatter;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 80
    const-string v1, "LatinTextFormatter"

    const-string v2, "Add space before"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :cond_2
    const-string v1, " "

    invoke-interface {p1, v1, v3}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 86
    :cond_3
    iget v1, p2, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    if-lez v1, :cond_5

    .line 87
    iget-object v1, p2, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    iget v2, p2, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_5

    .line 90
    sget-boolean v1, Lcom/google/android/voicesearch/ime/formatter/LatinTextFormatter;->DEBUG:Z

    if-eqz v1, :cond_4

    .line 91
    const-string v1, "LatinTextFormatter"

    const-string v2, "Add space after"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_4
    const-string v1, " "

    const/4 v2, 0x1

    invoke-interface {p1, v1, v2}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 94
    add-int/lit8 v0, v0, 0x1

    .line 98
    :cond_5
    invoke-interface {p1, v0, v0}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    .line 99
    iput-boolean v3, p0, Lcom/google/android/voicesearch/ime/formatter/LatinTextFormatter;->mFirstCommit:Z

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 170
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/voicesearch/ime/formatter/LatinTextFormatter;->mFirstCharUppercase:Z

    .line 171
    return-void
.end method

.method public startDictation(Landroid/view/inputmethod/ExtractedText;)V
    .locals 3
    .parameter "et"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 104
    iput-boolean v1, p0, Lcom/google/android/voicesearch/ime/formatter/LatinTextFormatter;->mFirstCommit:Z

    .line 105
    iput-boolean v0, p0, Lcom/google/android/voicesearch/ime/formatter/LatinTextFormatter;->mFirstCharUppercase:Z

    .line 107
    if-nez p1, :cond_0

    .line 113
    :goto_0
    return-void

    .line 111
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/voicesearch/ime/formatter/LatinTextFormatter;->isAtBeginning(Landroid/view/inputmethod/ExtractedText;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0, p1}, Lcom/google/android/voicesearch/ime/formatter/LatinTextFormatter;->isPrevCharForceUppercase(Landroid/view/inputmethod/ExtractedText;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0, p1}, Lcom/google/android/voicesearch/ime/formatter/LatinTextFormatter;->isPrevTextForceUppercase(Landroid/view/inputmethod/ExtractedText;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    move v0, v1

    :cond_2
    iput-boolean v0, p0, Lcom/google/android/voicesearch/ime/formatter/LatinTextFormatter;->mFirstCharUppercase:Z

    goto :goto_0
.end method
