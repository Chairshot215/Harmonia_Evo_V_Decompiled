.class Lcom/htc/android/mail/eassvc/core/SyncManager$1;
.super Ljava/lang/Object;
.source "SyncManager.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/eassvc/core/SyncManager;->removeOldLogFile(Ljava/io/File;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/eassvc/core/SyncManager;

.field final synthetic val$duration:J


# direct methods
.method constructor <init>(Lcom/htc/android/mail/eassvc/core/SyncManager;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 9437
    iput-object p1, p0, Lcom/htc/android/mail/eassvc/core/SyncManager$1;->this$0:Lcom/htc/android/mail/eassvc/core/SyncManager;

    iput-wide p2, p0, Lcom/htc/android/mail/eassvc/core/SyncManager$1;->val$duration:J

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 6
    .parameter "pathname"

    .prologue
    .line 9439
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 9440
    .local v0, nowTime:J
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/htc/android/mail/eassvc/core/SyncManager$1;->val$duration:J

    sub-long v4, v0, v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
