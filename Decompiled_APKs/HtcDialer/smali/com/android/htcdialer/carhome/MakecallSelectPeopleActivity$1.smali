.class final Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$1;
.super Ljava/lang/Object;
.source "MakecallSelectPeopleActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;
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
        "Lcom/android/htcdialer/search/DialerCallLog;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 946
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/htcdialer/search/DialerCallLog;Lcom/android/htcdialer/search/DialerCallLog;)I
    .locals 4
    .parameter "o1"
    .parameter "o2"

    .prologue
    .line 948
    iget-wide v0, p1, Lcom/android/htcdialer/search/DialerCallLog;->date:J

    iget-wide v2, p2, Lcom/android/htcdialer/search/DialerCallLog;->date:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 949
    const/4 v0, -0x1

    .line 953
    :goto_0
    return v0

    .line 950
    :cond_0
    iget-wide v0, p1, Lcom/android/htcdialer/search/DialerCallLog;->date:J

    iget-wide v2, p2, Lcom/android/htcdialer/search/DialerCallLog;->date:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 951
    const/4 v0, 0x1

    goto :goto_0

    .line 953
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 946
    check-cast p1, Lcom/android/htcdialer/search/DialerCallLog;

    .end local p1
    check-cast p2, Lcom/android/htcdialer/search/DialerCallLog;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$1;->compare(Lcom/android/htcdialer/search/DialerCallLog;Lcom/android/htcdialer/search/DialerCallLog;)I

    move-result v0

    return v0
.end method
