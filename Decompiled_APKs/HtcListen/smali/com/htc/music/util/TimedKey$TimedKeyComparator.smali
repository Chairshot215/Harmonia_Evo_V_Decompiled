.class public Lcom/htc/music/util/TimedKey$TimedKeyComparator;
.super Ljava/lang/Object;
.source "TimedKey.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/util/TimedKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimedKeyComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/htc/music/util/TimedKey;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/htc/music/util/TimedKey;Lcom/htc/music/util/TimedKey;)I
    .locals 6

    const/4 v4, 0x0

    if-eq p1, p2, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    invoke-virtual {p1}, Lcom/htc/music/util/TimedKey;->getAccessTime()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/htc/music/util/TimedKey;->getAccessTime()J

    move-result-wide v2

    cmp-long v5, v0, v2

    if-eqz v5, :cond_0

    cmp-long v4, v0, v2

    if-gez v4, :cond_2

    const/4 v4, -0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/htc/music/util/TimedKey;

    check-cast p2, Lcom/htc/music/util/TimedKey;

    invoke-virtual {p0, p1, p2}, Lcom/htc/music/util/TimedKey$TimedKeyComparator;->compare(Lcom/htc/music/util/TimedKey;Lcom/htc/music/util/TimedKey;)I

    move-result v0

    return v0
.end method
