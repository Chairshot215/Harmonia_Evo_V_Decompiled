.class public Lcom/android/mms/ui/MessageTimestampListAdapter;
.super Landroid/widget/BaseAdapter;
.source "MessageTimestampListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/MessageTimestampListAdapter$RowInfo;,
        Lcom/android/mms/ui/MessageTimestampListAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MassageTimestampListAdapter"

.field private static final TYPE_LAST:I = 0x6

.field private static final TYPE_LAST_BUBBLE:I = 0xa

.field public static final TYPE_MESSAGE:I = 0x1

.field public static final TYPE_TIMESTAMP:I


# instance fields
.field private bunreadcountchange:Z

.field private finishQueryTime:Ljava/lang/Long;

.field private mActCache:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private final mAdapter:Lcom/android/mms/ui/MessageListAdapter;

.field private final mContext:Landroid/content/Context;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mMmsUnreadIdsListStr:Ljava/lang/String;

.field private mRowInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/ui/MessageTimestampListAdapter$RowInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSmsUnreadIdsListStr:Ljava/lang/String;

.field private mTime:Landroid/text/format/Time;

.field private mUnreadCount:I

.field private oldunreadcount:I

.field private startQueryTime:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/android/mms/ui/MessageListAdapter;)V
    .locals 3
    .parameter "act"
    .parameter "Adapter"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 87
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 75
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MessageTimestampListAdapter;->mTime:Landroid/text/format/Time;

    .line 78
    iput v1, p0, Lcom/android/mms/ui/MessageTimestampListAdapter;->mUnreadCount:I

    .line 80
    iput-object v2, p0, Lcom/android/mms/ui/MessageTimestampListAdapter;->mMmsUnreadIdsListStr:Ljava/lang/String;

    .line 81
    iput-object v2, p0, Lcom/android/mms/ui/MessageTimestampListAdapter;->mSmsUnreadIdsListStr:Ljava/lang/String;

    .line 84
    iput-boolean v1, p0, Lcom/android/mms/ui/MessageTimestampListAdapter;->bunreadcountchange:Z

    .line 85
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/MessageTimestampListAdapter;->oldunreadcount:I

    .line 89
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageTimestampListAdapter;->mActCache:Ljava/lang/ref/WeakReference;

    .line 90
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageTimestampListAdapter;->mContext:Landroid/content/Context;

    .line 92
    iget-object v0, p0, Lcom/android/mms/ui/MessageTimestampListAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/mms/ui/MessageTimestampListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 93
    iput-object p2, p0, Lcom/android/mms/ui/MessageTimestampListAdapter;->mAdapter:Lcom/android/mms/ui/MessageListAdapter;

    .line 94
    return-void
.end method

