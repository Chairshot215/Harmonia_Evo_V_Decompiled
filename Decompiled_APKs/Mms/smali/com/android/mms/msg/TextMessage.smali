.class public Lcom/android/mms/msg/TextMessage;
.super Lcom/android/mms/msg/AbstractMessage;
.source "TextMessage.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mGroupSmsErrorMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupSmsPendingMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupSmsReceivedMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupSmsSentMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/mms/msg/util/MessageDataAdapter;I)V
    .locals 4
    .parameter "context"
    .parameter "adapter"
    .parameter "threadType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/msg/AbstractMessage;-><init>(Landroid/content/Context;Lcom/android/mms/msg/util/MessageDataAdapter;I)V

    .line 41
    iput-object v1, p0, Lcom/android/mms/msg/TextMessage;->mGroupSmsPendingMap:Ljava/util/HashMap;

    .line 42
    iput-object v1, p0, Lcom/android/mms/msg/TextMessage;->mGroupSmsErrorMap:Ljava/util/HashMap;

    .line 43
    iput-object v1, p0, Lcom/android/mms/msg/TextMessage;->mGroupSmsReceivedMap:Ljava/util/HashMap;

    .line 44
    iput-object v1, p0, Lcom/android/mms/msg/TextMessage;->mGroupSmsSentMap:Ljava/util/HashMap;

    .line 50
    iput-object p1, p0, Lcom/android/mms/msg/TextMessage;->mContext:Landroid/content/Context;

    .line 52
    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v2, p0, Lcom/android/mms/msg/AbstractMessage;->mMessageId:J

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/msg/AbstractMessage;->mMessageUri:Landroid/net/Uri;

    .line 54
    invoke-virtual {p2}, Lcom/android/mms/msg/util/MessageDataAdapter;->getSmsMessageBox()I

    move-result v1

    iput v1, p0, Lcom/android/mms/msg/AbstractMessage;->mBoxId:I

    .line 57
    invoke-virtual {p2}, Lcom/android/mms/msg/util/MessageDataAdapter;->getSmsAddress()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/msg/AbstractMessage;->mAddress:Ljava/lang/String;

    .line 78
    invoke-virtual {p2}, Lcom/android/mms/msg/util/MessageDataAdapter;->getSmsMessageText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/msg/AbstractMessage;->mBody:Ljava/lang/String;

    .line 79
    invoke-virtual {p2}, Lcom/android/mms/msg/util/MessageDataAdapter;->getSmsDate()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/mms/msg/AbstractMessage;->mTimestamp:J

    .line 80
    invoke-virtual {p2}, Lcom/android/mms/msg/util/MessageDataAdapter;->getIndexOnSim()I

    move-result v1

    iput v1, p0, Lcom/android/mms/msg/AbstractMessage;->mIndexOnSim:I

    .line 81
    invoke-virtual {p2}, Lcom/android/mms/msg/util/MessageDataAdapter;->getSmsReadFlag()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/mms/msg/AbstractMessage;->mReadFlag:Z

    .line 82
    invoke-virtual {p2}, Lcom/android/mms/msg/util/MessageDataAdapter;->getSmsDeliveryReportFlag()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/mms/msg/AbstractMessage;->mDeliveryReport:Z

    .line 83
    iput-boolean v0, p0, Lcom/android/mms/msg/AbstractMessage;->mReadReport:Z

    .line 85
    invoke-virtual {p2}, Lcom/android/mms/msg/util/MessageDataAdapter;->getSmsStatus()I

    move-result v1

    iput v1, p0, Lcom/android/mms/msg/AbstractMessage;->mSmsStatus:I

    .line 86
    invoke-virtual {p2}, Lcom/android/mms/msg/util/MessageDataAdapter;->getPriority()I

    move-result v1

    iput v1, p0, Lcom/android/mms/msg/AbstractMessage;->mPriority:I

    .line 87
    invoke-virtual {p2}, Lcom/android/mms/msg/util/MessageDataAdapter;->getSmsCallbackNumber()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/msg/AbstractMessage;->mCallbackNumber:Ljava/lang/String;

    .line 90
    invoke-virtual {p2}, Lcom/android/mms/msg/util/MessageDataAdapter;->getSmsLockedFlag()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/mms/msg/AbstractMessage;->mLocked:Z

    .line 93
    invoke-virtual {p2}, Lcom/android/mms/msg/util/MessageDataAdapter;->getSmsIsEvdo()I

    move-result v1

    if-nez v1, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/android/mms/msg/AbstractMessage;->mEvdo:Z

    .line 95
    invoke-virtual {p0, p2}, Lcom/android/mms/msg/TextMessage;->getSmsPrivacy(Lcom/android/mms/msg/util/MessageDataAdapter;)I

    move-result v0

    iput v0, p0, Lcom/android/mms/msg/AbstractMessage;->mSmsPrivacy:I

    .line 97
    invoke-virtual {p2}, Lcom/android/mms/msg/util/MessageDataAdapter;->getHtcDate2()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/mms/msg/AbstractMessage;->mDate2:J

    .line 100
    iget-object v0, p0, Lcom/android/mms/msg/TextMessage;->mGroupSmsPendingMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/mms/msg/TextMessage;->mGroupSmsPendingMap:Ljava/util/HashMap;

    .line 102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/mms/msg/TextMessage;->mGroupSmsErrorMap:Ljava/util/HashMap;

    .line 103
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/mms/msg/TextMessage;->mGroupSmsReceivedMap:Ljava/util/HashMap;

    .line 104
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/mms/msg/TextMessage;->mGroupSmsSentMap:Ljava/util/HashMap;

    .line 107
    :cond_0
    return-void

    .line 93
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/mms/msg/AbstractMessage;)V
    .locals 1
    .parameter "message"

    .prologue
    const/4 v0, 0x0

    .line 123
    invoke-direct {p0, p1}, Lcom/android/mms/msg/AbstractMessage;-><init>(Lcom/android/mms/msg/AbstractMessage;)V

    .line 41
    iput-object v0, p0, Lcom/android/mms/msg/TextMessage;->mGroupSmsPendingMap:Ljava/util/HashMap;

    .line 42
    iput-object v0, p0, Lcom/android/mms/msg/TextMessage;->mGroupSmsErrorMap:Ljava/util/HashMap;

    .line 43
    iput-object v0, p0, Lcom/android/mms/msg/TextMessage;->mGroupSmsReceivedMap:Ljava/util/HashMap;

    .line 44
    iput-object v0, p0, Lcom/android/mms/msg/TextMessage;->mGroupSmsSentMap:Ljava/util/HashMap;

    .line 124
    return-void
