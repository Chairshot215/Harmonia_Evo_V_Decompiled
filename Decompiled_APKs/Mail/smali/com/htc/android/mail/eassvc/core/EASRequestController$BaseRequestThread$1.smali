.class Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread$1;
.super Ljava/lang/Object;
.source "EASRequestController.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;
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
        "Lcom/htc/android/mail/eassvc/core/EASRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;)V
    .locals 0
    .parameter

    .prologue
    .line 752
    iput-object p1, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread$1;->this$1:Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/htc/android/mail/eassvc/core/EASRequest;Lcom/htc/android/mail/eassvc/core/EASRequest;)I
    .locals 7
    .parameter "object1"
    .parameter "object2"

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 754
    instance-of v3, p1, Lcom/htc/android/mail/eassvc/core/EASRequest;

    if-eqz v3, :cond_0

    instance-of v3, p2, Lcom/htc/android/mail/eassvc/core/EASRequest;

    if-nez v3, :cond_2

    .line 755
    :cond_0
    const-string v0, "EASRequestController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Object class Error! object1="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ",object2="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 766
    :cond_1
    :goto_0
    return v0

    .line 759
    :cond_2
    iget v3, p1, Lcom/htc/android/mail/eassvc/core/EASRequest;->priority:I

    iget v4, p2, Lcom/htc/android/mail/eassvc/core/EASRequest;->priority:I

    if-ne v3, v4, :cond_4

    .line 760
    iget-wide v3, p1, Lcom/htc/android/mail/eassvc/core/EASRequest;->reqTime:J

    iget-wide v5, p2, Lcom/htc/android/mail/eassvc/core/EASRequest;->reqTime:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    move v0, v2

    .line 761
    goto :goto_0

    .line 763
    :cond_3
    iget-wide v2, p1, Lcom/htc/android/mail/eassvc/core/EASRequest;->reqTime:J

    iget-wide v4, p2, Lcom/htc/android/mail/eassvc/core/EASRequest;->reqTime:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    move v0, v1

    goto :goto_0

    .line 766
    :cond_4
    iget v2, p1, Lcom/htc/android/mail/eassvc/core/EASRequest;->priority:I

    iget v3, p2, Lcom/htc/android/mail/eassvc/core/EASRequest;->priority:I

    if-lt v2, v3, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 752
    check-cast p1, Lcom/htc/android/mail/eassvc/core/EASRequest;

    .end local p1
    check-cast p2, Lcom/htc/android/mail/eassvc/core/EASRequest;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread$1;->compare(Lcom/htc/android/mail/eassvc/core/EASRequest;Lcom/htc/android/mail/eassvc/core/EASRequest;)I

    move-result v0

    return v0
.end method
