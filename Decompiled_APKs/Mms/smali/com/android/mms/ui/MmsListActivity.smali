.class public Lcom/android/mms/ui/MmsListActivity;
.super Lcom/android/mms/ui/MmsBaseListActivity;
.source "MmsListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/MmsListActivity$CmasListItemTag;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final HTC_DEBUG:Z = false

.field private static final MENU_CONVERSATION_LIST:I = 0x0

.field private static final MENU_DELETE_MESSAGE:I = 0x1

.field private static final MENU_LOCK_MESSAGE:I = 0x2

.field private static final MENU_UNLOCK_MESSAGE:I = 0x3

.field public static final MODE_CMAS_LIST_VIEW:I = 0x1

.field private static final NEW_LINE:C = '\n'

.field private static final TAG:Ljava/lang/String; = "MmsListActivity"

.field private static final UI_EVENT_NOTIFY_CHANGE:I = 0x1


# instance fields
.field private mIdForContextMenu:J

.field private mLatestLeaveTime:J

.field private mLockedForContextMenu:Z

.field mMessageBody:Lcom/htc/widget/HtcListItemMessageBody;

.field private mMultipleDeleteProjection:[Ljava/lang/String;

.field private mNextExpiredTime:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 39
    invoke-direct {p0}, Lcom/android/mms/ui/MmsBaseListActivity;-><init>()V

    .line 49
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/mms/ui/MmsListActivity;->mLatestLeaveTime:J

    .line 50
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/android/mms/ui/MmsListActivity;->mNextExpiredTime:J

    .line 53
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/mms/ui/MmsListActivity;->mIdForContextMenu:J

    .line 54
    iput-boolean v2, p0, Lcom/android/mms/ui/MmsListActivity;->mLockedForContextMenu:Z

    .line 68
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "c_type"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "body"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "read"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/mms/ui/MmsListActivity;->mMultipleDeleteProjection:[Ljava/lang/String;

    .line 311
    return-void
.end method

.method static synthetic access$100(Lcom/android/mms/ui/MmsListActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/android/mms/ui/MmsListActivity;->mLockedForContextMenu:Z

    return v0
.end method

.method private bindCmasListItemView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 15
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 230
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/mms/ui/MmsListActivity$CmasListItemTag;

    .line 237
    .local v8, tag:Lcom/android/mms/ui/MmsListActivity$CmasListItemTag;
    iget-object v3, v8, Lcom/android/mms/ui/MmsListActivity$CmasListItemTag;->group:Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;

    .line 239
    .local v3, cache:Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;
    const-string v13, "_id"

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 240
    .local v4, id:J
    const-string v13, "c_type"

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 241
    .local v2, cType:I
    const-string v13, "body"

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 242
    .local v1, body:Ljava/lang/String;
    const-string v13, "date"

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 243
    .local v9, time:J
    const-string v13, "read"

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_1

    const/4 v6, 0x1

    .line 244
    .local v6, isRead:Z
    :goto_0
    const-string v13, "locked"

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_2

    const/4 v7, 0x1

    .line 246
    .local v7, locked:Z
    :goto_1
    iget-object v13, v3, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;->ThreadListItem:Lcom/htc/widget/HtcListItemMessageBody;

    iput-object v13, p0, Lcom/android/mms/ui/MmsListActivity;->mMessageBody:Lcom/htc/widget/HtcListItemMessageBody;

    .line 247
    iget-object v13, p0, Lcom/android/mms/ui/MmsListActivity;->mMessageBody:Lcom/htc/widget/HtcListItemMessageBody;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/htc/widget/HtcListItemMessageBody;->setBodyTextLine(I)V

    .line 248
    iget-object v13, p0, Lcom/android/mms/ui/MmsListActivity;->mMessageBody:Lcom/htc/widget/HtcListItemMessageBody;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/htc/widget/HtcListItemMessageBody;->setBodyTextMaxLines(I)V

    .line 249
    iget-object v13, p0, Lcom/android/mms/ui/MmsListActivity;->mMessageBody:Lcom/htc/widget/HtcListItemMessageBody;

    invoke-virtual {v13}, Lcom/htc/widget/HtcListItemMessageBody;->getQuickContactBadge()Lcom/htc/widget/QuickContactBadge;

    move-result-object v13

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Lcom/htc/widget/QuickContactBadge;->setVisibility(I)V

    .line 250
    iget-object v13, p0, Lcom/android/mms/ui/MmsListActivity;->mMessageBody:Lcom/htc/widget/HtcListItemMessageBody;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Lcom/htc/widget/HtcListItemMessageBody;->setBodyVisibility(I)V

    .line 251
    iget-object v13, p0, Lcom/android/mms/ui/MmsListActivity;->mMessageBody:Lcom/htc/widget/HtcListItemMessageBody;

    const v14, 0x7f020141

    invoke-virtual {v13, v14}, Lcom/htc/widget/HtcListItemMessageBody;->setColorBarImageResource(I)V

    .line 256
    if-eqz v6, :cond_3

    .line 257
    iget-object v13, p0, Lcom/android/mms/ui/MmsListActivity;->mMessageBody:Lcom/htc/widget/HtcListItemMessageBody;

    const v14, 0x20300b1

    invoke-virtual {v13, v14}, Lcom/htc/widget/HtcListItemMessageBody;->setPrimaryTextStyle(I)V

    .line 260
    :goto_2
    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->getCmasTitleResId(I)I

    move-result v12

    .line 261
    .local v12, titleId:I
    if-lez v12, :cond_0

    iget-object v13, p0, Lcom/android/mms/ui/MmsListActivity;->mMessageBody:Lcom/htc/widget/HtcListItemMessageBody;

    invoke-virtual {v13, v12}, Lcom/htc/widget/HtcListItemMessageBody;->setPrimaryText(I)V

    .line 263
    :cond_0
    iget-object v13, p0, Lcom/android/mms/ui/MmsListActivity;->mMessageBody:Lcom/htc/widget/HtcListItemMessageBody;

    invoke-virtual {v13, v1}, Lcom/htc/widget/HtcListItemMessageBody;->setSecondaryText(Ljava/lang/String;)V

    .line 264
    move-object/from16 v0, p2

    invoke-static {v0, v9, v10}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampStringEx(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v11

    .line 266
    .local v11, timeStr:Ljava/lang/String;
    iget-object v13, p0, Lcom/android/mms/ui/MmsListActivity;->mMessageBody:Lcom/htc/widget/HtcListItemMessageBody;

    invoke-virtual {v13, v11}, Lcom/htc/widget/HtcListItemMessageBody;->setTextStamp(Ljava/lang/String;)V

    .line 268
    iget-object v14, p0, Lcom/android/mms/ui/MmsListActivity;->mMessageBody:Lcom/htc/widget/HtcListItemMessageBody;

    if-eqz v6, :cond_4

    const/4 v13, 0x0

    :goto_3
    invoke-virtual {v14, v13}, Lcom/htc/widget/HtcListItemMessageBody;->enableColorBar(Z)V

    .line 269
    iget-object v13, p0, Lcom/android/mms/ui/MmsListActivity;->mMessageBody:Lcom/htc/widget/HtcListItemMessageBody;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/htc/widget/HtcListItemMessageBody;->getBadge(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    const v14, 0x7f02017c

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 270
    iget-object v13, p0, Lcom/android/mms/ui/MmsListActivity;->mMessageBody:Lcom/htc/widget/HtcListItemMessageBody;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/htc/widget/HtcListItemMessageBody;->getBadge(I)Landroid/view/View;

    move-result-object v14

    if-eqz v7, :cond_5

    const/4 v13, 0x0

    :goto_4
    invoke-virtual {v14, v13}, Landroid/view/View;->setVisibility(I)V

    .line 274
    iput-wide v4, v8, Lcom/android/mms/ui/MmsListActivity$CmasListItemTag;->_id:J

    .line 275
    iput v2, v8, Lcom/android/mms/ui/MmsListActivity$CmasListItemTag;->c_type:I

    .line 276
    iput-object v1, v8, Lcom/android/mms/ui/MmsListActivity$CmasListItemTag;->body:Ljava/lang/String;

    .line 277
    iput-wide v9, v8, Lcom/android/mms/ui/MmsListActivity$CmasListItemTag;->time:J

    .line 278
    iput-object v11, v8, Lcom/android/mms/ui/MmsListActivity$CmasListItemTag;->timeStr:Ljava/lang/String;

    .line 279
    iput-boolean v6, v8, Lcom/android/mms/ui/MmsListActivity$CmasListItemTag;->read:Z

    .line 280
    iput-boolean v7, v8, Lcom/android/mms/ui/MmsListActivity$CmasListItemTag;->locked:Z

    .line 281
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 282
    return-void

    .line 243
    .end local v6           #isRead:Z
    .end local v7           #locked:Z
    .end local v11           #timeStr:Ljava/lang/String;
    .end local v12           #titleId:I
    :cond_1
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 244
    .restart local v6       #isRead:Z
    :cond_2
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 259
    .restart local v7       #locked:Z
    :cond_3
    iget-object v13, p0, Lcom/android/mms/ui/MmsListActivity;->mMessageBody:Lcom/htc/widget/HtcListItemMessageBody;

    const v14, 0x20300bb

    invoke-virtual {v13, v14}, Lcom/htc/widget/HtcListItemMessageBody;->setPrimaryTextStyle(I)V

    goto :goto_2

    .line 268
    .restart local v11       #timeStr:Ljava/lang/String;
    .restart local v12       #titleId:I
    :cond_4
    const/4 v13, 0x1

    goto :goto_3

    .line 270
    :cond_5
    const/16 v13, 0x8

    goto :goto_4
.end method

.method private initCmasListAct()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x1

    .line 285
    invoke-virtual {p0, v8}, Lcom/android/mms/ui/MmsListActivity;->setAutoRequery(Z)V

    .line 286
    const v0, 0x7f09030c

    invoke-static {v0}, Lcom/android/mms/custom/CustomizedManager;->getStringResId(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MmsListActivity;->setTitleText(I)V

    .line 288
    const/16 v0, 0x8

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v4, v0

    const-string v0, "c_type"

    aput-object v0, v4, v8

    const/4 v0, 0x2

    const-string v1, "body"

    aput-object v1, v4, v0

    const/4 v0, 0x3

    const-string v1, "date"

    aput-object v1, v4, v0

    const/4 v0, 0x4

    const-string v1, "read"

    aput-object v1, v4, v0

    const/4 v0, 0x5

    const-string v1, "locked"

    aput-object v1, v4, v0

    const/4 v0, 0x6

    const-string v1, "exp"

    aput-object v1, v4, v0

    const/4 v0, 0x7

    const-string v1, "presidential"

    aput-object v1, v4, v0

    .line 298
    .local v4, projection:[Ljava/lang/String;
    const/16 v1, 0x2717

    sget-object v3, Landroid/provider/Telephony$HtcCmas;->CONTENT_URI:Landroid/net/Uri;

    const-string v7, "presidential DESC, date DESC"

    move-object v0, p0

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v8}, Lcom/android/mms/ui/MmsListActivity;->setMainQueryArgs(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Z)V

    .line 305
    return-void
.end method

.method private initContentView()V
    .locals 0

    .prologue
    .line 308
    invoke-direct {p0}, Lcom/android/mms/ui/MmsListActivity;->initCmasListAct()V

    .line 309
    return-void
.end method

.method private isMultipleDeletable()Z
    .locals 10

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 453
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsListActivity;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 454
    .local v1, cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v9

    if-lez v9, :cond_3

    .line 455
    invoke-interface {v1}, Landroid/database/Cursor;->getPosition()I

    move-result v6

    .line 456
    .local v6, pos:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v9

    if-ge v4, v9, :cond_2

    .line 457
    invoke-interface {v1, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 458
    const-string v9, "c_type"

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 459
    .local v0, cType:I
    const-string v9, "exp"

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 460
    .local v2, exp:J
    const-string v9, "locked"

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    if-ne v9, v7, :cond_0

    move v5, v7

    .line 461
    .local v5, locked:Z
    :goto_1
    invoke-virtual {p0, v0, v2, v3, v5}, Lcom/android/mms/ui/MmsListActivity;->isCmasDeletable(IJZ)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 462
    invoke-interface {v1, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 468
    .end local v0           #cType:I
    .end local v2           #exp:J
    .end local v4           #i:I
    .end local v5           #locked:Z
    .end local v6           #pos:I
    :goto_2
    return v7

    .restart local v0       #cType:I
    .restart local v2       #exp:J
    .restart local v4       #i:I
    .restart local v6       #pos:I
    :cond_0
    move v5, v8

    .line 460
    goto :goto_1

    .line 456
    .restart local v5       #locked:Z
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 466
    .end local v0           #cType:I
    .end local v2           #exp:J
    .end local v5           #locked:Z
    :cond_2
    invoke-interface {v1, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    .end local v4           #i:I
    .end local v6           #pos:I
    :cond_3
    move v7, v8

    .line 468
    goto :goto_2
.end method

.method private newCmasListItemView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 219
    new-instance v1, Lcom/android/mms/ui/MmsListActivity$CmasListItemTag;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/android/mms/ui/MmsListActivity$CmasListItemTag;-><init>(Lcom/android/mms/ui/MmsListActivity;Lcom/android/mms/ui/MmsListActivity$1;)V

    .line 220
    .local v1, tag:Lcom/android/mms/ui/MmsListActivity$CmasListItemTag;
    invoke-static {p1}, Lcom/android/mms/ui/HtcListItemComposer;->createConversationListItem(Landroid/content/Context;)Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;

    move-result-object v0

    .line 221
    .local v0, group:Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;
    iget-object v2, v0, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;->ListItem:Landroid/view/View;

    .line 222
    .local v2, view:Landroid/view/View;
    iput-object v0, v1, Lcom/android/mms/ui/MmsListActivity$CmasListItemTag;->group:Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;

    .line 223
    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 225
    return-object v2
.end method


# virtual methods
.method protected bindListItemView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 0
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 78
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/MmsListActivity;->bindCmasListItemView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 79
    return-void
.end method

.method protected handleUIMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 204
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsListActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    :goto_0
    return-void

    .line 205
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 207
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsListActivity;->notifyContentChange()V

    goto :goto_0

    .line 205
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected newListItemView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 84
    const/4 v0, 0x0

    .line 85
    .local v0, v:Landroid/view/View;
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/MmsListActivity;->newCmasListItemView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 86
    return-object v0
.end method

.method protected onApBGQueryComplete(Landroid/os/Message;Landroid/database/Cursor;)V
    .locals 16
    .parameter "msg"
    .parameter "cursor"

    .prologue
    .line 159
    if-eqz p2, :cond_2

    .line 160
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getPosition()I

    move-result v9

    .line 162
    .local v9, pos:I
    const-wide v5, 0x7fffffffffffffffL

    .line 163
    .local v5, nextExpiredT:J
    const/4 v11, 0x0

    .line 164
    .local v11, unExpiredCnt:I
    const/4 v12, -0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 165
    :cond_0
    :goto_0
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 166
    const-string v12, "presidential"

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 167
    .local v10, presidential:I
    const/4 v12, 0x1

    if-ne v10, v12, :cond_1

    .line 168
    add-int/lit8 v11, v11, 0x1

    .line 169
    const-string v12, "exp"

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 170
    .local v3, expired:J
    cmp-long v12, v3, v5

    if-gez v12, :cond_0

    .line 172
    move-wide v5, v3

    goto :goto_0

    .line 176
    .end local v3           #expired:J
    .end local v10           #presidential:I
    :cond_1
    move-object/from16 v0, p2

    invoke-interface {v0, v9}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 181
    const-wide v12, 0x7fffffffffffffffL

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/android/mms/ui/MmsListActivity;->mNextExpiredTime:J

    .line 182
    if-lez v11, :cond_3

    .line 183
    move-object/from16 v0, p0

    iput-wide v5, v0, Lcom/android/mms/ui/MmsListActivity;->mNextExpiredTime:J

    .line 184
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 185
    .local v7, now:J
    sub-long v12, v5, v7

    const-wide/16 v14, 0x7d0

    add-long v1, v12, v14

    .line 189
    .local v1, delayMillis:J
    const-wide/16 v12, 0x0

    cmp-long v12, v1, v12

    if-lez v12, :cond_2

    .line 190
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/MmsBaseListActivity;->mUIHandler:Landroid/os/Handler;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/os/Handler;->removeMessages(I)V

    .line 191
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/MmsBaseListActivity;->mUIHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MmsBaseListActivity;->mUIHandler:Landroid/os/Handler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v13

    invoke-virtual {v12, v13, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 199
    .end local v1           #delayMillis:J
    .end local v5           #nextExpiredT:J
    .end local v7           #now:J
    .end local v9           #pos:I
    .end local v11           #unExpiredCnt:I
    :cond_2
    :goto_1
    return-void

    .line 196
    .restart local v5       #nextExpiredT:J
    .restart local v9       #pos:I
    .restart local v11       #unExpiredCnt:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/MmsBaseListActivity;->mUIHandler:Landroid/os/Handler;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_1
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    .line 427
    iget-wide v0, p0, Lcom/android/mms/ui/MmsListActivity;->mIdForContextMenu:J

    .line 428
    .local v0, _id:J
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 449
    :goto_0
    invoke-super {p0, p1}, Lcom/android/mms/ui/MmsBaseListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    return v3

    .line 431
    :pswitch_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 432
    .local v2, args:Landroid/os/Bundle;
    const-string v3, "msgId"

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 433
    const/4 v3, 0x1

    invoke-virtual {p0, v3, v2}, Lcom/android/mms/ui/MmsListActivity;->showDialog(ILandroid/os/Bundle;)Z

    goto :goto_0

    .line 438
    .end local v2           #args:Landroid/os/Bundle;
    :pswitch_1
    invoke-static {}, Lcom/android/mms/util/MmsAsyncWorkHandler;->getBGhandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/android/mms/ui/MmsListActivity$1;

    invoke-direct {v4, p0, v0, v1}, Lcom/android/mms/ui/MmsListActivity$1;-><init>(Lcom/android/mms/ui/MmsListActivity;J)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 428
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 112
    invoke-super {p0, p1}, Lcom/android/mms/ui/MmsBaseListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 115
    const/16 v0, 0x7d3

    invoke-static {p0, v0}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 118
    invoke-direct {p0}, Lcom/android/mms/ui/MmsListActivity;->initContentView()V

    .line 119
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 10
    .parameter "menu"
    .parameter "view"
    .parameter "menuInfo"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 394
    const/4 v4, 0x0

    .local v4, info:Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    move-object v4, p3

    .line 395
    check-cast v4, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;

    .line 396
    if-nez v4, :cond_1

    .line 423
    :cond_0
    :goto_0
    return-void

    .line 397
    :cond_1
    const-string v5, "MmsListActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onCreateContextMenu position> "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v4, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    iget-object v5, p0, Lcom/android/mms/ui/MmsBaseListActivity;->mCursorAdapter:Lcom/android/mms/ui/MmsBaseListActivity$BaseCursorAdapter;

    iget v8, v4, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v5, v8}, Lcom/android/mms/ui/MmsBaseListActivity$BaseCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/Cursor;

    .line 400
    .local v1, cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_0

    .line 402
    const-string v5, "_id"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    int-to-long v8, v5

    iput-wide v8, p0, Lcom/android/mms/ui/MmsListActivity;->mIdForContextMenu:J

    .line 403
    const-string v5, "locked"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-ne v5, v6, :cond_2

    move v5, v6

    :goto_1
    iput-boolean v5, p0, Lcom/android/mms/ui/MmsListActivity;->mLockedForContextMenu:Z

    .line 405
    const-string v5, "c_type"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 406
    .local v0, cType:I
    const-string v5, "exp"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 408
    .local v2, exp:J
    const v5, 0x7f090036

    invoke-interface {p1, v5}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    .line 410
    iget-boolean v5, p0, Lcom/android/mms/ui/MmsListActivity;->mLockedForContextMenu:Z

    if-eqz v5, :cond_3

    .line 411
    const/4 v5, 0x3

    const v6, 0x7f0901fe

    invoke-interface {p1, v7, v5, v7, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 412
    iput-boolean v7, p0, Lcom/android/mms/ui/MmsListActivity;->mLockedForContextMenu:Z

    goto :goto_0

    .end local v0           #cType:I
    .end local v2           #exp:J
    :cond_2
    move v5, v7

    .line 403
    goto :goto_1

    .line 415
    .restart local v0       #cType:I
    .restart local v2       #exp:J
    :cond_3
    const/4 v5, 0x2

    const v8, 0x7f0901fd

    invoke-interface {p1, v7, v5, v7, v8}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 417
    iget-boolean v5, p0, Lcom/android/mms/ui/MmsListActivity;->mLockedForContextMenu:Z

    invoke-virtual {p0, v0, v2, v3, v5}, Lcom/android/mms/ui/MmsListActivity;->isCmasDeletable(IJZ)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 418
    const v5, 0x20c01fc

    invoke-interface {p1, v7, v6, v7, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 421
    :cond_4
    iput-boolean v6, p0, Lcom/android/mms/ui/MmsListActivity;->mLockedForContextMenu:Z

    goto/16 :goto_0
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1
    .parameter "id"
    .parameter "args"

    .prologue
    .line 327
    invoke-super {p0, p1, p2}, Lcom/android/mms/ui/MmsBaseListActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 340
    const v0, 0x7f09010c

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02011b

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 343
    const/4 v0, 0x1

    const v1, 0x20c01fc

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020121

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 346
    invoke-super {p0, p1}, Lcom/android/mms/ui/MmsBaseListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 151
    invoke-super {p0}, Lcom/android/mms/ui/MmsBaseListActivity;->onDestroy()V

    .line 153
    iget-object v0, p0, Lcom/android/mms/ui/MmsBaseListActivity;->mUIHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 154
    return-void
.end method

.method protected onListItemClick(Lcom/htc/widget/HtcListView;Landroid/view/View;IJ)V
    .locals 5
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 103
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/MmsListActivity$CmasListItemTag;

    .line 104
    .local v1, tag:Lcom/android/mms/ui/MmsListActivity$CmasListItemTag;
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/mms/ui/OneCmasViewActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 105
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "c_type"

    iget v3, v1, Lcom/android/mms/ui/MmsListActivity$CmasListItemTag;->c_type:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 106
    const-string v2, "_id"

    iget-wide v3, v1, Lcom/android/mms/ui/MmsListActivity$CmasListItemTag;->_id:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 107
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MmsListActivity;->startActivity(Landroid/content/Intent;)V

    .line 108
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 364
    const/4 v0, 0x0

    .line 365
    .local v0, intent:Landroid/content/Intent;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 389
    :goto_0
    invoke-super {p0, p1}, Lcom/android/mms/ui/MmsBaseListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    .line 367
    :pswitch_0
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportVVMTab()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 368
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsListActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-class v2, Lcom/android/mms/ui/MessageTabActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 373
    .restart local v0       #intent:Landroid/content/Intent;
    :goto_1
    const/high16 v1, 0x2400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 375
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MmsListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 371
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsListActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-class v2, Lcom/android/mms/ui/ConversationList;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .restart local v0       #intent:Landroid/content/Intent;
    goto :goto_1

    .line 379
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-class v1, Lcom/android/mms/ui/MultipleDeleteActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 380
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "mode"

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 381
    const-string v1, "title"

    const v2, 0x7f09030c

    invoke-static {v2}, Lcom/android/mms/custom/CustomizedManager;->getStringResId(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 382
    const-string v1, "uri"

    sget-object v2, Landroid/provider/Telephony$HtcCmas;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 383
    const-string v1, "projection"

    iget-object v2, p0, Lcom/android/mms/ui/MmsListActivity;->mMultipleDeleteProjection:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 384
    const-string v1, "locked"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 385
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MmsListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 365
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 143
    invoke-super {p0}, Lcom/android/mms/ui/MmsBaseListActivity;->onPause()V

    .line 146
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/mms/ui/MmsListActivity;->mLatestLeaveTime:J

    .line 147
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 0
    .parameter "id"
    .parameter "dialog"
    .parameter "args"

    .prologue
    .line 334
    invoke-super {p0, p1, p2, p3}, Lcom/android/mms/ui/MmsBaseListActivity;->onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V

    .line 335
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 351
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 353
    iget-object v0, p0, Lcom/android/mms/ui/MmsBaseListActivity;->mCursorAdapter:Lcom/android/mms/ui/MmsBaseListActivity$BaseCursorAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MmsBaseListActivity;->mCursorAdapter:Lcom/android/mms/ui/MmsBaseListActivity$BaseCursorAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsBaseListActivity$BaseCursorAdapter;->getCount()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/MmsListActivity;->isMultipleDeletable()Z

    move-result v0

    if-nez v0, :cond_2

    .line 354
    :cond_1
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 359
    :goto_0
    invoke-super {p0, p1}, Lcom/android/mms/ui/MmsBaseListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    .line 356
    :cond_2
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 129
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 130
    .local v0, now:J
    iget-wide v2, p0, Lcom/android/mms/ui/MmsListActivity;->mLatestLeaveTime:J

    cmp-long v2, v2, v0

    if-gtz v2, :cond_0

    iget-wide v2, p0, Lcom/android/mms/ui/MmsListActivity;->mNextExpiredTime:J

    cmp-long v2, v2, v0

    if-gez v2, :cond_1

    .line 133
    :cond_0
    const-string v2, "MmsListActivity"

    const-string v3, "notify change onResume: "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v2, p0, Lcom/android/mms/ui/MmsBaseListActivity;->mUIHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 135
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsListActivity;->notifyContentChange()V

    .line 137
    :cond_1
    invoke-super {p0}, Lcom/android/mms/ui/MmsBaseListActivity;->onResume()V

    .line 139
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 123
    invoke-super {p0}, Lcom/android/mms/ui/MmsBaseListActivity;->onStart()V

    .line 125
    return-void
.end method
