.class Lcom/google/android/common/base/CharEscapers$JavascriptCharEscaper;
.super Lcom/google/android/common/base/CharEscapers$FastCharEscaper;
.source "CharEscapers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/common/base/CharEscapers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JavascriptCharEscaper"
.end annotation


# direct methods
.method public constructor <init>([[C)V
    .locals 2
    .parameter "replacements"

    .prologue
    .line 970
    const/16 v0, 0x20

    const/16 v1, 0x7e

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/common/base/CharEscapers$FastCharEscaper;-><init>([[CCC)V

    .line 971
    return-void
.end method


# virtual methods
.method protected escape(C)[C
    .locals 9
    .parameter "c"

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 975
    iget v1, p0, Lcom/google/android/common/base/CharEscapers$JavascriptCharEscaper;->replacementLength:I

    if-ge p1, v1, :cond_0

    .line 976
    iget-object v1, p0, Lcom/google/android/common/base/CharEscapers$JavascriptCharEscaper;->replacements:[[C

    aget-object v0, v1, p1

    .line 977
    .local v0, r:[C
    if-eqz v0, :cond_0

    .line 1009
    .end local v0           #r:[C
    :goto_0
    return-object v0

    .line 983
    :cond_0
    iget-char v1, p0, Lcom/google/android/common/base/CharEscapers$JavascriptCharEscaper;->safeMin:C

    if-gt v1, p1, :cond_1

    iget-char v1, p0, Lcom/google/android/common/base/CharEscapers$JavascriptCharEscaper;->safeMax:C

    if-gt p1, v1, :cond_1

    .line 984
    const/4 v0, 0x0

    goto :goto_0

    .line 988
    :cond_1
    const/16 v1, 0x100

    if-ge p1, v1, :cond_2

    .line 989
    new-array v0, v8, [C

    .line 990
    .restart local v0       #r:[C
    invoke-static {}, Lcom/google/android/common/base/CharEscapers;->access$100()[C

    move-result-object v1

    and-int/lit8 v2, p1, 0xf

    aget-char v1, v1, v2

    aput-char v1, v0, v7

    .line 991
    ushr-int/lit8 v1, p1, 0x4

    int-to-char p1, v1

    .line 992
    invoke-static {}, Lcom/google/android/common/base/CharEscapers;->access$100()[C

    move-result-object v1

    and-int/lit8 v2, p1, 0xf

    aget-char v1, v1, v2

    aput-char v1, v0, v6

    .line 993
    const/16 v1, 0x78

    aput-char v1, v0, v5

    .line 994
    const/16 v1, 0x5c

    aput-char v1, v0, v4

    goto :goto_0

    .line 999
    .end local v0           #r:[C
    :cond_2
    const/4 v1, 0x6

    new-array v0, v1, [C

    .line 1000
    .restart local v0       #r:[C
    const/4 v1, 0x5

    invoke-static {}, Lcom/google/android/common/base/CharEscapers;->access$100()[C

    move-result-object v2

    and-int/lit8 v3, p1, 0xf

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    .line 1001
    ushr-int/lit8 v1, p1, 0x4

    int-to-char p1, v1

    .line 1002
    invoke-static {}, Lcom/google/android/common/base/CharEscapers;->access$100()[C

    move-result-object v1

    and-int/lit8 v2, p1, 0xf

    aget-char v1, v1, v2

    aput-char v1, v0, v8

    .line 1003
    ushr-int/lit8 v1, p1, 0x4

    int-to-char p1, v1

    .line 1004
    invoke-static {}, Lcom/google/android/common/base/CharEscapers;->access$100()[C

    move-result-object v1

    and-int/lit8 v2, p1, 0xf

    aget-char v1, v1, v2

    aput-char v1, v0, v7

    .line 1005
    ushr-int/lit8 v1, p1, 0x4

    int-to-char p1, v1

    .line 1006
    invoke-static {}, Lcom/google/android/common/base/CharEscapers;->access$100()[C

    move-result-object v1

    and-int/lit8 v2, p1, 0xf

    aget-char v1, v1, v2

    aput-char v1, v0, v6

    .line 1007
    const/16 v1, 0x75

    aput-char v1, v0, v5

    .line 1008
    const/16 v1, 0x5c

    aput-char v1, v0, v4

    goto :goto_0
.end method