.end method

.method private getGroupStatus()V
    .locals 17

    .prologue
    .line 324
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gid in (Select gid from sms where _id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/msg/TextMessage;->getMessageId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and gid > 0)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 325
    .local v5, selection:Ljava/lang/String;
    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "status"

    aput-object v2, v4, v1

    const/4 v1, 0x1

    const-string v2, "type"

    aput-object v2, v4, v1

    .line 326
    .local v4, projection:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/msg/TextMessage;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/msg/TextMessage;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 328
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_7

    .line 330
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 331
    .local v8, count:I
    const/4 v14, 0x1

    .line 332
    .local v14, isSent:Z
    const/4 v13, 0x1

    .line 333
    .local v13, isReceived:Z
    const/4 v10, 0x0

    .line 334
    .local v10, hasError:Z
    const/4 v12, 0x0

    .line 335
    .local v12, isPending:Z
    if-lez v8, :cond_6

    .line 336
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    if-ge v11, v8, :cond_5

    .line 337
    invoke-interface {v9, v11}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 338
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 339
    const/4 v14, 0x0

    .line 343
    :cond_0
    :goto_1
    const/4 v1, 0x1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_3

    .line 344
    const/4 v10, 0x1

    .line 336
    :cond_1
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 340
    :cond_2
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_0

    .line 341
    const/4 v13, 0x0

    goto :goto_1

    .line 345
    :cond_3
    const/4 v1, 0x1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_4

    const/4 v1, 0x1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_4

    const/4 v1, 0x1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_1

    .line 348
    :cond_4
    const/4 v12, 0x1

    goto :goto_2

    .line 352
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/msg/TextMessage;->getMessageId()J

    move-result-wide v15

    .line 353
    .local v15, mid:J
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/msg/TextMessage;->mGroupSmsSentMap:Ljava/util/HashMap;

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/msg/TextMessage;->mGroupSmsReceivedMap:Ljava/util/HashMap;

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/msg/TextMessage;->mGroupSmsErrorMap:Ljava/util/HashMap;

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/msg/TextMessage;->mGroupSmsPendingMap:Ljava/util/HashMap;

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 360
    .end local v11           #i:I
    .end local v15           #mid:J
    :cond_6
    invoke-static {v9}, Lcom/android/mms/ui/MessageUtils;->closeCursorInBackground(Landroid/database/Cursor;)V

    .line 363
    .end local v8           #count:I
    .end local v10           #hasError:Z
    .end local v12           #isPending:Z
    .end local v13           #isReceived:Z
    .end local v14           #isSent:Z
    :cond_7
    return-void

    .line 360
    :catchall_0
    move-exception v1

    invoke-static {v9}, Lcom/android/mms/ui/MessageUtils;->closeCursorInBackground(Landroid/database/Cursor;)V

    throw v1
