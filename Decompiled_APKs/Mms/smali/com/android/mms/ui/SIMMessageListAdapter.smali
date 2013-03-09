.class public Lcom/android/mms/ui/SIMMessageListAdapter;
.super Landroid/widget/CursorAdapter;
.source "SIMMessageListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/SIMMessageListAdapter$OnDataSetChangedListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOCAL_LOGV:Z = false

.field private static final TAG:Ljava/lang/String; = "SIMMessageListAdapter"

.field private static final VIEW_TYPE_COUNT:I = 0x4

.field private static final VIEW_TYPE_MIXED_MM:I = 0x3

.field private static final VIEW_TYPE_NOTIFICATION:I = 0x2

.field private static final VIEW_TYPE_RELATED_MM:I = 0x4

.field private static final VIEW_TYPE_TEXT_MSG:I = 0x1


# instance fields
.field public final mColumnsMap:Lcom/android/mms/msg/util/ColumnsMap;

.field protected mInflater:Landroid/view/LayoutInflater;

.field mMePhoto:Landroid/graphics/Bitmap;

.field private final mMessageCache:Lcom/android/mms/util/SIMMessageCache;

.field private mMsgListItemHandler:Landroid/os/Handler;

.field private mOnDataSetChangedListener:Lcom/android/mms/ui/SIMMessageListAdapter$OnDataSetChangedListener;

