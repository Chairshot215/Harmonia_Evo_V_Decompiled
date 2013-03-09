.class Lcom/google/android/common/base/CharEscaperBuilder$CharArrayDecorator;
.super Lcom/google/android/common/base/CharEscaper;
.source "CharEscaperBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/common/base/CharEscaperBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CharArrayDecorator"
.end annotation


# instance fields
.field private final replaceLength:I

.field private final replacements:[[C


# direct methods
.method constructor <init>([[C)V
    .locals 1
    .parameter "replacements"

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/google/android/common/base/CharEscaper;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/google/android/common/base/CharEscaperBuilder$CharArrayDecorator;->replacements:[[C

    .line 27
    array-length v0, p1

    iput v0, p0, Lcom/google/android/common/base/CharEscaperBuilder$CharArrayDecorator;->replaceLength:I

    .line 28
    return-void
.end method


# virtual methods
.method public escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "s"

    .prologue
    .line 35
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 36
    .local v2, slen:I
    const/4 v1, 0x0

    .local v1, index:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 37
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 38
    .local v0, c:C
    iget-object v3, p0, Lcom/google/android/common/base/CharEscaperBuilder$CharArrayDecorator;->replacements:[[C

    array-length v3, v3

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lcom/google/android/common/base/CharEscaperBuilder$CharArrayDecorator;->replacements:[[C

    aget-object v3, v3, v0

    if-eqz v3, :cond_1

    .line 39
    invoke-virtual {p0, p1, v1}, Lcom/google/android/common/base/CharEscaperBuilder$CharArrayDecorator;->escapeSlow(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 42
    .end local v0           #c:C
    .end local p1
    :cond_0
    return-object p1

    .line 36
    .restart local v0       #c:C
    .restart local p1
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected escape(C)[C
    .locals 1
    .parameter "c"

    .prologue
    .line 46
    iget v0, p0, Lcom/google/android/common/base/CharEscaperBuilder$CharArrayDecorator;->replaceLength:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/common/base/CharEscaperBuilder$CharArrayDecorator;->replacements:[[C

    aget-object v0, v0, p1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
