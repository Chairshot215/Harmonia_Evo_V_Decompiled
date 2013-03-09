.class public Lcom/google/android/gm/provider/MailEngine$SyncInfo;
.super Ljava/lang/Object;
.source "MailEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/provider/MailEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SyncInfo"
.end annotation


# instance fields
.field public backgroundSync:Z

.field public conversationId:J

.field public messageId:J

.field public normalSync:Z

.field public receivedHandledClientOp:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    .line 576
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 577
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gm/provider/MailEngine$SyncInfo;->normalSync:Z

    .line 578
    iput-wide v2, p0, Lcom/google/android/gm/provider/MailEngine$SyncInfo;->conversationId:J

    .line 579
    iput-wide v2, p0, Lcom/google/android/gm/provider/MailEngine$SyncInfo;->messageId:J

    .line 580
    iput-boolean v1, p0, Lcom/google/android/gm/provider/MailEngine$SyncInfo;->receivedHandledClientOp:Z

    .line 581
    iput-boolean v1, p0, Lcom/google/android/gm/provider/MailEngine$SyncInfo;->backgroundSync:Z

    .line 582
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 586
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SyncInfo: normalSync = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gm/provider/MailEngine$SyncInfo;->normalSync:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", conversationId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/gm/provider/MailEngine$SyncInfo;->conversationId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", messageId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/gm/provider/MailEngine$SyncInfo;->messageId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", receivedHandledClientOp = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gm/provider/MailEngine$SyncInfo;->receivedHandledClientOp:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
