.class Landroid/os/Looper$MessageHistory;
.super Ljava/lang/Object;
.source "Looper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/Looper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MessageHistory"
.end annotation


# instance fields
.field msg_callback:Ljava/lang/String;

.field msg_target:Ljava/lang/String;

.field msg_what:I

.field startTime:J

.field takenTime:J


# direct methods
.method public constructor <init>(Landroid/os/Message;J)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/os/Looper$MessageHistory;->takenTime:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/os/Looper$MessageHistory;->startTime:J

    iget v0, p1, Landroid/os/Message;->what:I

    iput v0, p0, Landroid/os/Looper$MessageHistory;->msg_what:I

    iget-object v0, p1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-nez v0, :cond_0

    const-string/jumbo v0, "null"

    :goto_0
    iput-object v0, p0, Landroid/os/Looper$MessageHistory;->msg_target:Ljava/lang/String;

    iget-object v0, p1, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-nez v0, :cond_1

    const-string/jumbo v0, "null"

    :goto_1
    iput-object v0, p0, Landroid/os/Looper$MessageHistory;->msg_callback:Ljava/lang/String;

    iput-wide p2, p0, Landroid/os/Looper$MessageHistory;->startTime:J

    return-void

    :cond_0
    iget-object v0, p1, Landroid/os/Message;->target:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p1, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method public setValue(Landroid/os/Message;J)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    iput v0, p0, Landroid/os/Looper$MessageHistory;->msg_what:I

    iget-object v0, p1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-nez v0, :cond_0

    const-string/jumbo v0, "null"

    :goto_0
    iput-object v0, p0, Landroid/os/Looper$MessageHistory;->msg_target:Ljava/lang/String;

    iget-object v0, p1, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-nez v0, :cond_1

    const-string/jumbo v0, "null"

    :goto_1
    iput-object v0, p0, Landroid/os/Looper$MessageHistory;->msg_callback:Ljava/lang/String;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/os/Looper$MessageHistory;->takenTime:J

    iput-wide p2, p0, Landroid/os/Looper$MessageHistory;->startTime:J

    return-void

    :cond_0
    iget-object v0, p1, Landroid/os/Message;->target:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p1, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