.method private convertLongArrayToStr(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 364
    .local p1, ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v3, 0x0

    .line 365
    .local v3, str:Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 366
    .local v1, id:J
    if-nez v3, :cond_0

    .line 367
    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3           #str:Ljava/lang/StringBuilder;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 368
    .restart local v3       #str:Ljava/lang/StringBuilder;
    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 370
    :cond_0
    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 373
    .end local v1           #id:J
    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 374
    :goto_1
    return-object v4

    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 538
    const/4 v0, 0x0

    return v0
.end method

.method protected bindTimestampView(ILandroid/view/View;J)V
    .locals 6
    .parameter "position"
    .parameter "view"
    .parameter "millis"

    .prologue
    const/4 v5, 0x0

    .line 240
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/MessageTimestampListAdapter$ViewHolder;

    .line 243
    .local v1, holder:Lcom/android/mms/ui/MessageTimestampListAdapter$ViewHolder;
    iget-object v3, p0, Lcom/android/mms/ui/MessageTimestampListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "date_format"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 245
    .local v0, currentFormat:Ljava/lang/CharSequence;
    invoke-static {v0, p3, p4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 248
    .local v2, timeString:Ljava/lang/String;
    iget-object v3, v1, Lcom/android/mms/ui/MessageTimestampListAdapter$ViewHolder;->dateView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    invoke-static {}, Lcom/android/mms/MmsApp;->isThemeable()Z

    move-result v3

    if-nez v3, :cond_0

    .line 253
    if-nez p1, :cond_2

    .line 254
    sget-boolean v3, Lcom/android/mms/MmsApp$Customize;->Emerald:Z

    if-eqz v3, :cond_1

    .line 255
    iget-object v3, v1, Lcom/android/mms/ui/MessageTimestampListAdapter$ViewHolder;->mainLayout:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 257
    :cond_1
    iget-object v3, v1, Lcom/android/mms/ui/MessageTimestampListAdapter$ViewHolder;->mainLayout:Landroid/view/View;

    const v4, 0x7f0200dc

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 261
    :cond_2
    sget-boolean v3, Lcom/android/mms/MmsApp$Customize;->Emerald:Z

    if-eqz v3, :cond_3

    .line 262
    iget-object v3, v1, Lcom/android/mms/ui/MessageTimestampListAdapter$ViewHolder;->mainLayout:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 264
    :cond_3
    iget-object v3, v1, Lcom/android/mms/ui/MessageTimestampListAdapter$ViewHolder;->mainLayout:Landroid/view/View;

    const v4, 0x7f0200dd

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public calculateTimestamp()V
    .locals 24

    .prologue
    .line 379
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/MessageTimestampListAdapter;->mUnreadCount:I

    .line 380
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageTimestampListAdapter;->mAdapter:Lcom/android/mms/ui/MessageListAdapter;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/MessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v5

    .line 381
    .local v5, cursor:Landroid/database/Cursor;
    if-eqz v5, :cond_0

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v20

    if-nez v20, :cond_1

    .line 382
    :cond_0
    const-string v20, "MassageTimestampListAdapter"

    const-string v21, "calculateTimestamp cursor is null or zero!"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessageTimestampListAdapter;->clearDayHeaderInfo()V

    .line 500
    :goto_0
    return-void

    .line 398
    :cond_1
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 400
    .local v11, rowInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/ui/MessageTimestampListAdapter$RowInfo;>;"
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 401
    .local v6, mmsIdsSb:Ljava/lang/StringBuilder;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 404
    .local v14, smsIdsSb:Ljava/lang/StringBuilder;
    const-wide/16 v17, -0x1

    .line 405
    .local v17, timestamp:J
    const-wide/16 v9, -0x1

    .line 406
    .local v9, preMill:J
    new-instance v12, Landroid/text/format/Time;

    invoke-direct {v12}, Landroid/text/format/Time;-><init>()V

    .line 407
    .local v12, sPrevTime:Landroid/text/format/Time;
    new-instance v13, Landroid/text/format/Time;

    invoke-direct {v13}, Landroid/text/format/Time;-><init>()V

    .line 409
    .local v13, sThenTime:Landroid/text/format/Time;
    const-string v19, ""

    .line 411
    .local v19, type:Ljava/lang/String;
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    .line 415
    :cond_2
    sget-object v20, Lcom/android/mms/msg/util/ColumnsMap;->DEFAULT:Lcom/android/mms/msg/util/ColumnsMap;

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/mms/msg/util/ColumnsMap;->mColumnMsgType:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 416
    const-string v20, "mms"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_7

    .line 417
    sget-object v20, Lcom/android/mms/msg/util/ColumnsMap;->DEFAULT:Lcom/android/mms/msg/util/ColumnsMap;

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/mms/msg/util/ColumnsMap;->mColumnMmsDate:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    const-wide/16 v22, 0x3e8

    mul-long v17, v20, v22

    .line 419
    sget-object v20, Lcom/android/mms/msg/util/ColumnsMap;->DEFAULT:Lcom/android/mms/msg/util/ColumnsMap;

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/mms/msg/util/ColumnsMap;->mColumnMsgId:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 420
    .local v7, msgId:J
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v20

    if-gtz v20, :cond_6

    .line 421
    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 427
    :goto_1
    sget-object v20, Lcom/android/mms/msg/util/ColumnsMap;->DEFAULT:Lcom/android/mms/msg/util/ColumnsMap;

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/mms/msg/util/ColumnsMap;->mColumnMmsRead:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    if-nez v20, :cond_3

    .line 428
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MessageTimestampListAdapter;->mUnreadCount:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/MessageTimestampListAdapter;->mUnreadCount:I

    .line 464
    .end local v7           #msgId:J
    :cond_3
    :goto_2
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportThreadDetailBubbleStyle()Z

    move-result v20

    if-nez v20, :cond_4

    .line 465
    const-wide/16 v20, -0x1

    cmp-long v20, v9, v20

    if-nez v20, :cond_b

    .line 467
    move-wide/from16 v9, v17

    .line 468
    new-instance v20, Lcom/android/mms/ui/MessageTimestampListAdapter$RowInfo;

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move/from16 v2, v21

    move-wide/from16 v3, v17

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/mms/ui/MessageTimestampListAdapter$RowInfo;-><init>(Lcom/android/mms/ui/MessageTimestampListAdapter;IJ)V

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 482
    :cond_4
    :goto_3
    new-instance v20, Lcom/android/mms/ui/MessageTimestampListAdapter$RowInfo;

    const/16 v21, 0x1

    invoke-interface {v5}, Landroid/database/Cursor;->getPosition()I

    move-result v22

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move/from16 v2, v21

    move-wide/from16 v3, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/mms/ui/MessageTimestampListAdapter$RowInfo;-><init>(Lcom/android/mms/ui/MessageTimestampListAdapter;IJ)V

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 484
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v20

    if-nez v20, :cond_2

    .line 485
    const-string v20, "MassageTimestampListAdapter"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "calculateTimestamp end>"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MessageTimestampListAdapter;->mUnreadCount:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MessageTimestampListAdapter;->oldunreadcount:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_d

    .line 488
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MessageTimestampListAdapter;->mUnreadCount:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/MessageTimestampListAdapter;->oldunreadcount:I

    .line 495
    :cond_5
    :goto_4
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/mms/ui/MessageTimestampListAdapter;->mRowInfo:Ljava/util/ArrayList;

    .line 497
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageTimestampListAdapter;->mMmsUnreadIdsListStr:Ljava/lang/String;

    .line 498
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageTimestampListAdapter;->mSmsUnreadIdsListStr:Ljava/lang/String;

    goto/16 :goto_0

    .line 423
    .restart local v7       #msgId:J
    :cond_6
    const-string v20, ", "

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 433
    .end local v7           #msgId:J
    :cond_7
    const-string v20, "htcmsgs"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_9

    .line 434
    const-string v20, "vvm"

    sget-object v21, Lcom/android/mms/msg/util/ColumnsMap;->DEFAULT:Lcom/android/mms/msg/util/ColumnsMap;

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/mms/msg/util/ColumnsMap;->mColumnHtcMsgType:I

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_8

    .line 436
    sget-object v20, Lcom/android/mms/msg/util/ColumnsMap;->DEFAULT:Lcom/android/mms/msg/util/ColumnsMap;

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/mms/msg/util/ColumnsMap;->mColumnHtcMsgDate:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 438
    sget-object v20, Lcom/android/mms/msg/util/ColumnsMap;->DEFAULT:Lcom/android/mms/msg/util/ColumnsMap;

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/mms/msg/util/ColumnsMap;->mColumnHtcMsgRead:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    if-nez v20, :cond_3

    goto/16 :goto_2

    .line 444
    :cond_8
    sget-object v20, Lcom/android/mms/msg/util/ColumnsMap;->DEFAULT:Lcom/android/mms/msg/util/ColumnsMap;

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/mms/msg/util/ColumnsMap;->mColumnSmsDate:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    goto/16 :goto_2

    .line 449
    :cond_9
    sget-object v20, Lcom/android/mms/msg/util/ColumnsMap;->DEFAULT:Lcom/android/mms/msg/util/ColumnsMap;

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/mms/msg/util/ColumnsMap;->mColumnSmsDate:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 451
    sget-object v20, Lcom/android/mms/msg/util/ColumnsMap;->DEFAULT:Lcom/android/mms/msg/util/ColumnsMap;

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/mms/msg/util/ColumnsMap;->mColumnMsgId:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 452
    .restart local v7       #msgId:J
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v20

    if-gtz v20, :cond_a

    .line 453
    invoke-virtual {v14, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 459
    :goto_5
    sget-object v20, Lcom/android/mms/msg/util/ColumnsMap;->DEFAULT:Lcom/android/mms/msg/util/ColumnsMap;

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/mms/msg/util/ColumnsMap;->mColumnSmsRead:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    if-nez v20, :cond_3

    .line 460
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MessageTimestampListAdapter;->mUnreadCount:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/MessageTimestampListAdapter;->mUnreadCount:I

    goto/16 :goto_2

    .line 455
    :cond_a
    const-string v20, ", "

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 470
    .end local v7           #msgId:J
    :cond_b
    sub-long v15, v17, v9

    .line 471
    .local v15, span:J
    invoke-virtual {v12, v9, v10}, Landroid/text/format/Time;->set(J)V

    .line 472
    move-wide/from16 v0, v17

    invoke-virtual {v13, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 474
    const-wide/32 v20, 0x5265c00

    cmp-long v20, v15, v20

    if-gez v20, :cond_c

    iget v0, v12, Landroid/text/format/Time;->weekDay:I

    move/from16 v20, v0

    iget v0, v13, Landroid/text/format/Time;->weekDay:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_4

    .line 476
    :cond_c
    new-instance v20, Lcom/android/mms/ui/MessageTimestampListAdapter$RowInfo;

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move/from16 v2, v21

    move-wide/from16 v3, v17

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/mms/ui/MessageTimestampListAdapter$RowInfo;-><init>(Lcom/android/mms/ui/MessageTimestampListAdapter;IJ)V

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 477
    move-wide/from16 v9, v17

    goto/16 :goto_3

    .line 490
    .end local v15           #span:J
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MessageTimestampListAdapter;->oldunreadcount:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MessageTimestampListAdapter;->mUnreadCount:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_5

    .line 491
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/ui/MessageTimestampListAdapter;->bunreadcountchange:Z

    goto/16 :goto_4
.end method

.method public clearDayHeaderInfo()V
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/android/mms/ui/MessageTimestampListAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/android/mms/ui/MessageTimestampListAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 337
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/MessageTimestampListAdapter;->mRowInfo:Ljava/util/ArrayList;

    .line 340
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/mms/ui/MessageTimestampListAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/android/mms/ui/MessageTimestampListAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 102
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageTimestampListAdapter;->mAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListAdapter;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getCursorPosition(I)I
    .locals 3
    .parameter "listPos"

    .prologue
    .line 527
    iget-object v1, p0, Lcom/android/mms/ui/MessageTimestampListAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    if-ltz p1, :cond_0

    .line 528
    iget-object v1, p0, Lcom/android/mms/ui/MessageTimestampListAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/MessageTimestampListAdapter$RowInfo;

    .line 529
    .local v0, row:Lcom/android/mms/ui/MessageTimestampListAdapter$RowInfo;
    iget v1, v0, Lcom/android/mms/ui/MessageTimestampListAdapter$RowInfo;->mType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 530
    iget-wide v1, v0, Lcom/android/mms/ui/MessageTimestampListAdapter$RowInfo;->mData:J

    long-to-int p1, v1

    .line 533
    .end local v0           #row:Lcom/android/mms/ui/MessageTimestampListAdapter$RowInfo;
    .end local p1
    :cond_0
    return p1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 4
    .parameter "position"

    .prologue
    .line 107
    iget-object v1, p0, Lcom/android/mms/ui/MessageTimestampListAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 108
    iget-object v1, p0, Lcom/android/mms/ui/MessageTimestampListAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/MessageTimestampListAdapter$RowInfo;

    .line 109
    .local v0, row:Lcom/android/mms/ui/MessageTimestampListAdapter$RowInfo;
    iget v1, v0, Lcom/android/mms/ui/MessageTimestampListAdapter$RowInfo;->mType:I

    if-nez v1, :cond_0

    .line 115
    .end local v0           #row:Lcom/android/mms/ui/MessageTimestampListAdapter$RowInfo;
    :goto_0
    return-object v0

    .line 112
    .restart local v0       #row:Lcom/android/mms/ui/MessageTimestampListAdapter$RowInfo;
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/MessageTimestampListAdapter;->mAdapter:Lcom/android/mms/ui/MessageListAdapter;

    iget-wide v2, v0, Lcom/android/mms/ui/MessageTimestampListAdapter$RowInfo;->mData:J

    long-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MessageListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 115
    .end local v0           #row:Lcom/android/mms/ui/MessageTimestampListAdapter$RowInfo;
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/MessageTimestampListAdapter;->mAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v1, p1}, Lcom/android/mms/ui/MessageListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 6
    .parameter "position"

    .prologue
    .line 120
    iget-object v3, p0, Lcom/android/mms/ui/MessageTimestampListAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    .line 121
    iget-object v3, p0, Lcom/android/mms/ui/MessageTimestampListAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/MessageTimestampListAdapter$RowInfo;

    .line 122
    .local v2, row:Lcom/android/mms/ui/MessageTimestampListAdapter$RowInfo;
    iget v3, v2, Lcom/android/mms/ui/MessageTimestampListAdapter$RowInfo;->mType:I

    if-nez v3, :cond_0

    .line 124
    int-to-long v0, p1

    .line 135
    .end local v2           #row:Lcom/android/mms/ui/MessageTimestampListAdapter$RowInfo;
    :goto_0
    return-wide v0

    .line 126
    .restart local v2       #row:Lcom/android/mms/ui/MessageTimestampListAdapter$RowInfo;
    :cond_0
    const-wide/16 v0, -0x1

    .line 129
    .local v0, lReturn:J
    :try_start_0
    iget-object v3, p0, Lcom/android/mms/ui/MessageTimestampListAdapter;->mAdapter:Lcom/android/mms/ui/MessageListAdapter;

    iget-wide v4, v2, Lcom/android/mms/ui/MessageTimestampListAdapter$RowInfo;->mData:J

    long-to-int v4, v4

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/MessageListAdapter;->getItemId(I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    .line 135
    .end local v0           #lReturn:J
    .end local v2           #row:Lcom/android/mms/ui/MessageTimestampListAdapter$RowInfo;
    :cond_1
    iget-object v3, p0, Lcom/android/mms/ui/MessageTimestampListAdapter;->mAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v3, p1}, Lcom/android/mms/ui/MessageListAdapter;->getItemId(I)J

    move-result-wide v0

    goto :goto_0

    .line 130
    .restart local v0       #lReturn:J
    .restart local v2       #row:Lcom/android/mms/ui/MessageTimestampListAdapter$RowInfo;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 5
    .parameter "position"

    .prologue
    const/4 v2, 0x0

    .line 154
    iget-object v3, p0, Lcom/android/mms/ui/MessageTimestampListAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 155
    iget-object v3, p0, Lcom/android/mms/ui/MessageTimestampListAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/MessageTimestampListAdapter$RowInfo;

    .line 156
    .local v1, row:Lcom/android/mms/ui/MessageTimestampListAdapter$RowInfo;
    iget v3, v1, Lcom/android/mms/ui/MessageTimestampListAdapter$RowInfo;->mType:I

    if-nez v3, :cond_1

    .line 171
    .end local v1           #row:Lcom/android/mms/ui/MessageTimestampListAdapter$RowInfo;
    :cond_0
    :goto_0
    return v2

    .line 161
    .restart local v1       #row:Lcom/android/mms/ui/MessageTimestampListAdapter$RowInfo;
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/mms/ui/MessageTimestampListAdapter;->mAdapter:Lcom/android/mms/ui/MessageListAdapter;

    iget-wide v3, v1, Lcom/android/mms/ui/MessageTimestampListAdapter$RowInfo;->mData:J

    long-to-int v3, v3

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/MessageListAdapter;->getItemViewType(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 162
    :catch_0
    move-exception v0

    .line 163
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "MassageTimestampListAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " exception >"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public getMmsUnreadIdsList()Ljava/lang/String;
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/android/mms/ui/MessageTimestampListAdapter;->mMmsUnreadIdsListStr:Ljava/lang/String;

    return-object v0
.end method

.method public getSmsUnreadIdsList()Ljava/lang/String;
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/android/mms/ui/MessageTimestampListAdapter;->mSmsUnreadIdsListStr:Ljava/lang/String;

    return-object v0
.end method

.method protected getTimestampView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 274
    iget-object v3, p0, Lcom/android/mms/ui/MessageTimestampListAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/MessageTimestampListAdapter$RowInfo;

    .line 276
    .local v1, row:Lcom/android/mms/ui/MessageTimestampListAdapter$RowInfo;
    if-nez p2, :cond_0

    .line 277
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageTimestampListAdapter;->newTimestampView()Landroid/view/View;

    move-result-object v2

    .line 294
    .local v2, view:Landroid/view/View;
    :goto_0
    iget-wide v3, v1, Lcom/android/mms/ui/MessageTimestampListAdapter$RowInfo;->mData:J

    invoke-virtual {p0, p1, v2, v3, v4}, Lcom/android/mms/ui/MessageTimestampListAdapter;->bindTimestampView(ILandroid/view/View;J)V

    .line 295
    return-object v2

    .line 280
    .end local v2           #view:Landroid/view/View;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    .line 282
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageTimestampListAdapter;->newTimestampView()Landroid/view/View;

    move-result-object v2

    .restart local v2       #view:Landroid/view/View;
    goto :goto_0

    .line 284
    .end local v2           #view:Landroid/view/View;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/MessageTimestampListAdapter$ViewHolder;

    .line 286
    .local v0, holder:Lcom/android/mms/ui/MessageTimestampListAdapter$ViewHolder;
    iget v3, v0, Lcom/android/mms/ui/MessageTimestampListAdapter$ViewHolder;->mType:I

    if-eqz v3, :cond_2

    .line 288
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageTimestampListAdapter;->newTimestampView()Landroid/view/View;

    move-result-object v2

    .restart local v2       #view:Landroid/view/View;
    goto :goto_0

    .line 290
    .end local v2           #view:Landroid/view/View;
    :cond_2
    move-object v2, p2

    .restart local v2       #view:Landroid/view/View;
    goto :goto_0
.end method

.method public getUnreadCount()I
    .locals 1

    .prologue
    .line 344
    iget v0, p0, Lcom/android/mms/ui/MessageTimestampListAdapter;->mUnreadCount:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 302
    iget-object v2, p0, Lcom/android/mms/ui/MessageTimestampListAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/MessageTimestampListAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le p1, v2, :cond_1

    .line 303
    :cond_0
    const-string v2, "MassageTimestampListAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mRowInfo is not initiate, or position error.> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iget-object v2, p0, Lcom/android/mms/ui/MessageTimestampListAdapter;->mAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/mms/ui/MessageListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 330
    .local v0, returnView:Landroid/view/View;
    :goto_0
    return-object v0

    .line 307
    .end local v0           #returnView:Landroid/view/View;
    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/MessageTimestampListAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/MessageTimestampListAdapter$RowInfo;

    .line 308
    .local v1, row:Lcom/android/mms/ui/MessageTimestampListAdapter$RowInfo;
    const-string v2, "MassageTimestampListAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mRowInfo is initiate, and position > "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "row.mType:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/android/mms/ui/MessageTimestampListAdapter$RowInfo;->mType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget v2, v1, Lcom/android/mms/ui/MessageTimestampListAdapter$RowInfo;->mType:I

    if-nez v2, :cond_2

    .line 310
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/mms/ui/MessageTimestampListAdapter;->getTimestampView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .restart local v0       #returnView:Landroid/view/View;
    goto :goto_0

    .line 311
    .end local v0           #returnView:Landroid/view/View;
    :cond_2
    iget v2, v1, Lcom/android/mms/ui/MessageTimestampListAdapter$RowInfo;->mType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 312
    iget-object v2, p0, Lcom/android/mms/ui/MessageTimestampListAdapter;->mAdapter:Lcom/android/mms/ui/MessageListAdapter;

    iget-wide v3, v1, Lcom/android/mms/ui/MessageTimestampListAdapter$RowInfo;->mData:J

    long-to-int v3, v3

    invoke-virtual {v2, v3, p2, p3}, Lcom/android/mms/ui/MessageListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .restart local v0       #returnView:Landroid/view/View;
    goto :goto_0

    .line 314
    .end local v0           #returnView:Landroid/view/View;
    :cond_3
    iget-object v2, p0, Lcom/android/mms/ui/MessageTimestampListAdapter;->mAdapter:Lcom/android/mms/ui/MessageListAdapter;

    iget-wide v3, v1, Lcom/android/mms/ui/MessageTimestampListAdapter$RowInfo;->mData:J

    long-to-int v3, v3

    invoke-virtual {v2, v3, p2, p3}, Lcom/android/mms/ui/MessageListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 315
    .restart local v0       #returnView:Landroid/view/View;
    const-string v2, "MassageTimestampListAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getView> Unknown view type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/android/mms/ui/MessageTimestampListAdapter$RowInfo;->mType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    const-string v2, "MassageTimestampListAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getView> Unknown view data: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v1, Lcom/android/mms/ui/MessageTimestampListAdapter$RowInfo;->mData:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 142
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportMergeLayout()Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportThreadDetailBubbleStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    const/16 v0, 0xa

    .line 147
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x6

    goto :goto_0
.end method

.method public hasunreadcountChange()Z
    .locals 1

    .prologue
    .line 552
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageTimestampListAdapter;->bunreadcountchange:Z

    return v0
.end method

.method public isEnabled(I)Z
    .locals 3
    .parameter "position"

    .prologue
    const/4 v1, 0x1

    .line 544
    iget-object v2, p0, Lcom/android/mms/ui/MessageTimestampListAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/MessageTimestampListAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_0

    .line 545
    iget-object v2, p0, Lcom/android/mms/ui/MessageTimestampListAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/MessageTimestampListAdapter$RowInfo;

    .line 546
    .local v0, row:Lcom/android/mms/ui/MessageTimestampListAdapter$RowInfo;
    iget v2, v0, Lcom/android/mms/ui/MessageTimestampListAdapter$RowInfo;->mType:I

    if-ne v2, v1, :cond_1

    .line 548
    .end local v0           #row:Lcom/android/mms/ui/MessageTimestampListAdapter$RowInfo;
    :cond_0
    :goto_0
    return v1

    .line 546
    .restart local v0       #row:Lcom/android/mms/ui/MessageTimestampListAdapter$RowInfo;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected newTimestampView()Landroid/view/View;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 226
    new-instance v1, Lcom/android/mms/ui/MessageTimestampListAdapter$ViewHolder;

    invoke-direct {v1, v6, v6}, Lcom/android/mms/ui/MessageTimestampListAdapter$ViewHolder;-><init>(IZ)V

    .line 227
    .local v1, holder:Lcom/android/mms/ui/MessageTimestampListAdapter$ViewHolder;
    iget-object v3, p0, Lcom/android/mms/ui/MessageTimestampListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x2090026

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 229
    .local v2, view:Landroid/view/View;
    const v3, 0x2020010

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/android/mms/ui/MessageTimestampListAdapter$ViewHolder;->dateView:Landroid/widget/TextView;

    .line 230
    iget-object v3, p0, Lcom/android/mms/ui/MessageTimestampListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0006

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 233
    .local v0, hieght:I
    invoke-virtual {v2, v0}, Landroid/view/View;->setMinimumHeight(I)V

    .line 234
    const v3, 0x2020085

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v1, Lcom/android/mms/ui/MessageTimestampListAdapter$ViewHolder;->mainLayout:Landroid/view/View;

    .line 235
    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 236
    return-object v2
.end method

.method public setUnreadCount(I)V
    .locals 0
    .parameter "count"

    .prologue
    .line 348
    iput p1, p0, Lcom/android/mms/ui/MessageTimestampListAdapter;->mUnreadCount:I

    .line 349
    return-void
.end method
