.class public Lcom/htc/android/htcime/util/UDBTools$UDBEntryCmp;
.super Ljava/lang/Object;
.source "UDBTools.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/htcime/util/UDBTools;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "UDBEntryCmp"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/htc/android/htcime/util/UDBEntry;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/htc/android/htcime/util/UDBEntry;Lcom/htc/android/htcime/util/UDBEntry;)I
    .locals 2
    .parameter "a"
    .parameter "b"

    .prologue
    .line 55
    iget-object v0, p1, Lcom/htc/android/htcime/util/UDBEntry;->word:Ljava/lang/String;

    iget-object v1, p2, Lcom/htc/android/htcime/util/UDBEntry;->word:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    check-cast p1, Lcom/htc/android/htcime/util/UDBEntry;

    .end local p1
    check-cast p2, Lcom/htc/android/htcime/util/UDBEntry;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/htc/android/htcime/util/UDBTools$UDBEntryCmp;->compare(Lcom/htc/android/htcime/util/UDBEntry;Lcom/htc/android/htcime/util/UDBEntry;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter "cmp"

    .prologue
    .line 58
    instance-of v0, p1, Lcom/htc/android/htcime/util/UDBEntry;

    return v0
.end method
