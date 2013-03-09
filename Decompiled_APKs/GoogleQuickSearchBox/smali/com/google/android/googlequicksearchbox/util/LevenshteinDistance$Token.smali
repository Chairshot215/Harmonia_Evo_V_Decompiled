.class public final Lcom/google/android/googlequicksearchbox/util/LevenshteinDistance$Token;
.super Ljava/lang/Object;
.source "LevenshteinDistance.java"

# interfaces
.implements Ljava/lang/CharSequence;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/googlequicksearchbox/util/LevenshteinDistance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Token"
.end annotation


# instance fields
.field private final mContainer:[C

.field public final mEnd:I

.field public final mStart:I


# direct methods
.method public constructor <init>([CII)V
    .locals 0
    .parameter "container"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/util/LevenshteinDistance$Token;->mContainer:[C

    .line 156
    iput p2, p0, Lcom/google/android/googlequicksearchbox/util/LevenshteinDistance$Token;->mStart:I

    .line 157
    iput p3, p0, Lcom/google/android/googlequicksearchbox/util/LevenshteinDistance$Token;->mEnd:I

    .line 158
    return-void
.end method


# virtual methods
.method public charAt(I)C
    .locals 2
    .parameter "index"

    .prologue
    .line 187
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/util/LevenshteinDistance$Token;->mContainer:[C

    iget v1, p0, Lcom/google/android/googlequicksearchbox/util/LevenshteinDistance$Token;->mStart:I

    add-int/2addr v1, p1

    aget-char v0, v0, v1

    return v0
.end method

.method public length()I
    .locals 2

    .prologue
    .line 161
    iget v0, p0, Lcom/google/android/googlequicksearchbox/util/LevenshteinDistance$Token;->mEnd:I

    iget v1, p0, Lcom/google/android/googlequicksearchbox/util/LevenshteinDistance$Token;->mStart:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public prefixOf(Lcom/google/android/googlequicksearchbox/util/LevenshteinDistance$Token;)Z
    .locals 9
    .parameter "that"

    .prologue
    const/4 v6, 0x0

    .line 171
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/util/LevenshteinDistance$Token;->length()I

    move-result v1

    .line 172
    .local v1, len:I
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/util/LevenshteinDistance$Token;->length()I

    move-result v7

    if-le v1, v7, :cond_1

    .line 183
    :cond_0
    :goto_0
    return v6

    .line 173
    :cond_1
    iget v5, p0, Lcom/google/android/googlequicksearchbox/util/LevenshteinDistance$Token;->mStart:I

    .line 174
    .local v5, thisStart:I
    iget v3, p1, Lcom/google/android/googlequicksearchbox/util/LevenshteinDistance$Token;->mStart:I

    .line 175
    .local v3, thatStart:I
    iget-object v4, p0, Lcom/google/android/googlequicksearchbox/util/LevenshteinDistance$Token;->mContainer:[C

    .line 176
    .local v4, thisContainer:[C
    iget-object v2, p1, Lcom/google/android/googlequicksearchbox/util/LevenshteinDistance$Token;->mContainer:[C

    .line 177
    .local v2, thatContainer:[C
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 178
    add-int v7, v5, v0

    aget-char v7, v4, v7

    invoke-static {v7}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v7

    add-int v8, v3, v0

    aget-char v8, v2, v8

    invoke-static {v8}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v8

    if-ne v7, v8, :cond_0

    .line 177
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 183
    :cond_2
    const/4 v6, 0x1

    goto :goto_0
.end method

.method public bridge synthetic subSequence(II)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 149
    invoke-virtual {p0, p1, p2}, Lcom/google/android/googlequicksearchbox/util/LevenshteinDistance$Token;->subSequence(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public subSequence(II)Ljava/lang/String;
    .locals 4
    .parameter "start"
    .parameter "end"

    .prologue
    .line 191
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/util/LevenshteinDistance$Token;->mContainer:[C

    iget v2, p0, Lcom/google/android/googlequicksearchbox/util/LevenshteinDistance$Token;->mStart:I

    add-int/2addr v2, p1

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/util/LevenshteinDistance$Token;->length()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 167
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/util/LevenshteinDistance$Token;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/googlequicksearchbox/util/LevenshteinDistance$Token;->subSequence(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
