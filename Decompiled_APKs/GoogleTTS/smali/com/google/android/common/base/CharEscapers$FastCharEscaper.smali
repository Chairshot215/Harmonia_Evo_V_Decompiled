.class abstract Lcom/google/android/common/base/CharEscapers$FastCharEscaper;
.super Lcom/google/android/common/base/CharEscaper;
.source "CharEscapers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/common/base/CharEscapers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "FastCharEscaper"
.end annotation


# instance fields
.field protected final replacementLength:I

.field protected final replacements:[[C

.field protected final safeMax:C

.field protected final safeMin:C


# direct methods
.method public constructor <init>([[CCC)V
    .locals 1
    .parameter "replacements"
    .parameter "safeMin"
    .parameter "safeMax"

    .prologue
    .line 887
    invoke-direct {p0}, Lcom/google/android/common/base/CharEscaper;-><init>()V

    .line 888
    iput-object p1, p0, Lcom/google/android/common/base/CharEscapers$FastCharEscaper;->replacements:[[C

    .line 889
    array-length v0, p1

    iput v0, p0, Lcom/google/android/common/base/CharEscapers$FastCharEscaper;->replacementLength:I

    .line 890
    iput-char p2, p0, Lcom/google/android/common/base/CharEscapers$FastCharEscaper;->safeMin:C

    .line 891
    iput-char p3, p0, Lcom/google/android/common/base/CharEscapers$FastCharEscaper;->safeMax:C

    .line 892
    return-void
.end method


# virtual methods
.method public escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "s"

    .prologue
    .line 896
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 897
    .local v2, slen:I
    const/4 v1, 0x0

    .local v1, index:I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 898
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 899
    .local v0, c:C
    iget v3, p0, Lcom/google/android/common/base/CharEscapers$FastCharEscaper;->replacementLength:I

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lcom/google/android/common/base/CharEscapers$FastCharEscaper;->replacements:[[C

    aget-object v3, v3, v0

    if-nez v3, :cond_1

    :cond_0
    iget-char v3, p0, Lcom/google/android/common/base/CharEscapers$FastCharEscaper;->safeMin:C

    if-lt v0, v3, :cond_1

    iget-char v3, p0, Lcom/google/android/common/base/CharEscapers$FastCharEscaper;->safeMax:C

    if-le v0, v3, :cond_3

    .line 901
    :cond_1
    invoke-virtual {p0, p1, v1}, Lcom/google/android/common/base/CharEscapers$FastCharEscaper;->escapeSlow(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 904
    .end local v0           #c:C
    .end local p1
    :cond_2
    return-object p1

    .line 897
    .restart local v0       #c:C
    .restart local p1
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
