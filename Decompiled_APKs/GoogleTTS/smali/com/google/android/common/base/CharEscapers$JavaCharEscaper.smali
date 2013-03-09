.class Lcom/google/android/common/base/CharEscapers$JavaCharEscaper;
.super Lcom/google/android/common/base/CharEscapers$FastCharEscaper;
.source "CharEscapers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/common/base/CharEscapers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JavaCharEscaper"
.end annotation


# direct methods
.method public constructor <init>([[C)V
    .locals 2
    .parameter "replacements"

    .prologue
    .line 916
    const/16 v0, 0x20

    const/16 v1, 0x7e

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/common/base/CharEscapers$FastCharEscaper;-><init>([[CCC)V

    .line 917
    return-void
.end method


# virtual methods
.method protected escape(C)[C
    .locals 7
    .parameter "c"

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 921
    iget v1, p0, Lcom/google/android/common/base/CharEscapers$JavaCharEscaper;->replacementLength:I

    if-ge p1, v1, :cond_0

    .line 922
    iget-object v1, p0, Lcom/google/android/common/base/CharEscapers$JavaCharEscaper;->replacements:[[C

    aget-object v0, v1, p1

    .line 923
    .local v0, r:[C
    if-eqz v0, :cond_0

    .line 958
    .end local v0           #r:[C
    :goto_0
    return-object v0

    .line 929
    :cond_0
    iget-char v1, p0, Lcom/google/android/common/base/CharEscapers$JavaCharEscaper;->safeMin:C

    if-gt v1, p1, :cond_1

    iget-char v1, p0, Lcom/google/android/common/base/CharEscapers$JavaCharEscaper;->safeMax:C

    if-gt p1, v1, :cond_1

    .line 930
    const/4 v0, 0x0

    goto :goto_0

    .line 933
    :cond_1
    const/16 v1, 0xff

    if-gt p1, v1, :cond_2

    .line 936
    new-array v0, v6, [C

    .line 937
    .restart local v0       #r:[C
    const/16 v1, 0x5c

    aput-char v1, v0, v2

    .line 938
    invoke-static {}, Lcom/google/android/common/base/CharEscapers;->access$100()[C

    move-result-object v1

    and-int/lit8 v2, p1, 0x7

    aget-char v1, v1, v2

    aput-char v1, v0, v5

    .line 939
    ushr-int/lit8 v1, p1, 0x3

    int-to-char p1, v1

    .line 940
    invoke-static {}, Lcom/google/android/common/base/CharEscapers;->access$100()[C

    move-result-object v1

    and-int/lit8 v2, p1, 0x7

    aget-char v1, v1, v2

    aput-char v1, v0, v4

    .line 941
    ushr-int/lit8 v1, p1, 0x3

    int-to-char p1, v1

    .line 942
    invoke-static {}, Lcom/google/android/common/base/CharEscapers;->access$100()[C

    move-result-object v1

    and-int/lit8 v2, p1, 0x7

    aget-char v1, v1, v2

    aput-char v1, v0, v3

    goto :goto_0

    .line 948
    .end local v0           #r:[C
    :cond_2
    const/4 v1, 0x6

    new-array v0, v1, [C

    .line 949
    .restart local v0       #r:[C
    const/16 v1, 0x5c

    aput-char v1, v0, v2

    .line 950
    const/16 v1, 0x75

    aput-char v1, v0, v3

    .line 951
    const/4 v1, 0x5

    invoke-static {}, Lcom/google/android/common/base/CharEscapers;->access$100()[C

    move-result-object v2

    and-int/lit8 v3, p1, 0xf

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    .line 952
    ushr-int/lit8 v1, p1, 0x4

    int-to-char p1, v1

    .line 953
    invoke-static {}, Lcom/google/android/common/base/CharEscapers;->access$100()[C

    move-result-object v1

    and-int/lit8 v2, p1, 0xf

    aget-char v1, v1, v2

    aput-char v1, v0, v6

    .line 954
    ushr-int/lit8 v1, p1, 0x4

    int-to-char p1, v1

    .line 955
    invoke-static {}, Lcom/google/android/common/base/CharEscapers;->access$100()[C

    move-result-object v1

    and-int/lit8 v2, p1, 0xf

    aget-char v1, v1, v2

    aput-char v1, v0, v5

    .line 956
    ushr-int/lit8 v1, p1, 0x4

    int-to-char p1, v1

    .line 957
    invoke-static {}, Lcom/google/android/common/base/CharEscapers;->access$100()[C

    move-result-object v1

    and-int/lit8 v2, p1, 0xf

    aget-char v1, v1, v2

    aput-char v1, v0, v4

    goto :goto_0
.end method
