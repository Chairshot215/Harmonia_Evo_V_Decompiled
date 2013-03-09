.class final Lcom/android/htcdialer/DialerService$1;
.super Ljava/lang/Object;
.source "DialerService.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htcdialer/DialerService;
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
        "Lcom/android/htcdialer/search/SearchableCallLog;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 130
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/htcdialer/search/SearchableCallLog;Lcom/android/htcdialer/search/SearchableCallLog;)I
    .locals 4
    .parameter "o1"
    .parameter "o2"

    .prologue
    .line 132
    iget-wide v0, p1, Lcom/android/htcdialer/search/SearchableCallLog;->date:J

    iget-wide v2, p2, Lcom/android/htcdialer/search/SearchableCallLog;->date:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 134
    const/4 v0, 0x0

    .line 136
    :goto_0
    return v0

    :cond_0
    iget-wide v0, p1, Lcom/android/htcdialer/search/SearchableCallLog;->date:J

    iget-wide v2, p2, Lcom/android/htcdialer/search/SearchableCallLog;->date:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    check-cast p1, Lcom/android/htcdialer/search/SearchableCallLog;

    .end local p1
    check-cast p2, Lcom/android/htcdialer/search/SearchableCallLog;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/htcdialer/DialerService$1;->compare(Lcom/android/htcdialer/search/SearchableCallLog;Lcom/android/htcdialer/search/SearchableCallLog;)I

    move-result v0

    return v0
.end method
