.class final Lcom/google/android/feedback/SaveReportThread$1;
.super Ljava/lang/Object;
.source "SaveReportThread.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/feedback/SaveReportThread;
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
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/io/File;Ljava/io/File;)I
    .locals 5
    .parameter "f1"
    .parameter "f2"

    .prologue
    .line 101
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    .line 102
    .local v0, timestamp1:J
    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    .line 103
    .local v2, timestamp2:J
    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 104
    const/4 v4, -0x1

    .line 108
    :goto_0
    return v4

    .line 105
    :cond_0
    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 106
    const/4 v4, 0x1

    goto :goto_0

    .line 108
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    check-cast p1, Ljava/io/File;

    .end local p1
    check-cast p2, Ljava/io/File;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/feedback/SaveReportThread$1;->compare(Ljava/io/File;Ljava/io/File;)I

    move-result v0

    return v0
.end method
