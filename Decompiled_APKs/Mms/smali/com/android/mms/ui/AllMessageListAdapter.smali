.class public Lcom/android/mms/ui/AllMessageListAdapter;
.super Lcom/android/mms/ui/ConversationListBaseAdapter;
.source "AllMessageListAdapter.java"


# static fields
.field static final COLUMN_ERROR:I = 0x11

.field static final COLUMN_ID:I = 0x0

.field static final COLUMN_LATEST_DATAE:I = 0x4

.field static final COLUMN_MSG_TYPE:I = 0x8

.field static final COLUMN_PRIVATE:I = 0xa

.field static final COLUMN_P_MESSAGE_COUNT:I = 0x5

.field static final COLUMN_P_READ:I = 0x7

.field static final COLUMN_P_UNREAD_COUNT:I = 0x6

.field static final COLUMN_RECIPIENTS_IDS:I = 0x2

.field static final COLUMN_RECIPIENT_ADDRESS:I = 0x3

.field static final COLUMN_SNIPPET:I = 0xf

.field static final COLUMN_SNIPPET_CHARSET:I = 0x10

.field static final COLUMN_THREAD_ID:I = 0x1

.field static final COLUMN_T_DATE:I = 0xd

.field static final COLUMN_T_LOCKED:I = 0x17

.field static final COLUMN_T_MESSAGE_BOX:I = 0x16

.field static final COLUMN_T_MESSAGE_COUNT:I = 0xc

.field static final COLUMN_T_MMS_ERROR_TYPE:I = 0x18

.field static final COLUMN_T_PRIORITY:I = 0x13

.field static final COLUMN_T_READ:I = 0xe

.field static final COLUMN_T_TYPE:I = 0x14

.field static final COLUMN_T_TYPE_DISCRIMINATOR:I = 0x15

.field static final COLUMN_T_UNREAD_COUNT:I = 0x12

.field static final COLUMN_URGENT:I = 0xb

.field static final COLUMN_VVM_PLAY_TIME:I = 0x9

.field private static final LOCAL_LOGV:Z = true

.field private static final TAG:Ljava/lang/String; = "AllMessageListAdapter"


# instance fields
.field protected mActivity:Lcom/android/mms/ui/AllMessageListActivity;

.field private mPriReadCl:Landroid/content/res/ColorStateList;

.field private mPriUnreadCl:Landroid/content/res/ColorStateList;

.field final mProjection:[Ljava/lang/String;

.field private mSecReadCl:Landroid/content/res/ColorStateList;

.field private mSecUnreadCl:Landroid/content/res/ColorStateList;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/AllMessageListActivity;Landroid/database/Cursor;)V
    .locals 4
    .parameter "act"
    .parameter "c"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 129
    invoke-direct {p0, p1, p2, v3, v2}, Lcom/android/mms/ui/ConversationListBaseAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;ZI)V

    .line 51
    iput-object v0, p0, Lcom/android/mms/ui/AllMessageListAdapter;->mPriUnreadCl:Landroid/content/res/ColorStateList;

    .line 52
    iput-object v0, p0, Lcom/android/mms/ui/AllMessageListAdapter;->mPriReadCl:Landroid/content/res/ColorStateList;

    .line 53
    iput-object v0, p0, Lcom/android/mms/ui/AllMessageListAdapter;->mSecUnreadCl:Landroid/content/res/ColorStateList;

    .line 54
    iput-object v0, p0, Lcom/android/mms/ui/AllMessageListAdapter;->mSecReadCl:Landroid/content/res/ColorStateList;

    .line 90
    const/16 v0, 0x19

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "thread_id"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "recipient_ids"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "recipient_address"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "latest_date"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "p_message_count"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "p_unread_count"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "p_read"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "msg_type"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "vvm_ptime"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "is_private"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "is_urgent"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "message_count"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "date"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "read"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "snippet"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "snippet_cs"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "error"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "unread_count"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "priority"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "type"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "transport_type"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "msg_box"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "locked"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "err_type"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/mms/ui/AllMessageListAdapter;->mProjection:[Ljava/lang/String;

    .line 130
    iput-object p1, p0, Lcom/android/mms/ui/AllMessageListAdapter;->mActivity:Lcom/android/mms/ui/AllMessageListActivity;

    .line 132
    return-void
.end method

.method public constructor <init>(Lcom/android/mms/ui/AllMessageListActivity;Landroid/database/Cursor;Z)V
    .locals 3
    .parameter "act"
    .parameter "c"
    .parameter "autoRequery"

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 135
    invoke-direct {p0, p1, p2, p3, v2}, Lcom/android/mms/ui/ConversationListBaseAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;ZI)V

    .line 51
    iput-object v0, p0, Lcom/android/mms/ui/AllMessageListAdapter;->mPriUnreadCl:Landroid/content/res/ColorStateList;

    .line 52
    iput-object v0, p0, Lcom/android/mms/ui/AllMessageListAdapter;->mPriReadCl:Landroid/content/res/ColorStateList;

    .line 53
    iput-object v0, p0, Lcom/android/mms/ui/AllMessageListAdapter;->mSecUnreadCl:Landroid/content/res/ColorStateList;

    .line 54
    iput-object v0, p0, Lcom/android/mms/ui/AllMessageListAdapter;->mSecReadCl:Landroid/content/res/ColorStateList;

    .line 90
    const/16 v0, 0x19

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "thread_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "recipient_ids"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "recipient_address"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "latest_date"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "p_message_count"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "p_unread_count"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "p_read"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "msg_type"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "vvm_ptime"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "is_private"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "is_urgent"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "message_count"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "date"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "read"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "snippet"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "snippet_cs"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "error"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "unread_count"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "priority"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "type"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "transport_type"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "msg_box"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "locked"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "err_type"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/mms/ui/AllMessageListAdapter;->mProjection:[Ljava/lang/String;

    .line 136
    iput-object p1, p0, Lcom/android/mms/ui/AllMessageListAdapter;->mActivity:Lcom/android/mms/ui/AllMessageListActivity;

    .line 138
    return-void
