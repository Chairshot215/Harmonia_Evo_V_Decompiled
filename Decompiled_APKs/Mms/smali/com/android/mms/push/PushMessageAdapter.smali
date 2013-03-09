.class public Lcom/android/mms/push/PushMessageAdapter;
.super Landroid/widget/BaseAdapter;
.source "PushMessageAdapter.java"

# interfaces
.implements Landroid/widget/ListAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/push/PushMessageAdapter$ChangeObserver;,
        Lcom/android/mms/push/PushMessageAdapter$PushMessageItem;
    }
.end annotation


# static fields
.field static final COLUMN_CONTENT:I = 0x4

.field static final COLUMN_HREF:I = 0x3

.field static final COLUMN_ID:I = 0x0

.field static final COLUMN_ISREAD:I = 0x1

.field static final COLUMN_PHONENUMBER:I = 0x6

.field static final COLUMN_RECEIVED_TIME:I = 0x5

.field static final COLUMN_TYPE:I = 0x2

.field static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "receivedTime DESC"

.field private static final LOGTAG:Ljava/lang/String; = "PushAdapter"

.field static final PROJECTION:[Ljava/lang/String;


# instance fields
.field private mChangeObserver:Lcom/android/mms/push/PushMessageAdapter$ChangeObserver;

.field private mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;

.field mMessageBody:Lcom/htc/widget/HtcListItemMessageBody;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 45
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "isRead"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "href"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "content"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "receivedTime"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "phoneNumber"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/push/PushMessageAdapter;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 68
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/android/mms/push/PushMessageAdapter;->mContext:Landroid/content/Context;

    .line 70
    new-instance v0, Lcom/android/mms/push/PushMessageAdapter$ChangeObserver;

    invoke-direct {v0, p0}, Lcom/android/mms/push/PushMessageAdapter$ChangeObserver;-><init>(Lcom/android/mms/push/PushMessageAdapter;)V

    iput-object v0, p0, Lcom/android/mms/push/PushMessageAdapter;->mChangeObserver:Lcom/android/mms/push/PushMessageAdapter$ChangeObserver;

    .line 72
    iget-object v0, p0, Lcom/android/mms/push/PushMessageAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/mms/push/PushMessage;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/mms/push/PushMessageAdapter;->PROJECTION:[Ljava/lang/String;

    const-string v5, "receivedTime DESC"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/push/PushMessageAdapter;->mCursor:Landroid/database/Cursor;

    .line 74
    return-void
.end method

.method private bind(I)V
    .locals 4
    .parameter "position"

    .prologue
    const/4 v2, 0x1

    .line 139
    iget-object v1, p0, Lcom/android/mms/push/PushMessageAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 140
    iget-object v1, p0, Lcom/android/mms/push/PushMessageAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-nez v1, :cond_0

    .line 142
    iget-object v1, p0, Lcom/android/mms/push/PushMessageAdapter;->mMessageBody:Lcom/htc/widget/HtcListItemMessageBody;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItemMessageBody;->enableColorBar(Z)V

    .line 147
    :goto_0
    iget-object v1, p0, Lcom/android/mms/push/PushMessageAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/mms/push/PushMessageAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v3, 0x5

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampDetailString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 149
    .local v0, timestamp:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/mms/push/PushMessageAdapter;->mMessageBody:Lcom/htc/widget/HtcListItemMessageBody;

    iget-object v2, p0, Lcom/android/mms/push/PushMessageAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v3, 0x4

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItemMessageBody;->setPrimaryText(Ljava/lang/String;)V

    .line 150
    iget-object v1, p0, Lcom/android/mms/push/PushMessageAdapter;->mMessageBody:Lcom/htc/widget/HtcListItemMessageBody;

    iget-object v2, p0, Lcom/android/mms/push/PushMessageAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v3, 0x3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItemMessageBody;->setSecondaryText(Ljava/lang/String;)V

    .line 151
    iget-object v1, p0, Lcom/android/mms/push/PushMessageAdapter;->mMessageBody:Lcom/htc/widget/HtcListItemMessageBody;

    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcListItemMessageBody;->setTextStamp(Ljava/lang/String;)V

    .line 156
    .end local v0           #timestamp:Ljava/lang/String;
    :goto_1
    return-void

    .line 144
    :cond_0
    iget-object v1, p0, Lcom/android/mms/push/PushMessageAdapter;->mMessageBody:Lcom/htc/widget/HtcListItemMessageBody;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItemMessageBody;->enableColorBar(Z)V

    goto :goto_0

    .line 154
    :cond_1
    const-string v1, "PushAdapter"

    const-string v2, "Invalid position!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private checkCursorAndFinish()V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/mms/push/PushMessageAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/push/PushMessageAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_1

    .line 79
    :cond_0
    const-string v0, "PushAdapter"

    const-string v1, "Cursor is null or empty, so finish activity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v0, p0, Lcom/android/mms/push/PushMessageAdapter;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/mms/push/PushMessagesActivity;

    invoke-virtual {v0}, Lcom/android/mms/push/PushMessagesActivity;->finish()V

    .line 82
    :cond_1
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/mms/push/PushMessageAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/android/mms/push/PushMessageAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 273
    :cond_0
    return-void
.end method

.method public deleteAll()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 169
    iget-object v0, p0, Lcom/android/mms/push/PushMessageAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/mms/push/PushMessage;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 171
    return-void
.end method

.method public deleteRow(I)V
    .locals 5
    .parameter "position"

    .prologue
    const/4 v4, 0x0

    .line 159
    iget-object v1, p0, Lcom/android/mms/push/PushMessageAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 160
    sget-object v1, Lcom/android/mms/push/PushMessage;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/mms/push/PushMessageAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 162
    .local v0, uri:Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/mms/push/PushMessageAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 166
    .end local v0           #uri:Landroid/net/Uri;
    :goto_0
    return-void

    .line 164
    :cond_0
    const-string v1, "PushAdapter"

    const-string v2, "delete invalid row"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getContent(I)Ljava/lang/String;
    .locals 2
    .parameter "position"

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/mms/push/PushMessageAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/android/mms/push/PushMessageAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 223
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/mms/push/PushMessageAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    return v0
.end method

.method public getHref(I)Ljava/lang/String;
    .locals 2
    .parameter "position"

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/mms/push/PushMessageAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/android/mms/push/PushMessageAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 178
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 106
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 110
    int-to-long v0, p1

    return-wide v0
.end method

.method public getPhoneNumber(I)Ljava/lang/String;
    .locals 2
    .parameter "position"

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/mms/push/PushMessageAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/android/mms/push/PushMessageAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 187
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPosition(I)I
    .locals 2
    .parameter "id"

    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/mms/push/PushMessageAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_2

    .line 258
    iget-object v0, p0, Lcom/android/mms/push/PushMessageAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/android/mms/push/PushMessageAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, p1, :cond_1

    .line 261
    iget-object v0, p0, Lcom/android/mms/push/PushMessageAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    .line 266
    :goto_0
    return v0

    .line 263
    :cond_1
    iget-object v0, p0, Lcom/android/mms/push/PushMessageAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 266
    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getReceivedTime(I)Ljava/lang/CharSequence;
    .locals 4
    .parameter "position"

    .prologue
    .line 206
    iget-object v2, p0, Lcom/android/mms/push/PushMessageAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 207
    iget-object v2, p0, Lcom/android/mms/push/PushMessageAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v3, 0x5

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 209
    .local v0, timestamp:J
    iget-object v2, p0, Lcom/android/mms/push/PushMessageAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    .line 215
    .end local v0           #timestamp:J
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/16 v4, 0x8

    .line 114
    const/4 v0, 0x0

    .line 115
    .local v0, cache:Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;
    if-nez p2, :cond_0

    .line 116
    new-instance p2, Lcom/android/mms/push/PushMessageAdapter$PushMessageItem;

    .end local p2
    iget-object v3, p0, Lcom/android/mms/push/PushMessageAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v3}, Lcom/android/mms/push/PushMessageAdapter$PushMessageItem;-><init>(Landroid/content/Context;)V

    .line 117
    .restart local p2
    iget-object v3, p0, Lcom/android/mms/push/PushMessageAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/mms/ui/HtcListItemComposer;->createConversationListItem(Landroid/content/Context;)Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;

    move-result-object v1

    .line 118
    .local v1, group:Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;
    iget-object p2, v1, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;->ListItem:Landroid/view/View;

    .line 119
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 120
    move-object v0, v1

    .line 121
    iget-object v3, v0, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;->ThreadListItem:Lcom/htc/widget/HtcListItemMessageBody;

    iput-object v3, p0, Lcom/android/mms/push/PushMessageAdapter;->mMessageBody:Lcom/htc/widget/HtcListItemMessageBody;

    .line 122
    iget-object v3, p0, Lcom/android/mms/push/PushMessageAdapter;->mMessageBody:Lcom/htc/widget/HtcListItemMessageBody;

    invoke-virtual {v3}, Lcom/htc/widget/HtcListItemMessageBody;->getQuickContactBadge()Lcom/htc/widget/QuickContactBadge;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/htc/widget/QuickContactBadge;->setVisibility(I)V

    .line 123
    iget-object v3, p0, Lcom/android/mms/push/PushMessageAdapter;->mMessageBody:Lcom/htc/widget/HtcListItemMessageBody;

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListItemMessageBody;->setBodyVisibility(I)V

    .line 124
    const v2, 0x7f020141

    .line 125
    .local v2, resId:I
    iget-object v3, p0, Lcom/android/mms/push/PushMessageAdapter;->mContext:Landroid/content/Context;

    const-string v4, "common_unread_indicator"

    invoke-static {v3, v4, v2}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    .line 126
    iget-object v3, p0, Lcom/android/mms/push/PushMessageAdapter;->mMessageBody:Lcom/htc/widget/HtcListItemMessageBody;

    invoke-virtual {v3, v2}, Lcom/htc/widget/HtcListItemMessageBody;->setColorBarImageResource(I)V

    .line 133
    .end local v1           #group:Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;
    .end local v2           #resId:I
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/mms/push/PushMessageAdapter;->bind(I)V

    .line 135
    return-object p2

    .line 129
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #cache:Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;
    check-cast v0, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;

    .line 130
    .restart local v0       #cache:Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;
    iget-object v3, v0, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;->ThreadListItem:Lcom/htc/widget/HtcListItemMessageBody;

    iput-object v3, p0, Lcom/android/mms/push/PushMessageAdapter;->mMessageBody:Lcom/htc/widget/HtcListItemMessageBody;

    goto :goto_0
.end method

.method public isRead(I)Z
    .locals 3
    .parameter "postion"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 227
    iget-object v2, p0, Lcom/android/mms/push/PushMessageAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 228
    iget-object v2, p0, Lcom/android/mms/push/PushMessageAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 230
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 228
    goto :goto_0

    :cond_1
    move v0, v1

    .line 230
    goto :goto_0
.end method

.method public refresh()V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/mms/push/PushMessageAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    .line 97
    invoke-direct {p0}, Lcom/android/mms/push/PushMessageAdapter;->checkCursorAndFinish()V

    .line 98
    invoke-virtual {p0}, Lcom/android/mms/push/PushMessageAdapter;->notifyDataSetChanged()V

    .line 99
    return-void
.end method

.method public registerContentObserver()V
    .locals 4

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/mms/push/PushMessageAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/mms/push/PushMessage;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/mms/push/PushMessageAdapter;->mChangeObserver:Lcom/android/mms/push/PushMessageAdapter$ChangeObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 88
    return-void
.end method

.method public setRead(IZ)V
    .locals 7
    .parameter "position"
    .parameter "isRead"

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 192
    iget-object v3, p0, Lcom/android/mms/push/PushMessageAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 193
    iget-object v3, p0, Lcom/android/mms/push/PushMessageAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 195
    .local v0, id:I
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 196
    .local v1, values:Landroid/content/ContentValues;
    const-string v3, "isRead"

    if-eqz p2, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 197
    iget-object v2, p0, Lcom/android/mms/push/PushMessageAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/mms/push/PushMessage;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v4, v0

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v1, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 203
    .end local v0           #id:I
    .end local v1           #values:Landroid/content/ContentValues;
    :goto_0
    return-void

    .line 201
    :cond_1
    const-string v2, "PushAdapter"

    const-string v3, "invalid position"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unregisterContentObserver()V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/mms/push/PushMessageAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/push/PushMessageAdapter;->mChangeObserver:Lcom/android/mms/push/PushMessageAdapter$ChangeObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 93
    return-void
.end method
