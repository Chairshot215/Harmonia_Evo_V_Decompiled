.class public Lcom/htc/android/mail/eassvc/mail/MailSender;
.super Ljava/lang/Object;
.source "MailSender.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/mail/eassvc/mail/MailSender$SendMailItem;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field private static MAIL_DEBUG:Z = false

.field private static final OUT_MESSAGES_WHERE:Ljava/lang/String; = "_account=%d AND _mailboxId=%d AND _id=%d"

.field private static final OUT_PARTS_ATTACHMENT_WHERE:Ljava/lang/String; = "_account=%d AND _message=%d AND _filename != \'\'"

.field private static final OUT_PARTS_WHERE:Ljava/lang/String; = "_account=%d AND _message=%d"

.field private static final TAG:Ljava/lang/String; = "MailSender"

.field private static final TEMP_FOLDER_PATH:Ljava/lang/String; = "mail_temp"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mExSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

.field private mLoginCredential:Ljava/lang/String;

.field private mMailTempPath:Ljava/io/File;

.field private mSendItem:Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;

.field private mWriter:Ljava/io/FileOutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    sput-boolean v0, Lcom/htc/android/mail/eassvc/mail/MailSender;->DEBUG:Z

    .line 61
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    sput-boolean v0, Lcom/htc/android/mail/eassvc/mail/MailSender;->MAIL_DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Landroid/content/Context;)V
    .locals 2
    .parameter "exSyncSource"
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 79
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object v0, p0, Lcom/htc/android/mail/eassvc/mail/MailSender;->mExSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    .line 77
    iput-object v0, p0, Lcom/htc/android/mail/eassvc/mail/MailSender;->mWriter:Ljava/io/FileOutputStream;

    .line 80
    iput-object p2, p0, Lcom/htc/android/mail/eassvc/mail/MailSender;->mContext:Landroid/content/Context;

    .line 81
    iput-object p1, p0, Lcom/htc/android/mail/eassvc/mail/MailSender;->mExSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    .line 82
    const-string v0, "mail_temp"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/mail/MailSender;->mMailTempPath:Ljava/io/File;

    .line 83
    return-void
.end method

.method public static checkMailCanBeSent(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;JIJLandroid/content/Context;)Z
    .locals 20
    .parameter "exSyncSources"
    .parameter "messageId"
    .parameter "meetingCmd"
    .parameter "calendarEventId"
    .parameter "context"

    .prologue
    .line 790
    const/4 v5, 0x6

    move/from16 v0, p3

    if-ne v0, v5, :cond_1

    .line 791
    move-object/from16 v0, p0

    move-wide/from16 v1, p4

    move-object/from16 v3, p6

    invoke-static {v0, v1, v2, v3}, Lcom/htc/android/mail/eassvc/mail/MailSender;->checkMeetingMailCanBeSent(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;JLandroid/content/Context;)Z

    move-result v12

    .line 829
    :cond_0
    :goto_0
    return v12

    .line 793
    :cond_1
    const/4 v12, 0x1

    .line 794
    .local v12, bRet:Z
    const/4 v13, 0x0

    .line 795
    .local v13, cursor:Landroid/database/Cursor;
    invoke-virtual/range {p6 .. p6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 797
    .local v4, resolver:Landroid/content/ContentResolver;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v10, v5, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    .line 798
    .local v10, accountId:J
    const/4 v14, -0x1

    .line 799
    .local v14, mailboxId:I
    const/16 v17, 0x1

    .line 800
    .local v17, retryCount:I
    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v8, "_mailboxId, _retryCount"

    aput-object v8, v6, v5

    .line 801
    .local v6, proj:[Ljava/lang/String;
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v8, "_account=%d AND _id=%d"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/16 v18, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    aput-object v19, v9, v18

    const/16 v18, 0x1

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    aput-object v19, v9, v18

    invoke-static {v5, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 802
    .local v7, where:Ljava/lang/String;
    sget-object v5, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->EASMESSAGES_URI:Landroid/net/Uri;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 803
    if-eqz v13, :cond_2

    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-nez v5, :cond_3

    .line 804
    :cond_2
    const-string v5, "MailSender"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checkMailCanBeSent: cannot get message "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, p1

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v10, v11, v8}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 805
    const/4 v12, 0x0

    .line 824
    if-eqz v13, :cond_0

    invoke-interface {v13}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_0

    .line 825
    :goto_1
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 809
    :cond_3
    const/4 v5, 0x0

    :try_start_1
    invoke-interface {v13, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 810
    invoke-static {v10, v11, v4}, Lcom/htc/android/mail/database/ExchangeUtil;->getOutboxId(JLandroid/content/ContentResolver;)J

    move-result-wide v15

    .line 811
    .local v15, outboxId:J
    int-to-long v8, v14

    cmp-long v5, v8, v15

    if-eqz v5, :cond_4

    .line 812
    const-string v5, "MailSender"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checkMailCanBeSent: message is not in outbox "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, p1

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v10, v11, v8}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 813
    const/4 v12, 0x0

    .line 824
    if-eqz v13, :cond_0

    invoke-interface {v13}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    .line 817
    :cond_4
    const/4 v5, 0x1

    :try_start_2
    invoke-interface {v13, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 818
    if-gtz v17, :cond_7

    .line 819
    sget-boolean v5, Lcom/htc/android/mail/eassvc/mail/MailSender;->DEBUG:Z

    if-eqz v5, :cond_5

    const-string v5, "MailSender"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checkMailCanBeSent, maximum retrycount: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v10, v11, v8}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 820
    :cond_5
    const/4 v12, 0x0

    .line 824
    if-eqz v13, :cond_0

    invoke-interface {v13}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    .end local v6           #proj:[Ljava/lang/String;
    .end local v7           #where:Ljava/lang/String;
    .end local v10           #accountId:J
    .end local v14           #mailboxId:I
    .end local v15           #outboxId:J
    .end local v17           #retryCount:I
    :catchall_0
    move-exception v5

    if-eqz v13, :cond_6

    invoke-interface {v13}, Landroid/database/Cursor;->isClosed()Z

    move-result v8

    if-nez v8, :cond_6

    .line 825
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 824
    :cond_6
    throw v5

    .restart local v6       #proj:[Ljava/lang/String;
    .restart local v7       #where:Ljava/lang/String;
    .restart local v10       #accountId:J
    .restart local v14       #mailboxId:I
    .restart local v15       #outboxId:J
    .restart local v17       #retryCount:I
    :cond_7
    if-eqz v13, :cond_0

    invoke-interface {v13}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1
.end method

.method public static checkMailisInOutbox(JJLandroid/content/Context;)Z
    .locals 13
    .parameter "accountId"
    .parameter "msgId"
    .parameter "context"

    .prologue
    .line 852
    const/4 v11, 0x0

    .line 853
    .local v11, ret:Z
    invoke-virtual/range {p4 .. p4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/htc/android/mail/database/ExchangeUtil;->getOutboxId(JLandroid/content/ContentResolver;)J

    move-result-wide v9

    .line 854
    .local v9, outboxId:J
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_mailboxId"

    aput-object v1, v2, v0

    .line 855
    .local v2, proj:[Ljava/lang/String;
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "_account=%d AND _id=%d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v4, v5

    const/4 v5, 0x1

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v4, v5

    invoke-static {v0, v1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 856
    .local v3, where:Ljava/lang/String;
    const/4 v6, 0x0

    .line 858
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual/range {p4 .. p4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->MESSAGES_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 859
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 860
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v7

    .line 861
    .local v7, outId:J
    cmp-long v0, v9, v7

    if-nez v0, :cond_0

    .line 862
    const/4 v11, 0x1

    .line 866
    .end local v7           #outId:J
    :cond_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 867
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 870
    :cond_1
    return v11

    .line 866
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2

    .line 867
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 866
    :cond_2
    throw v0
.end method

.method private static checkMeetingMailCanBeSent(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;JLandroid/content/Context;)Z
    .locals 7
    .parameter "exSyncSources"
    .parameter "calendarEventId"
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 833
    iget-object v4, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mailSyncSource:Lcom/htc/android/mail/eassvc/core/MailSyncSource;

    invoke-virtual {v4, p1, p2}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->isMeetingRecordExist(J)Z

    move-result v0

    .line 834
    .local v0, bMailTrackerRet:Z
    if-nez v0, :cond_1

    .line 835
    sget-boolean v4, Lcom/htc/android/mail/eassvc/mail/MailSender;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "MailSender"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkMeetingMailCanBeSent: fasle(1)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, p0, v5}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/String;)V

    .line 848
    :cond_0
    :goto_0
    return v3

    .line 838
    :cond_1
    invoke-static {p0, p1, p2, p3}, Lcom/htc/android/mail/meeting/MeetingUtil;->isCalendarEventExist(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;JLandroid/content/Context;)Z

    move-result v2

    .line 839
    .local v2, bMeetingRet:Z
    if-nez v2, :cond_2

    .line 840
    sget-boolean v4, Lcom/htc/android/mail/eassvc/mail/MailSender;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "MailSender"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkMeetingMailCanBeSent: fasle(2)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, p0, v5}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/String;)V

    goto :goto_0

    .line 843
    :cond_2
    iget-object v4, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    invoke-static {v4, p1, p2, p3}, Lcom/htc/android/mail/meeting/MeetingUtil;->isMeetingInvitation(Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;JLandroid/content/Context;)Z

    move-result v1

    .line 844
    .local v1, bMeetingInvitation:Z
    if-nez v1, :cond_3

    .line 845
    sget-boolean v4, Lcom/htc/android/mail/eassvc/mail/MailSender;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "MailSender"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkMeetingMailCanBeSent: fasle(3)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, p0, v5}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/String;)V

    goto :goto_0

    .line 848
    :cond_3
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private createHttpPost(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;ILcom/htc/android/mail/eassvc/pim/EASMailSendItem;)Lorg/apache/http/client/methods/HttpPost;
    .locals 8
    .parameter "syncSources"
    .parameter "command"
    .parameter "sendItem"

    .prologue
    const/4 v7, 0x1

    .line 94
    iget-object v0, p1, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    .line 96
    .local v0, exAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;
    const/4 v3, 0x0

    .line 97
    .local v3, targetURL:Ljava/lang/String;
    iget-boolean v4, p3, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mSaveInSent:Z

    if-ne v4, v7, :cond_2

    const-string v2, "T"

    .line 100
    .local v2, strSaveInSent:Ljava/lang/String;
    :goto_0
    if-eq p2, v7, :cond_0

    const/4 v4, 0x2

    if-eq p2, v4, :cond_0

    const/4 v4, 0x3

    if-eq p2, v4, :cond_0

    .line 103
    const-string v4, "MailSender"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid command of EASMailSendItem: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v0, v5}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 104
    const/4 p2, 0x1

    .line 107
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 170
    :goto_1
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v1, v3}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 171
    .local v1, httpPost:Lorg/apache/http/client/methods/HttpPost;
    const-string v4, "Content-Type"

    const-string v5, "message/rfc822"

    invoke-virtual {v1, v4, v5}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const-string v4, "MS-ASProtocolVersion"

    iget-object v5, v0, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->protocolVer:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iget-object v4, p1, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->policyKey:Ljava/lang/String;

    if-nez v4, :cond_a

    .line 174
    iget-wide v4, v0, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->protocolVerDouble:D

    const-wide/high16 v6, 0x402c

    cmpg-double v4, v4, v6

    if-gez v4, :cond_1

    .line 175
    const-string v4, "X-MS-PolicyKey"

    const-string v5, "0"

    invoke-virtual {v1, v4, v5}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    :cond_1
    :goto_2
    const-string v4, "Authorization"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Basic "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/android/mail/eassvc/mail/MailSender;->mLoginCredential:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    return-object v1

    .line 97
    .end local v1           #httpPost:Lorg/apache/http/client/methods/HttpPost;
    .end local v2           #strSaveInSent:Ljava/lang/String;
    :cond_2
    const-string v2, "F"

    goto :goto_0

    .line 109
    .restart local v2       #strSaveInSent:Ljava/lang/String;
    :pswitch_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v4, v0, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->requireSSL:Z

    if-ne v4, v7, :cond_3

    const-string v4, "https"

    :goto_3
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->serverName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Microsoft-Server-ActiveSync?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Cmd="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "SendMail"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "SaveInSent="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "User="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->safeUserName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "DeviceId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->deviceID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "DeviceType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->deviceType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 117
    goto/16 :goto_1

    .line 109
    :cond_3
    const-string v4, "http"

    goto :goto_3

    .line 119
    :pswitch_1
    iget-boolean v4, p3, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mGlobalMail:Z

    if-nez v4, :cond_5

    .line 120
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v4, v0, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->requireSSL:Z

    if-ne v4, v7, :cond_4

    const-string v4, "https"

    :goto_4
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->serverName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Microsoft-Server-ActiveSync?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Cmd="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "SmartReply"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "SaveInSent="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "User="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->safeUserName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ItemId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p3, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mUid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "CollectionId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p3, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mCollId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "DeviceId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->deviceID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "DeviceType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->deviceType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    :cond_4
    const-string v4, "http"

    goto/16 :goto_4

    .line 132
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v4, v0, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->requireSSL:Z

    if-ne v4, v7, :cond_6

    const-string v4, "https"

    :goto_5
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->serverName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Microsoft-Server-ActiveSync?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Cmd="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "SmartReply"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "SaveInSent="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "User="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->safeUserName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "LongId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p3, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mUid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "DeviceId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->deviceID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "DeviceType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->deviceType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 142
    goto/16 :goto_1

    .line 132
    :cond_6
    const-string v4, "http"

    goto/16 :goto_5

    .line 144
    :pswitch_2
    iget-boolean v4, p3, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mGlobalMail:Z

    if-nez v4, :cond_8

    .line 145
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v4, v0, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->requireSSL:Z

    if-ne v4, v7, :cond_7

    const-string v4, "https"

    :goto_6
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->serverName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Microsoft-Server-ActiveSync?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Cmd="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "SmartForward"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "SaveInSent="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "User="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->safeUserName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ItemId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p3, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mUid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "CollectionId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p3, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mCollId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "DeviceId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->deviceID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "DeviceType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->deviceType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    :cond_7
    const-string v4, "http"

    goto/16 :goto_6

    .line 157
    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v4, v0, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->requireSSL:Z

    if-ne v4, v7, :cond_9

    const-string v4, "https"

    :goto_7
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->serverName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Microsoft-Server-ActiveSync?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Cmd="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "SmartForward"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "SaveInSent="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "User="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->safeUserName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "LongId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p3, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mUid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "DeviceId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->deviceID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "DeviceType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->deviceType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    :cond_9
    const-string v4, "http"

    goto/16 :goto_7

    .line 178
    .restart local v1       #httpPost:Lorg/apache/http/client/methods/HttpPost;
    :cond_a
    const-string v4, "X-MS-PolicyKey"

    iget-object v5, p1, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->policyKey:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 107
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static encapsulateSendMail(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;ILcom/htc/android/mail/eassvc/pim/EASMailSendItem;ZZ)Lcom/htc/android/mail/eassvc/core/EASRequest;
    .locals 5
    .parameter "exSyncSources"
    .parameter "meetingResp"
    .parameter "item"
    .parameter "cleanNotification"
    .parameter "syncMail"

    .prologue
    const/4 v4, 0x3

    .line 661
    new-instance v0, Lcom/htc/android/mail/eassvc/core/EASRequest;

    invoke-direct {v0}, Lcom/htc/android/mail/eassvc/core/EASRequest;-><init>()V

    .line 662
    .local v0, request:Lcom/htc/android/mail/eassvc/core/EASRequest;
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v1, v1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    iput-wide v1, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->accountId:J

    .line 663
    iput v4, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->syncSourceType:I

    .line 664
    iput-object p0, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    .line 665
    const/16 v1, 0x32

    iput v1, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->command:I

    .line 666
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    .line 667
    iget-object v1, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    const-string v2, "parameter.mail.send.item"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 668
    iget-object v1, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    const-string v2, "parameter.mail.meetingResp.cmd"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 669
    iget-object v1, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    const-string v2, "parameter.mail.send.retry_count"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 670
    iget-object v1, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    const-string v2, "parameter.clean_notification"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 671
    iget-object v1, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    const-string v2, "parameter.mail.send.success.sync_mail"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 672
    iput v4, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->priority:I

    .line 673
    return-object v0
.end method

