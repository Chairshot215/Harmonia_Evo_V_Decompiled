.class public Lcom/htc/android/mail/database/ConversationGroupCursor$MailGroupData;
.super Ljava/lang/Object;
.source "ConversationGroupCursor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/database/ConversationGroupCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "MailGroupData"
.end annotation


# instance fields
.field final DELETE:I

.field final INSERT:I

.field final READ_STATUS:Z

.field final UPDATE:I

.field final UnRead_STATUS:Z

.field accountId:J

.field childPositionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field childUnReadList:Lcom/htc/android/mail/util/SparseLongBooleanArray;

.field groupId:J

.field groupString:Ljava/lang/String;

.field messageId:J


# direct methods
.method public constructor <init>(JJJLjava/lang/String;IZ)V
    .locals 3
    .parameter "nexItemGroupId"
    .parameter "newItemAccountId"
    .parameter "newItemMessageId"
    .parameter "newItemGroupString"
    .parameter "itemCursorPosition"
    .parameter "isRead"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 408
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 396
    iput v1, p0, Lcom/htc/android/mail/database/ConversationGroupCursor$MailGroupData;->INSERT:I

    .line 397
    iput v2, p0, Lcom/htc/android/mail/database/ConversationGroupCursor$MailGroupData;->UPDATE:I

    .line 398
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/android/mail/database/ConversationGroupCursor$MailGroupData;->DELETE:I

    .line 400
    iput-boolean v2, p0, Lcom/htc/android/mail/database/ConversationGroupCursor$MailGroupData;->READ_STATUS:Z

    .line 401
    iput-boolean v1, p0, Lcom/htc/android/mail/database/ConversationGroupCursor$MailGroupData;->UnRead_STATUS:Z

    .line 409
    iput-wide p1, p0, Lcom/htc/android/mail/database/ConversationGroupCursor$MailGroupData;->groupId:J

    .line 410
    iput-wide p3, p0, Lcom/htc/android/mail/database/ConversationGroupCursor$MailGroupData;->accountId:J

    .line 411
    iput-wide p5, p0, Lcom/htc/android/mail/database/ConversationGroupCursor$MailGroupData;->messageId:J

    .line 412
    iput-object p7, p0, Lcom/htc/android/mail/database/ConversationGroupCursor$MailGroupData;->groupString:Ljava/lang/String;

    .line 413
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/database/ConversationGroupCursor$MailGroupData;->childPositionList:Ljava/util/ArrayList;

    .line 415
    new-instance v0, Lcom/htc/android/mail/util/SparseLongBooleanArray;

    invoke-direct {v0}, Lcom/htc/android/mail/util/SparseLongBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/database/ConversationGroupCursor$MailGroupData;->childUnReadList:Lcom/htc/android/mail/util/SparseLongBooleanArray;

    .line 418
    return-void
.end method

.method private computingReadStatus(IJZ)V
    .locals 3
    .parameter "mode"
    .parameter "messageId"
    .parameter "readStatus"

    .prologue
    const/4 v1, 0x1

    .line 445
    if-nez p1, :cond_1

    .line 446
    if-nez p4, :cond_0

    .line 447
    iget-object v2, p0, Lcom/htc/android/mail/database/ConversationGroupCursor$MailGroupData;->childUnReadList:Lcom/htc/android/mail/util/SparseLongBooleanArray;

    invoke-virtual {v2, p2, p3, v1}, Lcom/htc/android/mail/util/SparseLongBooleanArray;->put(JZ)V

    .line 469
    :cond_0
    :goto_0
    return-void

    .line 449
    :cond_1
    if-ne p1, v1, :cond_0

    .line 450
    iget-object v2, p0, Lcom/htc/android/mail/database/ConversationGroupCursor$MailGroupData;->childUnReadList:Lcom/htc/android/mail/util/SparseLongBooleanArray;

    invoke-virtual {v2, p2, p3}, Lcom/htc/android/mail/util/SparseLongBooleanArray;->indexOfKey(J)I

    move-result v2

    if-ltz v2, :cond_2

    move v0, v1

    .line 451
    .local v0, inUnReadList:Z
    :goto_1
    if-eqz v0, :cond_3

    .line 452
    if-ne p4, v1, :cond_0

    .line 453
    iget-object v1, p0, Lcom/htc/android/mail/database/ConversationGroupCursor$MailGroupData;->childUnReadList:Lcom/htc/android/mail/util/SparseLongBooleanArray;

    invoke-virtual {v1, p2, p3}, Lcom/htc/android/mail/util/SparseLongBooleanArray;->delete(J)V

    goto :goto_0

    .line 450
    .end local v0           #inUnReadList:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 456
    .restart local v0       #inUnReadList:Z
    :cond_3
    if-nez p4, :cond_0

    .line 457
    iget-object v2, p0, Lcom/htc/android/mail/database/ConversationGroupCursor$MailGroupData;->childUnReadList:Lcom/htc/android/mail/util/SparseLongBooleanArray;

    invoke-virtual {v2, p2, p3, v1}, Lcom/htc/android/mail/util/SparseLongBooleanArray;->put(JZ)V

    goto :goto_0
