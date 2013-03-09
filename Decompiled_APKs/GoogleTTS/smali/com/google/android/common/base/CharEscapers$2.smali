.class final Lcom/google/android/common/base/CharEscapers$2;
.super Lcom/google/android/common/base/CharEscaper;
.source "CharEscapers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/common/base/CharEscapers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 758
    invoke-direct {p0}, Lcom/google/android/common/base/CharEscaper;-><init>()V

    return-void
.end method


# virtual methods
.method protected escape(C)[C
    .locals 4
    .parameter "c"

    .prologue
    .line 760
    const/16 v1, 0x7f

    if-gt p1, v1, :cond_0

    .line 761
    const/4 v0, 0x0

    .line 774
    :goto_0
    return-object v0

    .line 764
    :cond_0
    const/4 v1, 0x6

    new-array v0, v1, [C

    .line 765
    .local v0, r:[C
    const/4 v1, 0x5

    invoke-static {}, Lcom/google/android/common/base/CharEscapers;->access$100()[C

    move-result-object v2

    and-int/lit8 v3, p1, 0xf

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    .line 766
    ushr-int/lit8 v1, p1, 0x4

    int-to-char p1, v1

    .line 767
    const/4 v1, 0x4

    invoke-static {}, Lcom/google/android/common/base/CharEscapers;->access$100()[C

    move-result-object v2

    and-int/lit8 v3, p1, 0xf

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    .line 768
    ushr-int/lit8 v1, p1, 0x4

    int-to-char p1, v1

    .line 769
    const/4 v1, 0x3

    invoke-static {}, Lcom/google/android/common/base/CharEscapers;->access$100()[C

    move-result-object v2

    and-int/lit8 v3, p1, 0xf

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    .line 770
    ushr-int/lit8 v1, p1, 0x4

    int-to-char p1, v1

    .line 771
    const/4 v1, 0x2

    invoke-static {}, Lcom/google/android/common/base/CharEscapers;->access$100()[C

    move-result-object v2

    and-int/lit8 v3, p1, 0xf

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    .line 772
    const/4 v1, 0x1

    const/16 v2, 0x75

    aput-char v2, v0, v1

    .line 773
    const/4 v1, 0x0

    const/16 v2, 0x5c

    aput-char v2, v0, v1

    goto :goto_0
.end method
