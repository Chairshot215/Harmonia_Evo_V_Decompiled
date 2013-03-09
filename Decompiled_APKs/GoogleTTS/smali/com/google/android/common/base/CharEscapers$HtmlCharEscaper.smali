.class Lcom/google/android/common/base/CharEscapers$HtmlCharEscaper;
.super Lcom/google/android/common/base/CharEscapers$FastCharEscaper;
.source "CharEscapers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/common/base/CharEscapers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HtmlCharEscaper"
.end annotation


# direct methods
.method public constructor <init>([[C)V
    .locals 2
    .parameter "replacements"

    .prologue
    .line 1021
    const/4 v0, 0x0

    const/16 v1, 0x7e

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/common/base/CharEscapers$FastCharEscaper;-><init>([[CCC)V

    .line 1022
    return-void
.end method


# virtual methods
.method protected escape(C)[C
    .locals 7
    .parameter "c"

    .prologue
    const/4 v6, 0x1

    .line 1026
    iget v4, p0, Lcom/google/android/common/base/CharEscapers$HtmlCharEscaper;->replacementLength:I

    if-ge p1, v4, :cond_0

    .line 1027
    iget-object v4, p0, Lcom/google/android/common/base/CharEscapers$HtmlCharEscaper;->replacements:[[C

    aget-object v2, v4, p1

    .line 1028
    .local v2, r:[C
    if-eqz v2, :cond_0

    .line 1059
    .end local v2           #r:[C
    :goto_0
    return-object v2

    .line 1035
    :cond_0
    iget-char v4, p0, Lcom/google/android/common/base/CharEscapers$HtmlCharEscaper;->safeMax:C

    if-gt p1, v4, :cond_1

    .line 1036
    const/4 v2, 0x0

    goto :goto_0

    .line 1040
    :cond_1
    const/16 v4, 0x3e8

    if-ge p1, v4, :cond_2

    .line 1041
    const/4 v0, 0x4

    .line 1047
    .local v0, index:I
    :goto_1
    add-int/lit8 v4, v0, 0x2

    new-array v3, v4, [C

    .line 1048
    .local v3, result:[C
    const/4 v4, 0x0

    const/16 v5, 0x26

    aput-char v5, v3, v4

    .line 1049
    const/16 v4, 0x23

    aput-char v4, v3, v6

    .line 1050
    add-int/lit8 v4, v0, 0x1

    const/16 v5, 0x3b

    aput-char v5, v3, v4

    .line 1054
    move v1, p1

    .line 1055
    .local v1, intValue:I
    :goto_2
    if-le v0, v6, :cond_4

    .line 1056
    invoke-static {}, Lcom/google/android/common/base/CharEscapers;->access$100()[C

    move-result-object v4

    rem-int/lit8 v5, v1, 0xa

    aget-char v4, v4, v5

    aput-char v4, v3, v0

    .line 1057
    div-int/lit8 v1, v1, 0xa

    .line 1055
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 1042
    .end local v0           #index:I
    .end local v1           #intValue:I
    .end local v3           #result:[C
    :cond_2
    const/16 v4, 0x2710

    if-ge p1, v4, :cond_3

    .line 1043
    const/4 v0, 0x5

    .restart local v0       #index:I
    goto :goto_1

    .line 1045
    .end local v0           #index:I
    :cond_3
    const/4 v0, 0x6

    .restart local v0       #index:I
    goto :goto_1

    .restart local v1       #intValue:I
    .restart local v3       #result:[C
    :cond_4
    move-object v2, v3

    .line 1059
    goto :goto_0
.end method
