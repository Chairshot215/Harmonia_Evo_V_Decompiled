.class public Lcom/android/mms/ui/ConversationListAdapter;
.super Lcom/android/mms/ui/ConversationListBaseAdapter;
.source "ConversationListAdapter.java"


# static fields
.field static final COLUMN_DATE:I = 0x3

.field static final COLUMN_ERROR:I = 0x7

.field static final COLUMN_ID:I = 0x0

.field static final COLUMN_LOCKED:I = 0xe

.field static final COLUMN_MESSAGE_BOX:I = 0xd

.field static final COLUMN_MESSAGE_COUNT:I = 0x1

.field static final COLUMN_MESSAGE_ID:I = 0x1

.field static final COLUMN_MESSAGE_TYPE:I = 0x0

.field static final COLUMN_MMS_DATE:I = 0xa

.field static final COLUMN_MMS_READ:I = 0xb

.field static final COLUMN_MMS_SUBJECT:I = 0x8

.field static final COLUMN_MMS_SUBJECT_CHARSET:I = 0x9

.field static final COLUMN_NAME:I = 0xf

.field static final COLUMN_PRIORITY:I = 0xa

.field static final COLUMN_READ:I = 0x4

.field static final COLUMN_RECIPIENTS_IDS:I = 0x2

.field static final COLUMN_RECIPIENT_ADDRESS:I = 0x9

.field static final COLUMN_SMS_ADDRESS:I = 0x3

.field static final COLUMN_SMS_BODY:I = 0x4

.field static final COLUMN_SMS_DATE:I = 0x5

.field static final COLUMN_SMS_NOTIFY_ADDRESS:I = 0x2

.field static final COLUMN_SMS_NOTIFY_BODY:I = 0x3

.field static final COLUMN_SMS_NOTIFY_COLUMN_ID:I = 0x1

.field static final COLUMN_SMS_NOTIFY_DATE:I = 0x4

.field static final COLUMN_SMS_NOTIFY_READ:I = 0x5

.field static final COLUMN_SMS_NOTIFY_THREAD_ID:I = 0x0

.field static final COLUMN_SMS_READ:I = 0x6

.field static final COLUMN_SMS_TYPE:I = 0x7

.field static final COLUMN_SNIPPET:I = 0x5

.field static final COLUMN_SNIPPET_CHARSET:I = 0x6

.field static final COLUMN_THREAD_ID:I = 0x2

.field static final COLUMN_TYPE:I = 0xb

.field static final COLUMN_TYPE_DISCRIMINATOR:I = 0xc

.field static final COLUMN_UNREAD_COUNT:I = 0x8

.field static final COLUMN__ERROR_TYPE:I = 0x10

