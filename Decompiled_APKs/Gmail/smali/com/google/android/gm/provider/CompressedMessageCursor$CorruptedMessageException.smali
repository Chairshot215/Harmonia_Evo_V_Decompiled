.class public Lcom/google/android/gm/provider/CompressedMessageCursor$CorruptedMessageException;
.super Ljava/lang/RuntimeException;
.source "CompressedMessageCursor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/provider/CompressedMessageCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CorruptedMessageException"
.end annotation


# instance fields
.field private final mMessageId:J

.field final synthetic this$0:Lcom/google/android/gm/provider/CompressedMessageCursor;


# direct methods
.method public constructor <init>(Lcom/google/android/gm/provider/CompressedMessageCursor;JLjava/lang/Throwable;)V
    .locals 4
    .parameter
    .parameter "messageId"
    .parameter "cause"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/google/android/gm/provider/CompressedMessageCursor$CorruptedMessageException;->this$0:Lcom/google/android/gm/provider/CompressedMessageCursor;

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to decompress message"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-wide/16 v2, 0x0

    cmp-long v0, p2, v2

    if-ltz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 127
    iput-wide p2, p0, Lcom/google/android/gm/provider/CompressedMessageCursor$CorruptedMessageException;->mMessageId:J

    .line 128
    return-void

    .line 126
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method


# virtual methods
.method public getMessageId()J
    .locals 2

    .prologue
    .line 131
    iget-wide v0, p0, Lcom/google/android/gm/provider/CompressedMessageCursor$CorruptedMessageException;->mMessageId:J

    return-wide v0
.end method