.method public static encapsulateSendMeetingMail(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;IJLcom/htc/android/mail/eassvc/pim/EASMailSendItem;Z)Lcom/htc/android/mail/eassvc/core/EASRequest;
    .locals 5
    .parameter "exSyncSources"
    .parameter "meetingResp"
    .parameter "eventId"
    .parameter "item"
    .parameter "cleanNotification"

    .prologue
    const/4 v4, 0x3

    .line 680
    new-instance v0, Lcom/htc/android/mail/eassvc/core/EASRequest;

    invoke-direct {v0}, Lcom/htc/android/mail/eassvc/core/EASRequest;-><init>()V

    .line 681
    .local v0, request:Lcom/htc/android/mail/eassvc/core/EASRequest;
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v1, v1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    iput-wide v1, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->accountId:J

    .line 682
    iput v4, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->syncSourceType:I

    .line 683
    iput-object p0, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    .line 684
    const/16 v1, 0x32

    iput v1, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->command:I

    .line 685
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    .line 686
    iget-object v1, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    const-string v2, "parameter.mail.send.item"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 687
    iget-object v1, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    const-string v2, "parameter.mail.meetingResp.cmd"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 688
    iget-object v1, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    const-string v2, "parameter.mail.send.retry_count"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 689
    iget-object v1, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    const-string v2, "parameter.mail.calendar.event_id"

    invoke-virtual {v1, v2, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 690
    iget-object v1, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    const-string v2, "parameter.clean_notification"

    invoke-virtual {v1, v2, p5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 691
    iput v4, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->priority:I

    .line 692
    return-object v0
.end method

.method private static getOutMailBundle(JJJLandroid/content/ContentResolver;)Landroid/os/Bundle;
    .locals 39
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "messageId"
    .parameter "resolver"

    .prologue
    .line 1034
    sget-boolean v3, Lcom/htc/android/mail/eassvc/mail/MailSender;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "MailSender"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "> getOutMailBudle: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p2

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p4

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-wide/from16 v0, p0

    invoke-static {v3, v0, v1, v5}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 1035
    :cond_0
    const-wide/16 v7, 0x0

    cmp-long v3, p0, v7

    if-lez v3, :cond_1

    const-wide/16 v7, 0x0

    cmp-long v3, p2, v7

    if-lez v3, :cond_1

    const-wide/16 v7, 0x0

    cmp-long v3, p4, v7

    if-gtz v3, :cond_3

    .line 1036
    :cond_1
    const-string v3, "MailSender"

    const-string v5, "getOutMailBundle error #1"

    move-wide/from16 v0, p0

    invoke-static {v3, v0, v1, v5}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;JLjava/lang/String;)V

    .line 1037
    const/16 v19, 0x0

    .line 1185
    :cond_2
    :goto_0
    return-object v19

    .line 1040
    :cond_3
    const/16 v37, -0x1

    .line 1041
    .local v37, smartCommand:I
    const-wide/16 v33, -0x1

    .line 1042
    .local v33, refMessageId:J
    const/16 v19, 0x0

    .line 1043
    .local v19, b:Landroid/os/Bundle;
    sget-object v4, Lcom/htc/android/mail/MailProvider;->sEASMessagesURI:Landroid/net/Uri;

    .line 1044
    .local v4, messagesUri:Landroid/net/Uri;
    sget-object v31, Lcom/htc/android/mail/MailProvider;->sEASPartsURI:Landroid/net/Uri;

    .line 1045
    .local v31, partsUri:Landroid/net/Uri;
    const/16 v28, 0x0

    .line 1046
    .local v28, messageCursor:Landroid/database/Cursor;
    const/16 v30, 0x0

    .line 1047
    .local v30, partsCursor:Landroid/database/Cursor;
    const/16 v35, 0x0

    .line 1050
    .local v35, refPartsCursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "_account=%d AND _mailboxId=%d AND _id=%d"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static/range {p0 .. p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v3, v5, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 1052
    .local v6, messageWhere:Ljava/lang/String;
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p6

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v28

    .line 1053
    if-eqz v28, :cond_4

    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-nez v3, :cond_7

    .line 1054
    :cond_4
    const-string v3, "MailSender"

    const-string v5, "getOutMailBundle error #2"

    move-wide/from16 v0, p0

    invoke-static {v3, v0, v1, v5}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1055
    const/16 v19, 0x0

    .line 1173
    .end local v19           #b:Landroid/os/Bundle;
    if-eqz v28, :cond_5

    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_5

    .line 1174
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->close()V

    .line 1176
    :cond_5
    if-eqz v30, :cond_6

    invoke-interface/range {v30 .. v30}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_6

    .line 1177
    invoke-interface/range {v30 .. v30}, Landroid/database/Cursor;->close()V

    .line 1179
    :cond_6
    if-eqz v35, :cond_2

    invoke-interface/range {v35 .. v35}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1180
    invoke-interface/range {v35 .. v35}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1057
    .restart local v19       #b:Landroid/os/Bundle;
    :cond_7
    :try_start_1
    new-instance v20, Landroid/os/Bundle;

    invoke-direct/range {v20 .. v20}, Landroid/os/Bundle;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1058
    .end local v19           #b:Landroid/os/Bundle;
    .local v20, b:Landroid/os/Bundle;
    :try_start_2
    const-string v3, "id"

    move-object/from16 v0, v20

    move-wide/from16 v1, p4

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1059
    const-string v3, "to"

    const-string v5, "_to"

    move-object/from16 v0, v28

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v28

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1060
    const-string v3, "cc"

    const-string v5, "_cc"

    move-object/from16 v0, v28

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v28

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1061
    const-string v3, "bcc"

    const-string v5, "_bcc"

    move-object/from16 v0, v28

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v28

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1062
    const-string v3, "subject"

    const-string v5, "_subject"

    move-object/from16 v0, v28

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v28

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1063
    const-string v3, "importance"

    const-string v5, "_importance"

    move-object/from16 v0, v28

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v28

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1064
    const-string v3, "uid"

    const-string v5, "_uid"

    move-object/from16 v0, v28

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v28

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1065
    const-string v3, "messageClass"

    const-string v5, "_messageClass"

    move-object/from16 v0, v28

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v28

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1066
    const-string v3, "id"

    const-string v5, "_id"

    move-object/from16 v0, v28

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v28

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1067
    const-string v3, "mailboxId"

    const-string v5, "_mailboxId"

    move-object/from16 v0, v28

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v28

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1068
    const-string v3, "_smartCommand"

    move-object/from16 v0, v28

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v28

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v37

    .line 1069
    const-string v3, "smartCommand"

    move-object/from16 v0, v20

    move/from16 v1, v37

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1070
    const-string v3, "_refMsgId"

    move-object/from16 v0, v28

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v28

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v33

    .line 1071
    const-string v3, "refMsgId"

    move-object/from16 v0, v20

    move-wide/from16 v1, v33

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1072
    const-string v3, "_notaddTrack"

    move-object/from16 v0, v28

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v28

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    .line 1073
    .local v26, globalMail:I
    const/4 v3, 0x1

    move/from16 v0, v26

    if-ne v0, v3, :cond_d

    .line 1074
    const-string v3, "globalMail"

    const/4 v5, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1080
    :goto_1
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "_account=%d AND _message=%d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static/range {p0 .. p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v3, v5, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 1082
    .local v10, partWhere:Ljava/lang/String;
    const-string v29, ""

    .line 1083
    .local v29, mimeType:Ljava/lang/String;
    const-string v24, ""

    .line 1084
    .local v24, fileName:Ljava/lang/String;
    const-string v25, ""

    .line 1085
    .local v25, filePath:Ljava/lang/String;
    const-string v38, ""

    .line 1086
    .local v38, text:Ljava/lang/String;
    const-string v21, ""

    .line 1087
    .local v21, cid:Ljava/lang/String;
    sget v22, Lcom/htc/android/mail/Rfc2822;->CONTENTTYPE_MIXED:I

    .line 1089
    .local v22, contenttype:I
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 1090
    .local v18, attachmentList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/Attachment;>;"
    new-instance v36, Ljava/util/ArrayList;

    invoke-direct/range {v36 .. v36}, Ljava/util/ArrayList;-><init>()V

    .line 1092
    .local v36, relatedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/Attachment;>;"
    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v7, p6

    move-object/from16 v8, v31

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v30

    .line 1093
    if-eqz v30, :cond_16

    .line 1094
    const/16 v17, 0x0

    .line 1095
    .local v17, attachment:Lcom/htc/android/mail/Attachment;
    :cond_8
    :goto_2
    invoke-interface/range {v30 .. v30}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 1096
    const-string v3, "_mimetype"

    move-object/from16 v0, v30

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v30

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 1097
    const-string v3, "_filename"

    move-object/from16 v0, v30

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v30

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 1098
    const-string v3, "_filepath"

    move-object/from16 v0, v30

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v30

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 1099
    const-string v3, "_text"

    move-object/from16 v0, v30

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v30

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v38

    .line 1100
    const-string v3, "_contenttype"

    move-object/from16 v0, v30

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v30

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 1101
    const-string v3, "_cid"

    move-object/from16 v0, v30

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v30

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 1103
    const-string v3, "text/html"

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    if-eqz v24, :cond_9

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_11

    .line 1104
    :cond_9
    const-string v3, "htmlBody"

    move-object/from16 v0, v20

    move-object/from16 v1, v38

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 1169
    .end local v10           #partWhere:Ljava/lang/String;
    .end local v17           #attachment:Lcom/htc/android/mail/Attachment;
    .end local v18           #attachmentList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/Attachment;>;"
    .end local v21           #cid:Ljava/lang/String;
    .end local v22           #contenttype:I
    .end local v24           #fileName:Ljava/lang/String;
    .end local v25           #filePath:Ljava/lang/String;
    .end local v26           #globalMail:I
    .end local v29           #mimeType:Ljava/lang/String;
    .end local v36           #relatedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/Attachment;>;"
    .end local v38           #text:Ljava/lang/String;
    :catch_0
    move-exception v23

    move-object/from16 v19, v20

    .line 1170
    .end local v6           #messageWhere:Ljava/lang/String;
    .end local v20           #b:Landroid/os/Bundle;
    .restart local v19       #b:Landroid/os/Bundle;
    .local v23, e:Ljava/lang/Exception;
    :goto_3
    :try_start_3
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1171
    const/16 v19, 0x0

    .line 1173
    if-eqz v28, :cond_a

    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_a

    .line 1174
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->close()V

    .line 1176
    :cond_a
    if-eqz v30, :cond_b

    invoke-interface/range {v30 .. v30}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_b

    .line 1177
    invoke-interface/range {v30 .. v30}, Landroid/database/Cursor;->close()V

    .line 1179
    :cond_b
    if-eqz v35, :cond_c

    invoke-interface/range {v35 .. v35}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_c

    .line 1180
    invoke-interface/range {v35 .. v35}, Landroid/database/Cursor;->close()V

    .line 1184
    .end local v23           #e:Ljava/lang/Exception;
    :cond_c
    :goto_4
    sget-boolean v3, Lcom/htc/android/mail/eassvc/mail/MailSender;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, "MailSender"

    const-string v5, "< getOutMailBudle"

    invoke-static {v3, v5}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1076
    .end local v19           #b:Landroid/os/Bundle;
    .restart local v6       #messageWhere:Ljava/lang/String;
    .restart local v20       #b:Landroid/os/Bundle;
    .restart local v26       #globalMail:I
    :cond_d
    :try_start_4
    const-string v3, "globalMail"

    const/4 v5, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_1

    .line 1173
    .end local v26           #globalMail:I
    :catchall_0
    move-exception v3

    move-object/from16 v19, v20

    .end local v6           #messageWhere:Ljava/lang/String;
    .end local v20           #b:Landroid/os/Bundle;
    .restart local v19       #b:Landroid/os/Bundle;
    :goto_5
    if-eqz v28, :cond_e

    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_e

    .line 1174
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->close()V

    .line 1176
    :cond_e
    if-eqz v30, :cond_f

    invoke-interface/range {v30 .. v30}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_f

    .line 1177
    invoke-interface/range {v30 .. v30}, Landroid/database/Cursor;->close()V

    .line 1179
    :cond_f
    if-eqz v35, :cond_10

    invoke-interface/range {v35 .. v35}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_10

    .line 1180
    invoke-interface/range {v35 .. v35}, Landroid/database/Cursor;->close()V

    .line 1173
    :cond_10
    throw v3

    .line 1105
    .end local v19           #b:Landroid/os/Bundle;
    .restart local v6       #messageWhere:Ljava/lang/String;
    .restart local v10       #partWhere:Ljava/lang/String;
    .restart local v17       #attachment:Lcom/htc/android/mail/Attachment;
    .restart local v18       #attachmentList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/Attachment;>;"
    .restart local v20       #b:Landroid/os/Bundle;
    .restart local v21       #cid:Ljava/lang/String;
    .restart local v22       #contenttype:I
    .restart local v24       #fileName:Ljava/lang/String;
    .restart local v25       #filePath:Ljava/lang/String;
    .restart local v26       #globalMail:I
    .restart local v29       #mimeType:Ljava/lang/String;
    .restart local v36       #relatedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/Attachment;>;"
    .restart local v38       #text:Ljava/lang/String;
    :cond_11
    :try_start_5
    const-string v3, "text/plain"

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    if-eqz v24, :cond_12

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_13

    .line 1106
    :cond_12
    const-string v3, "plainBody"

    move-object/from16 v0, v20

    move-object/from16 v1, v38

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1107
    :cond_13
    const-string v3, "VCALENDAR"

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 1108
    const-string v3, "_meetingMailBody"

    move-object/from16 v0, v30

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v30

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 1109
    .local v27, meetingBody:Ljava/lang/String;
    const-string v3, "iCalendar"

    move-object/from16 v0, v20

    move-object/from16 v1, v38

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1110
    const-string v3, "meetingMailBody"

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1111
    .end local v27           #meetingBody:Ljava/lang/String;
    :cond_14
    sget v3, Lcom/htc/android/mail/Rfc2822;->CONTENTTYPE_MIXED:I

    move/from16 v0, v22

    if-ne v0, v3, :cond_15

    .line 1112
    new-instance v17, Lcom/htc/android/mail/Attachment;

    .end local v17           #attachment:Lcom/htc/android/mail/Attachment;
    invoke-direct/range {v17 .. v17}, Lcom/htc/android/mail/Attachment;-><init>()V

    .line 1113
    .restart local v17       #attachment:Lcom/htc/android/mail/Attachment;
    move-object/from16 v0, v29

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/htc/android/mail/Attachment;->attachMimeType:Ljava/lang/String;

    .line 1114
    move-object/from16 v0, v24

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/htc/android/mail/Attachment;->attachName:Ljava/lang/String;

    .line 1115
    move-object/from16 v0, v25

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/htc/android/mail/Attachment;->attachPath:Ljava/lang/String;

    .line 1116
    move/from16 v0, v22

    move-object/from16 v1, v17

    iput v0, v1, Lcom/htc/android/mail/Attachment;->contenttype:I

    .line 1117
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 1118
    :cond_15
    sget v3, Lcom/htc/android/mail/Rfc2822;->CONTENTTYPE_RELATED:I

    move/from16 v0, v22

    if-ne v0, v3, :cond_8

    .line 1119
    new-instance v17, Lcom/htc/android/mail/Attachment;

    .end local v17           #attachment:Lcom/htc/android/mail/Attachment;
    invoke-direct/range {v17 .. v17}, Lcom/htc/android/mail/Attachment;-><init>()V

    .line 1120
    .restart local v17       #attachment:Lcom/htc/android/mail/Attachment;
    move-object/from16 v0, v29

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/htc/android/mail/Attachment;->attachMimeType:Ljava/lang/String;

    .line 1121
    move-object/from16 v0, v24

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/htc/android/mail/Attachment;->attachName:Ljava/lang/String;

    .line 1122
    move-object/from16 v0, v25

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/htc/android/mail/Attachment;->attachPath:Ljava/lang/String;

    .line 1123
    move/from16 v0, v22

    move-object/from16 v1, v17

    iput v0, v1, Lcom/htc/android/mail/Attachment;->contenttype:I

    .line 1124
    move-object/from16 v0, v21

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/htc/android/mail/Attachment;->cid:Ljava/lang/String;

    .line 1125
    move-object/from16 v0, v36

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 1131
    .end local v17           #attachment:Lcom/htc/android/mail/Attachment;
    :cond_16
    const/4 v3, 0x2

    move/from16 v0, v37

    if-ne v0, v3, :cond_19

    const-wide/16 v7, 0x0

    cmp-long v3, v33, v7

    if-lez v3, :cond_19

    .line 1132
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "_account=%d AND _message=%d AND _filename != \'\'"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static/range {p0 .. p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static/range {v33 .. v34}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v3, v5, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 1134
    .local v14, referencePartWhere:Ljava/lang/String;
    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v11, p6

    move-object/from16 v12, v31

    invoke-virtual/range {v11 .. v16}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v35

    .line 1135
    if-eqz v35, :cond_19

    invoke-interface/range {v35 .. v35}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 1137
    :cond_17
    new-instance v17, Lcom/htc/android/mail/Attachment;

    invoke-direct/range {v17 .. v17}, Lcom/htc/android/mail/Attachment;-><init>()V

    .line 1138
    .restart local v17       #attachment:Lcom/htc/android/mail/Attachment;
    const-string v3, "_mimetype"

    move-object/from16 v0, v35

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v35

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    iput-object v3, v0, Lcom/htc/android/mail/Attachment;->attachMimeType:Ljava/lang/String;

    .line 1139
    const-string v3, "_filename"

    move-object/from16 v0, v35

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v35

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    iput-object v3, v0, Lcom/htc/android/mail/Attachment;->attachName:Ljava/lang/String;

    .line 1140
    const-string v3, "_filepath"

    move-object/from16 v0, v35

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v35

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    iput-object v3, v0, Lcom/htc/android/mail/Attachment;->attachPath:Ljava/lang/String;

    .line 1141
    const-string v3, "_contenttype"

    move-object/from16 v0, v35

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v35

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move-object/from16 v0, v17

    iput v3, v0, Lcom/htc/android/mail/Attachment;->contenttype:I

    .line 1142
    const-string v3, "_cid"

    move-object/from16 v0, v35

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v35

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v32

    .line 1144
    .local v32, refCid:Ljava/lang/String;
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/htc/android/mail/Attachment;->attachName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 1159
    :cond_18
    :goto_6
    invoke-interface/range {v35 .. v35}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_17

    .line 1163
    .end local v14           #referencePartWhere:Ljava/lang/String;
    .end local v17           #attachment:Lcom/htc/android/mail/Attachment;
    .end local v32           #refCid:Ljava/lang/String;
    :cond_19
    if-eqz v18, :cond_1a

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1a

    .line 1164
    const-string v3, "attachment"

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1166
    :cond_1a
    if-eqz v36, :cond_1b

    invoke-virtual/range {v36 .. v36}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1b

    .line 1167
    const-string v3, "related"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 1173
    :cond_1b
    if-eqz v28, :cond_1c

    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_1c

    .line 1174
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->close()V

    .line 1176
    :cond_1c
    if-eqz v30, :cond_1d

    invoke-interface/range {v30 .. v30}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_1d

    .line 1177
    invoke-interface/range {v30 .. v30}, Landroid/database/Cursor;->close()V

    .line 1179
    :cond_1d
    if-eqz v35, :cond_1e

    invoke-interface/range {v35 .. v35}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_1e

    .line 1180
    invoke-interface/range {v35 .. v35}, Landroid/database/Cursor;->close()V

    :cond_1e
    move-object/from16 v19, v20

    .line 1182
    .end local v20           #b:Landroid/os/Bundle;
    .restart local v19       #b:Landroid/os/Bundle;
    goto/16 :goto_4

    .line 1146
    .end local v19           #b:Landroid/os/Bundle;
    .restart local v14       #referencePartWhere:Ljava/lang/String;
    .restart local v17       #attachment:Lcom/htc/android/mail/Attachment;
    .restart local v20       #b:Landroid/os/Bundle;
    .restart local v32       #refCid:Ljava/lang/String;
    :cond_1f
    :try_start_6
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/htc/android/mail/Attachment;->attachPath:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 1147
    sget-boolean v3, Lcom/htc/android/mail/eassvc/mail/MailSender;->DEBUG:Z

    if-eqz v3, :cond_18

    const-string v3, "MailSender"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getOutMailBundle(path null): "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v17

    iget-object v7, v0, Lcom/htc/android/mail/Attachment;->attachName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 1151
    :cond_20
    move-object/from16 v0, v17

    iget v3, v0, Lcom/htc/android/mail/Attachment;->contenttype:I

    sget v5, Lcom/htc/android/mail/Rfc2822;->CONTENTTYPE_MIXED:I

    if-ne v3, v5, :cond_21

    .line 1152
    const/4 v3, 0x1

    move-object/from16 v0, v17

    iput-boolean v3, v0, Lcom/htc/android/mail/Attachment;->fromServer:Z

    .line 1153
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 1154
    :cond_21
    move-object/from16 v0, v17

    iget v3, v0, Lcom/htc/android/mail/Attachment;->contenttype:I

    sget v5, Lcom/htc/android/mail/Rfc2822;->CONTENTTYPE_RELATED:I

    if-ne v3, v5, :cond_18

    .line 1155
    move-object/from16 v0, v32

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/htc/android/mail/Attachment;->cid:Ljava/lang/String;

    .line 1156
    const/4 v3, 0x1

    move-object/from16 v0, v17

    iput-boolean v3, v0, Lcom/htc/android/mail/Attachment;->fromServer:Z

    .line 1157
    move-object/from16 v0, v36

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_6

    .line 1173
    .end local v6           #messageWhere:Ljava/lang/String;
    .end local v10           #partWhere:Ljava/lang/String;
    .end local v14           #referencePartWhere:Ljava/lang/String;
    .end local v17           #attachment:Lcom/htc/android/mail/Attachment;
    .end local v18           #attachmentList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/Attachment;>;"
    .end local v20           #b:Landroid/os/Bundle;
    .end local v21           #cid:Ljava/lang/String;
    .end local v22           #contenttype:I
    .end local v24           #fileName:Ljava/lang/String;
    .end local v25           #filePath:Ljava/lang/String;
    .end local v26           #globalMail:I
    .end local v29           #mimeType:Ljava/lang/String;
    .end local v32           #refCid:Ljava/lang/String;
    .end local v36           #relatedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/Attachment;>;"
    .end local v38           #text:Ljava/lang/String;
    .restart local v19       #b:Landroid/os/Bundle;
    :catchall_1
    move-exception v3

    goto/16 :goto_5

    .line 1169
    :catch_1
    move-exception v23

    goto/16 :goto_3
.end method

.method public static getOutboxMailCount(JLandroid/content/ContentResolver;)I
    .locals 10
    .parameter "accountId"
    .parameter "resolver"

    .prologue
    const/4 v8, 0x0

    .line 763
    const/4 v6, -0x1

    .line 764
    .local v6, count:I
    const/4 v7, 0x0

    .line 766
    .local v7, cursor:Landroid/database/Cursor;
    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    .line 767
    .local v2, proj:[Ljava/lang/String;
    const/4 v3, 0x0

    .line 768
    .local v3, where:Ljava/lang/String;
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "_account=%d AND _del=\'-1\' AND _mailboxId in (select _id from mailboxs where _account=%d AND _type=%d)"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v4, v5

    const/4 v5, 0x1

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v4, v5

    const/4 v5, 0x2

    const/4 v9, 0x6

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v4, v5

    invoke-static {v0, v1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 771
    sget-object v1, Lcom/htc/android/mail/MailProvider;->sMessagesURI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 772
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 777
    :cond_0
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 778
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    move v0, v8

    .line 781
    :goto_0
    return v0

    .line 775
    :cond_2
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    .line 777
    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_3

    .line 778
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    move v0, v6

    .line 781
    goto :goto_0

    .line 777
    .end local v2           #proj:[Ljava/lang/String;
    .end local v3           #where:Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_4

    .line 778
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 777
    :cond_4
    throw v0
.end method

.method public static getSendMailItem(Landroid/os/Bundle;Landroid/content/Context;)Lcom/htc/android/mail/eassvc/mail/MailSender$SendMailItem;
    .locals 21
    .parameter "args"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 935
    const-string v8, "account"

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 936
    .local v2, accountId:J
    const-string v8, "id"

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 937
    .local v6, messageId:J
    const-string v8, "mailboxId"

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 938
    .local v4, mailboxId:J
    sget-boolean v8, Lcom/htc/android/mail/eassvc/mail/MailSender;->DEBUG:Z

    if-eqz v8, :cond_0

    const-string v8, "MailSender"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "> getSendMailItem: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v8, v2, v3, v0}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 941
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-static/range {v2 .. v8}, Lcom/htc/android/mail/eassvc/mail/MailSender;->getOutMailBundle(JJJLandroid/content/ContentResolver;)Landroid/os/Bundle;

    move-result-object v9

    .line 942
    .local v9, bundle:Landroid/os/Bundle;
    if-nez v9, :cond_2

    .line 943
    const-string v8, "MailSender"

    const-string v19, "getSendMailItem: get out mail bundle is null."

    move-object/from16 v0, v19

    invoke-static {v8, v2, v3, v0}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 944
    const/16 v17, 0x0

    .line 1030
    :cond_1
    :goto_0
    return-object v17

    .line 948
    :cond_2
    invoke-static {v9}, Lcom/htc/android/mail/eassvc/mail/MailSender;->processOutMail(Landroid/os/Bundle;)Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;

    move-result-object v13

    .line 949
    .local v13, mailItem:Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;
    if-nez v13, :cond_3

    .line 950
    const-string v8, "MailSender"

    const-string v19, "getSendMailItem: preprocess out mail error."

    move-object/from16 v0, v19

    invoke-static {v8, v2, v3, v0}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;JLjava/lang/String;)V

    .line 951
    const/16 v17, 0x0

    goto :goto_0

    .line 955
    :cond_3
    new-instance v17, Lcom/htc/android/mail/eassvc/mail/MailSender$SendMailItem;

    invoke-direct/range {v17 .. v17}, Lcom/htc/android/mail/eassvc/mail/MailSender$SendMailItem;-><init>()V

    .line 956
    .local v17, sendMailItem:Lcom/htc/android/mail/eassvc/mail/MailSender$SendMailItem;
    const-string v8, "smartCommand"

    invoke-virtual {v9, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    .line 957
    .local v11, command:I
    const-string v8, "refMsgId"

    invoke-virtual {v9, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v14

    .line 958
    .local v14, refMsgId:J
    const-string v8, "globalMail"

    invoke-virtual {v9, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v12

    .line 959
    .local v12, globalMail:Z
    const-string v8, "MailSender"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "getSendMailItem: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v8, v2, v3, v0}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 960
    packed-switch v11, :pswitch_data_0

    .line 1024
    const-string v8, "MailSender"

    const-string v19, "getSendMailItem error: command error"

    move-object/from16 v0, v19

    invoke-static {v8, v2, v3, v0}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;JLjava/lang/String;)V

    .line 1025
    const/16 v17, 0x0

    .line 1029
    :goto_1
    sget-boolean v8, Lcom/htc/android/mail/eassvc/mail/MailSender;->DEBUG:Z

    if-eqz v8, :cond_1

    const-string v8, "MailSender"

    const-string v19, "< getSendMailItem"

    move-object/from16 v0, v19

    invoke-static {v8, v2, v3, v0}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    goto/16 :goto_0

    .line 968
    :pswitch_0
    const/4 v10, 0x0

    .line 969
    .local v10, collId:Ljava/lang/String;
    const/16 v18, 0x0

    .line 970
    .local v18, uid:Ljava/lang/String;
    invoke-static {v11}, Lcom/htc/android/mail/meeting/MeetingUtil;->isMeeting(I)Z

    move-result v8

    if-eqz v8, :cond_4

    const-wide/16 v19, 0x0

    cmp-long v8, v14, v19

    if-lez v8, :cond_4

    .line 971
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    .line 972
    .local v16, resolver:Landroid/content/ContentResolver;
    const/4 v8, 0x0

    move-object/from16 v0, v16

    invoke-static {v14, v15, v8, v0}, Lcom/htc/android/mail/database/ExchangeUtil;->getUidByMessageId(JZLandroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v18

    .line 975
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-static {v2, v3, v0, v1}, Lcom/htc/android/mail/database/ExchangeUtil;->getMailboxSvrIdFromTrackingTBL(JLjava/lang/String;Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v10

    .line 976
    move-object/from16 v0, v18

    iput-object v0, v13, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mUid:Ljava/lang/String;

    .line 977
    iput-object v10, v13, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mCollId:Ljava/lang/String;

    .line 978
    sget-boolean v8, Lcom/htc/android/mail/eassvc/mail/MailSender;->DEBUG:Z

    if-eqz v8, :cond_4

    const-string v8, "MailSender"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "getSendMailItem with meeting data: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v8, v2, v3, v0}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 980
    .end local v16           #resolver:Landroid/content/ContentResolver;
    :cond_4
    const/4 v8, 0x1

    iput v8, v13, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mCommand:I

    .line 982
    invoke-static {v11}, Lcom/htc/android/mail/meeting/MeetingUtil;->smartCommand2MeetingCmd(I)I

    move-result v8

    move-object/from16 v0, v17

    iput v8, v0, Lcom/htc/android/mail/eassvc/mail/MailSender$SendMailItem;->meetingResp:I

    .line 983
    move-object/from16 v0, v17

    iput-object v13, v0, Lcom/htc/android/mail/eassvc/mail/MailSender$SendMailItem;->sendItem:Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;

    goto :goto_1

    .line 988
    .end local v10           #collId:Ljava/lang/String;
    .end local v18           #uid:Ljava/lang/String;
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    .line 989
    .restart local v16       #resolver:Landroid/content/ContentResolver;
    move-object/from16 v0, v16

    invoke-static {v14, v15, v12, v0}, Lcom/htc/android/mail/database/ExchangeUtil;->getUidByMessageId(JZLandroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v18

    .line 990
    .restart local v18       #uid:Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-static {v14, v15, v12, v0}, Lcom/htc/android/mail/database/ExchangeUtil;->getMailboxSvrIdByMessageId(JZLandroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v10

    .line 991
    .restart local v10       #collId:Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 992
    :cond_5
    const-string v8, "MailSender"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "getSendMailItem(reply): mailbox svr id or uid is null: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v8, v2, v3, v0}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;JLjava/lang/String;)V

    .line 994
    :cond_6
    move-object/from16 v0, v18

    iput-object v0, v13, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mUid:Ljava/lang/String;

    .line 995
    iput-object v10, v13, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mCollId:Ljava/lang/String;

    .line 996
    const/4 v8, 0x2

    iput v8, v13, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mCommand:I

    .line 998
    invoke-static {v11}, Lcom/htc/android/mail/meeting/MeetingUtil;->smartCommand2MeetingCmd(I)I

    move-result v8

    move-object/from16 v0, v17

    iput v8, v0, Lcom/htc/android/mail/eassvc/mail/MailSender$SendMailItem;->meetingResp:I

    .line 999
    move-object/from16 v0, v17

    iput-object v13, v0, Lcom/htc/android/mail/eassvc/mail/MailSender$SendMailItem;->sendItem:Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;

    goto/16 :goto_1

    .line 1005
    .end local v10           #collId:Ljava/lang/String;
    .end local v16           #resolver:Landroid/content/ContentResolver;
    .end local v18           #uid:Ljava/lang/String;
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    .line 1006
    .restart local v16       #resolver:Landroid/content/ContentResolver;
    move-object/from16 v0, v16

    invoke-static {v14, v15, v12, v0}, Lcom/htc/android/mail/database/ExchangeUtil;->getUidByMessageId(JZLandroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v18

    .line 1007
    .restart local v18       #uid:Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-static {v14, v15, v12, v0}, Lcom/htc/android/mail/database/ExchangeUtil;->getMailboxSvrIdByMessageId(JZLandroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v10

    .line 1008
    .restart local v10       #collId:Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_7

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1009
    :cond_7
    const-string v8, "MailSender"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "getSendMailItem(forward): mailbox svr id or uid is null: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v8, v2, v3, v0}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;JLjava/lang/String;)V

    .line 1011
    :cond_8
    const/16 v8, 0x8

    if-ne v11, v8, :cond_9

    .line 1012
    const-string v8, "easMeetingOrganizer"

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v13, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mFrom:Ljava/lang/String;

    .line 1013
    const-string v8, "easMeetingSender"

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v13, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mSender:Ljava/lang/String;

    .line 1015
    :cond_9
    move-object/from16 v0, v18

    iput-object v0, v13, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mUid:Ljava/lang/String;

    .line 1016
    iput-object v10, v13, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mCollId:Ljava/lang/String;

    .line 1017
    const/4 v8, 0x3

    iput v8, v13, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mCommand:I

    .line 1019
    invoke-static {v11}, Lcom/htc/android/mail/meeting/MeetingUtil;->smartCommand2MeetingCmd(I)I

    move-result v8

    move-object/from16 v0, v17

    iput v8, v0, Lcom/htc/android/mail/eassvc/mail/MailSender$SendMailItem;->meetingResp:I

    .line 1020
    move-object/from16 v0, v17

    iput-object v13, v0, Lcom/htc/android/mail/eassvc/mail/MailSender$SendMailItem;->sendItem:Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;

    goto/16 :goto_1

    .line 960
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static getSendMeetingMailItem(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;JLandroid/content/Context;)Lcom/htc/android/mail/eassvc/mail/MailSender$SendMailItem;
    .locals 5
    .parameter "exSyncSources"
    .parameter "eventId"
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 912
    invoke-static {p0, p1, p2, p3}, Lcom/htc/android/mail/meeting/MeetingUtil;->getMeetingInvitationData(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;JLandroid/content/Context;)Lcom/htc/android/mail/meeting/MeetingRequest;

    move-result-object v1

    .line 913
    .local v1, request:Lcom/htc/android/mail/meeting/MeetingRequest;
    if-nez v1, :cond_1

    .line 914
    sget-boolean v3, Lcom/htc/android/mail/eassvc/mail/MailSender;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "MailSender"

    const-string v4, "getSendMeetingMailItem: request null, delete record"

    invoke-static {v3, p0, v4}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/String;)V

    .line 915
    :cond_0
    iget-object v3, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mailSyncSource:Lcom/htc/android/mail/eassvc/core/MailSyncSource;

    invoke-virtual {v3, p1, p2}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->deleteMeetingMailRecord(J)V

    .line 927
    :goto_0
    return-object v2

    .line 919
    :cond_1
    invoke-static {v1, p3}, Lcom/htc/android/mail/eassvc/mail/MailSender;->processOutMeetingInvitationMail(Lcom/htc/android/mail/meeting/MeetingRequest;Landroid/content/Context;)Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;

    move-result-object v0

    .line 920
    .local v0, easSendItem:Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;
    if-nez v0, :cond_2

    .line 921
    const-string v3, "MailSender"

    const-string v4, "getSendMeetingMailItem: easSendItem null"

    invoke-static {v3, p0, v4}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/String;)V

    goto :goto_0

    .line 924
    :cond_2
    new-instance v2, Lcom/htc/android/mail/eassvc/mail/MailSender$SendMailItem;

    invoke-direct {v2}, Lcom/htc/android/mail/eassvc/mail/MailSender$SendMailItem;-><init>()V

    .line 925
    .local v2, sendItem:Lcom/htc/android/mail/eassvc/mail/MailSender$SendMailItem;
    const/4 v3, 0x6

    iput v3, v2, Lcom/htc/android/mail/eassvc/mail/MailSender$SendMailItem;->meetingResp:I

    .line 926
    iput-object v0, v2, Lcom/htc/android/mail/eassvc/mail/MailSender$SendMailItem;->sendItem:Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;

    goto :goto_0
.end method

.method public static getSentFailedMail(JILandroid/content/ContentResolver;)[Ljava/lang/Long;
    .locals 12
    .parameter "accountId"
    .parameter "retryCondition"
    .parameter "resolver"

    .prologue
    .line 728
    const/4 v9, 0x0

    .line 729
    .local v9, unSendList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v6, 0x0

    .line 731
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    .line 732
    .local v2, proj:[Ljava/lang/String;
    const/4 v3, 0x0

    .line 733
    .local v3, where:Ljava/lang/String;
    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    .line 734
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "_account=%d AND _del=\'-1\' AND _retryCount!=%d AND _done=1 AND _mailboxId in (select _id from mailboxs where _account=%d AND _type=%d)"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v4, v5

    const/4 v5, 0x1

    sget v11, Lcom/htc/android/mail/ComposeActivity;->RETRY_COUNT:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v4, v5

    const/4 v5, 0x2

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v4, v5

    const/4 v5, 0x3

    const/4 v11, 0x6

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v4, v5

    invoke-static {v0, v1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 743
    :goto_0
    sget-object v1, Lcom/htc/android/mail/MailProvider;->sMessagesURI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "_id desc"

    move-object v0, p3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 744
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_3

    .line 745
    :cond_0
    const/4 v0, 0x0

    .line 754
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 755
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 756
    const/4 v6, 0x0

    .line 759
    :cond_1
    :goto_1
    return-object v0

    .line 739
    :cond_2
    :try_start_1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "_account=%d AND _del=\'-1\' AND _retryCount=0 AND _done=1 AND _mailboxId in (select _id from mailboxs where _account=%d AND _type=%d)"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v4, v5

    const/4 v5, 0x1

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v4, v5

    const/4 v5, 0x2

    const/4 v11, 0x6

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v4, v5

    invoke-static {v0, v1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 748
    :cond_3
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 750
    .end local v9           #unSendList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .local v10, unSendList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_4
    const/4 v0, 0x0

    :try_start_2
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 751
    .local v7, id:J
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, v7, v8}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 752
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v0

    if-nez v0, :cond_4

    .line 754
    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_5

    .line 755
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 756
    const/4 v6, 0x0

    .line 759
    :cond_5
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Long;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Long;

    move-object v9, v10

    .end local v10           #unSendList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v9       #unSendList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    goto :goto_1

    .line 754
    .end local v2           #proj:[Ljava/lang/String;
    .end local v3           #where:Ljava/lang/String;
    .end local v7           #id:J
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v6, :cond_6

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_6

    .line 755
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 756
    const/4 v6, 0x0

    .line 754
    :cond_6
    throw v0

    .end local v9           #unSendList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v2       #proj:[Ljava/lang/String;
    .restart local v3       #where:Ljava/lang/String;
    .restart local v10       #unSendList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :catchall_1
    move-exception v0

    move-object v9, v10

    .end local v10           #unSendList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v9       #unSendList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    goto :goto_2
.end method

.method public static getUnSendMail(JLandroid/content/ContentResolver;)[Ljava/lang/Long;
    .locals 12
    .parameter "accountId"
    .parameter "resolver"

    .prologue
    .line 700
    const/4 v9, 0x0

    .line 701
    .local v9, unSendList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v6, 0x0

    .line 703
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    .line 704
    .local v2, proj:[Ljava/lang/String;
    const/4 v3, 0x0

    .line 705
    .local v3, where:Ljava/lang/String;
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "_account=%d AND _del=\'-1\' AND _retryCount>0 AND _done=1 AND _mailboxId in (select _id from mailboxs where _account=%d AND _type=%d)"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v4, v5

    const/4 v5, 0x1

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v4, v5

    const/4 v5, 0x2

    const/4 v11, 0x6

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v4, v5

    invoke-static {v0, v1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 708
    sget-object v1, Lcom/htc/android/mail/MailProvider;->sMessagesURI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "_id desc"

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 709
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 710
    :cond_0
    const/4 v0, 0x0

    .line 719
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 720
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 721
    const/4 v6, 0x0

    .line 724
    :cond_1
    :goto_0
    return-object v0

    .line 713
    :cond_2
    :try_start_1
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 715
    .end local v9           #unSendList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .local v10, unSendList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_3
    const/4 v0, 0x0

    :try_start_2
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 716
    .local v7, id:J
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, v7, v8}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 717
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v0

    if-nez v0, :cond_3

    .line 719
    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_4

    .line 720
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 721
    const/4 v6, 0x0

    .line 724
    :cond_4
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Long;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Long;

    move-object v9, v10

    .end local v10           #unSendList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v9       #unSendList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    goto :goto_0

    .line 719
    .end local v2           #proj:[Ljava/lang/String;
    .end local v3           #where:Ljava/lang/String;
    .end local v7           #id:J
    :catchall_0
    move-exception v0

    :goto_1
    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_5

    .line 720
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 721
    const/4 v6, 0x0

    .line 719
    :cond_5
    throw v0

    .end local v9           #unSendList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v2       #proj:[Ljava/lang/String;
    .restart local v3       #where:Ljava/lang/String;
    .restart local v10       #unSendList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :catchall_1
    move-exception v0

    move-object v9, v10

    .end local v10           #unSendList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v9       #unSendList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    goto :goto_1
.end method

.method private includeAttach(Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;)Z
    .locals 11
    .parameter "attach"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v7, 0x1770

    .line 266
    sget-boolean v8, Lcom/htc/android/mail/eassvc/mail/MailSender;->DEBUG:Z

    if-eqz v8, :cond_0

    const-string v8, "MailSender"

    iget-object v9, p0, Lcom/htc/android/mail/eassvc/mail/MailSender;->mExSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    const-string v10, "> includeAttach"

    invoke-static {v8, v9, v10}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/String;)V

    .line 268
    :cond_0
    iget-object v6, p1, Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;->attachMimeType:Ljava/lang/String;

    .line 269
    .local v6, type:Ljava/lang/String;
    const-string v8, "Content-Type: text/calendar; charset=\"utf-8\"; method=REQUEST"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    const-string v8, "Content-Type: text/calendar; charset=\"utf-8\"; method=REPLY"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    const-string v8, "Content-Type: text/calendar; charset=\"utf-8\"; method=COUNTER"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 273
    iget-object v1, p1, Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;->attachName:Ljava/lang/String;

    .line 276
    .local v1, filename:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-direct {p0, v8, v9}, Lcom/htc/android/mail/eassvc/mail/MailSender;->writeSendMailBody(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    const-string v8, "Content-Transfer-Encoding: "

    const-string v9, "base64"

    invoke-direct {p0, v8, v9}, Lcom/htc/android/mail/eassvc/mail/MailSender;->writeSendMailBody(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    const-string v8, "Content-Disposition: "

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "attachment;\r\n\tfilename=\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v8, v9}, Lcom/htc/android/mail/eassvc/mail/MailSender;->writeSendMailBody(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    const-string v8, ""

    const-string v9, ""

    invoke-direct {p0, v8, v9}, Lcom/htc/android/mail/eassvc/mail/MailSender;->writeSendMailBody(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const/4 v2, 0x0

    .line 289
    .local v2, fis:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    iget-object v8, p1, Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;->attachPath:Ljava/lang/String;

    invoke-direct {v3, v8}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 290
    .end local v2           #fis:Ljava/io/FileInputStream;
    .local v3, fis:Ljava/io/FileInputStream;
    :goto_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->available()I

    move-result v8

    if-lez v8, :cond_3

    .line 291
    invoke-virtual {v3}, Ljava/io/FileInputStream;->available()I

    move-result v8

    if-le v8, v7, :cond_2

    move v4, v7

    .line 292
    .local v4, size:I
    :goto_1
    new-array v5, v4, [B

    .line 293
    .local v5, temp:[B
    invoke-virtual {v3, v5}, Ljava/io/FileInputStream;->read([B)I

    .line 294
    invoke-static {v5}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([B)[B

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/htc/android/mail/eassvc/mail/MailSender;->writeSendMailAttachment([B)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 297
    .end local v4           #size:I
    .end local v5           #temp:[B
    :catchall_0
    move-exception v7

    move-object v2, v3

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    :goto_2
    if-eqz v2, :cond_1

    .line 299
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 297
    :cond_1
    :goto_3
    throw v7

    .line 291
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :cond_2
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->available()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v4

    goto :goto_1

    .line 297
    :cond_3
    if-eqz v3, :cond_4

    .line 299
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 306
    :cond_4
    :goto_4
    const-string v7, "\r\n"

    const-string v8, ""

    invoke-direct {p0, v7, v8}, Lcom/htc/android/mail/eassvc/mail/MailSender;->writeSendMailBody(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    .end local v1           #filename:Ljava/lang/String;
    .end local v3           #fis:Ljava/io/FileInputStream;
    :goto_5
    sget-boolean v7, Lcom/htc/android/mail/eassvc/mail/MailSender;->DEBUG:Z

    if-eqz v7, :cond_5

    const-string v7, "MailSender"

    iget-object v8, p0, Lcom/htc/android/mail/eassvc/mail/MailSender;->mExSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    const-string v9, "< includeAttach"

    invoke-static {v7, v8, v9}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/String;)V

    .line 346
    :cond_5
    const/4 v7, 0x1

    return v7

    .line 311
    :cond_6
    sget-boolean v8, Lcom/htc/android/mail/eassvc/mail/MailSender;->DEBUG:Z

    if-eqz v8, :cond_7

    const-string v8, "MailSender"

    iget-object v9, p0, Lcom/htc/android/mail/eassvc/mail/MailSender;->mExSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    const-string v10, "includeAttach: meeting"

    invoke-static {v8, v9, v10}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/String;)V

    .line 314
    :cond_7
    const-string v8, ""

    invoke-direct {p0, v6, v8}, Lcom/htc/android/mail/eassvc/mail/MailSender;->writeSendMailBody(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    const-string v8, "Content-Transfer-Encoding: "

    const-string v9, "base64"

    invoke-direct {p0, v8, v9}, Lcom/htc/android/mail/eassvc/mail/MailSender;->writeSendMailBody(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    const-string v8, ""

    const-string v9, ""

    invoke-direct {p0, v8, v9}, Lcom/htc/android/mail/eassvc/mail/MailSender;->writeSendMailBody(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    iget-object v8, p1, Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;->attachPath:Ljava/lang/String;

    if-eqz v8, :cond_c

    .line 320
    const/4 v2, 0x0

    .line 322
    .restart local v2       #fis:Ljava/io/FileInputStream;
    :try_start_5
    new-instance v3, Ljava/io/FileInputStream;

    iget-object v8, p1, Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;->attachPath:Ljava/lang/String;

    invoke-direct {v3, v8}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 323
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :goto_6
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->available()I

    move-result v8

    if-lez v8, :cond_a

    .line 324
    invoke-virtual {v3}, Ljava/io/FileInputStream;->available()I

    move-result v8

    if-le v8, v7, :cond_9

    move v4, v7

    .line 325
    .restart local v4       #size:I
    :goto_7
    new-array v5, v4, [B

    .line 326
    .restart local v5       #temp:[B
    invoke-virtual {v3, v5}, Ljava/io/FileInputStream;->read([B)I

    .line 327
    invoke-static {v5}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([B)[B

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/htc/android/mail/eassvc/mail/MailSender;->writeSendMailAttachment([B)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_6

    .line 330
    .end local v4           #size:I
    .end local v5           #temp:[B
    :catchall_1
    move-exception v7

    move-object v2, v3

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    :goto_8
    if-eqz v2, :cond_8

    .line 332
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 330
    :cond_8
    :goto_9
    throw v7

    .line 324
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :cond_9
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileInputStream;->available()I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result v4

    goto :goto_7

    .line 330
    :cond_a
    if-eqz v3, :cond_b

    .line 332
    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    .line 339
    :cond_b
    :goto_a
    const-string v7, "\r\n"

    const-string v8, ""

    invoke-direct {p0, v7, v8}, Lcom/htc/android/mail/eassvc/mail/MailSender;->writeSendMailBody(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 341
    .end local v3           #fis:Ljava/io/FileInputStream;
    :cond_c
    iget-object v7, p1, Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;->attachContent:[B

    invoke-static {v7}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64Chunked([B)[B

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/htc/android/mail/eassvc/mail/MailSender;->writeSendMailAttachment([B)Z

    goto :goto_5

    .line 300
    .restart local v1       #filename:Ljava/lang/String;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    :catch_0
    move-exception v0

    .line 301
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 300
    .end local v0           #e:Ljava/lang/Exception;
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :catch_1
    move-exception v0

    .line 301
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4

    .line 333
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #filename:Ljava/lang/String;
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    :catch_2
    move-exception v0

    .line 334
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9

    .line 333
    .end local v0           #e:Ljava/lang/Exception;
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :catch_3
    move-exception v0

    .line 334
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a

    .line 330
    .end local v0           #e:Ljava/lang/Exception;
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    :catchall_2
    move-exception v7

    goto :goto_8

    .line 297
    .restart local v1       #filename:Ljava/lang/String;
    :catchall_3
    move-exception v7

    goto/16 :goto_2
.end method

.method private includeRelatedAttach(Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;)V
    .locals 12
    .parameter "attach"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 202
    sget-boolean v9, Lcom/htc/android/mail/eassvc/mail/MailSender;->DEBUG:Z

    if-eqz v9, :cond_0

    const-string v9, "MailSender"

    iget-object v10, p0, Lcom/htc/android/mail/eassvc/mail/MailSender;->mExSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    const-string v11, "> includeRelatedAttach"

    invoke-static {v9, v10, v11}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/String;)V

    .line 203
    :cond_0
    if-nez p1, :cond_2

    .line 262
    :cond_1
    :goto_0
    return-void

    .line 206
    :cond_2
    iget-object v7, p1, Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;->attachPath:Ljava/lang/String;

    .line 207
    .local v7, path:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 210
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 211
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 215
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 217
    .local v3, fis:Ljava/io/FileInputStream;
    :try_start_0
    iget-object v9, p1, Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;->attachName:Ljava/lang/String;

    const-string v10, "utf-8"

    invoke-virtual {v9, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    invoke-static {v9}, Lcom/htc/android/mail/Util;->needEncode([B)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 218
    const-string v9, "Content-Type: "

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p1, Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;->attachMimeType:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ";\r\n\tname="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p1, Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;->attachMimeType:Ljava/lang/String;

    invoke-static {v11}, Lcom/htc/android/mail/server/SmtpServer;->rfc2047Base64Encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v9, v10}, Lcom/htc/android/mail/eassvc/mail/MailSender;->writeSendMailBody(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    const-string v9, "Content-Disposition: "

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "inline;\r\n\tfilename=\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p1, Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;->attachName:Ljava/lang/String;

    invoke-static {v11}, Lcom/htc/android/mail/server/SmtpServer;->rfc2047Base64Encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v9, v10}, Lcom/htc/android/mail/eassvc/mail/MailSender;->writeSendMailBody(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    :goto_1
    if-eqz p1, :cond_3

    .line 226
    const-string v9, "Content-ID: "

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "<"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p1, Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;->cid:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ">"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v9, v10}, Lcom/htc/android/mail/eassvc/mail/MailSender;->writeSendMailBody(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    :cond_3
    const-string v9, "Content-Transfer-Encoding: "

    const-string v10, "base64"

    invoke-direct {p0, v9, v10}, Lcom/htc/android/mail/eassvc/mail/MailSender;->writeSendMailBody(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    const-string v9, ""

    const-string v10, ""

    invoke-direct {p0, v9, v10}, Lcom/htc/android/mail/eassvc/mail/MailSender;->writeSendMailBody(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    sget v6, Lcom/htc/android/mail/server/ImapServer;->ONETIME_ENCODE_SIZE:I

    .line 234
    .local v6, oneTime:I
    new-array v0, v6, [B

    .line 237
    .local v0, content:[B
    const/4 v4, 0x0

    .line 238
    .local v4, i:I
    :goto_2
    const/4 v9, 0x0

    invoke-virtual {v3, v0, v9, v6}, Ljava/io/FileInputStream;->read([BII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 239
    .local v8, size:I
    const/4 v9, -0x1

    if-ne v8, v9, :cond_7

    .line 250
    const/4 v0, 0x0

    .line 256
    if-eqz v3, :cond_4

    .line 257
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 261
    :cond_4
    sget-boolean v9, Lcom/htc/android/mail/eassvc/mail/MailSender;->DEBUG:Z

    if-eqz v9, :cond_1

    const-string v9, "MailSender"

    iget-object v10, p0, Lcom/htc/android/mail/eassvc/mail/MailSender;->mExSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    const-string v11, "< includeRelatedAttach"

    invoke-static {v9, v10, v11}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 221
    .end local v0           #content:[B
    .end local v4           #i:I
    .end local v6           #oneTime:I
    .end local v8           #size:I
    :cond_5
    :try_start_1
    const-string v9, "Content-Type: "

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p1, Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;->attachMimeType:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ";\r\n\tname="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p1, Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;->attachMimeType:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v9, v10}, Lcom/htc/android/mail/eassvc/mail/MailSender;->writeSendMailBody(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    const-string v9, "Content-Disposition: "

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "inline;\r\n\tfilename=\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p1, Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;->attachName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v9, v10}, Lcom/htc/android/mail/eassvc/mail/MailSender;->writeSendMailBody(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 252
    :catch_0
    move-exception v1

    .line 253
    .local v1, e:Ljava/lang/OutOfMemoryError;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 254
    new-instance v9, Ljava/lang/OutOfMemoryError;

    invoke-direct {v9}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 256
    .end local v1           #e:Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v9

    if-eqz v3, :cond_6

    .line 257
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 256
    :cond_6
    throw v9

    .line 242
    .restart local v0       #content:[B
    .restart local v4       #i:I
    .restart local v6       #oneTime:I
    .restart local v8       #size:I
    :cond_7
    if-ne v8, v6, :cond_8

    .line 243
    :try_start_3
    invoke-static {v0}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64Chunked([B)[B

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/htc/android/mail/eassvc/mail/MailSender;->writeSendMailAttachment([B)Z

    .line 237
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    .line 245
    :cond_8
    new-array v5, v8, [B

    .line 246
    .local v5, lessContent:[B
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v0, v9, v5, v10, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 247
    invoke-static {v5}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64Chunked([B)[B

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/htc/android/mail/eassvc/mail/MailSender;->writeSendMailAttachment([B)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3
.end method

.method private isNeedSendAttachment(ILjava/util/ArrayList;)Z
    .locals 2
    .parameter "command"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;>;"
    const/4 v0, 0x0

    .line 622
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/mail/MailSender;->mSendItem:Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;

    iget-object v1, v1, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mArrachmentList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/mail/MailSender;->mSendItem:Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;

    iget-object v1, v1, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mArrachmentList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 630
    :cond_0
    :goto_0
    return v0

    .line 626
    :cond_1
    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/mail/MailSender;->mSendItem:Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;

    invoke-virtual {v1}, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->containLocalAttachments()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 628
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isNeedSendRelatedAttachment(ILjava/util/ArrayList;)Z
    .locals 2
    .parameter "command"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;>;"
    const/4 v0, 0x1

    .line 634
    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 637
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static processOutMail(Landroid/os/Bundle;)Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;
    .locals 35
    .parameter "args"

    .prologue
    .line 1244
    sget-boolean v31, Lcom/htc/android/mail/eassvc/mail/MailSender;->DEBUG:Z

    if-eqz v31, :cond_0

    const-string v31, "MailSender"

    const-string v32, "> preprocessOutMail"

    invoke-static/range {v31 .. v32}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1245
    :cond_0
    if-nez p0, :cond_2

    .line 1246
    const-string v31, "MailSender"

    const-string v32, "preprocessOutMail error #1"

    invoke-static/range {v31 .. v32}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1247
    const/16 v26, 0x0

    .line 1495
    :cond_1
    :goto_0
    return-object v26

    .line 1250
    :cond_2
    new-instance v26, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;

    invoke-direct/range {v26 .. v26}, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;-><init>()V

    .line 1251
    .local v26, sendItem:Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;
    const-string v31, "smartCommand"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v28

    .line 1252
    .local v28, smartCommand:I
    const-string v31, "id"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v31

    move-wide/from16 v0, v31

    move-object/from16 v2, v26

    iput-wide v0, v2, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mMessageId:J

    .line 1253
    const-string v31, "globalMail"

    const/16 v32, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, v26

    iput-boolean v0, v1, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mGlobalMail:Z

    .line 1254
    const-string v31, "FromSearchSvrMailView"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    .line 1259
    .local v11, globalMail:Z
    const-string v31, "subject"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 1261
    .local v29, subject:Ljava/lang/String;
    :try_start_0
    invoke-static/range {v29 .. v29}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v31

    if-nez v31, :cond_a

    const-string v31, "utf-8"

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v31

    invoke-static/range {v31 .. v31}, Lcom/htc/android/mail/Util;->needEncode([B)Z

    move-result v31

    if-eqz v31, :cond_a

    .line 1265
    invoke-static/range {v29 .. v29}, Lcom/htc/android/mail/server/SmtpServer;->rfc2047SegmentedBase64Encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mSubject:Ljava/lang/String;

    .line 1266
    sget-boolean v31, Lcom/htc/android/mail/eassvc/mail/MailSender;->DEBUG:Z

    if-eqz v31, :cond_3

    const-string v31, "MailSender"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "subject encode: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mSubject:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1278
    :cond_3
    :goto_1
    const-string v31, "to"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 1279
    .local v30, to:Ljava/lang/String;
    const-string v31, "cc"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1280
    .local v7, cc:Ljava/lang/String;
    const-string v31, "bcc"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1281
    .local v5, bcc:Ljava/lang/String;
    invoke-static/range {v30 .. v30}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v31

    if-nez v31, :cond_4

    .line 1283
    invoke-static/range {v30 .. v30}, Lcom/htc/android/mail/server/SmtpServer;->multiEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mTo:Ljava/lang/String;

    .line 1285
    :cond_4
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v31

    if-nez v31, :cond_5

    .line 1287
    invoke-static {v7}, Lcom/htc/android/mail/server/SmtpServer;->multiEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mCc:Ljava/lang/String;

    .line 1289
    :cond_5
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v31

    if-nez v31, :cond_6

    .line 1291
    invoke-static {v5}, Lcom/htc/android/mail/server/SmtpServer;->multiEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mBcc:Ljava/lang/String;

    .line 1297
    :cond_6
    const-string v31, "htmlBody"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1298
    .local v15, htmlBodyText:Ljava/lang/String;
    const-string v31, "plainBody"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 1300
    .local v23, plainBodyText:Ljava/lang/String;
    const-string v10, ""

    .line 1301
    .local v10, editText:Ljava/lang/String;
    const-string v12, ""

    .line 1302
    .local v12, headerText:Ljava/lang/String;
    const/4 v14, 0x1

    .line 1303
    .local v14, htmlBodyExist:Z
    if-eqz v15, :cond_7

    .line 1304
    const-string v31, "<!-- HTC Mail Separation -->"

    move-object/from16 v0, v31

    invoke-virtual {v15, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 1305
    .local v13, html:[Ljava/lang/String;
    array-length v0, v13

    move/from16 v31, v0

    const/16 v32, 0x3

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_b

    .line 1306
    const/16 v31, 0x0

    aget-object v10, v13, v31

    .line 1307
    const/16 v31, 0x1

    aget-object v12, v13, v31

    .line 1308
    const/16 v31, 0x2

    aget-object v15, v13, v31

    .line 1323
    .end local v13           #html:[Ljava/lang/String;
    :cond_7
    :goto_2
    if-eqz v23, :cond_8

    .line 1324
    const/4 v14, 0x0

    .line 1325
    const-string v31, "<!-- HTC Mail Separation -->"

    move-object/from16 v0, v23

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v22

    .line 1326
    .local v22, plain:[Ljava/lang/String;
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v31, v0

    const/16 v32, 0x3

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_f

    .line 1327
    const/16 v31, 0x0

    aget-object v10, v22, v31

    .line 1328
    const/16 v31, 0x1

    aget-object v12, v22, v31

    .line 1329
    const/16 v31, 0x2

    aget-object v23, v22, v31

    .line 1345
    .end local v22           #plain:[Ljava/lang/String;
    :cond_8
    :goto_3
    if-nez v14, :cond_15

    .line 1357
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v32, 0x1

    move/from16 v0, v32

    invoke-static {v10, v0}, Lcom/htc/android/mail/MailTextUtils;->addArabicAlign(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lcom/htc/android/mail/MailCommon;->fnParseHTMLLink(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    const-string v33, "\n"

    const-string v34, "<br>"

    invoke-virtual/range {v32 .. v34}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "<br><br>"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mBody:Ljava/lang/String;

    .line 1358
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v12}, Lcom/htc/android/mail/MailTextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    const-string v33, "\n"

    const-string v34, "<br>"

    invoke-virtual/range {v32 .. v34}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v31, ""

    move-object/from16 v0, v31

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_13

    const-string v31, ""

    :goto_4
    move-object/from16 v0, v32

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mHeaderHtml:Ljava/lang/String;

    .line 1359
    invoke-static/range {v23 .. v23}, Lcom/htc/android/mail/MailTextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    const-string v32, "\n"

    const-string v33, "<br>"

    invoke-virtual/range {v31 .. v33}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mBackupOriginalBody:Ljava/lang/String;

    .line 1361
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v31

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "\n\n"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mPlainBody:Ljava/lang/String;

    .line 1362
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v31

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v31, ""

    move-object/from16 v0, v31

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_14

    const-string v31, ""

    :goto_5
    move-object/from16 v0, v32

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mHeaderPlain:Ljava/lang/String;

    .line 1363
    move-object/from16 v0, v23

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mBuackupOriginalPlainBody:Ljava/lang/String;

    .line 1391
    :cond_9
    :goto_6
    const-string v31, "importance"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v18

    .line 1392
    .local v18, importance:I
    packed-switch v18, :pswitch_data_0

    .line 1403
    const-string v31, "Normal"

    move-object/from16 v0, v31

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mImportance:Ljava/lang/String;

    .line 1410
    :goto_7
    const-string v31, "attachment"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 1411
    .local v4, attachmentList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/Attachment;>;"
    if-eqz v4, :cond_18

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v31

    if-lez v31, :cond_18

    .line 1412
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :goto_8
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_18

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/android/mail/Attachment;

    .line 1413
    .local v3, attachment:Lcom/htc/android/mail/Attachment;
    new-instance v9, Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;

    invoke-direct {v9}, Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;-><init>()V

    .line 1414
    .local v9, easAttach:Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;
    iget-boolean v0, v3, Lcom/htc/android/mail/Attachment;->fromServer:Z

    move/from16 v31, v0

    move/from16 v0, v31

    iput-boolean v0, v9, Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;->fromServer:Z

    .line 1415
    iget-object v0, v3, Lcom/htc/android/mail/Attachment;->attachName:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iput-object v0, v9, Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;->attachName:Ljava/lang/String;

    .line 1416
    iget-object v0, v3, Lcom/htc/android/mail/Attachment;->attachPath:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iput-object v0, v9, Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;->attachPath:Ljava/lang/String;

    .line 1417
    const-string v31, "Content-Type: application/octet-stream;\r\n\tname="

    move-object/from16 v0, v31

    iput-object v0, v9, Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;->attachMimeType:Ljava/lang/String;

    .line 1418
    const-wide/16 v31, 0x1

    move-wide/from16 v0, v31

    iput-wide v0, v9, Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;->attachContentSize:J

    .line 1419
    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [B

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iput-object v0, v9, Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;->attachContent:[B

    .line 1421
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mArrachmentList:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 1268
    .end local v3           #attachment:Lcom/htc/android/mail/Attachment;
    .end local v4           #attachmentList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/Attachment;>;"
    .end local v5           #bcc:Ljava/lang/String;
    .end local v7           #cc:Ljava/lang/String;
    .end local v9           #easAttach:Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;
    .end local v10           #editText:Ljava/lang/String;
    .end local v12           #headerText:Ljava/lang/String;
    .end local v14           #htmlBodyExist:Z
    .end local v15           #htmlBodyText:Ljava/lang/String;
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v18           #importance:I
    .end local v23           #plainBodyText:Ljava/lang/String;
    .end local v30           #to:Ljava/lang/String;
    :cond_a
    :try_start_1
    move-object/from16 v0, v29

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mSubject:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 1270
    :catch_0
    move-exception v8

    .line 1271
    .local v8, e:Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 1272
    move-object/from16 v0, v29

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mSubject:Ljava/lang/String;

    goto/16 :goto_1

    .line 1309
    .end local v8           #e:Ljava/lang/Exception;
    .restart local v5       #bcc:Ljava/lang/String;
    .restart local v7       #cc:Ljava/lang/String;
    .restart local v10       #editText:Ljava/lang/String;
    .restart local v12       #headerText:Ljava/lang/String;
    .restart local v13       #html:[Ljava/lang/String;
    .restart local v14       #htmlBodyExist:Z
    .restart local v15       #htmlBodyText:Ljava/lang/String;
    .restart local v23       #plainBodyText:Ljava/lang/String;
    .restart local v30       #to:Ljava/lang/String;
    :cond_b
    array-length v0, v13

    move/from16 v31, v0

    const/16 v32, 0x2

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_c

    .line 1310
    const/16 v31, 0x0

    aget-object v10, v13, v31

    .line 1311
    const/16 v31, 0x1

    aget-object v12, v13, v31

    .line 1312
    const-string v15, ""

    goto/16 :goto_2

    .line 1313
    :cond_c
    array-length v0, v13

    move/from16 v31, v0

    if-nez v31, :cond_d

    .line 1314
    const-string v10, ""

    .line 1315
    const-string v12, ""

    .line 1316
    const-string v15, ""

    goto/16 :goto_2

    .line 1317
    :cond_d
    array-length v0, v13

    move/from16 v31, v0

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_7

    .line 1318
    const-string v10, ""

    .line 1319
    const-string v12, ""

    .line 1320
    const/16 v31, 0x0

    aget-object v31, v13, v31

    if-eqz v31, :cond_e

    const/16 v31, 0x0

    aget-object v31, v13, v31

    const-string v32, "<!-- HTC Mail Separation -->"

    const-string v33, ""

    invoke-virtual/range {v31 .. v33}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v15

    :goto_9
    goto/16 :goto_2

    :cond_e
    const-string v15, ""

    goto :goto_9

    .line 1330
    .end local v13           #html:[Ljava/lang/String;
    .restart local v22       #plain:[Ljava/lang/String;
    :cond_f
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v31, v0

    const/16 v32, 0x2

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_10

    .line 1331
    const/16 v31, 0x0

    aget-object v10, v22, v31

    .line 1332
    const/16 v31, 0x1

    aget-object v12, v22, v31

    .line 1333
    const-string v23, ""

    goto/16 :goto_3

    .line 1334
    :cond_10
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v31, v0

    if-nez v31, :cond_11

    .line 1335
    const-string v10, ""

    .line 1336
    const-string v12, ""

    .line 1337
    const-string v23, ""

    goto/16 :goto_3

    .line 1338
    :cond_11
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v31, v0

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_8

    .line 1339
    const/16 v31, 0x0

    aget-object v31, v22, v31

    if-eqz v31, :cond_12

    const/16 v31, 0x0

    aget-object v31, v22, v31

    const-string v32, "<!-- HTC Mail Separation -->"

    const-string v33, ""

    invoke-virtual/range {v31 .. v33}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 1340
    :goto_a
    const-string v12, ""

    .line 1341
    const-string v23, ""

    goto/16 :goto_3

    .line 1339
    :cond_12
    const-string v10, ""

    goto :goto_a

    .line 1358
    .end local v22           #plain:[Ljava/lang/String;
    :cond_13
    const-string v31, "<br><br>"

    goto/16 :goto_4

    .line 1362
    :cond_14
    const-string v31, "\n\n"

    goto/16 :goto_5

    .line 1364
    :cond_15
    if-eqz v14, :cond_9

    if-eqz v15, :cond_9

    .line 1370
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1371
    .local v6, bodyHeader:Ljava/lang/StringBuilder;
    invoke-static {v15, v6}, Lcom/htc/android/mail/ComposeActivity;->stripBody(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v15

    .line 1379
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const/16 v32, 0x1

    move/from16 v0, v32

    invoke-static {v10, v0}, Lcom/htc/android/mail/MailTextUtils;->addArabicAlign(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lcom/htc/android/mail/MailCommon;->fnParseHTMLLink(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    const-string v33, "\n"

    const-string v34, "<br>"

    invoke-virtual/range {v32 .. v34}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "<br><br>"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mBody:Ljava/lang/String;

    .line 1380
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v31

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v31, ""

    move-object/from16 v0, v31

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_16

    const-string v31, ""

    :goto_b
    move-object/from16 v0, v32

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mHeaderHtml:Ljava/lang/String;

    .line 1381
    move-object/from16 v0, v26

    iput-object v15, v0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mBackupOriginalBody:Ljava/lang/String;

    .line 1383
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v31

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "\n\n"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mPlainBody:Ljava/lang/String;

    .line 1384
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "<br>"

    const-string v33, "\n"

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-virtual {v12, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lcom/htc/android/mail/MailCommon;->converHTMLtoPlainText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v31, ""

    move-object/from16 v0, v31

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_17

    const-string v31, ""

    :goto_c
    move-object/from16 v0, v32

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mHeaderPlain:Ljava/lang/String;

    .line 1385
    const-string v31, "<br>"

    const-string v32, "\n"

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Lcom/htc/android/mail/MailCommon;->converHTMLtoPlainText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mBuackupOriginalPlainBody:Ljava/lang/String;

    goto/16 :goto_6

    .line 1380
    :cond_16
    const-string v31, "<br><br>"

    goto/16 :goto_b

    .line 1384
    :cond_17
    const-string v31, "\n\n"

    goto :goto_c

    .line 1394
    .end local v6           #bodyHeader:Ljava/lang/StringBuilder;
    .restart local v18       #importance:I
    :pswitch_0
    const-string v31, "Low"

    move-object/from16 v0, v31

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mImportance:Ljava/lang/String;

    goto/16 :goto_7

    .line 1397
    :pswitch_1
    const-string v31, "Normal"

    move-object/from16 v0, v31

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mImportance:Ljava/lang/String;

    goto/16 :goto_7

    .line 1400
    :pswitch_2
    const-string v31, "High"

    move-object/from16 v0, v31

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mImportance:Ljava/lang/String;

    goto/16 :goto_7

    .line 1428
    .restart local v4       #attachmentList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/Attachment;>;"
    :cond_18
    const-string v31, "related"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v25

    check-cast v25, Ljava/util/ArrayList;

    .line 1429
    .local v25, relatedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/Attachment;>;"
    if-eqz v25, :cond_19

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v31

    if-lez v31, :cond_19

    .line 1430
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .restart local v16       #i$:Ljava/util/Iterator;
    :goto_d
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_19

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/htc/android/mail/Attachment;

    .line 1431
    .local v24, related:Lcom/htc/android/mail/Attachment;
    new-instance v9, Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;

    invoke-direct {v9}, Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;-><init>()V

    .line 1432
    .restart local v9       #easAttach:Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;
    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/htc/android/mail/Attachment;->fromServer:Z

    move/from16 v31, v0

    move/from16 v0, v31

    iput-boolean v0, v9, Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;->fromServer:Z

    .line 1433
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/htc/android/mail/Attachment;->attachName:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iput-object v0, v9, Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;->attachName:Ljava/lang/String;

    .line 1434
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/htc/android/mail/Attachment;->attachPath:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iput-object v0, v9, Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;->attachPath:Ljava/lang/String;

    .line 1435
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/htc/android/mail/Attachment;->cid:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iput-object v0, v9, Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;->cid:Ljava/lang/String;

    .line 1436
    const-string v31, "Content-Type: application/octet-stream;\r\n\tname="

    move-object/from16 v0, v31

    iput-object v0, v9, Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;->attachMimeType:Ljava/lang/String;

    .line 1437
    const-wide/16 v31, 0x1

    move-wide/from16 v0, v31

    iput-wide v0, v9, Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;->attachContentSize:J

    .line 1438
    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [B

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iput-object v0, v9, Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;->attachContent:[B

    .line 1440
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mRelatedList:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 1447
    .end local v9           #easAttach:Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v24           #related:Lcom/htc/android/mail/Attachment;
    :cond_19
    const-string v31, "smartCommand"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v27

    .line 1448
    .local v27, smartCmd:I
    invoke-static/range {v27 .. v27}, Lcom/htc/android/mail/meeting/MeetingUtil;->isMeeting(I)Z

    move-result v31

    if-eqz v31, :cond_1d

    .line 1449
    new-instance v20, Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;

    invoke-direct/range {v20 .. v20}, Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;-><init>()V

    .line 1450
    .local v20, meetingAttach:Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;
    const/16 v31, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;->attachName:Ljava/lang/String;

    .line 1451
    const/16 v31, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;->attachPath:Ljava/lang/String;

    .line 1452
    packed-switch v27, :pswitch_data_1

    .line 1461
    :pswitch_3
    const-string v31, "Content-Type: text/calendar; charset=\"utf-8\"; method=REPLY"

    move-object/from16 v0, v31

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;->attachMimeType:Ljava/lang/String;

    .line 1464
    :goto_e
    const-string v31, "iCalendar"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1465
    .local v17, iCalendar:Ljava/lang/String;
    const-string v31, "meetingMailBody"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 1466
    .local v21, meetingBody:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v31

    if-nez v31, :cond_1d

    .line 1467
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->getBytes()[B

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;->attachContent:[B

    .line 1468
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;->attachContent:[B

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-long v0, v0

    move-wide/from16 v31, v0

    move-wide/from16 v0, v31

    move-object/from16 v2, v20

    iput-wide v0, v2, Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;->attachContentSize:J

    .line 1469
    move-object/from16 v0, v20

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mMeetingAttach:Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;

    .line 1471
    const/16 v31, 0x3

    move/from16 v0, v27

    move/from16 v1, v31

    if-eq v0, v1, :cond_1a

    const/16 v31, 0x7

    move/from16 v0, v27

    move/from16 v1, v31

    if-ne v0, v1, :cond_1d

    .line 1474
    :cond_1a
    sget-boolean v31, Lcom/htc/android/mail/eassvc/mail/MailSender;->DEBUG:Z

    if-eqz v31, :cond_1b

    const-string v31, "MailSender"

    const-string v32, "send mail - add meeting info to mail body"

    invoke-static/range {v31 .. v32}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1475
    :cond_1b
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v31

    if-nez v31, :cond_1d

    .line 1477
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v31

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mPlainBody:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mPlainBody:Ljava/lang/String;

    .line 1479
    invoke-static/range {v21 .. v21}, Lcom/htc/android/mail/MailTextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    const-string v32, "\n"

    const-string v33, "<br>"

    invoke-virtual/range {v31 .. v33}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1480
    .local v19, meeting:Ljava/lang/String;
    if-nez v19, :cond_1c

    const-string v19, ""

    .line 1481
    :cond_1c
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v31

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mBody:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mBody:Ljava/lang/String;

    .line 1487
    .end local v17           #iCalendar:Ljava/lang/String;
    .end local v19           #meeting:Ljava/lang/String;
    .end local v20           #meetingAttach:Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;
    .end local v21           #meetingBody:Ljava/lang/String;
    :cond_1d
    sget-boolean v31, Lcom/htc/android/mail/eassvc/mail/MailSender;->DEBUG:Z

    if-eqz v31, :cond_1e

    const-string v31, "MailSender"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "smartCommand: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1488
    :cond_1e
    sget-boolean v31, Lcom/htc/android/mail/eassvc/mail/MailSender;->DEBUG:Z

    if-eqz v31, :cond_1f

    const-string v31, "MailSender"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "subject: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mSubject:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1489
    :cond_1f
    sget-boolean v31, Lcom/htc/android/mail/eassvc/mail/MailSender;->DEBUG:Z

    if-eqz v31, :cond_20

    const-string v31, "MailSender"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "to: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mTo:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1490
    :cond_20
    sget-boolean v31, Lcom/htc/android/mail/eassvc/mail/MailSender;->DEBUG:Z

    if-eqz v31, :cond_21

    const-string v31, "MailSender"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "cc: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mCc:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1491
    :cond_21
    sget-boolean v31, Lcom/htc/android/mail/eassvc/mail/MailSender;->DEBUG:Z

    if-eqz v31, :cond_22

    const-string v31, "MailSender"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "bcc: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mBcc:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1492
    :cond_22
    sget-boolean v31, Lcom/htc/android/mail/eassvc/mail/MailSender;->DEBUG:Z

    if-eqz v31, :cond_23

    const-string v31, "MailSender"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "importance: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mImportance:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1493
    :cond_23
    sget-boolean v31, Lcom/htc/android/mail/eassvc/mail/MailSender;->DEBUG:Z

    if-eqz v31, :cond_24

    const-string v31, "MailSender"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "globalMail: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1494
    :cond_24
    sget-boolean v31, Lcom/htc/android/mail/eassvc/mail/MailSender;->DEBUG:Z

    if-eqz v31, :cond_1

    const-string v31, "MailSender"

    const-string v32, "< preprocessOutMail"

    invoke-static/range {v31 .. v32}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1455
    .restart local v20       #meetingAttach:Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;
    :pswitch_4
    const-string v31, "Content-Type: text/calendar; charset=\"utf-8\"; method=REQUEST"

    move-object/from16 v0, v31

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;->attachMimeType:Ljava/lang/String;

    goto/16 :goto_e

    .line 1458
    :pswitch_5
    const-string v31, "Content-Type: text/calendar; charset=\"utf-8\"; method=COUNTER"

    move-object/from16 v0, v31

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;->attachMimeType:Ljava/lang/String;

    goto/16 :goto_e

    .line 1392
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 1452
    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method private static processOutMeetingInvitationMail(Lcom/htc/android/mail/meeting/MeetingRequest;Landroid/content/Context;)Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;
    .locals 12
    .parameter "request"
    .parameter "context"

    .prologue
    const/4 v7, 0x0

    .line 1189
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 1190
    :cond_0
    const-string v8, "MailSender"

    const-string v9, "processOutMeetingInvitationMail error #1"

    invoke-static {v8, v9}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v7

    .line 1240
    :cond_1
    :goto_0
    return-object v4

    .line 1193
    :cond_2
    sget-boolean v8, Lcom/htc/android/mail/eassvc/mail/MailSender;->DEBUG:Z

    if-eqz v8, :cond_3

    const-string v8, "MailSender"

    iget-wide v9, p0, Lcom/htc/android/mail/meeting/MeetingRequest;->accountId:J

    const-string v11, "> processOutMeetingInvitationMail"

    invoke-static {v8, v9, v10, v11}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 1195
    :cond_3
    new-instance v4, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;

    invoke-direct {v4}, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;-><init>()V

    .line 1196
    .local v4, sendItem:Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;
    iget-object v8, p0, Lcom/htc/android/mail/meeting/MeetingRequest;->summary:Ljava/lang/String;

    iput-object v8, v4, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mSubject:Ljava/lang/String;

    .line 1197
    const/4 v5, 0x0

    .line 1198
    .local v5, to:Ljava/lang/StringBuilder;
    iget-object v8, p0, Lcom/htc/android/mail/meeting/MeetingRequest;->attendeeList:Ljava/util/ArrayList;

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/htc/android/mail/meeting/MeetingRequest;->attendeeList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_5

    .line 1199
    iget-object v8, p0, Lcom/htc/android/mail/meeting/MeetingRequest;->attendeeList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/android/mail/meeting/MeetingRequest$Person;

    .line 1200
    .local v3, p:Lcom/htc/android/mail/meeting/MeetingRequest$Person;
    if-nez v5, :cond_4

    .line 1201
    new-instance v5, Ljava/lang/StringBuilder;

    .end local v5           #to:Ljava/lang/StringBuilder;
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1205
    .restart local v5       #to:Ljava/lang/StringBuilder;
    :goto_2
    iget-object v8, v3, Lcom/htc/android/mail/meeting/MeetingRequest$Person;->addr:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1203
    :cond_4
    const-string v8, ","

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1208
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v3           #p:Lcom/htc/android/mail/meeting/MeetingRequest$Person;
    :cond_5
    if-eqz v5, :cond_6

    .line 1209
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mTo:Ljava/lang/String;

    .line 1214
    :goto_3
    new-instance v2, Lcom/htc/android/mail/meeting/MeetingInvitation;

    invoke-direct {v2, p1}, Lcom/htc/android/mail/meeting/MeetingInvitation;-><init>(Landroid/content/Context;)V

    .line 1215
    .local v2, mi:Lcom/htc/android/mail/meeting/MeetingInvitation;
    const/4 v8, 0x6

    invoke-virtual {v2, v8}, Lcom/htc/android/mail/meeting/MeetingInvitation;->setCommand(I)V

    .line 1216
    invoke-virtual {v2, p0}, Lcom/htc/android/mail/meeting/MeetingInvitation;->setRequest(Lcom/htc/android/mail/meeting/MeetingRequest;)V

    .line 1217
    invoke-virtual {v2}, Lcom/htc/android/mail/meeting/MeetingInvitation;->create_iCalendar()Ljava/lang/String;

    move-result-object v6

    .line 1219
    .local v6, vCalendar:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1220
    const-string v8, "MailSender"

    iget-wide v9, p0, Lcom/htc/android/mail/meeting/MeetingRequest;->accountId:J

    const-string v11, "process meeting mail: vCalendar null"

    invoke-static {v8, v9, v10, v11}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;JLjava/lang/String;)V

    move-object v4, v7

    .line 1221
    goto :goto_0

    .line 1211
    .end local v2           #mi:Lcom/htc/android/mail/meeting/MeetingInvitation;
    .end local v6           #vCalendar:Ljava/lang/String;
    :cond_6
    const-string v8, "MailSender"

    iget-wide v9, p0, Lcom/htc/android/mail/meeting/MeetingRequest;->accountId:J

    const-string v11, "process meeting mail: recipient is null"

    invoke-static {v8, v9, v10, v11}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_3

    .line 1225
    .restart local v2       #mi:Lcom/htc/android/mail/meeting/MeetingInvitation;
    .restart local v6       #vCalendar:Ljava/lang/String;
    :cond_7
    iget-object v7, p0, Lcom/htc/android/mail/meeting/MeetingRequest;->description:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 1226
    iget-object v7, p0, Lcom/htc/android/mail/meeting/MeetingRequest;->description:Ljava/lang/String;

    iput-object v7, v4, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mPlainBody:Ljava/lang/String;

    .line 1227
    iget-object v7, p0, Lcom/htc/android/mail/meeting/MeetingRequest;->description:Ljava/lang/String;

    invoke-static {v7}, Lcom/htc/android/mail/MailTextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "\n"

    const-string v9, "<br>"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mBody:Ljava/lang/String;

    .line 1232
    :goto_4
    new-instance v1, Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;

    invoke-direct {v1}, Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;-><init>()V

    .line 1233
    .local v1, meetingAttach:Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;
    const-string v7, "Content-Type: text/calendar; charset=\"utf-8\"; method=REQUEST"

    iput-object v7, v1, Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;->attachMimeType:Ljava/lang/String;

    .line 1234
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    iput-object v7, v1, Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;->attachContent:[B

    .line 1235
    iget-object v7, v1, Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;->attachContent:[B

    array-length v7, v7

    int-to-long v7, v7

    iput-wide v7, v1, Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;->attachContentSize:J

    .line 1237
    iput-object v1, v4, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mMeetingAttach:Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;

    .line 1239
    sget-boolean v7, Lcom/htc/android/mail/eassvc/mail/MailSender;->DEBUG:Z

    if-eqz v7, :cond_1

    const-string v7, "MailSender"

    const-string v8, "< processOutMeetingInvitationMail"

    invoke-static {v7, v8}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1229
    .end local v1           #meetingAttach:Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;
    :cond_8
    const-string v7, "MailSender"

    iget-wide v8, p0, Lcom/htc/android/mail/meeting/MeetingRequest;->accountId:J

    const-string v10, "process meeting mail: description is empty"

    invoke-static {v7, v8, v9, v10}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_4
.end method

.method private processSendMailHtmlBody(ILcom/htc/android/mail/eassvc/pim/EASMailSendItem;Z)Ljava/lang/String;
    .locals 6
    .parameter "command"
    .parameter "mailItem"
    .parameter "bSendInsteadofForeard"

    .prologue
    .line 594
    const/4 v2, 0x0

    .line 595
    .local v2, ret:Ljava/lang/String;
    iget-object v3, p2, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mBody:Ljava/lang/String;

    if-nez v3, :cond_1

    const-string v0, ""

    .line 596
    .local v0, body:Ljava/lang/String;
    :goto_0
    iget-object v3, p2, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mHeaderHtml:Ljava/lang/String;

    if-nez v3, :cond_2

    const-string v1, ""

    .line 598
    .local v1, header:Ljava/lang/String;
    :goto_1
    const/4 v3, 0x1

    if-ne p1, v3, :cond_3

    iget-object v3, p2, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mBackupOriginalBody:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 599
    sget-boolean v3, Lcom/htc/android/mail/eassvc/mail/MailSender;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "MailSender"

    iget-object v4, p0, Lcom/htc/android/mail/eassvc/mail/MailSender;->mExSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    const-string v5, "append original html mail body to the end of mail body"

    invoke-static {v3, v4, v5}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/String;)V

    .line 600
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p2, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mBackupOriginalBody:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 604
    :goto_2
    return-object v2

    .line 595
    .end local v0           #body:Ljava/lang/String;
    .end local v1           #header:Ljava/lang/String;
    :cond_1
    iget-object v0, p2, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mBody:Ljava/lang/String;

    goto :goto_0

    .line 596
    .restart local v0       #body:Ljava/lang/String;
    :cond_2
    iget-object v1, p2, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mHeaderHtml:Ljava/lang/String;

    goto :goto_1

    .line 602
    .restart local v1       #header:Ljava/lang/String;
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2
.end method

.method private processSendMailPlainBody(ILcom/htc/android/mail/eassvc/pim/EASMailSendItem;Z)Ljava/lang/String;
    .locals 6
    .parameter "command"
    .parameter "mailItem"
    .parameter "bSendInsteadofForeard"

    .prologue
    .line 608
    const/4 v2, 0x0

    .line 609
    .local v2, ret:Ljava/lang/String;
    iget-object v3, p2, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mPlainBody:Ljava/lang/String;

    if-nez v3, :cond_1

    const-string v0, ""

    .line 610
    .local v0, body:Ljava/lang/String;
    :goto_0
    iget-object v3, p2, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mHeaderPlain:Ljava/lang/String;

    if-nez v3, :cond_2

    const-string v1, ""

    .line 612
    .local v1, header:Ljava/lang/String;
    :goto_1
    const/4 v3, 0x1

    if-ne p1, v3, :cond_3

    iget-object v3, p2, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mBuackupOriginalPlainBody:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 613
    sget-boolean v3, Lcom/htc/android/mail/eassvc/mail/MailSender;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "MailSender"

    iget-object v4, p0, Lcom/htc/android/mail/eassvc/mail/MailSender;->mExSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    const-string v5, "append original plain mail body to the end of mail body"

    invoke-static {v3, v4, v5}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/String;)V

    .line 614
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p2, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mBuackupOriginalPlainBody:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 618
    :goto_2
    return-object v2

    .line 609
    .end local v0           #body:Ljava/lang/String;
    .end local v1           #header:Ljava/lang/String;
    :cond_1
    iget-object v0, p2, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mPlainBody:Ljava/lang/String;

    goto :goto_0

    .line 610
    .restart local v0       #body:Ljava/lang/String;
    :cond_2
    iget-object v1, p2, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mHeaderPlain:Ljava/lang/String;

    goto :goto_1

    .line 616
    .restart local v1       #header:Ljava/lang/String;
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2
.end method

.method private static removeDuplicateAddr(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "recipient"

    .prologue
    const/4 v9, 0x0

    .line 1499
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1500
    const-string v8, "MailSender"

    const-string v10, "removeDuplicateAddr error #1"

    invoke-static {v8, v10}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v9

    .line 1537
    :cond_0
    :goto_0
    return-object v2

    .line 1505
    :cond_1
    :try_start_0
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 1508
    new-instance v6, Ljava/util/LinkedHashSet;

    invoke-direct {v6}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1509
    .local v6, shAddress:Ljava/util/LinkedHashSet;,"Ljava/util/LinkedHashSet<Ljava/lang/String;>;"
    invoke-static {}, Lcom/htc/android/mail/Regex;->getInstance()Lcom/htc/android/mail/Regex;

    move-result-object v8

    const/16 v10, 0xd

    invoke-virtual {v8, v10}, Lcom/htc/android/mail/Regex;->getPattern(I)Ljava/util/regex/Pattern;

    move-result-object v8

    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 1510
    .local v5, matcher:Ljava/util/regex/Matcher;
    :goto_1
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1511
    const/4 v8, 0x2

    invoke-virtual {v5, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 1512
    .local v0, address1:Ljava/lang/String;
    const/4 v8, 0x3

    invoke-virtual {v5, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 1513
    .local v1, address2:Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 1514
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1535
    .end local v0           #address1:Ljava/lang/String;
    .end local v1           #address2:Ljava/lang/String;
    .end local v5           #matcher:Ljava/util/regex/Matcher;
    .end local v6           #shAddress:Ljava/util/LinkedHashSet;,"Ljava/util/LinkedHashSet<Ljava/lang/String;>;"
    :catch_0
    move-exception v3

    .line 1536
    .local v3, e:Ljava/lang/Exception;
    const-string v8, "MailSender"

    invoke-static {v8, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    move-object v2, v9

    .line 1537
    goto :goto_0

    .line 1516
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v0       #address1:Ljava/lang/String;
    .restart local v1       #address2:Ljava/lang/String;
    .restart local v5       #matcher:Ljava/util/regex/Matcher;
    .restart local v6       #shAddress:Ljava/util/LinkedHashSet;,"Ljava/util/LinkedHashSet<Ljava/lang/String;>;"
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1520
    .end local v0           #address1:Ljava/lang/String;
    .end local v1           #address2:Ljava/lang/String;
    :cond_3
    const/4 v2, 0x0

    .line 1521
    .local v2, alladdress:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1522
    .local v7, str:Ljava/lang/StringBuilder;
    invoke-virtual {v6}, Ljava/util/LinkedHashSet;->size()I

    move-result v8

    if-lez v8, :cond_0

    .line 1523
    invoke-virtual {v6}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1524
    .local v4, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_4
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1525
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1526
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1527
    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1531
    :cond_5
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    goto :goto_0
.end method

.method public static resetRetryCount(JJILandroid/content/Context;)V
    .locals 3
    .parameter "accountId"
    .parameter "messageId"
    .parameter "retryCount"
    .parameter "context"

    .prologue
    const-wide/16 v1, 0x0

    .line 874
    cmp-long v0, p0, v1

    if-lez v0, :cond_0

    cmp-long v0, p2, v1

    if-gtz v0, :cond_1

    .line 879
    :cond_0
    :goto_0
    return-void

    .line 877
    :cond_1
    sget-boolean v0, Lcom/htc/android/mail/eassvc/mail/MailSender;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "MailSender"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetRetryCount("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, p1, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 878
    :cond_2
    invoke-virtual {p5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2, p3, p4}, Lcom/htc/android/mail/MailProvider;->updateRetryCountToMessage(Landroid/content/Context;JI)I

    goto :goto_0
.end method

.method public static resetRetryCount(JJLandroid/content/Context;)V
    .locals 11
    .parameter "accountId"
    .parameter "messageId"
    .parameter "context"

    .prologue
    const-wide/16 v4, 0x0

    .line 882
    cmp-long v0, p0, v4

    if-lez v0, :cond_0

    cmp-long v0, p2, v4

    if-gtz v0, :cond_1

    .line 904
    :cond_0
    :goto_0
    return-void

    .line 885
    :cond_1
    const/4 v8, 0x0

    .line 886
    .local v8, retryCount:I
    const/4 v10, 0x0

    .line 888
    .local v10, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "_account=%d AND _id=%d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0, v1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 889
    .local v3, where:Ljava/lang/String;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_retryCount"

    aput-object v1, v2, v0

    .line 890
    .local v2, proj:[Ljava/lang/String;
    invoke-virtual {p4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->MESSAGES_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 891
    if-eqz v10, :cond_2

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 892
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .line 895
    :cond_2
    if-eqz v10, :cond_3

    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_3

    .line 896
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 899
    :cond_3
    sget-boolean v0, Lcom/htc/android/mail/eassvc/mail/MailSender;->DEBUG:Z

    if-eqz v0, :cond_4

    const-string v0, "MailSender"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRetryCount("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ") get retryCount: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, p1, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 900
    :cond_4
    if-lez v8, :cond_0

    .line 901
    add-int/lit8 v8, v8, -0x1

    move-wide v4, p0

    move-wide v6, p2

    move-object v9, p4

    .line 902
    invoke-static/range {v4 .. v9}, Lcom/htc/android/mail/eassvc/mail/MailSender;->resetRetryCount(JJILandroid/content/Context;)V

    goto :goto_0

    .line 895
    .end local v2           #proj:[Ljava/lang/String;
    .end local v3           #where:Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v10, :cond_5

    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_5

    .line 896
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 895
    :cond_5
    throw v0
.end method

.method private writeSendMailAttachment([B)Z
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 196
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/mail/MailSender;->mWriter:Ljava/io/FileOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 197
    const/4 p1, 0x0

    .line 198
    const/4 v0, 0x1

    return v0
.end method

.method private writeSendMailBody(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "Item"
    .parameter "Content"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 186
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 187
    .local v1, strFrom:Ljava/lang/String;
    const-string v2, "utf-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 188
    .local v0, reqData:[B
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/mail/MailSender;->mWriter:Ljava/io/FileOutputStream;

    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 189
    return-void
.end method

.method private writeSendMailBodyBase64([B)V
    .locals 1
    .parameter "content"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 192
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/mail/MailSender;->mWriter:Ljava/io/FileOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 193
    return-void
.end method


# virtual methods
.method public needToSendMailInsteadSmartCmd(II)Z
    .locals 1
    .parameter "smartCmd"
    .parameter "httpStatus"

    .prologue
    .line 641
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 648
    :cond_0
    const/16 v0, 0x1f4

    if-ne p2, v0, :cond_1

    .line 649
    const/4 v0, 0x1

    .line 652
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized sendMail(I)I
    .locals 35
    .parameter "command"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 350
    monitor-enter p0

    :try_start_0
    sget-boolean v30, Lcom/htc/android/mail/eassvc/mail/MailSender;->DEBUG:Z

    if-eqz v30, :cond_0

    const-string v30, "MailSender"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/mail/MailSender;->mExSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    move-object/from16 v31, v0

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "> sendMail("

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "): "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/mail/MailSender;->mSendItem:Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-wide v0, v0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mMessageId:J

    move-wide/from16 v33, v0

    invoke-virtual/range {v32 .. v34}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v30 .. v32}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/String;)V

    .line 352
    :cond_0
    const/4 v15, -0x1

    .line 353
    .local v15, nRet:I
    const/4 v4, 0x0

    .line 354
    .local v4, BoundaryNum:I
    const/4 v14, 0x0

    .line 355
    .local v14, mixBoundary:Ljava/lang/String;
    const/16 v21, 0x0

    .line 356
    .local v21, relatedBoundary:Ljava/lang/String;
    const/4 v6, 0x0

    .line 358
    .local v6, alternativeBoundary:Ljava/lang/String;
    new-instance v30, Ljava/util/Date;

    invoke-direct/range {v30 .. v30}, Ljava/util/Date;-><init>()V

    invoke-virtual/range {v30 .. v30}, Ljava/util/Date;->getTime()J

    move-result-wide v16

    .line 359
    .local v16, nowtime:J
    new-instance v9, Ljava/io/File;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/mail/MailSender;->mMailTempPath:Ljava/io/File;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    sget-object v31, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 361
    .local v9, filepath:Ljava/io/File;
    const/16 v19, 0x0

    .line 362
    .local v19, post:Lorg/apache/http/client/methods/HttpPost;
    const/16 v23, 0x0

    .line 363
    .local v23, resp:Lorg/apache/http/HttpResponse;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/mail/MailSender;->mExSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    move-object/from16 v30, v0

    const/16 v31, 0x3

    invoke-virtual/range {v30 .. v31}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->getSyncSource(I)Lcom/htc/android/mail/eassvc/core/SyncSource;

    move-result-object v12

    check-cast v12, Lcom/htc/android/mail/eassvc/core/MailSyncSource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 365
    .local v12, mailSyncSource:Lcom/htc/android/mail/eassvc/core/MailSyncSource;
    :try_start_1
    new-instance v30, Ljava/io/FileOutputStream;

    move-object/from16 v0, v30

    invoke-direct {v0, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/mail/MailSender;->mWriter:Ljava/io/FileOutputStream;

    .line 366
    sget-boolean v30, Lcom/htc/android/mail/eassvc/mail/MailSender;->DEBUG:Z

    if-eqz v30, :cond_1

    const-string v30, "MailSender"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/mail/MailSender;->mExSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    move-object/from16 v31, v0

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Send mail temp file : "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v30 .. v32}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/String;)V

    .line 368
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/mail/MailSender;->mExSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/mail/MailSender;->mSendItem:Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, p1

    move-object/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/android/mail/eassvc/mail/MailSender;->createHttpPost(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;ILcom/htc/android/mail/eassvc/pim/EASMailSendItem;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v19

    .line 369
    const/16 v30, 0x3

    move/from16 v0, p1

    move/from16 v1, v30

    if-ne v0, v1, :cond_14

    .line 387
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/mail/MailSender;->mSendItem:Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mFrom:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v30

    if-nez v30, :cond_2

    .line 388
    const-string v30, "From: "

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/mail/MailSender;->mSendItem:Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mFrom:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/htc/android/mail/eassvc/mail/MailSender;->writeSendMailBody(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/mail/MailSender;->mSendItem:Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mTo:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v30

    if-nez v30, :cond_3

    .line 391
    const-string v30, "To: "

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/mail/MailSender;->mSendItem:Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mTo:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/htc/android/mail/eassvc/mail/MailSender;->writeSendMailBody(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/mail/MailSender;->mSendItem:Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mSender:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v30

    if-nez v30, :cond_4

    .line 394
    const-string v30, "Sender: "

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/mail/MailSender;->mSendItem:Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mSender:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/htc/android/mail/eassvc/mail/MailSender;->writeSendMailBody(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/mail/MailSender;->mSendItem:Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mCc:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v30

    if-nez v30, :cond_5

    .line 397
    const-string v30, "Cc: "

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/mail/MailSender;->mSendItem:Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mCc:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/htc/android/mail/eassvc/mail/MailSender;->writeSendMailBody(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/mail/MailSender;->mSendItem:Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mBcc:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v30

    if-nez v30, :cond_6

    .line 400
    const-string v30, "Bcc: "

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/mail/MailSender;->mSendItem:Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mBcc:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/htc/android/mail/eassvc/mail/MailSender;->writeSendMailBody(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/mail/MailSender;->mSendItem:Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mSubject:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v30

    if-nez v30, :cond_7

    .line 403
    const-string v30, "Subject: "

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/mail/MailSender;->mSendItem:Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mSubject:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/htc/android/mail/eassvc/mail/MailSender;->writeSendMailBody(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/mail/MailSender;->mSendItem:Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mImportance:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v30

    if-nez v30, :cond_8

    .line 406
    const-string v30, "Importance: "

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/mail/MailSender;->mSendItem:Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mImportance:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/htc/android/mail/eassvc/mail/MailSender;->writeSendMailBody(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/mail/MailSender;->mSendItem:Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mMIME_Version:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v30

    if-nez v30, :cond_9

    .line 409
    const-string v30, "MIME-Version: "

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/mail/MailSender;->mSendItem:Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mMIME_Version:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/htc/android/mail/eassvc/mail/MailSender;->writeSendMailBody(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 413
    :cond_9
    add-int/lit8 v5, v4, 0x1

    .end local v4           #BoundaryNum:I
    .local v5, BoundaryNum:I
    :try_start_2
    invoke-static {v4}, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->GenBoundary(I)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v14

    .line 414
    add-int/lit8 v4, v5, 0x1

    .end local v5           #BoundaryNum:I
    .restart local v4       #BoundaryNum:I
    :try_start_3
    invoke-static {v5}, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->GenBoundary(I)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-object v21

    .line 415
    add-int/lit8 v5, v4, 0x1

    .end local v4           #BoundaryNum:I
    .restart local v5       #BoundaryNum:I
    :try_start_4
    invoke-static {v4}, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->GenBoundary(I)Ljava/lang/String;

    move-result-object v6

    .line 418
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/mail/MailSender;->mSendItem:Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mArrachmentList:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/htc/android/mail/eassvc/mail/MailSender;->isNeedSendAttachment(ILjava/util/ArrayList;)Z

    move-result v30

    if-eqz v30, :cond_a

    .line 419
    const-string v30, "Content-Type: multipart/mixed;\r\n\tboundary="

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "\""

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "\""

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/htc/android/mail/eassvc/mail/MailSender;->writeSendMailBody(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    const-string v30, ""

    const-string v31, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/htc/android/mail/eassvc/mail/MailSender;->writeSendMailBody(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    const-string v30, "--"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1, v14}, Lcom/htc/android/mail/eassvc/mail/MailSender;->writeSendMailBody(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/mail/MailSender;->mSendItem:Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mRelatedList:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/htc/android/mail/eassvc/mail/MailSender;->isNeedSendRelatedAttachment(ILjava/util/ArrayList;)Z

    move-result v30

    if-eqz v30, :cond_b

    .line 426
    const-string v30, "Content-Type: multipart/related;\r\n\tboundary="

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "\""

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "\""

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/htc/android/mail/eassvc/mail/MailSender;->writeSendMailBody(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    const-string v30, ""

    const-string v31, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/htc/android/mail/eassvc/mail/MailSender;->writeSendMailBody(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    const-string v30, "--"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/htc/android/mail/eassvc/mail/MailSender;->writeSendMailBody(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    :cond_b
    const-string v30, "Content-Type: multipart/alternative;\r\n\tboundary="

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "\""

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "\""

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/htc/android/mail/eassvc/mail/MailSender;->writeSendMailBody(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    const-string v30, ""

    const-string v31, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/htc/android/mail/eassvc/mail/MailSender;->writeSendMailBody(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    const-string v30, "--"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1, v6}, Lcom/htc/android/mail/eassvc/mail/MailSender;->writeSendMailBody(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    const-string v30, "Content-Type: text/plain;\r\n\tcharset= "

    const-string v31, "utf-8"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/htc/android/mail/eassvc/mail/MailSender;->writeSendMailBody(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    const-string v30, "Content-Transfer-Encoding: "

    const-string v31, "base64"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/htc/android/mail/eassvc/mail/MailSender;->writeSendMailBody(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    const-string v30, "Content-Disposition: "

    const-string v31, "inline"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/htc/android/mail/eassvc/mail/MailSender;->writeSendMailBody(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    const-string v30, ""

    const-string v31, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/htc/android/mail/eassvc/mail/MailSender;->writeSendMailBody(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/mail/MailSender;->mSendItem:Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/mail/MailSender;->mSendItem:Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-boolean v0, v0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mSendInsteadofForeard:Z

    move/from16 v31, v0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v30

    move/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/android/mail/eassvc/mail/MailSender;->processSendMailPlainBody(ILcom/htc/android/mail/eassvc/pim/EASMailSendItem;Z)Ljava/lang/String;

    move-result-object v18

    .line 444
    .local v18, plainBody:Ljava/lang/String;
    if-eqz v18, :cond_c

    .line 445
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    .line 446
    .local v27, strBuilder:Ljava/lang/StringBuilder;
    const-string v30, "\r\n"

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    move-object/from16 v0, v27

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    const-string v30, "\r\n"

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    const-string v31, "utf-8"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([B)[B

    move-result-object v8

    .line 450
    .local v8, body:[B
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/htc/android/mail/eassvc/mail/MailSender;->writeSendMailBodyBase64([B)V

    .line 453
    .end local v8           #body:[B
    .end local v27           #strBuilder:Ljava/lang/StringBuilder;
    :cond_c
    const-string v30, ""

    const-string v31, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/htc/android/mail/eassvc/mail/MailSender;->writeSendMailBody(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/mail/MailSender;->mExSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->protocolVerDouble:D

    move-wide/from16 v30, v0

    const-wide/high16 v32, 0x4028

    cmpg-double v30, v30, v32

    if-gez v30, :cond_15

    const/16 v30, 0x2

    move/from16 v0, p1

    move/from16 v1, v30

    if-ne v0, v1, :cond_15

    .line 495
    :cond_d
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/mail/MailSender;->mSendItem:Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mMeetingAttach:Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;

    move-object/from16 v30, v0

    if-eqz v30, :cond_f

    const/16 v30, 0x1

    move/from16 v0, p1

    move/from16 v1, v30

    if-ne v0, v1, :cond_f

    .line 498
    sget-boolean v30, Lcom/htc/android/mail/eassvc/mail/MailSender;->DEBUG:Z

    if-eqz v30, :cond_e

    const-string v30, "MailSender"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/mail/MailSender;->mExSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    move-object/from16 v31, v0

    const-string v32, "write VCalendar"

    invoke-static/range {v30 .. v32}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/String;)V

    .line 499
    :cond_e
    const-string v30, "--"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1, v6}, Lcom/htc/android/mail/eassvc/mail/MailSender;->writeSendMailBody(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/mail/MailSender;->mSendItem:Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mMeetingAttach:Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/htc/android/mail/eassvc/mail/MailSender;->includeAttach(Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;)Z

    .line 501
    const-string v30, ""

    const-string v31, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/htc/android/mail/eassvc/mail/MailSender;->writeSendMailBody(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    :cond_f
    const-string v30, "--"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v31

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "--"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/htc/android/mail/eassvc/mail/MailSender;->writeSendMailBody(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    const-string v30, ""

    const-string v31, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/htc/android/mail/eassvc/mail/MailSender;->writeSendMailBody(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/mail/MailSender;->mSendItem:Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mRelatedList:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/htc/android/mail/eassvc/mail/MailSender;->isNeedSendRelatedAttachment(ILjava/util/ArrayList;)Z

    move-result v30

    if-eqz v30, :cond_1a

    .line 510
    sget-boolean v30, Lcom/htc/android/mail/eassvc/mail/MailSender;->DEBUG:Z

    if-eqz v30, :cond_10

    const-string v30, "MailSender"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "add related attachment: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/mail/MailSender;->mSendItem:Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mRelatedList:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/mail/MailSender;->mSendItem:Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mRelatedList:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_19

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;

    .line 512
    .local v20, related:Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;->attachPath:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v30

    if-eqz v30, :cond_18

    .line 513
    const-string v30, "MailSender"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/mail/MailSender;->mExSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    move-object/from16 v31, v0

    const-string v32, "sendMail: related path null"

    invoke-static/range {v30 .. v32}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 576
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v18           #plainBody:Ljava/lang/String;
    .end local v20           #related:Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;
    :catchall_0
    move-exception v30

    move v4, v5

    .end local v5           #BoundaryNum:I
    .restart local v4       #BoundaryNum:I
    :goto_3
    if-eqz v23, :cond_11

    .line 577
    :try_start_5
    invoke-interface/range {v23 .. v23}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v31

    invoke-interface/range {v31 .. v31}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 579
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/mail/MailSender;->mWriter:Ljava/io/FileOutputStream;

    move-object/from16 v31, v0

    if-eqz v31, :cond_12

    .line 580
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/mail/MailSender;->mWriter:Ljava/io/FileOutputStream;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/io/FileOutputStream;->close()V

    .line 581
    const/16 v31, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/mail/MailSender;->mWriter:Ljava/io/FileOutputStream;

    .line 583
    :cond_12
    if-eqz v9, :cond_13

    .line 584
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 586
    :cond_13
    invoke-virtual {v12}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->releaseOutHttpClient()V

    .line 576
    throw v30
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 350
    .end local v4           #BoundaryNum:I
    .end local v6           #alternativeBoundary:Ljava/lang/String;
    .end local v9           #filepath:Ljava/io/File;
    .end local v12           #mailSyncSource:Lcom/htc/android/mail/eassvc/core/MailSyncSource;
    .end local v14           #mixBoundary:Ljava/lang/String;
    .end local v15           #nRet:I
    .end local v16           #nowtime:J
    .end local v19           #post:Lorg/apache/http/client/methods/HttpPost;
    .end local v21           #relatedBoundary:Ljava/lang/String;
    .end local v23           #resp:Lorg/apache/http/HttpResponse;
    :catchall_1
    move-exception v30

    monitor-exit p0

    throw v30

    .line 381
    .restart local v4       #BoundaryNum:I
    .restart local v6       #alternativeBoundary:Ljava/lang/String;
    .restart local v9       #filepath:Ljava/io/File;
    .restart local v12       #mailSyncSource:Lcom/htc/android/mail/eassvc/core/MailSyncSource;
    .restart local v14       #mixBoundary:Ljava/lang/String;
    .restart local v15       #nRet:I
    .restart local v16       #nowtime:J
    .restart local v19       #post:Lorg/apache/http/client/methods/HttpPost;
    .restart local v21       #relatedBoundary:Ljava/lang/String;
    .restart local v23       #resp:Lorg/apache/http/HttpResponse;
    :cond_14
    :try_start_6
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v29

    .line 382
    .local v29, uid:Ljava/util/UUID;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/mail/MailSender;->mExSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->emailAddress:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/mail/MailSender;->mExSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->emailAddress:Ljava/lang/String;

    move-object/from16 v31, v0

    const/16 v32, 0x40

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->indexOf(I)I

    move-result v31

    add-int/lit8 v31, v31, 0x1

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v24

    .line 383
    .local v24, server:Ljava/lang/String;
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "<"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v29 .. v29}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "@"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ">"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 384
    .local v13, messageId:Ljava/lang/String;
    const-string v30, "Message-ID: "

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1, v13}, Lcom/htc/android/mail/eassvc/mail/MailSender;->writeSendMailBody(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto/16 :goto_0

    .line 576
    .end local v13           #messageId:Ljava/lang/String;
    .end local v24           #server:Ljava/lang/String;
    .end local v29           #uid:Ljava/util/UUID;
    :catchall_2
    move-exception v30

    goto/16 :goto_3

    .line 467
    .end local v4           #BoundaryNum:I
    .restart local v5       #BoundaryNum:I
    .restart local v18       #plainBody:Ljava/lang/String;
    :cond_15
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/mail/MailSender;->mSendItem:Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mMeetingAttach:Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;

    move-object/from16 v30, v0

    if-eqz v30, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/mail/MailSender;->mSendItem:Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mMeetingAttach:Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;->attachMimeType:Ljava/lang/String;

    move-object/from16 v30, v0

    const-string v31, "Content-Type: text/calendar; charset=\"utf-8\"; method=COUNTER"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_d

    .line 470
    :cond_16
    const-string v30, "--"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1, v6}, Lcom/htc/android/mail/eassvc/mail/MailSender;->writeSendMailBody(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    const-string v30, "Content-Type: text/html;\r\n\tcharset= "

    const-string v31, "utf-8"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/htc/android/mail/eassvc/mail/MailSender;->writeSendMailBody(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    const-string v30, "Content-Transfer-Encoding: "

    const-string v31, "base64"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/htc/android/mail/eassvc/mail/MailSender;->writeSendMailBody(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    const-string v30, "Content-Disposition: "

    const-string v31, "inline"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/htc/android/mail/eassvc/mail/MailSender;->writeSendMailBody(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    const-string v30, ""

    const-string v31, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/htc/android/mail/eassvc/mail/MailSender;->writeSendMailBody(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/mail/MailSender;->mSendItem:Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/mail/MailSender;->mSendItem:Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-boolean v0, v0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mSendInsteadofForeard:Z

    move/from16 v31, v0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v30

    move/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/android/mail/eassvc/mail/MailSender;->processSendMailHtmlBody(ILcom/htc/android/mail/eassvc/pim/EASMailSendItem;Z)Ljava/lang/String;

    move-result-object v10

    .line 480
    .local v10, htmlBody:Ljava/lang/String;
    if-eqz v10, :cond_17

    .line 481
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    .line 482
    .restart local v27       #strBuilder:Ljava/lang/StringBuilder;
    const-string v30, "\r\n"

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    const-string v30, "\r\n"

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    const-string v31, "utf-8"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([B)[B

    move-result-object v8

    .line 486
    .restart local v8       #body:[B
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/htc/android/mail/eassvc/mail/MailSender;->writeSendMailBodyBase64([B)V

    .line 490
    .end local v8           #body:[B
    .end local v27           #strBuilder:Ljava/lang/StringBuilder;
    :cond_17
    const-string v30, ""

    const-string v31, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/htc/android/mail/eassvc/mail/MailSender;->writeSendMailBody(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 516
    .end local v10           #htmlBody:Ljava/lang/String;
    .restart local v11       #i$:Ljava/util/Iterator;
    .restart local v20       #related:Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;
    :cond_18
    const-string v30, "--"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/htc/android/mail/eassvc/mail/MailSender;->writeSendMailBody(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/htc/android/mail/eassvc/mail/MailSender;->includeRelatedAttach(Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;)V

    goto/16 :goto_2

    .line 520
    .end local v20           #related:Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;
    :cond_19
    const-string v30, "--"

    const-string v31, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/htc/android/mail/eassvc/mail/MailSender;->writeSendMailBody(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    const-string v30, "--"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v31

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "--"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/htc/android/mail/eassvc/mail/MailSender;->writeSendMailBody(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    const-string v30, "--"

    const-string v31, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/htc/android/mail/eassvc/mail/MailSender;->writeSendMailBody(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    .end local v11           #i$:Ljava/util/Iterator;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/mail/MailSender;->mSendItem:Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mArrachmentList:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    if-eqz v30, :cond_1e

    .line 527
    sget-boolean v30, Lcom/htc/android/mail/eassvc/mail/MailSender;->DEBUG:Z

    if-eqz v30, :cond_1b

    const-string v30, "MailSender"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "add attachment: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/mail/MailSender;->mSendItem:Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mArrachmentList:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/mail/MailSender;->mSendItem:Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mArrachmentList:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .restart local v11       #i$:Ljava/util/Iterator;
    :cond_1c
    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_1e

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;

    .line 529
    .local v7, attach:Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;
    const/16 v30, 0x3

    move/from16 v0, p1

    move/from16 v1, v30

    if-ne v0, v1, :cond_1d

    iget-boolean v0, v7, Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;->fromServer:Z

    move/from16 v30, v0

    if-nez v30, :cond_1c

    .line 532
    :cond_1d
    const-string v30, "--"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1, v14}, Lcom/htc/android/mail/eassvc/mail/MailSender;->writeSendMailBody(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/htc/android/mail/eassvc/mail/MailSender;->includeAttach(Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;)Z

    goto :goto_4

    .line 538
    .end local v7           #attach:Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;
    .end local v11           #i$:Ljava/util/Iterator;
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/mail/MailSender;->mSendItem:Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mArrachmentList:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/htc/android/mail/eassvc/mail/MailSender;->isNeedSendAttachment(ILjava/util/ArrayList;)Z

    move-result v30

    if-eqz v30, :cond_1f

    .line 539
    const-string v30, "--"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v31

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "--"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/htc/android/mail/eassvc/mail/MailSender;->writeSendMailBody(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/mail/MailSender;->mWriter:Ljava/io/FileOutputStream;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/io/FileOutputStream;->close()V

    .line 543
    new-instance v22, Lorg/apache/http/entity/FileEntity;

    const-string v30, "message/rfc822"

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    invoke-direct {v0, v9, v1}, Lorg/apache/http/entity/FileEntity;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 544
    .local v22, reqEntity:Lorg/apache/http/entity/FileEntity;
    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 546
    sget-boolean v30, Lcom/htc/android/mail/eassvc/mail/MailSender;->DEBUG:Z

    if-eqz v30, :cond_25

    .line 547
    const-string v30, "MailSender"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/mail/MailSender;->mExSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    move-object/from16 v31, v0

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "sendMail("

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ") start: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/mail/MailSender;->mSendItem:Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-wide v0, v0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mMessageId:J

    move-wide/from16 v33, v0

    invoke-virtual/range {v32 .. v34}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v30 .. v32}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/String;)V

    .line 551
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/mail/MailSender;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/mail/MailSender;->mExSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-wide v0, v0, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    move-wide/from16 v31, v0

    invoke-static/range {v30 .. v32}, Lcom/htc/android/mail/eassvc/common/HttpClientFactory;->isUseProxy(Landroid/content/Context;J)Z

    move-result v30

    if-eqz v30, :cond_26

    .line 552
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/mail/MailSender;->mExSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/mail/MailSender;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-static/range {v30 .. v31}, Lcom/htc/android/mail/eassvc/core/SyncManager;->getHttpHost(Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Landroid/content/Context;)Lorg/apache/http/HttpHost;

    move-result-object v28

    .line 553
    .local v28, targetHost:Lorg/apache/http/HttpHost;
    invoke-virtual {v12}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->getOutHttpClient()Landroid/net/http/AndroidHttpClient;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v28

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v23

    .line 557
    .end local v28           #targetHost:Lorg/apache/http/HttpHost;
    :goto_6
    sget-boolean v30, Lcom/htc/android/mail/eassvc/mail/MailSender;->DEBUG:Z

    if-eqz v30, :cond_27

    .line 558
    const-string v30, "MailSender"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/mail/MailSender;->mExSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    move-object/from16 v31, v0

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "sendMail("

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ") finish: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/mail/MailSender;->mSendItem:Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-wide v0, v0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mMessageId:J

    move-wide/from16 v33, v0

    invoke-virtual/range {v32 .. v34}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v30 .. v32}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/String;)V

    .line 563
    :goto_7
    invoke-interface/range {v23 .. v23}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v26

    .line 564
    .local v26, statusLine:Lorg/apache/http/StatusLine;
    invoke-interface/range {v26 .. v26}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v25

    .line 565
    .local v25, statusCode:I
    const/16 v30, 0xc8

    move/from16 v0, v25

    move/from16 v1, v30

    if-ne v0, v1, :cond_28

    .line 566
    const-string v30, "MailSender"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/mail/MailSender;->mExSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    move-object/from16 v31, v0

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "sendMail("

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ") success"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v30 .. v32}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/String;)V

    .line 567
    sget-boolean v30, Lcom/htc/android/mail/eassvc/mail/MailSender;->MAIL_DEBUG:Z

    if-eqz v30, :cond_20

    const-string v30, "MailSender"

    const-string v31, "[ATS][com.htc.android.mail][send_mail][successful]"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    :cond_20
    invoke-interface/range {v26 .. v26}, Lorg/apache/http/StatusLine;->getStatusCode()I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result v15

    .line 576
    if-eqz v23, :cond_21

    .line 577
    :try_start_8
    invoke-interface/range {v23 .. v23}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 579
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/mail/MailSender;->mWriter:Ljava/io/FileOutputStream;

    move-object/from16 v30, v0

    if-eqz v30, :cond_22

    .line 580
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/mail/MailSender;->mWriter:Ljava/io/FileOutputStream;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/io/FileOutputStream;->close()V

    .line 581
    const/16 v30, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/mail/MailSender;->mWriter:Ljava/io/FileOutputStream;

    .line 583
    :cond_22
    if-eqz v9, :cond_23

    .line 584
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 586
    :cond_23
    invoke-virtual {v12}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->releaseOutHttpClient()V

    .line 589
    sget-boolean v30, Lcom/htc/android/mail/eassvc/mail/MailSender;->DEBUG:Z

    if-eqz v30, :cond_24

    const-string v30, "MailSender"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/mail/MailSender;->mExSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    move-object/from16 v31, v0

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "< sendMail("

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "): "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/mail/MailSender;->mSendItem:Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-wide v0, v0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mMessageId:J

    move-wide/from16 v33, v0

    invoke-virtual/range {v32 .. v34}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ","

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v30 .. v32}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 590
    :cond_24
    monitor-exit p0

    return v15

    .line 549
    .end local v25           #statusCode:I
    .end local v26           #statusLine:Lorg/apache/http/StatusLine;
    :cond_25
    :try_start_9
    const-string v30, "MailSender"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/mail/MailSender;->mExSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    move-object/from16 v31, v0

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "sendMail("

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ") start"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v30 .. v32}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 555
    :cond_26
    invoke-virtual {v12}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->getOutHttpClient()Landroid/net/http/AndroidHttpClient;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v23

    goto/16 :goto_6

    .line 560
    :cond_27
    const-string v30, "MailSender"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/mail/MailSender;->mExSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    move-object/from16 v31, v0

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "sendMail("

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ") finish"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v30 .. v32}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 569
    .restart local v25       #statusCode:I
    .restart local v26       #statusLine:Lorg/apache/http/StatusLine;
    :cond_28
    const-string v30, "MailSender"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/mail/MailSender;->mExSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    move-object/from16 v31, v0

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "sendMail failed: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ", "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-interface/range {v26 .. v26}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v30 .. v32}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/String;)V

    .line 570
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/mail/eassvc/mail/MailSender;->needToSendMailInsteadSmartCmd(II)Z

    move-result v30

    if-nez v30, :cond_20

    .line 571
    invoke-static/range {v26 .. v26}, Lcom/htc/android/mail/eassvc/core/SyncManager;->getHttpStatusError(Lorg/apache/http/StatusLine;)Lcom/htc/android/mail/eassvc/core/SyncException;

    move-result-object v30

    throw v30
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
.end method

.method public setItem(Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;)V
    .locals 0
    .parameter "item"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/htc/android/mail/eassvc/mail/MailSender;->mSendItem:Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;

    .line 91
    return-void
.end method

.method public setLoginCredential(Ljava/lang/String;)V
    .locals 0
    .parameter "loginCredential"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/htc/android/mail/eassvc/mail/MailSender;->mLoginCredential:Ljava/lang/String;

    .line 87
    return-void
.end method
