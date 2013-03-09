.class public Ljunit/runner/Sorter;
.super Ljava/lang/Object;
.source "Sorter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljunit/runner/Sorter$Swapper;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sortStrings(Ljava/util/Vector;IILjunit/runner/Sorter$Swapper;)V
    .locals 4

    move v1, p1

    move v2, p2

    add-int v3, p1, p2

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {p0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p0, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_2

    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_2
    if-gt p1, p2, :cond_3

    invoke-interface {p3, p0, p1, p2}, Ljunit/runner/Sorter$Swapper;->swap(Ljava/util/Vector;II)V

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p2, p2, -0x1

    :cond_3
    if-le p1, p2, :cond_0

    if-ge v1, p2, :cond_4

    invoke-static {p0, v1, p2, p3}, Ljunit/runner/Sorter;->sortStrings(Ljava/util/Vector;IILjunit/runner/Sorter$Swapper;)V

    :cond_4
    if-ge p1, v2, :cond_5

    invoke-static {p0, p1, v2, p3}, Ljunit/runner/Sorter;->sortStrings(Ljava/util/Vector;IILjunit/runner/Sorter$Swapper;)V

    :cond_5
    return-void
.end method