.end method

.method private getMode(I)Ljava/lang/String;
    .locals 1
    .parameter "mode"

    .prologue
    .line 421
    packed-switch p1, :pswitch_data_0

    .line 429
    const-string v0, "Unknow"

    :goto_0
    return-object v0

    .line 423
    :pswitch_0
    const-string v0, "Insert"

    goto :goto_0

    .line 425
    :pswitch_1
    const-string v0, "Update"

    goto :goto_0

    .line 427
    :pswitch_2
    const-string v0, "Delete"

    goto :goto_0

    .line 421
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public getUnReadInThread()I
    .locals 1

    .prologue
    .line 486
    iget-object v0, p0, Lcom/htc/android/mail/database/ConversationGroupCursor$MailGroupData;->childUnReadList:Lcom/htc/android/mail/util/SparseLongBooleanArray;

    invoke-virtual {v0}, Lcom/htc/android/mail/util/SparseLongBooleanArray;->size()I

    move-result v0

    return v0
.end method

.method public insertingItem(JIZ)V
    .locals 2
    .parameter "messageId"
    .parameter "itemPosition"
    .parameter "readStatus"

    .prologue
    .line 439
    iget-object v0, p0, Lcom/htc/android/mail/database/ConversationGroupCursor$MailGroupData;->childPositionList:Ljava/util/ArrayList;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 441
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p4}, Lcom/htc/android/mail/database/ConversationGroupCursor$MailGroupData;->computingReadStatus(IJZ)V

    .line 442
    return-void
.end method

.method public isAllReadInThread()Z
    .locals 2

    .prologue
    .line 476
    iget-object v1, p0, Lcom/htc/android/mail/database/ConversationGroupCursor$MailGroupData;->childUnReadList:Lcom/htc/android/mail/util/SparseLongBooleanArray;

    invoke-virtual {v1}, Lcom/htc/android/mail/util/SparseLongBooleanArray;->size()I

    move-result v0

    .line 482
    .local v0, cntOfUnRead:I
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 491
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "group: %s acntId:%d msgId:%4d allReadInThread:%5s"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/htc/android/mail/database/ConversationGroupCursor$MailGroupData;->groupString:Ljava/lang/String;

    aput-object v7, v6, v10

    iget-wide v7, p0, Lcom/htc/android/mail/database/ConversationGroupCursor$MailGroupData;->accountId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v11

    const/4 v7, 0x2

    iget-wide v8, p0, Lcom/htc/android/mail/database/ConversationGroupCursor$MailGroupData;->messageId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-virtual {p0}, Lcom/htc/android/mail/database/ConversationGroupCursor$MailGroupData;->isAllReadInThread()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 493
    .local v1, debug:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 494
    .local v3, sb:Ljava/lang/StringBuffer;
    const-string v4, " childPositionList( "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 495
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%2d"

    new-array v6, v11, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/htc/android/mail/database/ConversationGroupCursor$MailGroupData;->childPositionList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 496
    const-string v4, "): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 497
    iget-object v4, p0, Lcom/htc/android/mail/database/ConversationGroupCursor$MailGroupData;->childPositionList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 498
    .local v0, II:Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 499
    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 501
    .end local v0           #II:Ljava/lang/Integer;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 502
    return-object v1
.end method

.method public updateItemReadStatus(JIZ)V
    .locals 1
    .parameter "messageId"
    .parameter "itemPosition"
    .parameter "readStatus"

    .prologue
    .line 472
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2, p4}, Lcom/htc/android/mail/database/ConversationGroupCursor$MailGroupData;->computingReadStatus(IJZ)V

    .line 473
    return-void
.end method