.end method


# virtual methods
.method public compareTo(Lcom/android/mms/msg/TextMessage;)Z
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v0, 0x0

    .line 234
    iget-object v1, p1, Lcom/android/mms/msg/AbstractMessage;->mAddress:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/mms/msg/AbstractMessage;->mAddress:Ljava/lang/String;

    if-eq v1, v2, :cond_1

    .line 253
    :cond_0
    :goto_0
    return v0

    .line 236
    :cond_1
    iget v1, p1, Lcom/android/mms/msg/AbstractMessage;->mBoxId:I

    iget v2, p0, Lcom/android/mms/msg/AbstractMessage;->mBoxId:I

    if-ne v1, v2, :cond_0

    .line 238
    iget-object v1, p1, Lcom/android/mms/msg/AbstractMessage;->mAddress:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/mms/msg/AbstractMessage;->mAddress:Ljava/lang/String;

    if-ne v1, v2, :cond_0

    .line 240
    iget-wide v1, p1, Lcom/android/mms/msg/AbstractMessage;->mTimestamp:J

    iget-wide v3, p0, Lcom/android/mms/msg/AbstractMessage;->mTimestamp:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 242
    iget v1, p1, Lcom/android/mms/msg/AbstractMessage;->mIndexOnSim:I

    iget v2, p0, Lcom/android/mms/msg/AbstractMessage;->mIndexOnSim:I

    if-ne v1, v2, :cond_0

    .line 244
    iget-boolean v1, p1, Lcom/android/mms/msg/AbstractMessage;->mReadFlag:Z

    iget-boolean v2, p0, Lcom/android/mms/msg/AbstractMessage;->mReadFlag:Z

    if-ne v1, v2, :cond_0

    .line 246
    iget-boolean v1, p1, Lcom/android/mms/msg/AbstractMessage;->mDeliveryReport:Z

    iget-boolean v2, p0, Lcom/android/mms/msg/AbstractMessage;->mDeliveryReport:Z

    if-ne v1, v2, :cond_0

    .line 248
    iget-boolean v1, p1, Lcom/android/mms/msg/AbstractMessage;->mReadReport:Z

    iget-boolean v2, p0, Lcom/android/mms/msg/AbstractMessage;->mReadReport:Z

    if-ne v1, v2, :cond_0

    .line 250
    iget-boolean v1, p1, Lcom/android/mms/msg/AbstractMessage;->mLocked:Z

    iget-boolean v2, p0, Lcom/android/mms/msg/AbstractMessage;->mLocked:Z

    if-ne v1, v2, :cond_0

    .line 253
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getCallbackNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/mms/msg/AbstractMessage;->mCallbackNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getFrom()Ljava/lang/String;
    .locals 5

    .prologue
    .line 134
    iget v1, p0, Lcom/android/mms/msg/AbstractMessage;->mBoxId:I

    invoke-static {v1}, Landroid/provider/Telephony$Sms;->isOutgoingFolder(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 135
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090022

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, meString:Ljava/lang/String;
    iget v1, p0, Lcom/android/mms/msg/AbstractMessage;->mThreadType:I

    if-nez v1, :cond_0

    .line 139
    iput-object v0, p0, Lcom/android/mms/msg/AbstractMessage;->mContact:Ljava/lang/String;

    .line 152
    iget-object v1, p0, Lcom/android/mms/msg/AbstractMessage;->mContact:Ljava/lang/String;

    .end local v0           #meString:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 142
    .restart local v0       #meString:Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/android/mms/util/ContactNameCache;->getInstance()Lcom/android/mms/util/ContactNameCache;

    move-result-object v1

    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/msg/AbstractMessage;->mAddress:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/mms/util/ContactNameCache;->getContactName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/msg/AbstractMessage;->mContact:Ljava/lang/String;

    .line 143
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090020

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/mms/msg/AbstractMessage;->mContact:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 150
    .end local v0           #meString:Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/msg/AbstractMessage;->mAddress:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/android/mms/msg/TextMessage;->formatIncomingFrom(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getSmsPrivacy()I
    .locals 1

    .prologue
    .line 283
    iget v0, p0, Lcom/android/mms/msg/AbstractMessage;->mSmsPrivacy:I

    return v0
.end method

.method protected getSmsPrivacy(Lcom/android/mms/msg/util/MessageDataAdapter;)I
    .locals 2
    .parameter "adapter"

    .prologue
    .line 276
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 279
    :goto_0
    return v0

    .line 277
    :cond_0
    invoke-virtual {p1}, Lcom/android/mms/msg/util/MessageDataAdapter;->getSmsFlags()I

    move-result v0

    const/high16 v1, -0x4000

    and-int/2addr v0, v1

    ushr-int/lit8 v0, v0, 0x1e

    iput v0, p0, Lcom/android/mms/msg/AbstractMessage;->mSmsPrivacy:I

    .line 279
    iget v0, p0, Lcom/android/mms/msg/AbstractMessage;->mSmsPrivacy:I

    goto :goto_0
.end method

.method public hasError()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 175
    invoke-virtual {p0}, Lcom/android/mms/msg/TextMessage;->getMessageId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 176
    .local v0, mid:Ljava/lang/Long;
    invoke-virtual {p0}, Lcom/android/mms/msg/TextMessage;->isGroupSms()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 177
    iget-object v2, p0, Lcom/android/mms/msg/TextMessage;->mGroupSmsReceivedMap:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/msg/TextMessage;->mGroupSmsErrorMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 178
    invoke-direct {p0}, Lcom/android/mms/msg/TextMessage;->getGroupStatus()V

    .line 179
    :cond_0
    iget-object v2, p0, Lcom/android/mms/msg/TextMessage;->mGroupSmsErrorMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 180
    iget-object v1, p0, Lcom/android/mms/msg/TextMessage;->mGroupSmsErrorMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 185
    :cond_1
    :goto_0
    return v1

    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/msg/TextMessage;->getMessageBox()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public initMap()V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/mms/msg/TextMessage;->mGroupSmsPendingMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/android/mms/msg/TextMessage;->mGroupSmsPendingMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 114
    iget-object v0, p0, Lcom/android/mms/msg/TextMessage;->mGroupSmsErrorMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 115
    iget-object v0, p0, Lcom/android/mms/msg/TextMessage;->mGroupSmsReceivedMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 116
    iget-object v0, p0, Lcom/android/mms/msg/TextMessage;->mGroupSmsSentMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 119
    :cond_0
    return-void
.end method

.method public isAllSmsReceived()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 293
    invoke-virtual {p0}, Lcom/android/mms/msg/TextMessage;->isGroupSms()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 294
    invoke-virtual {p0}, Lcom/android/mms/msg/TextMessage;->getMessageId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 295
    .local v0, mid:Ljava/lang/Long;
    iget-object v2, p0, Lcom/android/mms/msg/TextMessage;->mGroupSmsReceivedMap:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/msg/TextMessage;->mGroupSmsReceivedMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 296
    invoke-direct {p0}, Lcom/android/mms/msg/TextMessage;->getGroupStatus()V

    .line 297
    :cond_0
    iget-object v2, p0, Lcom/android/mms/msg/TextMessage;->mGroupSmsReceivedMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 298
    iget-object v1, p0, Lcom/android/mms/msg/TextMessage;->mGroupSmsReceivedMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 303
    .end local v0           #mid:Ljava/lang/Long;
    :cond_1
    :goto_0
    return v1

    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/msg/TextMessage;->getSmsStatus()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isAllSmsSent()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 310
    invoke-virtual {p0}, Lcom/android/mms/msg/TextMessage;->isGroupSms()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 311
    invoke-virtual {p0}, Lcom/android/mms/msg/TextMessage;->getMessageId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 312
    .local v0, mid:Ljava/lang/Long;
    iget-object v2, p0, Lcom/android/mms/msg/TextMessage;->mGroupSmsReceivedMap:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/msg/TextMessage;->mGroupSmsSentMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 313
    invoke-direct {p0}, Lcom/android/mms/msg/TextMessage;->getGroupStatus()V

    .line 314
    :cond_0
    iget-object v2, p0, Lcom/android/mms/msg/TextMessage;->mGroupSmsSentMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 315
    iget-object v1, p0, Lcom/android/mms/msg/TextMessage;->mGroupSmsSentMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 320
    .end local v0           #mid:Ljava/lang/Long;
    :cond_1
    :goto_0
    return v1

    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/msg/TextMessage;->getSmsStatus()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isDrafts()Z
    .locals 2

    .prologue
    .line 229
    iget v0, p0, Lcom/android/mms/msg/AbstractMessage;->mBoxId:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIncoming()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 192
    iget v1, p0, Lcom/android/mms/msg/AbstractMessage;->mBoxId:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMultimediaMessage()Z
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x0

    return v0
.end method

.method public isNotification()Z
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x0

    return v0
.end method

.method public isPending()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 200
    invoke-virtual {p0}, Lcom/android/mms/msg/TextMessage;->getMessageBox()I

    move-result v0

    .line 201
    .local v0, box:I
    invoke-virtual {p0}, Lcom/android/mms/msg/TextMessage;->getMessageId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 202
    .local v1, mid:Ljava/lang/Long;
    invoke-virtual {p0}, Lcom/android/mms/msg/TextMessage;->isGroupSms()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 203
    iget-object v3, p0, Lcom/android/mms/msg/TextMessage;->mGroupSmsReceivedMap:Ljava/util/HashMap;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/mms/msg/TextMessage;->mGroupSmsPendingMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 204
    invoke-direct {p0}, Lcom/android/mms/msg/TextMessage;->getGroupStatus()V

    .line 205
    :cond_0
    iget-object v3, p0, Lcom/android/mms/msg/TextMessage;->mGroupSmsPendingMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 206
    iget-object v2, p0, Lcom/android/mms/msg/TextMessage;->mGroupSmsPendingMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 219
    :cond_1
    :goto_0
    return v2

    .line 213
    :cond_2
    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 217
    :sswitch_0
    const/4 v2, 0x1

    goto :goto_0

    .line 213
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x6 -> :sswitch_0
        0xc8 -> :sswitch_0
    .end sparse-switch
.end method

.method public isSent()Z
    .locals 2

    .prologue
    .line 261
    iget v0, p0, Lcom/android/mms/msg/AbstractMessage;->mBoxId:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTextMessage()Z
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x1

    return v0
.end method

.method public isVvm()Z
    .locals 1

    .prologue
    .line 266
    const/4 v0, 0x0

    return v0
.end method
