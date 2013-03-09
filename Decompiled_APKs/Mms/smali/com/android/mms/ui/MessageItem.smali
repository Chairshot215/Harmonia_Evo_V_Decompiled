.class public Lcom/android/mms/ui/MessageItem;
.super Ljava/lang/Object;
.source "MessageItem.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field bInDelMode:Z

.field bInForwardMode:Z

.field bInSimSMSMode:Z

.field mAddress:Ljava/lang/String;

.field mAttachmentType:I

.field mBody:Ljava/lang/String;

.field final mBoxId:I

.field mCachedFormattedMessage:Ljava/lang/CharSequence;

.field mContact:Ljava/lang/String;

.field mContactDirty:Z

.field final mContext:Landroid/content/Context;

.field mDeliveryReport:Z

.field mErrorType:I

.field mHighlight:Ljava/lang/String;

.field mLocked:Z

.field mMessageSize:I

.field mMessageType:I

.field mMessageUri:Landroid/net/Uri;

.field mMixedMMS:Z

.field mMixedMessageBody:Lcom/android/mms/msg/body/MixedMessageBody;

.field private final mMsgCache:Lcom/android/mms/util/MessageCache;

.field public final mMsgId:J

.field mPlayTime:J

.field mReadReport:Z

.field mRelatedMMS:Z

.field mSimSMS:Z

.field mSlideshow:Lcom/android/mms/model/SlideshowModel;

.field mSubject:Ljava/lang/String;

.field mTimestamp:Ljava/lang/String;

.field public final mType:Ljava/lang/String;