.field static final PROJECTION:[Ljava/lang/String; = null

.field static final SEARCH_PROJECTION:[Ljava/lang/String; = null

.field public static final SMS_PROJECTION:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "ConversationListAdapter"

.field public static mMessagePreviewLine:I


# instance fields
.field private caller_context:Landroid/content/Context;

.field private final mSimpleMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 87
    sput v3, Lcom/android/mms/ui/ConversationListAdapter;->mMessagePreviewLine:I

    .line 90
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "message_count"

    aput-object v1, v0, v5

    const-string v1, "recipient_ids"

    aput-object v1, v0, v3

    const-string v1, "date"

    aput-object v1, v0, v6

    const-string v1, "read"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "snippet"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "snippet_cs"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "error"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "unread_count"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "recipient_address"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "priority"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "type"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "transport_type"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "msg_box"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "locked"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "name"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "err_type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/ui/ConversationListAdapter;->PROJECTION:[Ljava/lang/String;

    .line 143
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "transport_type"

    aput-object v1, v0, v4

    const-string v1, "_id"

    aput-object v1, v0, v5

    const-string v1, "thread_id"

    aput-object v1, v0, v3

    const-string v1, "address"

    aput-object v1, v0, v6

    const-string v1, "body"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "read"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "type"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "sub"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "sub_cs"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "date"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "read"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "fn"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/ui/ConversationListAdapter;->SEARCH_PROJECTION:[Ljava/lang/String;

    .line 176
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "thread_id"

    aput-object v1, v0, v4

    const-string v1, "_id"

    aput-object v1, v0, v5

    const-string v1, "address"

    aput-object v1, v0, v3

    const-string v1, "body"

    aput-object v1, v0, v6

    const-string v1, "date"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "read"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/ui/ConversationListAdapter;->SMS_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 2
    .parameter "contentResolver"
    .parameter "context"
    .parameter "cursor"
    .parameter "simple"

    .prologue
    .line 198
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, p3, v0, v1}, Lcom/android/mms/ui/ConversationListBaseAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;ZI)V

    .line 199
    iput-boolean p4, p0, Lcom/android/mms/ui/ConversationListAdapter;->mSimpleMode:Z

    .line 200
    iput-object p2, p0, Lcom/android/mms/ui/ConversationListAdapter;->caller_context:Landroid/content/Context;

    .line 201
    return-void
.end method

.method private extractSmsDataFromCursor(Landroid/database/Cursor;Lcom/android/mms/ui/ConversationHeader;)V
    .locals 3
    .parameter "cursor"
    .parameter "ch"

    .prologue
    const/4 v0, 0x1

    .line 206
    iput-boolean v0, p2, Lcom/android/mms/ui/ConversationHeader;->mIsSms:Z

    .line 207
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/android/mms/ui/ConversationHeader;->mFrom:Ljava/lang/String;

    .line 208
    const/4 v1, 0x3

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/android/mms/ui/ConversationHeader;->mSubject:Ljava/lang/String;

    .line 209
    const/4 v1, 0x4

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p2, Lcom/android/mms/ui/ConversationHeader;->mDateMillisec:J

    .line 210
    const/4 v1, 0x5

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    iput-boolean v0, p2, Lcom/android/mms/ui/ConversationHeader;->mIsRead:Z

    .line 211
    return-void

    .line 210
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 2
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 300
    invoke-super {p0, p1, p2, p3}, Lcom/android/mms/ui/ConversationListBaseAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 304
    if-eqz p3, :cond_0

    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    .line 305
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationListBaseAdapter;->mbShowFoot:Z

    if-eqz v0, :cond_0

    .line 306
    iget v0, p0, Lcom/android/mms/ui/ConversationListBaseAdapter;->mCurrent_limit:I

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->addQueryLimit(I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/ConversationListBaseAdapter;->mCurrent_limit:I

    .line 307
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->caller_context:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->caller_context:Landroid/content/Context;

    check-cast v0, Lcom/android/mms/ui/ConversationList;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationList;->startAsyncQuery()V

    .line 311
    :cond_0
    return-void
.end method

.method public declared-synchronized changeCursor(Landroid/database/Cursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    .line 325
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListBaseAdapter;->mCursor:Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, v0, :cond_0

    .line 369
    :goto_0
    monitor-exit p0

    return-void

    .line 329
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListBaseAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_3

    .line 330
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mChangeObserver:Landroid/widget/CursorAdapter$ChangeObserver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListBaseAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListAdapter;->mChangeObserver:Landroid/widget/CursorAdapter$ChangeObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 331
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListBaseAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 332
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListBaseAdapter;->mCursor:Landroid/database/Cursor;

    instance-of v0, v0, Landroid/database/MatrixCursor;

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListBaseAdapter;->mCursor:Landroid/database/Cursor;

    instance-of v0, v0, Lcom/android/mms/util/FakeCursorWrapper;

    if-nez v0, :cond_6

    .line 333
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListBaseAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/mms/util/MmsAsyncWorkHandler;->CloseCursorInBG(Landroid/database/Cursor;Z)V

    .line 337
    :cond_3
    :goto_1
    iput-object p1, p0, Lcom/android/mms/ui/ConversationListBaseAdapter;->mCursor:Landroid/database/Cursor;

    .line 339
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->caller_context:Landroid/content/Context;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->caller_context:Landroid/content/Context;

    check-cast v0, Lcom/android/mms/ui/ConversationList;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationList;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 340
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListBaseAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_5

    .line 341
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListBaseAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/mms/util/MmsAsyncWorkHandler;->CloseCursorInBG(Landroid/database/Cursor;Z)V

    .line 342
    :cond_5
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListBaseAdapter;->mCursor:Landroid/database/Cursor;

    .line 343
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mDataValid:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 325
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 335
    :cond_6
    :try_start_2
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListBaseAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 347
    :cond_7
    if-eqz p1, :cond_a

    .line 348
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mChangeObserver:Landroid/widget/CursorAdapter$ChangeObserver;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mChangeObserver:Landroid/widget/CursorAdapter$ChangeObserver;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 349
    :cond_8
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 350
    :cond_9
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mRowIDColumn:I

    .line 351
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mDataValid:Z

    .line 353
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 355
    :cond_a
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mRowIDColumn:I

    .line 356
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mDataValid:Z

    .line 358
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListAdapter;->notifyDataSetInvalidated()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method public close()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 392
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListBaseAdapter;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListAdapter;->mChangeObserver:Landroid/widget/CursorAdapter$ChangeObserver;

    if-eqz v1, :cond_0

    .line 393
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListBaseAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListAdapter;->mChangeObserver:Landroid/widget/CursorAdapter$ChangeObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 395
    :cond_0
    iput-object v3, p0, Lcom/android/mms/ui/ConversationListAdapter;->caller_context:Landroid/content/Context;

    .line 396
    iput-object v3, p0, Lcom/android/mms/ui/ConversationListBaseAdapter;->mContext:Landroid/content/Context;

    .line 400
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ConversationListAdapter;->changeCursor(Landroid/database/Cursor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 405
    :goto_0
    invoke-static {}, Lcom/android/mms/ui/ConversationListBaseAdapter;->resetArrayIndex()V

    .line 407
    return-void

    .line 401
    :catch_0
    move-exception v0

    .line 402
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected extractDataFromCursor(Landroid/content/Context;Landroid/database/Cursor;Lcom/android/mms/ui/ConversationHeader;)V
    .locals 11
    .parameter "context"
    .parameter "cursor"
    .parameter "ch"

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x6

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 220
    const/4 v2, 0x0

    .line 222
    .local v2, msg_type:Ljava/lang/String;
    iget-boolean v3, p0, Lcom/android/mms/ui/ConversationListAdapter;->mSimpleMode:Z

    if-eqz v3, :cond_9

    .line 223
    invoke-interface {p2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, p3, Lcom/android/mms/ui/ConversationHeader;->mThreadId:J

    .line 224
    const/16 v3, 0x9

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p3, Lcom/android/mms/ui/ConversationHeader;->mFrom:Ljava/lang/String;

    .line 225
    const/4 v3, 0x5

    invoke-static {p2, v3, v8}, Lcom/android/mms/ui/MessageUtils;->extractEncStrFromCursor(Landroid/database/Cursor;II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p3, Lcom/android/mms/ui/ConversationHeader;->mSubject:Ljava/lang/String;

    .line 230
    invoke-interface {p2, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, p3, Lcom/android/mms/ui/ConversationHeader;->mDateMillisec:J

    .line 231
    const/4 v3, 0x7

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_3

    move v3, v4

    :goto_0
    iput-boolean v3, p3, Lcom/android/mms/ui/ConversationHeader;->mHasError:Z

    .line 232
    invoke-interface {p2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, p3, Lcom/android/mms/ui/ConversationHeader;->mMessageCount:I

    .line 234
    const/16 v3, 0x8

    :try_start_0
    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, p3, Lcom/android/mms/ui/ConversationHeader;->mUnreadCount:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    :goto_1
    iget v3, p3, Lcom/android/mms/ui/ConversationHeader;->mUnreadCount:I

    if-nez v3, :cond_4

    move v3, v4

    :goto_2
    iput-boolean v3, p3, Lcom/android/mms/ui/ConversationHeader;->mIsRead:Z

    .line 240
    const/16 v3, 0xa

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, p3, Lcom/android/mms/ui/ConversationHeader;->mPriority:I

    .line 241
    const/16 v3, 0xb

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, p3, Lcom/android/mms/ui/ConversationHeader;->mThreadType:I

    .line 242
    const/16 v3, 0xe

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-ne v3, v4, :cond_5

    move v3, v4

    :goto_3
    iput-boolean v3, p3, Lcom/android/mms/ui/ConversationHeader;->mBlock:Z

    .line 243
    const/16 v3, 0xf

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p3, Lcom/android/mms/ui/ConversationHeader;->mName:Ljava/lang/String;

    .line 245
    const/16 v3, 0xc

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 246
    const/16 v3, 0xd

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 247
    .local v0, box:I
    const-string v3, "sms"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 248
    iput-boolean v4, p3, Lcom/android/mms/ui/ConversationHeader;->mIsSms:Z

    .line 250
    const/16 v3, 0xc8

    if-eq v0, v3, :cond_0

    if-ne v0, v8, :cond_1

    :cond_0
    move v5, v4

    :cond_1
    iput-boolean v5, p3, Lcom/android/mms/ui/ConversationHeader;->mBsending:Z

    .line 292
    .end local v0           #box:I
    :cond_2
    :goto_4
    return-void

    :cond_3
    move v3, v5

    .line 231
    goto :goto_0

    .line 235
    :catch_0
    move-exception v1

    .line 236
    .local v1, e:Ljava/lang/NumberFormatException;
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 237
    iput v5, p3, Lcom/android/mms/ui/ConversationHeader;->mUnreadCount:I

    goto :goto_1

    .end local v1           #e:Ljava/lang/NumberFormatException;
    :cond_4
    move v3, v5

    .line 239
    goto :goto_2

    :cond_5
    move v3, v5

    .line 242
    goto :goto_3

    .line 252
    .restart local v0       #box:I
    :cond_6
    const-string v3, "mms"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 253
    iput-boolean v4, p3, Lcom/android/mms/ui/ConversationHeader;->mIsMms:Z

    .line 255
    if-ne v0, v10, :cond_7

    :goto_5
    iput-boolean v4, p3, Lcom/android/mms/ui/ConversationHeader;->mBsending:Z

    .line 257
    iget-boolean v3, p3, Lcom/android/mms/ui/ConversationHeader;->mBsending:Z

    if-eqz v3, :cond_2

    .line 259
    const/16 v3, 0x10

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/ConversationListAdapter;->hasMmsError(I)Z

    move-result v3

    iput-boolean v3, p3, Lcom/android/mms/ui/ConversationHeader;->mHasError:Z

    if-eqz v3, :cond_2

    .line 260
    iput-boolean v5, p3, Lcom/android/mms/ui/ConversationHeader;->mBsending:Z

    goto :goto_4

    :cond_7
    move v4, v5

    .line 255
    goto :goto_5

    .line 265
    :cond_8
    const-string v3, "ConversationListAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "can not get real message type, msg_type> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 270
    .end local v0           #box:I
    :cond_9
    const/4 v3, 0x2

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, p3, Lcom/android/mms/ui/ConversationHeader;->mThreadId:J

    .line 271
    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 274
    const-string v3, "sms"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 275
    iput-boolean v4, p3, Lcom/android/mms/ui/ConversationHeader;->mIsSms:Z

    .line 276
    invoke-interface {p2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p3, Lcom/android/mms/ui/ConversationHeader;->mFrom:Ljava/lang/String;

    .line 277
    invoke-interface {p2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p3, Lcom/android/mms/ui/ConversationHeader;->mSubject:Ljava/lang/String;

    .line 278
    const/4 v3, 0x5

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, p3, Lcom/android/mms/ui/ConversationHeader;->mDateMillisec:J

    .line 279
    invoke-interface {p2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_a

    :goto_6
    iput-boolean v4, p3, Lcom/android/mms/ui/ConversationHeader;->mIsRead:Z

    goto :goto_4

    :cond_a
    move v4, v5

    goto :goto_6

    .line 280
    :cond_b
    const-string v3, "mms"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 281
    iput-boolean v4, p3, Lcom/android/mms/ui/ConversationHeader;->mIsMms:Z

    .line 282
    iget-wide v6, p3, Lcom/android/mms/ui/ConversationHeader;->mThreadId:J

    invoke-static {p1, v6, v7}, Lcom/android/mms/ui/MessageUtils;->getAddressByThreadId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p3, Lcom/android/mms/ui/ConversationHeader;->mFrom:Ljava/lang/String;

    .line 283
    const/16 v3, 0x8

    const/16 v6, 0x9

    invoke-static {p2, v3, v6}, Lcom/android/mms/ui/MessageUtils;->extractEncStrFromCursor(Landroid/database/Cursor;II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p3, Lcom/android/mms/ui/ConversationHeader;->mSubject:Ljava/lang/String;

    .line 288
    const/16 v3, 0xa

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    iput-wide v6, p3, Lcom/android/mms/ui/ConversationHeader;->mDateMillisec:J

    .line 289
    const/16 v3, 0xb

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_c

    :goto_7
    iput-boolean v4, p3, Lcom/android/mms/ui/ConversationHeader;->mIsRead:Z

    goto/16 :goto_4

    :cond_c
    move v4, v5

    goto :goto_7
.end method

.method public getProjection()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 415
    sget-object v0, Lcom/android/mms/ui/ConversationListAdapter;->PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 316
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListBaseAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 317
    invoke-super {p0, p1, p2, p3}, Lcom/android/mms/ui/ConversationListBaseAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 319
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSimpleMode()Z
    .locals 1

    .prologue
    .line 295
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mSimpleMode:Z

    return v0
.end method

.method protected onContentChanged()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 375
    iget-boolean v1, p0, Lcom/android/mms/ui/ConversationListBaseAdapter;->isRequerying:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListAdapter;->caller_context:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListAdapter;->caller_context:Landroid/content/Context;

    check-cast v1, Lcom/android/mms/ui/ConversationList;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationList;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/mms/ui/ConversationListBaseAdapter;->mAutoQuery:Z

    if-nez v1, :cond_2

    .line 377
    :cond_0
    iput-boolean v2, p0, Lcom/android/mms/ui/ConversationListBaseAdapter;->isRequeryNeeded:Z

    .line 389
    :cond_1
    :goto_0
    return-void

    .line 381
    :cond_2
    iput-boolean v2, p0, Lcom/android/mms/ui/ConversationListBaseAdapter;->isRequerying:Z

    .line 383
    const-string v1, "ConversationListAdapter"

    const-string v2, "onContentChanged, do async requery"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->caller_context:Landroid/content/Context;

    check-cast v0, Lcom/android/mms/ui/ConversationList;

    .line 385
    .local v0, act:Lcom/android/mms/ui/ConversationList;
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListAdapter;->caller_context:Landroid/content/Context;

    if-eqz v1, :cond_1

    .line 386
    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationList;->startAsyncQuery()V

    .line 387
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/mms/ui/ConversationListBaseAdapter;->isRequeryNeeded:Z

    goto :goto_0
.end method
