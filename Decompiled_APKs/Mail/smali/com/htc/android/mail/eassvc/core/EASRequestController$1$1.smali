.class Lcom/htc/android/mail/eassvc/core/EASRequestController$1$1;
.super Ljava/lang/Object;
.source "EASRequestController.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/eassvc/core/EASRequestController$1;->syncEnd(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Lcom/htc/android/mail/eassvc/core/SyncSource;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/android/mail/eassvc/core/EASRequestController$1;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/eassvc/core/EASRequestController$1;)V
    .locals 0
    .parameter

    .prologue
    .line 202
    iput-object p1, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$1$1;->this$1:Lcom/htc/android/mail/eassvc/core/EASRequestController$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;)I
    .locals 3
    .parameter "object1"
    .parameter "object2"

    .prologue
    .line 205
    new-instance v0, Ljava/lang/Long;

    iget-wide v1, p1, Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;->lastSyncTime:J

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    .line 206
    .local v0, obj1:Ljava/lang/Long;
    iget-wide v1, p2, Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;->lastSyncTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v1

    return v1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 202
    check-cast p1, Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;

    .end local p1
    check-cast p2, Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/htc/android/mail/eassvc/core/EASRequestController$1$1;->compare(Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;)I

    move-result v0

    return v0
.end method