.end method


# virtual methods
.method public changeCursor(Landroid/database/Cursor;)V
    .locals 3
    .parameter "cursor"

    .prologue
    const/4 v2, 0x1

    .line 177
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListBaseAdapter;->mCursor:Landroid/database/Cursor;

    if-ne p1, v0, :cond_0

    .line 209
    :goto_0
    return-void

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListBaseAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 181
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListBaseAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/mms/ui/AllMessageListAdapter;->mChangeObserver:Landroid/widget/CursorAdapter$ChangeObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 182
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListBaseAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/mms/ui/AllMessageListAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 184
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListBaseAdapter;->mCursor:Landroid/database/Cursor;

    invoke-static {v0, v2}, Lcom/android/mms/util/MmsAsyncWorkHandler;->CloseCursorInBG(Landroid/database/Cursor;Z)V

    .line 186
    :cond_1
    iput-object p1, p0, Lcom/android/mms/ui/ConversationListBaseAdapter;->mCursor:Landroid/database/Cursor;

    .line 187
    if-eqz p1, :cond_2

    .line 188
    iget-object v0, p0, Lcom/android/mms/ui/AllMessageListAdapter;->mChangeObserver:Landroid/widget/CursorAdapter$ChangeObserver;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 189
    iget-object v0, p0, Lcom/android/mms/ui/AllMessageListAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 190
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/AllMessageListAdapter;->mRowIDColumn:I

    .line 191
    iput-boolean v2, p0, Lcom/android/mms/ui/AllMessageListAdapter;->mDataValid:Z

    .line 193
    invoke-virtual {p0}, Lcom/android/mms/ui/AllMessageListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 195
    :cond_2
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/AllMessageListAdapter;->mRowIDColumn:I

    .line 196
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/AllMessageListAdapter;->mDataValid:Z

    .line 198
    invoke-virtual {p0}, Lcom/android/mms/ui/AllMessageListAdapter;->notifyDataSetInvalidated()V

    goto :goto_0
.end method

.method public close()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 333
    iput-object v0, p0, Lcom/android/mms/ui/AllMessageListAdapter;->mActivity:Lcom/android/mms/ui/AllMessageListActivity;

    .line 334
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/AllMessageListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 336
    return-void
.end method

