.class public Lcom/htc/android/mail/ReadScreen$MessageIds;
.super Ljava/lang/Object;
.source "ReadScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/ReadScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MessageIds"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MessageIds"

.field private static isMessageIdsChanged:Z

.field private static mContentResolver:Landroid/content/ContentResolver;

.field private static mSQLStatement:Ljava/lang/String;

.field private static mSortRule:Ljava/lang/String;

.field private static mUri:Ljava/lang/String;

.field private static mailMessageIdArray:[J

.field private static mailMessagePositionArray:Lcom/htc/android/mail/util/SparseLongArray;

.field private static messageIdsObserver:Lcom/htc/android/mail/ReadScreen$MessageIdsContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6472
    sput-object v0, Lcom/htc/android/mail/ReadScreen$MessageIds;->mContentResolver:Landroid/content/ContentResolver;

    .line 6473
    sput-object v0, Lcom/htc/android/mail/ReadScreen$MessageIds;->mailMessagePositionArray:Lcom/htc/android/mail/util/SparseLongArray;

    .line 6474
    sput-object v0, Lcom/htc/android/mail/ReadScreen$MessageIds;->mailMessageIdArray:[J

    .line 6475
    sput-object v0, Lcom/htc/android/mail/ReadScreen$MessageIds;->messageIdsObserver:Lcom/htc/android/mail/ReadScreen$MessageIdsContentObserver;

    .line 6476
    const/4 v0, 0x1

    sput-boolean v0, Lcom/htc/android/mail/ReadScreen$MessageIds;->isMessageIdsChanged:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6463
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized add(Lcom/htc/android/mail/MailMessage;)V
    .locals 5
    .parameter "mailMessage"

    .prologue
    .line 6486
    const-class v2, Lcom/htc/android/mail/ReadScreen$MessageIds;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lcom/htc/android/mail/ReadScreen;->access$400()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "MessageIds"

    const-string v3, "add mailMessage in MessageIds"

    invoke-static {v1, v3}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6487
    :cond_0
    if-nez p0, :cond_2

    .line 6498
    :cond_1
    :goto_0
    monitor-exit v2

    return-void

    .line 6490
    :cond_2
    :try_start_1
    sget-object v1, Lcom/htc/android/mail/ReadScreen$MessageIds;->mailMessagePositionArray:Lcom/htc/android/mail/util/SparseLongArray;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/htc/android/mail/ReadScreen$MessageIds;->mailMessageIdArray:[J

    if-eqz v1, :cond_1

    .line 6493
    iget-wide v3, p0, Lcom/htc/android/mail/MailMessage;->id:J

    invoke-static {v3, v4}, Lcom/htc/android/mail/ReadScreen$MessageIds;->getPosition(J)I

    move-result v0

    .line 6494
    .local v0, pos:I
    if-ltz v0, :cond_1

    .line 6497
    sget-object v1, Lcom/htc/android/mail/ReadScreen$MessageIds;->mailMessageIdArray:[J

    iget-wide v3, p0, Lcom/htc/android/mail/MailMessage;->id:J

    aput-wide v3, v1, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 6486
    .end local v0           #pos:I
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static checkIsMessageIdsChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "uri"
    .parameter "sqlStatement"
    .parameter "sortRule"

    .prologue
    .line 6585
    sget-object v0, Lcom/htc/android/mail/ReadScreen$MessageIds;->mUri:Ljava/lang/String;

    if-eq v0, p0, :cond_0

    sget-object v0, Lcom/htc/android/mail/ReadScreen$MessageIds;->mUri:Ljava/lang/String;

    if-eqz v0, :cond_3

    if-eqz p0, :cond_3

    sget-object v0, Lcom/htc/android/mail/ReadScreen$MessageIds;->mUri:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6586
    :cond_0
    sget-object v0, Lcom/htc/android/mail/ReadScreen$MessageIds;->mSQLStatement:Ljava/lang/String;

    if-eq v0, p1, :cond_1

    sget-object v0, Lcom/htc/android/mail/ReadScreen$MessageIds;->mSQLStatement:Ljava/lang/String;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    sget-object v0, Lcom/htc/android/mail/ReadScreen$MessageIds;->mSQLStatement:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6587
    :cond_1
    sget-object v0, Lcom/htc/android/mail/ReadScreen$MessageIds;->mSortRule:Ljava/lang/String;

    if-eq v0, p2, :cond_2

    sget-object v0, Lcom/htc/android/mail/ReadScreen$MessageIds;->mSortRule:Ljava/lang/String;

    if-eqz v0, :cond_3

    if-eqz p2, :cond_3

    sget-object v0, Lcom/htc/android/mail/ReadScreen$MessageIds;->mSortRule:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6596
    :cond_2
    :goto_0
    return-void

    .line 6592
    :cond_3
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/htc/android/mail/ReadScreen$MessageIds;->setMessageIdsStatus(Z)V

    .line 6593
    sput-object p0, Lcom/htc/android/mail/ReadScreen$MessageIds;->mUri:Ljava/lang/String;

    .line 6594
    sput-object p1, Lcom/htc/android/mail/ReadScreen$MessageIds;->mSQLStatement:Ljava/lang/String;

    .line 6595
    sput-object p2, Lcom/htc/android/mail/ReadScreen$MessageIds;->mSortRule:Ljava/lang/String;

    goto :goto_0
.end method

.method public static declared-synchronized clearMailMessageArray()V
    .locals 3

    .prologue
    .line 6655
    const-class v1, Lcom/htc/android/mail/ReadScreen$MessageIds;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/htc/android/mail/ReadScreen$MessageIds;->messageIdsObserver:Lcom/htc/android/mail/ReadScreen$MessageIdsContentObserver;

    if-eqz v0, :cond_1

    .line 6656
    sget-object v0, Lcom/htc/android/mail/ReadScreen$MessageIds;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz v0, :cond_0

    .line 6657
    sget-object v0, Lcom/htc/android/mail/ReadScreen$MessageIds;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/htc/android/mail/ReadScreen$MessageIds;->messageIdsObserver:Lcom/htc/android/mail/ReadScreen$MessageIdsContentObserver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 6659
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/android/mail/ReadScreen$MessageIds;->messageIdsObserver:Lcom/htc/android/mail/ReadScreen$MessageIdsContentObserver;

    .line 6661
    :cond_1
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/android/mail/ReadScreen$MessageIds;->mContentResolver:Landroid/content/ContentResolver;

    .line 6662
    sget-object v0, Lcom/htc/android/mail/ReadScreen$MessageIds;->mailMessagePositionArray:Lcom/htc/android/mail/util/SparseLongArray;

    if-eqz v0, :cond_2

    .line 6663
    sget-object v0, Lcom/htc/android/mail/ReadScreen$MessageIds;->mailMessagePositionArray:Lcom/htc/android/mail/util/SparseLongArray;

    invoke-virtual {v0}, Lcom/htc/android/mail/util/SparseLongArray;->clear()V

    .line 6664
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/android/mail/ReadScreen$MessageIds;->mailMessagePositionArray:Lcom/htc/android/mail/util/SparseLongArray;

    .line 6666
    :cond_2
    sget-object v0, Lcom/htc/android/mail/ReadScreen$MessageIds;->mailMessageIdArray:[J

    if-eqz v0, :cond_3

    .line 6667
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/android/mail/ReadScreen$MessageIds;->mailMessageIdArray:[J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6669
    :cond_3
    monitor-exit v1

    return-void

    .line 6655
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized delete(Lcom/htc/android/mail/MailMessage;)V
    .locals 6
    .parameter "mailMessage"

    .prologue
    .line 6501
    const-class v2, Lcom/htc/android/mail/ReadScreen$MessageIds;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lcom/htc/android/mail/ReadScreen;->access$400()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "MessageIds"

    const-string v3, "delete mailMessage in MessageIds"

    invoke-static {v1, v3}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6502
    :cond_0
    if-nez p0, :cond_2

    .line 6514
    :cond_1
    :goto_0
    monitor-exit v2

    return-void

    .line 6505
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/htc/android/mail/ReadScreen;->access$400()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "MessageIds"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "delete mailMessage id>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/htc/android/mail/MailMessage;->id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6506
    :cond_3
    sget-object v1, Lcom/htc/android/mail/ReadScreen$MessageIds;->mailMessagePositionArray:Lcom/htc/android/mail/util/SparseLongArray;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/htc/android/mail/ReadScreen$MessageIds;->mailMessageIdArray:[J

    if-eqz v1, :cond_1

    .line 6509
    iget-wide v3, p0, Lcom/htc/android/mail/MailMessage;->id:J

    invoke-static {v3, v4}, Lcom/htc/android/mail/ReadScreen$MessageIds;->getPosition(J)I

    move-result v0

    .line 6510
    .local v0, pos:I
    if-ltz v0, :cond_1

    .line 6513
    sget-object v1, Lcom/htc/android/mail/ReadScreen$MessageIds;->mailMessageIdArray:[J

    const-wide/16 v3, -0x1

    aput-wide v3, v1, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 6501
    .end local v0           #pos:I
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized delete(Ljava/util/ArrayList;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/MailMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 6517
    .local p0, mailMessageList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/MailMessage;>;"
    const-class v4, Lcom/htc/android/mail/ReadScreen$MessageIds;

    monitor-enter v4

    if-nez p0, :cond_1

    .line 6533
    :cond_0
    monitor-exit v4

    return-void

    .line 6520
    :cond_1
    :try_start_0
    sget-object v3, Lcom/htc/android/mail/ReadScreen$MessageIds;->mailMessagePositionArray:Lcom/htc/android/mail/util/SparseLongArray;

    if-eqz v3, :cond_0

    if-eqz p0, :cond_0

    .line 6523
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/mail/MailMessage;

    .line 6524
    .local v1, mailMessage:Lcom/htc/android/mail/MailMessage;
    if-eqz v1, :cond_2

    .line 6527
    iget-wide v5, v1, Lcom/htc/android/mail/MailMessage;->id:J

    invoke-static {v5, v6}, Lcom/htc/android/mail/ReadScreen$MessageIds;->getPosition(J)I

    move-result v2

    .line 6528
    .local v2, pos:I
    if-ltz v2, :cond_0

    .line 6531
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 6517
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #mailMessage:Lcom/htc/android/mail/MailMessage;
    .end local v2           #pos:I
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public static destroy()V
    .locals 2

    .prologue
    .line 6602
    invoke-static {}, Lcom/htc/android/mail/ReadScreen;->access$400()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MessageIds"

    const-string v1, "destroy"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6603
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/htc/android/mail/ReadScreen$MessageIds;->setMessageIdsStatus(Z)V

    .line 6604
    invoke-static {}, Lcom/htc/android/mail/ReadScreen$MessageIds;->clearMailMessageArray()V

    .line 6605
    return-void
.end method

.method public static declared-synchronized getNextMessageId(J)J
    .locals 11
    .parameter "messageId"

    .prologue
    const-wide/16 v5, -0x1

    .line 6550
    const-class v7, Lcom/htc/android/mail/ReadScreen$MessageIds;

    monitor-enter v7

    :try_start_0
    sget-object v8, Lcom/htc/android/mail/ReadScreen$MessageIds;->mailMessagePositionArray:Lcom/htc/android/mail/util/SparseLongArray;

    if-eqz v8, :cond_1

    .line 6552
    sget-object v8, Lcom/htc/android/mail/ReadScreen$MessageIds;->mailMessagePositionArray:Lcom/htc/android/mail/util/SparseLongArray;

    const-wide/16 v9, -0x1

    invoke-virtual {v8, p0, p1, v9, v10}, Lcom/htc/android/mail/util/SparseLongArray;->get(JJ)J

    move-result-wide v8

    long-to-int v4, v8

    .line 6553
    .local v4, pos:I
    sget-object v8, Lcom/htc/android/mail/ReadScreen$MessageIds;->mailMessageIdArray:[J

    array-length v1, v8

    .line 6554
    .local v1, length:I
    add-int/lit8 v0, v4, 0x1

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 6555
    sget-object v8, Lcom/htc/android/mail/ReadScreen$MessageIds;->mailMessageIdArray:[J

    aget-wide v2, v8, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6556
    .local v2, nextMessageId:J
    cmp-long v8, v2, v5

    if-eqz v8, :cond_0

    .line 6561
    .end local v0           #i:I
    .end local v1           #length:I
    .end local v2           #nextMessageId:J
    .end local v4           #pos:I
    :goto_1
    monitor-exit v7

    return-wide v2

    .line 6554
    .restart local v0       #i:I
    .restart local v1       #length:I
    .restart local v2       #nextMessageId:J
    .restart local v4       #pos:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0           #i:I
    .end local v1           #length:I
    .end local v2           #nextMessageId:J
    .end local v4           #pos:I
    :cond_1
    move-wide v2, v5

    .line 6561
    goto :goto_1

    .line 6550
    :catchall_0
    move-exception v5

    monitor-exit v7

    throw v5
.end method

.method private static declared-synchronized getPosition(J)I
    .locals 4
    .parameter "messageId"

    .prologue
    .line 6536
    const-class v1, Lcom/htc/android/mail/ReadScreen$MessageIds;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/htc/android/mail/ReadScreen$MessageIds;->mailMessagePositionArray:Lcom/htc/android/mail/util/SparseLongArray;

    if-eqz v0, :cond_0

    .line 6537
    sget-object v0, Lcom/htc/android/mail/ReadScreen$MessageIds;->mailMessagePositionArray:Lcom/htc/android/mail/util/SparseLongArray;

    const-wide/16 v2, -0x1

    invoke-virtual {v0, p0, p1, v2, v3}, Lcom/htc/android/mail/util/SparseLongArray;->get(JJ)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    long-to-int v0, v2

    .line 6539
    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    .line 6536
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getPreMessageId(J)J
    .locals 10
    .parameter "messageId"

    .prologue
    const-wide/16 v4, -0x1

    .line 6565
    const-class v6, Lcom/htc/android/mail/ReadScreen$MessageIds;

    monitor-enter v6

    :try_start_0
    sget-object v7, Lcom/htc/android/mail/ReadScreen$MessageIds;->mailMessagePositionArray:Lcom/htc/android/mail/util/SparseLongArray;

    if-eqz v7, :cond_1

    .line 6567
    sget-object v7, Lcom/htc/android/mail/ReadScreen$MessageIds;->mailMessagePositionArray:Lcom/htc/android/mail/util/SparseLongArray;

    const-wide/16 v8, -0x1

    invoke-virtual {v7, p0, p1, v8, v9}, Lcom/htc/android/mail/util/SparseLongArray;->get(JJ)J

    move-result-wide v7

    long-to-int v1, v7

    .line 6568
    .local v1, pos:I
    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 6569
    sget-object v7, Lcom/htc/android/mail/ReadScreen$MessageIds;->mailMessageIdArray:[J

    aget-wide v2, v7, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6570
    .local v2, preMessageId:J
    cmp-long v7, v2, v4

    if-eqz v7, :cond_0

    .line 6575
    .end local v0           #i:I
    .end local v1           #pos:I
    .end local v2           #preMessageId:J
    :goto_1
    monitor-exit v6

    return-wide v2

    .line 6568
    .restart local v0       #i:I
    .restart local v1       #pos:I
    .restart local v2       #preMessageId:J
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .end local v0           #i:I
    .end local v1           #pos:I
    .end local v2           #preMessageId:J
    :cond_1
    move-wide v2, v4

    .line 6575
    goto :goto_1

    .line 6565
    :catchall_0
    move-exception v4

    monitor-exit v6

    throw v4
.end method

.method public static getUriStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6482
    sget-object v0, Lcom/htc/android/mail/ReadScreen$MessageIds;->mUri:Ljava/lang/String;

    return-object v0
.end method

.method public static isMessageIdsChanged()Z
    .locals 1

    .prologue
    .line 6608
    sget-boolean v0, Lcom/htc/android/mail/ReadScreen$MessageIds;->isMessageIdsChanged:Z

    return v0
.end method

.method public static declared-synchronized setMessageIdsCursor(Landroid/content/ContentResolver;Landroid/database/Cursor;Ljava/lang/String;Lcom/htc/android/mail/ReadScreen$MessageIdsContentObserver;)V
    .locals 9
    .parameter "cr"
    .parameter "c"
    .parameter "uriStr"
    .parameter "obs"

    .prologue
    .line 6612
    const-class v6, Lcom/htc/android/mail/ReadScreen$MessageIds;

    monitor-enter v6

    :try_start_0
    sput-object p0, Lcom/htc/android/mail/ReadScreen$MessageIds;->mContentResolver:Landroid/content/ContentResolver;

    .line 6613
    sget-object v5, Lcom/htc/android/mail/ReadScreen$MessageIds;->messageIdsObserver:Lcom/htc/android/mail/ReadScreen$MessageIdsContentObserver;

    if-eqz v5, :cond_0

    .line 6614
    sget-object v5, Lcom/htc/android/mail/ReadScreen$MessageIds;->messageIdsObserver:Lcom/htc/android/mail/ReadScreen$MessageIdsContentObserver;

    invoke-virtual {p0, v5}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 6617
    :cond_0
    sput-object p3, Lcom/htc/android/mail/ReadScreen$MessageIds;->messageIdsObserver:Lcom/htc/android/mail/ReadScreen$MessageIdsContentObserver;

    .line 6618
    sget-object v5, Lcom/htc/android/mail/ReadScreen$MessageIds;->messageIdsObserver:Lcom/htc/android/mail/ReadScreen$MessageIdsContentObserver;

    if-eqz v5, :cond_1

    .line 6619
    if-nez p2, :cond_2

    .line 6620
    sget-object v5, Lcom/htc/android/mail/MailProvider;->sMessageIdsURI:Landroid/net/Uri;

    const/4 v7, 0x0

    sget-object v8, Lcom/htc/android/mail/ReadScreen$MessageIds;->messageIdsObserver:Lcom/htc/android/mail/ReadScreen$MessageIdsContentObserver;

    invoke-virtual {p0, v5, v7, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6626
    :cond_1
    :goto_0
    if-eqz p1, :cond_5

    .line 6631
    :try_start_1
    const-string v5, "_id"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 6632
    .local v4, messageIdIndex:I
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 6633
    .local v0, count:I
    new-instance v5, Lcom/htc/android/mail/util/SparseLongArray;

    invoke-direct {v5, v0}, Lcom/htc/android/mail/util/SparseLongArray;-><init>(I)V

    sput-object v5, Lcom/htc/android/mail/ReadScreen$MessageIds;->mailMessagePositionArray:Lcom/htc/android/mail/util/SparseLongArray;

    .line 6634
    new-array v5, v0, [J

    sput-object v5, Lcom/htc/android/mail/ReadScreen$MessageIds;->mailMessageIdArray:[J

    .line 6635
    const/4 v1, 0x0

    .line 6636
    .local v1, i:I
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 6637
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 6638
    .local v2, messageId:J
    sget-object v5, Lcom/htc/android/mail/ReadScreen$MessageIds;->mailMessagePositionArray:Lcom/htc/android/mail/util/SparseLongArray;

    int-to-long v7, v1

    invoke-virtual {v5, v2, v3, v7, v8}, Lcom/htc/android/mail/util/SparseLongArray;->put(JJ)V

    .line 6639
    sget-object v5, Lcom/htc/android/mail/ReadScreen$MessageIds;->mailMessageIdArray:[J

    aput-wide v2, v5, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 6640
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 6622
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v2           #messageId:J
    .end local v4           #messageIdIndex:I
    :cond_2
    :try_start_2
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v7, 0x0

    sget-object v8, Lcom/htc/android/mail/ReadScreen$MessageIds;->messageIdsObserver:Lcom/htc/android/mail/ReadScreen$MessageIdsContentObserver;

    invoke-virtual {p0, v5, v7, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 6612
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 6643
    :catchall_1
    move-exception v5

    :try_start_3
    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    if-nez v7, :cond_3

    .line 6644
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 6643
    :cond_3
    throw v5

    .restart local v0       #count:I
    .restart local v1       #i:I
    .restart local v4       #messageIdIndex:I
    :cond_4
    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_5

    .line 6644
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 6648
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v4           #messageIdIndex:I
    :cond_5
    monitor-exit v6

    return-void
.end method

.method public static setMessageIdsStatus(Z)V
    .locals 0
    .parameter "status"

    .prologue
    .line 6651
    sput-boolean p0, Lcom/htc/android/mail/ReadScreen$MessageIds;->isMessageIdsChanged:Z

    .line 6652
    return-void
.end method

.method public static declared-synchronized size()I
    .locals 2

    .prologue
    .line 6543
    const-class v1, Lcom/htc/android/mail/ReadScreen$MessageIds;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/htc/android/mail/ReadScreen$MessageIds;->mailMessagePositionArray:Lcom/htc/android/mail/util/SparseLongArray;

    if-eqz v0, :cond_0

    .line 6544
    sget-object v0, Lcom/htc/android/mail/ReadScreen$MessageIds;->mailMessagePositionArray:Lcom/htc/android/mail/util/SparseLongArray;

    invoke-virtual {v0}, Lcom/htc/android/mail/util/SparseLongArray;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 6546
    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 6543
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