.field private final mThreadType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;ZI)V
    .locals 1
    .parameter "context"
    .parameter "c"
    .parameter "useDefaultColumnsMap"
    .parameter "threadType"

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 56
    invoke-static {}, Lcom/android/mms/util/SIMMessageCache;->getInstance()Lcom/android/mms/util/SIMMessageCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SIMMessageListAdapter;->mMessageCache:Lcom/android/mms/util/SIMMessageCache;

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/SIMMessageListAdapter;->mMePhoto:Landroid/graphics/Bitmap;

    .line 71
    iput p4, p0, Lcom/android/mms/ui/SIMMessageListAdapter;->mThreadType:I

    .line 72
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/mms/ui/SIMMessageListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 76
    if-eqz p3, :cond_0

    .line 77
    sget-object v0, Lcom/android/mms/msg/util/ColumnsMap;->DEFAULT:Lcom/android/mms/msg/util/ColumnsMap;

    iput-object v0, p0, Lcom/android/mms/ui/SIMMessageListAdapter;->mColumnsMap:Lcom/android/mms/msg/util/ColumnsMap;

    .line 93
    :goto_0
    return-void

    .line 79
    :cond_0
    new-instance v0, Lcom/android/mms/msg/util/ColumnsMap;

    invoke-direct {v0, p2}, Lcom/android/mms/msg/util/ColumnsMap;-><init>(Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/android/mms/ui/SIMMessageListAdapter;->mColumnsMap:Lcom/android/mms/msg/util/ColumnsMap;

    goto :goto_0
.end method

.method private static getKey(Ljava/lang/String;J)J
    .locals 1
    .parameter "type"
    .parameter "id"

    .prologue
    .line 240
    const-string v0, "mms"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .end local p1
    :goto_0
    return-wide p1

    .restart local p1
    :cond_0
    neg-long p1, p1

    goto :goto_0
.end method


# virtual methods
.method public bindCompactView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 8
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 117
    instance-of v2, p1, Lcom/android/mms/ui/MessageListItem;

    if-eqz v2, :cond_0

    .line 118
    iget-object v2, p0, Lcom/android/mms/ui/SIMMessageListAdapter;->mColumnsMap:Lcom/android/mms/msg/util/ColumnsMap;

    iget v2, v2, Lcom/android/mms/msg/util/ColumnsMap;->mColumnMsgType:I

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 121
    .local v3, type:Ljava/lang/String;
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/android/mms/ui/MessageListItem;

    move-object v2, v0

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/android/mms/ui/MessageListItem;->setCaller(Landroid/app/Activity;)V

    .line 122
    new-instance v1, Lcom/android/mms/ui/MessageItem;

    iget-object v5, p0, Lcom/android/mms/ui/SIMMessageListAdapter;->mColumnsMap:Lcom/android/mms/msg/util/ColumnsMap;

    const/4 v6, 0x0

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/mms/ui/MessageItem;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/Cursor;Lcom/android/mms/msg/util/ColumnsMap;Ljava/lang/String;)V

    .line 123
    .local v1, msgItem:Lcom/android/mms/ui/MessageItem;
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/mms/ui/MessageItem;->bInSimSMSMode:Z

    .line 124
    if-eqz v1, :cond_0

    .line 125
    check-cast p1, Lcom/android/mms/ui/MessageListItem;

    .end local p1
    invoke-virtual {p1, v1}, Lcom/android/mms/ui/MessageListItem;->bind(Lcom/android/mms/ui/MessageItem;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    .end local v1           #msgItem:Lcom/android/mms/ui/MessageItem;
    .end local v3           #type:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 127
    .restart local v3       #type:Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 128
    .local v7, e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 0
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 102
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/mms/ui/SIMMessageListAdapter;->bindCompactView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 113
    return-void
.end method

.method public clearMessageCache()V
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/android/mms/ui/SIMMessageListAdapter;->mMessageCache:Lcom/android/mms/util/SIMMessageCache;

    invoke-virtual {v0}, Lcom/android/mms/util/SIMMessageCache;->invalidateAll()V

    .line 278
    return-void
.end method

.method public getCachedMessage(Lcom/android/mms/msg/util/MessageDataAdapter;)Lcom/android/mms/msg/AbstractMessage;
    .locals 8
    .parameter "adapter"

    .prologue
    const/4 v7, 0x0

    .line 218
    invoke-virtual {p1}, Lcom/android/mms/msg/util/MessageDataAdapter;->getMessageType()Ljava/lang/String;

    move-result-object v4

    .line 219
    .local v4, type:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/mms/msg/util/MessageDataAdapter;->getMessageId()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/android/mms/ui/SIMMessageListAdapter;->getKey(Ljava/lang/String;J)J

    move-result-wide v1

    .line 220
    .local v1, key:J
    iget-object v5, p0, Lcom/android/mms/ui/SIMMessageListAdapter;->mMessageCache:Lcom/android/mms/util/SIMMessageCache;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/mms/util/SIMMessageCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/msg/AbstractMessage;

    .line 222
    .local v3, msg:Lcom/android/mms/msg/AbstractMessage;
    if-nez v3, :cond_0

    .line 224
    :try_start_0
    iget-object v5, p0, Lcom/android/mms/ui/SIMMessageListAdapter;->mContext:Landroid/content/Context;

    iget v6, p0, Lcom/android/mms/ui/SIMMessageListAdapter;->mThreadType:I

    invoke-static {v5, p1, v6}, Lcom/android/mms/msg/AbstractMessage;->create(Landroid/content/Context;Lcom/android/mms/msg/util/MessageDataAdapter;I)Lcom/android/mms/msg/AbstractMessage;

    move-result-object v3

    .line 225
    iget-object v5, p0, Lcom/android/mms/ui/SIMMessageListAdapter;->mMessageCache:Lcom/android/mms/util/SIMMessageCache;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6, v3}, Lcom/android/mms/util/SIMMessageCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    :cond_0
    :goto_0
    invoke-virtual {v3, v7}, Lcom/android/mms/msg/AbstractMessage;->setPriority(I)V

    .line 233
    invoke-virtual {v3, v7}, Lcom/android/mms/msg/AbstractMessage;->lock(Z)V

    .line 236
    return-object v3

    .line 226
    :catch_0
    move-exception v0

    .line 227
    .local v0, e:Lcom/google/android/mms/MmsException;
    const-string v5, "SIMMessageListAdapter"

    invoke-virtual {v0}, Lcom/google/android/mms/MmsException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 6
    .parameter "position"

    .prologue
    .line 251
    iget-object v3, p0, Lcom/android/mms/ui/SIMMessageListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 252
    new-instance v0, Lcom/android/mms/msg/util/MessageDataAdapter;

    iget-object v3, p0, Lcom/android/mms/ui/SIMMessageListAdapter;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/mms/ui/SIMMessageListAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v5, p0, Lcom/android/mms/ui/SIMMessageListAdapter;->mColumnsMap:Lcom/android/mms/msg/util/ColumnsMap;

    invoke-direct {v0, v3, v4, v5}, Lcom/android/mms/msg/util/MessageDataAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Lcom/android/mms/msg/util/ColumnsMap;)V

    .line 253
    .local v0, adapter:Lcom/android/mms/msg/util/MessageDataAdapter;
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SIMMessageListAdapter;->getCachedMessage(Lcom/android/mms/msg/util/MessageDataAdapter;)Lcom/android/mms/msg/AbstractMessage;

    move-result-object v2

    .line 254
    .local v2, msg:Lcom/android/mms/msg/AbstractMessage;
    invoke-virtual {v2}, Lcom/android/mms/msg/AbstractMessage;->isTextMessage()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 255
    const/4 v3, 0x1

    .line 263
    :goto_0
    return v3

    .line 256
    :cond_0
    invoke-virtual {v2}, Lcom/android/mms/msg/AbstractMessage;->isNotification()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 257
    const/4 v3, 0x2

    goto :goto_0

    .line 258
    :cond_1
    invoke-virtual {v2}, Lcom/android/mms/msg/AbstractMessage;->isMultimediaMessage()Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v1, v2

    .line 259
    check-cast v1, Lcom/android/mms/msg/MultimediaMessage;

    .line 260
    .local v1, mmsg:Lcom/android/mms/msg/MultimediaMessage;
    invoke-virtual {v1}, Lcom/android/mms/msg/MultimediaMessage;->withMixedMessageBody()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 261
    const/4 v3, 0x3

    goto :goto_0

    .line 262
    :cond_2
    invoke-virtual {v1}, Lcom/android/mms/msg/MultimediaMessage;->withRelatedMessageBody()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 263
    const/4 v3, 0x4

    goto :goto_0

    .line 268
    .end local v0           #adapter:Lcom/android/mms/msg/util/MessageDataAdapter;
    .end local v1           #mmsg:Lcom/android/mms/msg/MultimediaMessage;
    .end local v2           #msg:Lcom/android/mms/msg/AbstractMessage;
    :cond_3
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Unknown message type."

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 135
    iget-object v1, p0, Lcom/android/mms/ui/SIMMessageListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    .line 136
    .local v0, pos:I
    if-nez p2, :cond_0

    .line 137
    iget-object v1, p0, Lcom/android/mms/ui/SIMMessageListAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/mms/ui/SIMMessageListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v1, v2, p3}, Lcom/android/mms/ui/SIMMessageListAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 139
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/SIMMessageListAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/mms/ui/SIMMessageListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, p2, v1, v2}, Lcom/android/mms/ui/SIMMessageListAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 140
    iget-object v1, p0, Lcom/android/mms/ui/SIMMessageListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    .line 141
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 273
    const/4 v0, 0x4

    return v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 209
    new-instance v0, Lcom/android/mms/msg/util/MessageDataAdapter;

    iget-object v2, p0, Lcom/android/mms/ui/SIMMessageListAdapter;->mColumnsMap:Lcom/android/mms/msg/util/ColumnsMap;

    invoke-direct {v0, p1, p2, v2}, Lcom/android/mms/msg/util/MessageDataAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Lcom/android/mms/msg/util/ColumnsMap;)V

    .line 210
    .local v0, adapter:Lcom/android/mms/msg/util/MessageDataAdapter;
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SIMMessageListAdapter;->getCachedMessage(Lcom/android/mms/msg/util/MessageDataAdapter;)Lcom/android/mms/msg/AbstractMessage;

    move-result-object v1

    .line 212
    .local v1, msg:Lcom/android/mms/msg/AbstractMessage;
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030019

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    return-object v2
.end method

.method public setMsgListItemHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 202
    iput-object p1, p0, Lcom/android/mms/ui/SIMMessageListAdapter;->mMsgListItemHandler:Landroid/os/Handler;

    .line 203
    return-void
.end method

.method public setOnDataSetChangedListener(Lcom/android/mms/ui/SIMMessageListAdapter$OnDataSetChangedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 198
    iput-object p1, p0, Lcom/android/mms/ui/SIMMessageListAdapter;->mOnDataSetChangedListener:Lcom/android/mms/ui/SIMMessageListAdapter$OnDataSetChangedListener;

    .line 199
    return-void
.end method

.method public setThreadMePhoto()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/mms/ui/SIMMessageListAdapter;->mMePhoto:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/android/mms/ui/SIMMessageListAdapter;->mMePhoto:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/android/mms/ui/SIMMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200f3

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SIMMessageListAdapter;->mMePhoto:Landroid/graphics/Bitmap;

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SIMMessageListAdapter;->mMePhoto:Landroid/graphics/Bitmap;

    return-object v0
.end method
