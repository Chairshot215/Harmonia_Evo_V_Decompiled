.class final Lcom/android/mms/ui/MyLinkify$6;
.super Ljava/lang/Object;
.source "MyLinkify.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MyLinkify;->pruneOverlaps(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/mms/ui/LinkSpec;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 508
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Lcom/android/mms/ui/LinkSpec;Lcom/android/mms/ui/LinkSpec;)I
    .locals 4
    .parameter "a"
    .parameter "b"

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 510
    iget v2, p1, Lcom/android/mms/ui/LinkSpec;->start:I

    iget v3, p2, Lcom/android/mms/ui/LinkSpec;->start:I

    if-ge v2, v3, :cond_1

    .line 526
    :cond_0
    :goto_0
    return v0

    .line 514
    :cond_1
    iget v2, p1, Lcom/android/mms/ui/LinkSpec;->start:I

    iget v3, p2, Lcom/android/mms/ui/LinkSpec;->start:I

    if-le v2, v3, :cond_2

    move v0, v1

    .line 515
    goto :goto_0

    .line 518
    :cond_2
    iget v2, p1, Lcom/android/mms/ui/LinkSpec;->end:I

    iget v3, p2, Lcom/android/mms/ui/LinkSpec;->end:I

    if-ge v2, v3, :cond_3

    move v0, v1

    .line 519
    goto :goto_0

    .line 522
    :cond_3
    iget v1, p1, Lcom/android/mms/ui/LinkSpec;->end:I

    iget v2, p2, Lcom/android/mms/ui/LinkSpec;->end:I

    if-gt v1, v2, :cond_0

    .line 526
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 508
    check-cast p1, Lcom/android/mms/ui/LinkSpec;

    .end local p1
    check-cast p2, Lcom/android/mms/ui/LinkSpec;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/mms/ui/MyLinkify$6;->compare(Lcom/android/mms/ui/LinkSpec;Lcom/android/mms/ui/LinkSpec;)I

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter "o"

    .prologue
    .line 530
    const/4 v0, 0x0

    return v0
.end method