.method protected extractDataFromCursor(Landroid/content/Context;Landroid/database/Cursor;Lcom/android/mms/ui/ConversationHeader;)V
    .locals 10
    .parameter "context"
    .parameter "cursor"
    .parameter "ch"

    .prologue
    .line 234
    const/4 v7, 0x4

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, p3, Lcom/android/mms/ui/ConversationHeader;->mDateMillisec:J

    .line 235
    const/16 v7, 0x8

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p3, Lcom/android/mms/ui/ConversationHeader;->mMsgType:Ljava/lang/String;

    .line 236
    const/4 v7, 0x3

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p3, Lcom/android/mms/ui/ConversationHeader;->mFrom:Ljava/lang/String;

    .line 237
    const/4 v7, 0x1

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, p3, Lcom/android/mms/ui/ConversationHeader;->mThreadId:J

    .line 238
    const/4 v7, 0x0

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, p3, Lcom/android/mms/ui/ConversationHeader;->mHtcThreadId:J

    .line 239
    const/16 v7, 0x14

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    iput v7, p3, Lcom/android/mms/ui/ConversationHeader;->mThreadType:I

    .line 240
    const/16 v7, 0xd

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 243
    .local v3, mmsdate:J
    const-string v7, "vvm"

    iget-object v8, p3, Lcom/android/mms/ui/ConversationHeader;->mMsgType:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 244
    .local v2, hasVvm:Z
    const/16 v7, 0x15

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 253
    .local v6, t_type:Ljava/lang/String;
    iget-wide v7, p3, Lcom/android/mms/ui/ConversationHeader;->mDateMillisec:J

    cmp-long v7, v7, v3

    if-lez v7, :cond_0

    iget-wide v7, p3, Lcom/android/mms/ui/ConversationHeader;->mDateMillisec:J

    cmp-long v7, v7, v3

    if-lez v7, :cond_9

    const-string v7, "mms"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 260
    :cond_0
    const/16 v7, 0xf

    const/16 v8, 0x10

    invoke-static {p2, v7, v8}, Lcom/android/mms/ui/MessageUtils;->extractEncStrFromCursor(Landroid/database/Cursor;II)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p3, Lcom/android/mms/ui/ConversationHeader;->mSubject:Ljava/lang/String;

    .line 263
    const/16 v7, 0x11

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-eqz v7, :cond_2

    const/4 v7, 0x1

    :goto_0
    iput-boolean v7, p3, Lcom/android/mms/ui/ConversationHeader;->mHasError:Z

    .line 264
    const/16 v7, 0xc

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const/4 v8, 0x5

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    add-int/2addr v7, v8

    iput v7, p3, Lcom/android/mms/ui/ConversationHeader;->mMessageCount:I

    .line 266
    const/16 v7, 0x12

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const/4 v8, 0x6

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    add-int/2addr v7, v8

    iput v7, p3, Lcom/android/mms/ui/ConversationHeader;->mUnreadCount:I

    .line 268
    iget v7, p3, Lcom/android/mms/ui/ConversationHeader;->mUnreadCount:I

    if-nez v7, :cond_3

    const/4 v7, 0x1

    :goto_1
    iput-boolean v7, p3, Lcom/android/mms/ui/ConversationHeader;->mIsRead:Z

    .line 269
    const/16 v7, 0x13

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    iput v7, p3, Lcom/android/mms/ui/ConversationHeader;->mPriority:I

    .line 271
    const/4 v7, 0x0

    iput-object v7, p3, Lcom/android/mms/ui/ConversationHeader;->mMsgType:Ljava/lang/String;

    .line 274
    const/16 v7, 0x17

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_4

    const/4 v7, 0x1

    :goto_2
    iput-boolean v7, p3, Lcom/android/mms/ui/ConversationHeader;->mBlock:Z

    .line 275
    const/16 v7, 0x16

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 277
    .local v0, box:I
    const-string v7, "sms"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 278
    const/4 v7, 0x1

    iput-boolean v7, p3, Lcom/android/mms/ui/ConversationHeader;->mIsSms:Z

    .line 280
    const/4 v7, 0x6

    if-ne v0, v7, :cond_5

    const/4 v7, 0x1

    :goto_3
    iput-boolean v7, p3, Lcom/android/mms/ui/ConversationHeader;->mBsending:Z

    .line 329
    .end local v0           #box:I
    :cond_1
    :goto_4
    return-void

    .line 263
    :cond_2
    const/4 v7, 0x0

    goto :goto_0

    .line 268
    :cond_3
    const/4 v7, 0x0

    goto :goto_1

    .line 274
    :cond_4
    const/4 v7, 0x0

    goto :goto_2

    .line 280
    .restart local v0       #box:I
    :cond_5
    const/4 v7, 0x0

    goto :goto_3

    .line 281
    :cond_6
    const-string v7, "mms"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 282
    const/4 v7, 0x1

    iput-boolean v7, p3, Lcom/android/mms/ui/ConversationHeader;->mIsMms:Z

    .line 284
    const/4 v7, 0x4

    if-ne v0, v7, :cond_7

    const/4 v7, 0x1

    :goto_5
    iput-boolean v7, p3, Lcom/android/mms/ui/ConversationHeader;->mBsending:Z

    .line 286
    iget-boolean v7, p3, Lcom/android/mms/ui/ConversationHeader;->mBsending:Z

    if-eqz v7, :cond_1

    .line 289
    const/16 v7, 0x18

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/android/mms/ui/AllMessageListAdapter;->hasMmsError(I)Z

    move-result v7

    iput-boolean v7, p3, Lcom/android/mms/ui/ConversationHeader;->mHasError:Z

    if-eqz v7, :cond_1

    .line 290
    const/4 v7, 0x0

    iput-boolean v7, p3, Lcom/android/mms/ui/ConversationHeader;->mBsending:Z

    goto :goto_4

    .line 284
    :cond_7
    const/4 v7, 0x0

    goto :goto_5

    .line 294
    :cond_8
    const-string v7, "AllMessageListAdapter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "can not get real message type, msg_type> "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 299
    .end local v0           #box:I
    :cond_9
    const-string v7, "vvm"

    iget-object v8, p3, Lcom/android/mms/ui/ConversationHeader;->mMsgType:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 300
    const/4 v7, 0x1

    iput-boolean v7, p3, Lcom/android/mms/ui/ConversationHeader;->mIsVvm:Z

    .line 302
    const/16 v7, 0xf

    const/16 v8, 0x10

    invoke-static {p2, v7, v8}, Lcom/android/mms/ui/MessageUtils;->extractEncStrFromCursor(Landroid/database/Cursor;II)Ljava/lang/String;

    move-result-object v5

    .line 306
    .local v5, subject:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f0902d4

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 307
    .local v1, draft:Ljava/lang/String;
    invoke-virtual {v5, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_c

    .line 308
    const/16 v7, 0x9

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/android/mms/ui/MessageUtils;->getPlaytimeFormatString(J)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p3, Lcom/android/mms/ui/ConversationHeader;->mSubject:Ljava/lang/String;

    .line 310
    const/16 v7, 0xa

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-eqz v7, :cond_a

    const/4 v7, 0x1

    :goto_6
    iput-boolean v7, p3, Lcom/android/mms/ui/ConversationHeader;->mPrivate:Z

    .line 311
    const/16 v7, 0xb

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-eqz v7, :cond_b

    const/4 v7, 0x1

    :goto_7
    iput-boolean v7, p3, Lcom/android/mms/ui/ConversationHeader;->mUrgent:Z

    .line 317
    :goto_8
    const/16 v7, 0xc

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const/4 v8, 0x5

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    add-int/2addr v7, v8

    iput v7, p3, Lcom/android/mms/ui/ConversationHeader;->mMessageCount:I

    .line 319
    const/16 v7, 0x12

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const/4 v8, 0x6

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    add-int/2addr v7, v8

    iput v7, p3, Lcom/android/mms/ui/ConversationHeader;->mUnreadCount:I

    .line 321
    iget v7, p3, Lcom/android/mms/ui/ConversationHeader;->mUnreadCount:I

    if-nez v7, :cond_d

    const/4 v7, 0x1

    :goto_9
    iput-boolean v7, p3, Lcom/android/mms/ui/ConversationHeader;->mIsRead:Z

    goto/16 :goto_4

    .line 310
    :cond_a
    const/4 v7, 0x0

    goto :goto_6

    .line 311
    :cond_b
    const/4 v7, 0x0

    goto :goto_7

    .line 313
    :cond_c
    iput-object v5, p3, Lcom/android/mms/ui/ConversationHeader;->mSubject:Ljava/lang/String;

    .line 314
    iput-wide v3, p3, Lcom/android/mms/ui/ConversationHeader;->mDateMillisec:J

    goto :goto_8

    .line 321
    :cond_d
    const/4 v7, 0x0

    goto :goto_9

    .line 325
    .end local v1           #draft:Ljava/lang/String;
    .end local v5           #subject:Ljava/lang/String;
    :cond_e
    const-string v7, "AllMessageListAdapter"

    const-string v8, "Do not contain any VVM!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 159
    invoke-super {p0}, Lcom/android/mms/ui/ConversationListBaseAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 153
    invoke-super {p0, p1}, Lcom/android/mms/ui/ConversationListBaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 147
    invoke-super {p0, p1}, Lcom/android/mms/ui/ConversationListBaseAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getProjection()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/mms/ui/AllMessageListAdapter;->mProjection:[Ljava/lang/String;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListBaseAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 166
    invoke-super {p0, p1, p2, p3}, Lcom/android/mms/ui/ConversationListBaseAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 168
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onContentChanged()V
    .locals 2

    .prologue
    .line 215
    const-string v0, "AllMessageListAdapter"

    const-string v1, "onContentChanged> "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationListBaseAdapter;->isRequeryNeeded:Z

    .line 218
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationListBaseAdapter;->isRequerying:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/AllMessageListAdapter;->mActivity:Lcom/android/mms/ui/AllMessageListActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/AllMessageListAdapter;->mActivity:Lcom/android/mms/ui/AllMessageListActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/AllMessageListActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationListBaseAdapter;->mAutoQuery:Z

    if-nez v0, :cond_1

    .line 228
    :cond_0
    :goto_0
    return-void

    .line 223
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/AllMessageListAdapter;->mActivity:Lcom/android/mms/ui/AllMessageListActivity;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/android/mms/ui/AllMessageListAdapter;->mActivity:Lcom/android/mms/ui/AllMessageListActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/AllMessageListActivity;->startQueryConversation()V

    .line 225
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationListBaseAdapter;->isRequeryNeeded:Z

    goto :goto_0
.end method
