.class public Lcom/google/android/googlequicksearchbox/LevenshteinSuggestionFormatter;
.super Lcom/google/android/googlequicksearchbox/SuggestionFormatter;
.source "LevenshteinSuggestionFormatter.java"


# direct methods
.method public constructor <init>(Lcom/google/android/googlequicksearchbox/TextAppearanceFactory;)V
    .locals 0
    .parameter "spanFactory"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/SuggestionFormatter;-><init>(Lcom/google/android/googlequicksearchbox/TextAppearanceFactory;)V

    .line 37
    return-void
.end method

.method private normalizeQuery(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "query"

    .prologue
    .line 69
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method findMatches([Lcom/google/android/googlequicksearchbox/util/LevenshteinDistance$Token;[Lcom/google/android/googlequicksearchbox/util/LevenshteinDistance$Token;)[I
    .locals 7
    .parameter "source"
    .parameter "target"

    .prologue
    .line 83
    new-instance v3, Lcom/google/android/googlequicksearchbox/util/LevenshteinDistance;

    invoke-direct {v3, p1, p2}, Lcom/google/android/googlequicksearchbox/util/LevenshteinDistance;-><init>([Lcom/google/android/googlequicksearchbox/util/LevenshteinDistance$Token;[Lcom/google/android/googlequicksearchbox/util/LevenshteinDistance$Token;)V

    .line 84
    .local v3, table:Lcom/google/android/googlequicksearchbox/util/LevenshteinDistance;
    invoke-virtual {v3}, Lcom/google/android/googlequicksearchbox/util/LevenshteinDistance;->calculate()I

    .line 85
    array-length v4, p2

    .line 86
    .local v4, targetLen:I
    new-array v2, v4, [I

    .line 87
    .local v2, result:[I
    invoke-virtual {v3}, Lcom/google/android/googlequicksearchbox/util/LevenshteinDistance;->getTargetOperations()[Lcom/google/android/googlequicksearchbox/util/LevenshteinDistance$EditOperation;

    move-result-object v1

    .line 88
    .local v1, ops:[Lcom/google/android/googlequicksearchbox/util/LevenshteinDistance$EditOperation;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v4, :cond_1

    .line 89
    aget-object v5, v1, v0

    invoke-virtual {v5}, Lcom/google/android/googlequicksearchbox/util/LevenshteinDistance$EditOperation;->getType()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_0

    .line 90
    aget-object v5, v1, v0

    invoke-virtual {v5}, Lcom/google/android/googlequicksearchbox/util/LevenshteinDistance$EditOperation;->getPosition()I

    move-result v5

    aput v5, v2, v0

    .line 88
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 92
    :cond_0
    const/4 v5, -0x1

    aput v5, v2, v0

    goto :goto_1

    .line 95
    :cond_1
    return-object v2
.end method

.method public formatSuggestion(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;
    .locals 11
    .parameter "query"
    .parameter "suggestion"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/LevenshteinSuggestionFormatter;->normalizeQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 43
    invoke-virtual {p0, p1}, Lcom/google/android/googlequicksearchbox/LevenshteinSuggestionFormatter;->tokenize(Ljava/lang/String;)[Lcom/google/android/googlequicksearchbox/util/LevenshteinDistance$Token;

    move-result-object v3

    .line 44
    .local v3, queryTokens:[Lcom/google/android/googlequicksearchbox/util/LevenshteinDistance$Token;
    invoke-virtual {p0, p2}, Lcom/google/android/googlequicksearchbox/LevenshteinSuggestionFormatter;->tokenize(Ljava/lang/String;)[Lcom/google/android/googlequicksearchbox/util/LevenshteinDistance$Token;

    move-result-object v6

    .line 45
    .local v6, suggestionTokens:[Lcom/google/android/googlequicksearchbox/util/LevenshteinDistance$Token;
    invoke-virtual {p0, v3, v6}, Lcom/google/android/googlequicksearchbox/LevenshteinSuggestionFormatter;->findMatches([Lcom/google/android/googlequicksearchbox/util/LevenshteinDistance$Token;[Lcom/google/android/googlequicksearchbox/util/LevenshteinDistance$Token;)[I

    move-result-object v1

    .line 51
    .local v1, matches:[I
    new-instance v5, Landroid/text/SpannableString;

    invoke-direct {v5, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 53
    .local v5, str:Landroid/text/SpannableString;
    array-length v2, v1

    .line 54
    .local v2, matchesLen:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 55
    aget-object v7, v6, v0

    .line 56
    .local v7, t:Lcom/google/android/googlequicksearchbox/util/LevenshteinDistance$Token;
    const/4 v4, 0x0

    .line 57
    .local v4, sourceLen:I
    aget v8, v1, v0

    .line 58
    .local v8, thisMatch:I
    if-ltz v8, :cond_0

    .line 59
    aget-object v9, v3, v8

    invoke-virtual {v9}, Lcom/google/android/googlequicksearchbox/util/LevenshteinDistance$Token;->length()I

    move-result v4

    .line 61
    :cond_0
    iget v9, v7, Lcom/google/android/googlequicksearchbox/util/LevenshteinDistance$Token;->mStart:I

    add-int/2addr v9, v4

    iget v10, v7, Lcom/google/android/googlequicksearchbox/util/LevenshteinDistance$Token;->mEnd:I

    invoke-virtual {p0, v5, v9, v10}, Lcom/google/android/googlequicksearchbox/LevenshteinSuggestionFormatter;->applySuggestedTextStyle(Landroid/text/Spannable;II)V

    .line 62
    iget v9, v7, Lcom/google/android/googlequicksearchbox/util/LevenshteinDistance$Token;->mStart:I

    iget v10, v7, Lcom/google/android/googlequicksearchbox/util/LevenshteinDistance$Token;->mStart:I

    add-int/2addr v10, v4

    invoke-virtual {p0, v5, v9, v10}, Lcom/google/android/googlequicksearchbox/LevenshteinSuggestionFormatter;->applyQueryTextStyle(Landroid/text/Spannable;II)V

    .line 54
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 65
    .end local v4           #sourceLen:I
    .end local v7           #t:Lcom/google/android/googlequicksearchbox/util/LevenshteinDistance$Token;
    .end local v8           #thisMatch:I
    :cond_1
    return-object v5
.end method

.method public bridge synthetic formatSuggestion(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-virtual {p0, p1, p2}, Lcom/google/android/googlequicksearchbox/LevenshteinSuggestionFormatter;->formatSuggestion(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    return-object v0
.end method

.method tokenize(Ljava/lang/String;)[Lcom/google/android/googlequicksearchbox/util/LevenshteinDistance$Token;
    .locals 13
    .parameter "seq"

    .prologue
    const/16 v12, 0x20

    const/16 v11, 0x9

    const/4 v10, 0x0

    .line 100
    const/4 v3, 0x0

    .line 101
    .local v3, pos:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 102
    .local v2, len:I
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 104
    .local v0, chars:[C
    new-array v8, v2, [Lcom/google/android/googlequicksearchbox/util/LevenshteinDistance$Token;

    .line 105
    .local v8, tokens:[Lcom/google/android/googlequicksearchbox/util/LevenshteinDistance$Token;
    const/4 v6, 0x0

    .local v6, tokenCount:I
    move v7, v6

    .line 106
    .end local v6           #tokenCount:I
    .local v7, tokenCount:I
    :goto_0
    if-ge v3, v2, :cond_3

    .line 107
    :goto_1
    if-ge v3, v2, :cond_1

    aget-char v9, v0, v3

    if-eq v9, v12, :cond_0

    aget-char v9, v0, v3

    if-ne v9, v11, :cond_1

    .line 108
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 110
    :cond_1
    move v5, v3

    .line 111
    .local v5, start:I
    :goto_2
    if-ge v3, v2, :cond_2

    aget-char v9, v0, v3

    if-eq v9, v12, :cond_2

    aget-char v9, v0, v3

    if-eq v9, v11, :cond_2

    .line 112
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 114
    :cond_2
    move v1, v3

    .line 115
    .local v1, end:I
    if-eq v5, v1, :cond_4

    .line 116
    add-int/lit8 v6, v7, 0x1

    .end local v7           #tokenCount:I
    .restart local v6       #tokenCount:I
    new-instance v9, Lcom/google/android/googlequicksearchbox/util/LevenshteinDistance$Token;

    invoke-direct {v9, v0, v5, v1}, Lcom/google/android/googlequicksearchbox/util/LevenshteinDistance$Token;-><init>([CII)V

    aput-object v9, v8, v7

    :goto_3
    move v7, v6

    .line 118
    .end local v6           #tokenCount:I
    .restart local v7       #tokenCount:I
    goto :goto_0

    .line 120
    .end local v1           #end:I
    .end local v5           #start:I
    :cond_3
    new-array v4, v7, [Lcom/google/android/googlequicksearchbox/util/LevenshteinDistance$Token;

    .line 121
    .local v4, ret:[Lcom/google/android/googlequicksearchbox/util/LevenshteinDistance$Token;
    invoke-static {v8, v10, v4, v10, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 122
    return-object v4

    .end local v4           #ret:[Lcom/google/android/googlequicksearchbox/util/LevenshteinDistance$Token;
    .restart local v1       #end:I
    .restart local v5       #start:I
    :cond_4
    move v6, v7

    .end local v7           #tokenCount:I
    .restart local v6       #tokenCount:I
    goto :goto_3
.end method