.field public vvmId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const-string v0, "MessageItem"

    sput-object v0, Lcom/android/mms/ui/MessageItem;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/Cursor;Lcom/android/mms/msg/util/ColumnsMap;Ljava/lang/String;)V
    .locals 17
    .parameter "context"
    .parameter "type"
    .parameter "cursor"
    .parameter "columnsMap"
    .parameter "highlight"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 208
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 107
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/mms/ui/MessageItem;->bInDelMode:Z

    .line 111
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/mms/ui/MessageItem;->bInForwardMode:Z

    .line 115
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/mms/ui/MessageItem;->mSimSMS:Z

    .line 116
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/mms/ui/MessageItem;->bInSimSMSMode:Z

    .line 206
    invoke-static {}, Lcom/android/mms/util/MessageCache;->getInstance()Lcom/android/mms/util/MessageCache;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/mms/ui/MessageItem;->mMsgCache:Lcom/android/mms/util/MessageCache;

    .line 209
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mContext:Landroid/content/Context;

    .line 210
    move-object/from16 v0, p4

    iget v13, v0, Lcom/android/mms/msg/util/ColumnsMap;->mColumnMsgId:I

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    move-object/from16 v0, p0

    iput-wide v13, v0, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    .line 211
    if-eqz p5, :cond_0

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    :goto_0
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/mms/ui/MessageItem;->mHighlight:Ljava/lang/String;

    .line 212
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    .line 213
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/mms/ui/MessageItem;->mRelatedMMS:Z

    .line 214
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/mms/ui/MessageItem;->mMixedMMS:Z

    .line 215
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/mms/ui/MessageItem;->mContactDirty:Z

    .line 219
    move-object/from16 v0, p4

    iget v13, v0, Lcom/android/mms/msg/util/ColumnsMap;->mColumnSmsDate:I

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 222
    .local v4, date:J
    const-string v13, "sms"

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 223
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/mms/ui/MessageItem;->mReadReport:Z

    .line 226
    move-object/from16 v0, p4

    iget v13, v0, Lcom/android/mms/msg/util/ColumnsMap;->mColumnSmsSimOnIndex:I

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 227
    .local v10, simIdx:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/mms/util/SimIndexUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_1

    const/4 v13, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/mms/ui/MessageItem;->mSimSMS:Z

    .line 230
    move-object/from16 v0, p4

    iget v13, v0, Lcom/android/mms/msg/util/ColumnsMap;->mColumnSmsStatus:I

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    const-wide/16 v15, -0x1

    cmp-long v13, v13, v15

    if-eqz v13, :cond_2

    const/4 v13, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/mms/ui/MessageItem;->mDeliveryReport:Z

    .line 232
    sget-object v13, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-static {v13, v14, v15}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    .line 234
    move-object/from16 v0, p4

    iget v13, v0, Lcom/android/mms/msg/util/ColumnsMap;->mColumnSmsType:I

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    .line 235
    move-object/from16 v0, p4

    iget v13, v0, Lcom/android/mms/msg/util/ColumnsMap;->mColumnSmsAddress:I

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    .line 237
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    invoke-static {v13}, Landroid/provider/Telephony$Sms;->isOutgoingFolder(I)Z

    move-result v13

    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/mms/ui/MessageItem;->mSimSMS:Z

    if-nez v13, :cond_3

    .line 238
    const v13, 0x7f090022

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 241
    .local v6, meString:Ljava/lang/String;
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/mms/ui/MessageItem;->mContact:Ljava/lang/String;

    .line 246
    .end local v6           #meString:Ljava/lang/String;
    :goto_3
    move-object/from16 v0, p4

    iget v13, v0, Lcom/android/mms/msg/util/ColumnsMap;->mColumnSmsBody:I

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    .line 248
    move-object/from16 v0, p4

    iget v13, v0, Lcom/android/mms/msg/util/ColumnsMap;->mColumnSmsLocked:I

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    if-eqz v13, :cond_4

    const/4 v13, 0x1

    :goto_4
    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/mms/ui/MessageItem;->mLocked:Z

    .line 376
    .end local v10           #simIdx:Ljava/lang/String;
    :goto_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MessageItem;->mContext:Landroid/content/Context;

    invoke-static {v13, v4, v5}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampDetailString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/mms/ui/MessageItem;->mTimestamp:Ljava/lang/String;

    .line 377
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessageItem;->refreshFrom()V

    .line 378
    return-void

    .line 211
    .end local v4           #date:J
    :cond_0
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 227
    .restart local v4       #date:J
    .restart local v10       #simIdx:Ljava/lang/String;
    :cond_1
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 230
    :cond_2
    const/4 v13, 0x0

    goto/16 :goto_2

    .line 244
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/mms/ui/MessageItem;->mContact:Ljava/lang/String;

    goto :goto_3

    .line 248
    :cond_4
    const/4 v13, 0x0

    goto :goto_4

    .line 249
    .end local v10           #simIdx:Ljava/lang/String;
    :cond_5
    const-string v13, "mms"

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e

    .line 250
    sget-object v13, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-static {v13, v14, v15}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    .line 251
    move-object/from16 v0, p4

    iget v13, v0, Lcom/android/mms/msg/util/ColumnsMap;->mColumnMmsMessageBox:I

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    .line 252
    move-object/from16 v0, p4

    iget v13, v0, Lcom/android/mms/msg/util/ColumnsMap;->mColumnMmsMessageType:I

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    .line 253
    move-object/from16 v0, p4

    iget v13, v0, Lcom/android/mms/msg/util/ColumnsMap;->mColumnMmsErrorType:I

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/mms/ui/MessageItem;->mErrorType:I

    .line 254
    move-object/from16 v0, p4

    iget v13, v0, Lcom/android/mms/msg/util/ColumnsMap;->mColumnMmsSubject:I

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 255
    .local v11, subject:Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_6

    .line 256
    new-instance v12, Lcom/google/android/mms/pdu/EncodedStringValue;

    move-object/from16 v0, p4

    iget v13, v0, Lcom/android/mms/msg/util/ColumnsMap;->mColumnMmsSubjectCharset:I

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    invoke-static {v11}, Lcom/google/android/mms/pdu/PduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v14

    invoke-direct {v12, v13, v14}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    .line 259
    .local v12, v:Lcom/google/android/mms/pdu/EncodedStringValue;
    invoke-virtual {v12}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    .line 261
    .end local v12           #v:Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_6
    move-object/from16 v0, p4

    iget v13, v0, Lcom/android/mms/msg/util/ColumnsMap;->mColumnMmsLocked:I

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    if-eqz v13, :cond_8

    const/4 v13, 0x1

    :goto_6
    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/mms/ui/MessageItem;->mLocked:Z

    .line 263
    move-object/from16 v0, p4

    iget v13, v0, Lcom/android/mms/msg/util/ColumnsMap;->mColumnMmsContentType:I

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 264
    .local v3, contentType:Ljava/lang/String;
    const-string v13, "application/vnd.wap.multipart.mixed"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 265
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/mms/ui/MessageItem;->mMixedMMS:Z

    .line 270
    :cond_7
    :goto_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MessageItem;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v9

    .line 271
    .local v9, p:Lcom/google/android/mms/pdu/PduPersister;
    const/16 v13, 0x82

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    if-ne v13, v14, :cond_a

    .line 272
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/mms/ui/MessageItem;->mDeliveryReport:Z

    .line 273
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v9, v13}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v8

    check-cast v8, Lcom/google/android/mms/pdu/NotificationInd;

    .line 274
    .local v8, notifInd:Lcom/google/android/mms/pdu/NotificationInd;
    invoke-virtual {v8}, Lcom/google/android/mms/pdu/NotificationInd;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/android/mms/ui/MessageItem;->interpretFrom(Lcom/google/android/mms/pdu/EncodedStringValue;Landroid/net/Uri;)V

    .line 276
    new-instance v13, Ljava/lang/String;

    invoke-virtual {v8}, Lcom/google/android/mms/pdu/NotificationInd;->getContentLocation()[B

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    .line 277
    invoke-virtual {v8}, Lcom/google/android/mms/pdu/NotificationInd;->getMessageSize()J

    move-result-wide v13

    long-to-int v13, v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/mms/ui/MessageItem;->mMessageSize:I

    .line 278
    invoke-virtual {v8}, Lcom/google/android/mms/pdu/NotificationInd;->getExpiry()J

    move-result-wide v13

    const-wide/16 v15, 0x3e8

    mul-long v4, v13, v15

    .line 279
    goto/16 :goto_5

    .line 261
    .end local v3           #contentType:Ljava/lang/String;
    .end local v8           #notifInd:Lcom/google/android/mms/pdu/NotificationInd;
    .end local v9           #p:Lcom/google/android/mms/pdu/PduPersister;
    :cond_8
    const/4 v13, 0x0

    goto :goto_6

    .line 266
    .restart local v3       #contentType:Ljava/lang/String;
    :cond_9
    const-string v13, "application/vnd.wap.multipart.related"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 267
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/mms/ui/MessageItem;->mRelatedMMS:Z

    goto :goto_7

    .line 281
    .restart local v9       #p:Lcom/google/android/mms/pdu/PduPersister;
    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MessageItem;->mMsgCache:Lcom/android/mms/util/MessageCache;

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/android/mms/util/MessageCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/mms/msg/AbstractMessage;

    .line 282
    .local v7, msg:Lcom/android/mms/msg/AbstractMessage;
    if-nez v7, :cond_b

    .line 283
    new-instance v2, Lcom/android/mms/msg/util/MessageDataAdapter;

    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v13

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-direct {v2, v13, v0, v1}, Lcom/android/mms/msg/util/MessageDataAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Lcom/android/mms/msg/util/ColumnsMap;)V

    .line 284
    .local v2, adapter:Lcom/android/mms/msg/util/MessageDataAdapter;
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v13, v2, v14}, Lcom/android/mms/msg/MultimediaMessage;->create(Landroid/content/Context;Lcom/android/mms/msg/util/MessageDataAdapter;I)Lcom/android/mms/msg/AbstractMessage;

    move-result-object v7

    .line 286
    .end local v2           #adapter:Lcom/android/mms/msg/util/MessageDataAdapter;
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/mms/ui/MessageItem;->mMixedMMS:Z

    if-eqz v13, :cond_d

    move-object v13, v7

    .line 287
    check-cast v13, Lcom/android/mms/msg/MixedMultimediaMessage;

    invoke-virtual {v13}, Lcom/android/mms/msg/MixedMultimediaMessage;->getMessageBody()Lcom/android/mms/msg/body/MixedMessageBody;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/mms/ui/MessageItem;->mMixedMessageBody:Lcom/android/mms/msg/body/MixedMessageBody;

    .line 288
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MessageItem;->mMixedMessageBody:Lcom/android/mms/msg/body/MixedMessageBody;

    invoke-virtual {v13}, Lcom/android/mms/msg/body/MixedMessageBody;->toPduBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/android/mms/model/SlideshowModel;->createFromPduBody(Landroid/content/Context;Lcom/google/android/mms/pdu/PduBody;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    .line 305
    :cond_c
    :goto_8
    invoke-virtual {v7}, Lcom/android/mms/msg/AbstractMessage;->getAddress()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    .line 306
    invoke-virtual {v7}, Lcom/android/mms/msg/AbstractMessage;->getFrom()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/mms/ui/MessageItem;->mContact:Ljava/lang/String;

    .line 307
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/MessageItem;->mMixedMessageBody:Lcom/android/mms/msg/body/MixedMessageBody;

    invoke-static {v13, v14}, Lcom/android/mms/ui/MessageItem;->getAttachmentType(Lcom/android/mms/model/SlideshowModel;Lcom/android/mms/msg/body/MixedMessageBody;)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/mms/ui/MessageItem;->mAttachmentType:I

    .line 308
    invoke-virtual {v7}, Lcom/android/mms/msg/AbstractMessage;->getTimestamp()J

    move-result-wide v4

    .line 325
    invoke-virtual {v7}, Lcom/android/mms/msg/AbstractMessage;->isDeliveryReportRequired()Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/mms/ui/MessageItem;->mDeliveryReport:Z

    .line 341
    invoke-virtual {v7}, Lcom/android/mms/msg/AbstractMessage;->isReadReportRequired()Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/mms/ui/MessageItem;->mReadReport:Z

    .line 355
    invoke-virtual {v7}, Lcom/android/mms/msg/AbstractMessage;->getText()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    .line 356
    invoke-virtual {v7}, Lcom/android/mms/msg/AbstractMessage;->getMessageSize()I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/mms/ui/MessageItem;->mMessageSize:I

    goto/16 :goto_5

    .line 289
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/mms/ui/MessageItem;->mRelatedMMS:Z

    if-eqz v13, :cond_c

    move-object v13, v7

    .line 290
    check-cast v13, Lcom/android/mms/msg/RelatedMultimediaMessage;

    invoke-virtual {v13}, Lcom/android/mms/msg/RelatedMultimediaMessage;->getMessageBody()Lcom/android/mms/model/Model;

    move-result-object v13

    check-cast v13, Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    goto :goto_8

    .line 359
    .end local v3           #contentType:Ljava/lang/String;
    .end local v7           #msg:Lcom/android/mms/msg/AbstractMessage;
    .end local v9           #p:Lcom/google/android/mms/pdu/PduPersister;
    .end local v11           #subject:Ljava/lang/String;
    :cond_e
    const-string v13, "htcmsgs"

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f

    .line 360
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/mms/ui/MessageItem;->mReadReport:Z

    .line 361
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/mms/ui/MessageItem;->mDeliveryReport:Z

    .line 362
    sget-object v13, Landroid/provider/Telephony$HtcVvm;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-static {v13, v14, v15}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    .line 364
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    .line 365
    move-object/from16 v0, p4

    iget v13, v0, Lcom/android/mms/msg/util/ColumnsMap;->mColumnHtcVvmAddress:I

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    .line 366
    move-object/from16 v0, p4

    iget v13, v0, Lcom/android/mms/msg/util/ColumnsMap;->mColumnHtcVvmId:I

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/mms/ui/MessageItem;->vvmId:Ljava/lang/String;

    .line 367
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/mms/ui/MessageItem;->mContact:Ljava/lang/String;

    .line 368
    const-string v13, ""

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    .line 369
    move-object/from16 v0, p4

    iget v13, v0, Lcom/android/mms/msg/util/ColumnsMap;->mColumnHtcVvmPlayTime:I

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    move-object/from16 v0, p0

    iput-wide v13, v0, Lcom/android/mms/ui/MessageItem;->mPlayTime:J

    .line 371
    move-object/from16 v0, p4

    iget v13, v0, Lcom/android/mms/msg/util/ColumnsMap;->mColumnHtcMsgDate:I

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    goto/16 :goto_5

    .line 373
    :cond_f
    new-instance v13, Lcom/google/android/mms/MmsException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unknown type of the message: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v13
.end method

.method private static containsVCalendar(Lcom/android/mms/msg/body/MixedMessageBody;)Z
    .locals 3
    .parameter "body"

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/android/mms/msg/body/MixedMessageBody;->getMediaList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/MediaModel;

    .line 130
    .local v1, media:Lcom/android/mms/model/MediaModel;
    invoke-virtual {v1}, Lcom/android/mms/model/MediaModel;->isVCalendar()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 131
    const/4 v2, 0x1

    .line 134
    .end local v1           #media:Lcom/android/mms/model/MediaModel;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static containsVCard(Lcom/android/mms/msg/body/MixedMessageBody;)Z
    .locals 3
    .parameter "body"

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/android/mms/msg/body/MixedMessageBody;->getMediaList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/MediaModel;

    .line 121
    .local v1, media:Lcom/android/mms/model/MediaModel;
    invoke-virtual {v1}, Lcom/android/mms/model/MediaModel;->isVCard()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 122
    const/4 v2, 0x1

    .line 125
    .end local v1           #media:Lcom/android/mms/model/MediaModel;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getAttachmentType(Lcom/android/mms/model/SlideshowModel;Lcom/android/mms/msg/body/MixedMessageBody;)I
    .locals 8
    .parameter "model"
    .parameter "body"

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x6

    const/4 v5, 0x1

    .line 155
    if-nez p0, :cond_1

    .line 203
    :cond_0
    :goto_0
    return v2

    .line 159
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v0

    .line 160
    .local v0, numberOfSlides:I
    if-le v0, v5, :cond_2

    .line 161
    const/4 v2, 0x5

    goto :goto_0

    .line 162
    :cond_2
    if-ne v0, v5, :cond_0

    .line 164
    if-eqz p1, :cond_4

    .line 165
    invoke-static {p1}, Lcom/android/mms/ui/MessageItem;->containsVCard(Lcom/android/mms/msg/body/MixedMessageBody;)Z

    move-result v7

    if-eqz v7, :cond_3

    move v2, v3

    .line 166
    goto :goto_0

    .line 168
    :cond_3
    invoke-static {p1}, Lcom/android/mms/ui/MessageItem;->containsVCalendar(Lcom/android/mms/msg/body/MixedMessageBody;)Z

    move-result v7

    if-eqz v7, :cond_4

    move v2, v4

    .line 169
    goto :goto_0

    .line 172
    :cond_4
    invoke-virtual {p0, v6}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v1

    .line 174
    .local v1, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 175
    const/4 v2, 0x2

    goto :goto_0

    .line 178
    :cond_5
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 179
    const/4 v2, 0x5

    goto :goto_0

    .line 182
    :cond_6
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v7

    if-eqz v7, :cond_7

    move v2, v5

    .line 183
    goto :goto_0

    .line 186
    :cond_7
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v5

    if-eqz v5, :cond_8

    move v2, v6

    .line 187
    goto :goto_0

    .line 190
    :cond_8
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v5

    if-nez v5, :cond_0

    .line 194
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasVcard()Z

    move-result v5

    if-eqz v5, :cond_9

    move v2, v3

    .line 195
    goto :goto_0

    .line 198
    :cond_9
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasVCalendar()Z

    move-result v3

    if-eqz v3, :cond_0

    move v2, v4

    .line 199
    goto :goto_0
.end method

.method private getTimestampStrId()I
    .locals 2

    .prologue
    .line 412
    const/16 v0, 0x82

    iget v1, p0, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    if-ne v0, v1, :cond_0

    .line 413
    const v0, 0x7f090028

    .line 415
    :goto_0
    return v0

    :cond_0
    const v0, 0x7f090027

    goto :goto_0
.end method

.method private interpretFrom(Lcom/google/android/mms/pdu/EncodedStringValue;Landroid/net/Uri;)V
    .locals 1
    .parameter "from"
    .parameter "messageUri"

    .prologue
    .line 381
    if-eqz p1, :cond_0

    .line 382
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    .line 390
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/mms/ui/MessageItem;->mContact:Ljava/lang/String;

    .line 391
    return-void

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/android/mms/util/AddressUtils;->getFrom(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public containVCalendar()Z
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mMixedMessageBody:Lcom/android/mms/msg/body/MixedMessageBody;

    if-eqz v0, :cond_0

    .line 473
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mMixedMessageBody:Lcom/android/mms/msg/body/MixedMessageBody;

    invoke-static {v0}, Lcom/android/mms/ui/MessageItem;->containsVCalendar(Lcom/android/mms/msg/body/MixedMessageBody;)Z

    move-result v0

    .line 475
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public containVCard()Z
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mMixedMessageBody:Lcom/android/mms/msg/body/MixedMessageBody;

    if-eqz v0, :cond_0

    .line 466
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mMixedMessageBody:Lcom/android/mms/msg/body/MixedMessageBody;

    invoke-static {v0}, Lcom/android/mms/ui/MessageItem;->containsVCard(Lcom/android/mms/msg/body/MixedMessageBody;)Z

    move-result v0

    .line 468
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBoxId()I
    .locals 1

    .prologue
    .line 506
    iget v0, p0, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    return v0
.end method

.method public getCachedFormattedMessage()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 502
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mCachedFormattedMessage:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getMessageBody()Lcom/android/mms/model/Model;
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    return-object v0
.end method

.method public getMessageSize()I
    .locals 4

    .prologue
    .line 144
    const/4 v2, 0x0

    .line 146
    .local v2, size:I
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isMixedMMS()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 147
    iget-object v3, p0, Lcom/android/mms/ui/MessageItem;->mMixedMessageBody:Lcom/android/mms/msg/body/MixedMessageBody;

    invoke-virtual {v3}, Lcom/android/mms/msg/body/MixedMessageBody;->getMediaList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/MediaModel;

    .line 148
    .local v1, m:Lcom/android/mms/model/MediaModel;
    invoke-virtual {v1}, Lcom/android/mms/model/MediaModel;->getMediaSize()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 151
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #m:Lcom/android/mms/model/MediaModel;
    :cond_0
    return v2
.end method

.method public isDownloaded()Z
    .locals 2

    .prologue
    .line 445
    iget v0, p0, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    const/16 v1, 0x82

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIncomingMessage()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 458
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 459
    iget v2, p0, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    if-ne v2, v0, :cond_1

    .line 461
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 459
    goto :goto_0

    .line 461
    :cond_2
    iget v2, p0, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    if-eq v2, v0, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public isMixedMMS()Z
    .locals 1

    .prologue
    .line 432
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageItem;->mMixedMMS:Z

    return v0
.end method

.method public isMms()Z
    .locals 2

    .prologue
    .line 424
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    const-string v1, "mms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isOutgoingMessage()Z
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 449
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v4

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    if-ne v4, v6, :cond_3

    move v0, v2

    .line 450
    .local v0, isOutgoingMms:Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v4

    if-eqz v4, :cond_4

    iget v4, p0, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    const/4 v5, 0x5

    if-eq v4, v5, :cond_0

    iget v4, p0, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    if-eq v4, v6, :cond_0

    iget v4, p0, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_4

    :cond_0
    move v1, v2

    .line 454
    .local v1, isOutgoingSms:Z
    :goto_1
    if-nez v0, :cond_1

    if-eqz v1, :cond_2

    :cond_1
    move v3, v2

    :cond_2
    return v3

    .end local v0           #isOutgoingMms:Z
    .end local v1           #isOutgoingSms:Z
    :cond_3
    move v0, v3

    .line 449
    goto :goto_0

    .restart local v0       #isOutgoingMms:Z
    :cond_4
    move v1, v3

    .line 450
    goto :goto_1
.end method

.method public isRelatedMMS()Z
    .locals 1

    .prologue
    .line 428
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageItem;->mRelatedMMS:Z

    return v0
.end method

.method public isSms()Z
    .locals 2

    .prologue
    .line 436
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    const-string v1, "sms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isVVM()Z
    .locals 2

    .prologue
    .line 440
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    const-string v1, "htcmsgs"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public makeCopy(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduBody;
    .locals 1
    .parameter "context"

    .prologue
    .line 480
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 481
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isRelatedMMS()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 482
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0, p1}, Lcom/android/mms/model/SlideshowModel;->makeCopy(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v0

    .line 488
    :goto_0
    return-object v0

    .line 484
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isMixedMMS()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 485
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mMixedMessageBody:Lcom/android/mms/msg/body/MixedMessageBody;

    invoke-virtual {v0, p1}, Lcom/android/mms/msg/body/MixedMessageBody;->makeCopy(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v0

    goto :goto_0

    .line 488
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public refreshFrom()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 395
    invoke-static {}, Lcom/android/mms/util/ContactNameCache;->getInstance()Lcom/android/mms/util/ContactNameCache;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/MessageItem;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/mms/util/ContactNameCache;->getContactName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 396
    .local v0, t:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/mms/ui/MessageItem;->mContact:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 397
    iput-boolean v4, p0, Lcom/android/mms/ui/MessageItem;->mContactDirty:Z

    .line 398
    :cond_0
    iput-object v0, p0, Lcom/android/mms/ui/MessageItem;->mContact:Ljava/lang/String;

    .line 401
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportShowNumberInDetailView()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 402
    sget v1, Lcom/android/mms/ui/ComposeMessageActivity;->sThreadContactNumberCount:I

    if-le v1, v4, :cond_1

    .line 403
    iget-object v1, p0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/mms/ui/MessageItem;->mContact:Ljava/lang/String;

    .line 404
    iput-boolean v4, p0, Lcom/android/mms/ui/MessageItem;->mContactDirty:Z

    .line 409
    :cond_1
    return-void
.end method

.method public setCachedFormattedMessage(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "formattedMessage"

    .prologue
    .line 498
    iput-object p1, p0, Lcom/android/mms/ui/MessageItem;->mCachedFormattedMessage:Ljava/lang/CharSequence;

    .line 499
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 511
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " box: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " uri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " address: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " contact: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/MessageItem;->mContact:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " read: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/mms/ui/MessageItem;->mReadReport:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " delivery report: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/mms/ui/MessageItem;->mDeliveryReport:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
