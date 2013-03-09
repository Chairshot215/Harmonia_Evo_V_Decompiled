.class public Lcom/android/mms/ui/OneCmasViewActivity;
.super Lcom/android/mms/ui/MmsBaseListActivity;
.source "OneCmasViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/OneCmasViewActivity$4;,
        Lcom/android/mms/ui/OneCmasViewActivity$ERecordType1;,
        Lcom/android/mms/ui/OneCmasViewActivity$CmasListItemTag;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final HTC_DEBUG:Z = false

.field private static final MENU_ALL_CMAS:I = 0x5

.field private static final MENU_DELETE_MESSAGE:I = 0x1

.field private static final MENU_LOCK_MESSAGE:I = 0x2

.field private static final MENU_MORE_INFO:I = 0x4

.field private static final MENU_UNLOCK_MESSAGE:I = 0x3

.field public static final MODE_ONE_CMAS_VIEW:I = 0x2

.field private static final NEW_LINE:C = '\n'

.field private static final TAG:Ljava/lang/String; = "OneCmasViewActivity"


# instance fields
.field private mCtype:I

.field mCursorCache:Landroid/os/Bundle;

.field private mDeletable:Z

.field private mId:J

.field private mLocked:Z

.field private mRead:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 35
    invoke-direct {p0}, Lcom/android/mms/ui/MmsBaseListActivity;-><init>()V

    .line 53
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/mms/ui/OneCmasViewActivity;->mId:J

    .line 54
    iput v2, p0, Lcom/android/mms/ui/OneCmasViewActivity;->mCtype:I

    .line 55
    iput-boolean v2, p0, Lcom/android/mms/ui/OneCmasViewActivity;->mLocked:Z

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/OneCmasViewActivity;->mRead:Z

    .line 430
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/OneCmasViewActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/android/mms/ui/OneCmasViewActivity;->mLocked:Z

    return v0
.end method

.method private appendRecords(Lcom/android/mms/ui/OneCmasViewActivity$ERecordType1;Landroid/os/Bundle;Ljava/lang/StringBuilder;)V
    .locals 9
    .parameter "element"
    .parameter "args"
    .parameter "sb"

    .prologue
    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v8, -0x1

    .line 452
    const/4 v2, -0x1

    .line 453
    .local v2, id:I
    const/4 v3, -0x1

    .line 454
    .local v3, label:I
    const/4 v1, -0x1

    .line 455
    .local v1, format:I
    const/4 v0, 0x0

    .line 456
    .local v0, content:Ljava/lang/String;
    sget-object v6, Lcom/android/mms/ui/OneCmasViewActivity$4;->$SwitchMap$com$android$mms$ui$OneCmasViewActivity$ERecordType1:[I

    invoke-virtual {p1}, Lcom/android/mms/ui/OneCmasViewActivity$ERecordType1;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 487
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "element> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", id= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/mms/ui/OneCmasViewActivity;->htclogd(Ljava/lang/String;)V

    .line 488
    if-ltz v2, :cond_0

    .line 489
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/mms/ui/OneCmasViewActivity;->htclogd(Ljava/lang/String;)V

    .line 490
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 491
    invoke-virtual {p0, v3}, Lcom/android/mms/ui/OneCmasViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 494
    :cond_0
    return-void

    .line 458
    :pswitch_0
    const-string v6, "category"

    invoke-virtual {p2, v6, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 459
    const v3, 0x7f0903dc

    .line 460
    const-string v6, "is_cdma_format"

    invoke-virtual {p2, v6, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    if-lez v6, :cond_1

    move v1, v4

    .line 462
    :goto_1
    invoke-static {v1, v2}, Landroid/telephony/HtcCmasMessage;->getCmaeCategory(II)Ljava/lang/String;

    move-result-object v0

    .line 463
    goto :goto_0

    :cond_1
    move v1, v5

    .line 460
    goto :goto_1

    .line 465
    :pswitch_1
    const-string v6, "response"

    invoke-virtual {p2, v6, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 466
    const v3, 0x7f0903dd

    .line 467
    const-string v6, "is_cdma_format"

    invoke-virtual {p2, v6, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    if-lez v6, :cond_2

    move v1, v4

    .line 469
    :goto_2
    invoke-static {v1, v2}, Landroid/telephony/HtcCmasMessage;->getCmaeResponseType(II)Ljava/lang/String;

    move-result-object v0

    .line 470
    goto :goto_0

    :cond_2
    move v1, v5

    .line 467
    goto :goto_2

    .line 472
    :pswitch_2
    const-string v4, "severity"

    invoke-virtual {p2, v4, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 473
    const v3, 0x7f0903de

    .line 474
    invoke-static {v2}, Landroid/telephony/HtcCmasMessage;->getCmaeSeverity(I)Ljava/lang/String;

    move-result-object v0

    .line 475
    goto/16 :goto_0

    .line 477
    :pswitch_3
    const-string v4, "urgency"

    invoke-virtual {p2, v4, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 478
    const v3, 0x7f0903df

    .line 479
    invoke-static {v2}, Landroid/telephony/HtcCmasMessage;->getCmaeUrgency(I)Ljava/lang/String;

    move-result-object v0

    .line 480
    goto/16 :goto_0

    .line 482
    :pswitch_4
    const-string v4, "certainty"

    invoke-virtual {p2, v4, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 483
    const v3, 0x7f0903e0

    .line 484
    invoke-static {v2}, Landroid/telephony/HtcCmasMessage;->getCmaeCertainty(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 456
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private bindOneCmasListItemView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 22
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 289
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/mms/ui/OneCmasViewActivity$CmasListItemTag;

    .line 290
    .local v18, tag:Lcom/android/mms/ui/OneCmasViewActivity$CmasListItemTag;
    const v19, 0x7f0e0052

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 291
    .local v3, bodyV:Landroid/widget/TextView;
    const v19, 0x7f0e0053

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 292
    .local v7, expTimeV:Landroid/widget/TextView;
    const v19, 0x7f0e0055

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 293
    .local v16, revTimeV:Landroid/widget/TextView;
    const v19, 0x7f0e0054

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    .line 301
    .local v12, lockedV:Landroid/widget/ImageView;
    const-string v19, "_id"

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 302
    .local v8, id:J
    const-string v19, "body"

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 303
    .local v2, body:Ljava/lang/String;
    const-string v19, "exp"

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 304
    .local v4, exp:J
    const-string v19, "date"

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 305
    .local v13, rev:J
    const-string v19, "locked"

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_3

    const/4 v11, 0x1

    .line 306
    .local v11, locked:Z
    :goto_0
    const-string v19, "read"

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    const/4 v10, 0x1

    .line 307
    .local v10, isRead:Z
    :goto_1
    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/android/mms/ui/OneCmasViewActivity;->mRead:Z

    .line 308
    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/mms/ui/OneCmasViewActivity;->mLocked:Z

    .line 309
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/OneCmasViewActivity;->mCtype:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v4, v5, v11}, Lcom/android/mms/ui/OneCmasViewActivity;->isCmasDeletable(IJZ)Z

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/ui/OneCmasViewActivity;->mDeletable:Z

    .line 312
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 315
    const/4 v6, 0x0

    .line 316
    .local v6, expStr:Ljava/lang/String;
    const-string v19, "OneCmasViewActivity"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "exptime is: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    const-wide/16 v19, 0x0

    cmp-long v19, v4, v19

    if-lez v19, :cond_0

    .line 318
    move-object/from16 v0, p2

    invoke-static {v0, v4, v5}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampDetailString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    .line 321
    :cond_0
    const/16 v19, 0xa8

    invoke-static/range {v19 .. v19}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v19

    if-nez v19, :cond_1

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 323
    :cond_1
    const/16 v19, 0x8

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 336
    :goto_2
    move-object/from16 v0, p2

    invoke-static {v0, v13, v14}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampDetailString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v15

    .line 337
    .local v15, revStr:Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 338
    .local v17, sb:Ljava/lang/StringBuilder;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_2

    .line 339
    const v19, 0x7f0900bd

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/OneCmasViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    :cond_2
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 346
    const v19, 0x7f02017c

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 347
    if-eqz v11, :cond_6

    const/16 v19, 0x0

    :goto_3
    move/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 350
    move-object/from16 v0, v18

    iput-wide v8, v0, Lcom/android/mms/ui/OneCmasViewActivity$CmasListItemTag;->_id:J

    .line 352
    move-object/from16 v0, v18

    iput-object v2, v0, Lcom/android/mms/ui/OneCmasViewActivity$CmasListItemTag;->body:Ljava/lang/String;

    .line 353
    move-object/from16 v0, v18

    iput-wide v4, v0, Lcom/android/mms/ui/OneCmasViewActivity$CmasListItemTag;->exp:J

    .line 354
    move-object/from16 v0, v18

    iput-object v6, v0, Lcom/android/mms/ui/OneCmasViewActivity$CmasListItemTag;->expStr:Ljava/lang/String;

    .line 355
    move-object/from16 v0, v18

    iput-wide v13, v0, Lcom/android/mms/ui/OneCmasViewActivity$CmasListItemTag;->time:J

    .line 356
    move-object/from16 v0, v18

    iput-object v15, v0, Lcom/android/mms/ui/OneCmasViewActivity$CmasListItemTag;->timeStr:Ljava/lang/String;

    .line 357
    move-object/from16 v0, v18

    iput-boolean v11, v0, Lcom/android/mms/ui/OneCmasViewActivity$CmasListItemTag;->locked:Z

    .line 358
    return-void

    .line 305
    .end local v6           #expStr:Ljava/lang/String;
    .end local v10           #isRead:Z
    .end local v11           #locked:Z
    .end local v15           #revStr:Ljava/lang/String;
    .end local v17           #sb:Ljava/lang/StringBuilder;
    :cond_3
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 306
    .restart local v11       #locked:Z
    :cond_4
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 326
    .restart local v6       #expStr:Ljava/lang/String;
    .restart local v10       #isRead:Z
    :cond_5
    new-instance v19, Ljava/lang/StringBuilder;

    const v20, 0x7f090126

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/OneCmasViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, ": "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 329
    .restart local v17       #sb:Ljava/lang/StringBuilder;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 330
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 347
    .restart local v15       #revStr:Ljava/lang/String;
    :cond_6
    const/16 v19, 0x8

    goto :goto_3
.end method

.method private createOneCmasInfoDialog()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 498
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 499
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v1, 0x7f0903da

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 501
    const-string v1, "dummy"

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 502
    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 503
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 504
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    return-object v1
.end method

.method private getOneCmasInfoDetails(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 2
    .parameter "args"

    .prologue
    .line 440
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 441
    .local v0, sb:Ljava/lang/StringBuilder;
    sget-object v1, Lcom/android/mms/ui/OneCmasViewActivity$ERecordType1;->CMAE_CATEGORY:Lcom/android/mms/ui/OneCmasViewActivity$ERecordType1;

    invoke-direct {p0, v1, p1, v0}, Lcom/android/mms/ui/OneCmasViewActivity;->appendRecords(Lcom/android/mms/ui/OneCmasViewActivity$ERecordType1;Landroid/os/Bundle;Ljava/lang/StringBuilder;)V

    .line 442
    sget-object v1, Lcom/android/mms/ui/OneCmasViewActivity$ERecordType1;->CMAE_RESPONSE_TYPE:Lcom/android/mms/ui/OneCmasViewActivity$ERecordType1;

    invoke-direct {p0, v1, p1, v0}, Lcom/android/mms/ui/OneCmasViewActivity;->appendRecords(Lcom/android/mms/ui/OneCmasViewActivity$ERecordType1;Landroid/os/Bundle;Ljava/lang/StringBuilder;)V

    .line 443
    sget-object v1, Lcom/android/mms/ui/OneCmasViewActivity$ERecordType1;->CMAE_SEVERITY:Lcom/android/mms/ui/OneCmasViewActivity$ERecordType1;

    invoke-direct {p0, v1, p1, v0}, Lcom/android/mms/ui/OneCmasViewActivity;->appendRecords(Lcom/android/mms/ui/OneCmasViewActivity$ERecordType1;Landroid/os/Bundle;Ljava/lang/StringBuilder;)V

    .line 444
    sget-object v1, Lcom/android/mms/ui/OneCmasViewActivity$ERecordType1;->CMAE_URGENCY:Lcom/android/mms/ui/OneCmasViewActivity$ERecordType1;

    invoke-direct {p0, v1, p1, v0}, Lcom/android/mms/ui/OneCmasViewActivity;->appendRecords(Lcom/android/mms/ui/OneCmasViewActivity$ERecordType1;Landroid/os/Bundle;Ljava/lang/StringBuilder;)V

    .line 445
    sget-object v1, Lcom/android/mms/ui/OneCmasViewActivity$ERecordType1;->CMAE_CERTAINTY:Lcom/android/mms/ui/OneCmasViewActivity$ERecordType1;

    invoke-direct {p0, v1, p1, v0}, Lcom/android/mms/ui/OneCmasViewActivity;->appendRecords(Lcom/android/mms/ui/OneCmasViewActivity$ERecordType1;Landroid/os/Bundle;Ljava/lang/StringBuilder;)V

    .line 447
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private goToAllCmasListScreen()V
    .locals 4

    .prologue
    .line 508
    invoke-virtual {p0}, Lcom/android/mms/ui/OneCmasViewActivity;->finish()V

    .line 509
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/mms/ui/MmsListActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 510
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "mode"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 512
    const/high16 v2, 0x2400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 515
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/OneCmasViewActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 521
    :goto_0
    return-void

    .line 516
    :catch_0
    move-exception v0

    .line 517
    .local v0, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 518
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v0

    .line 519
    .local v0, e:Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0
.end method

.method private hasMoreInfo(Landroid/os/Bundle;)Z
    .locals 3
    .parameter "cache"

    .prologue
    const/4 v0, 0x0

    const/4 v2, -0x1

    .line 376
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportCmasMoreInfoUI()Z

    move-result v1

    if-nez v1, :cond_1

    .line 384
    :cond_0
    :goto_0
    return v0

    .line 377
    :cond_1
    const-string v1, "category"

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-gez v1, :cond_2

    const-string v1, "response"

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-gez v1, :cond_2

    const-string v1, "severity"

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-gez v1, :cond_2

    const-string v1, "urgency"

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-gez v1, :cond_2

    const-string v1, "certainty"

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ltz v1, :cond_0

    .line 382
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private htclogd(Ljava/lang/String;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 235
    return-void
.end method

.method private initOneCmasListAct()V
    .locals 10

    .prologue
    const-wide/16 v5, 0x0

    const/4 v3, 0x0

    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 238
    invoke-virtual {p0, v8}, Lcom/android/mms/ui/OneCmasViewActivity;->setAutoRequery(Z)V

    .line 239
    invoke-virtual {p0}, Lcom/android/mms/ui/OneCmasViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    .line 240
    .local v9, intent:Landroid/content/Intent;
    const-string v0, "c_type"

    invoke-virtual {v9, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/OneCmasViewActivity;->mCtype:I

    .line 241
    const-string v0, "_id"

    invoke-virtual {v9, v0, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/mms/ui/OneCmasViewActivity;->mId:J

    .line 242
    iget-wide v0, p0, Lcom/android/mms/ui/OneCmasViewActivity;->mId:J

    cmp-long v0, v0, v5

    if-nez v0, :cond_0

    .line 243
    invoke-virtual {p0}, Lcom/android/mms/ui/OneCmasViewActivity;->finish()V

    .line 270
    :goto_0
    return-void

    .line 246
    :cond_0
    iget v0, p0, Lcom/android/mms/ui/OneCmasViewActivity;->mCtype:I

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->getCmasTitleResId(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/OneCmasViewActivity;->setTitleText(I)V

    .line 248
    const/16 v0, 0xd

    new-array v4, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v4, v3

    const-string v0, "body"

    aput-object v0, v4, v8

    const/4 v0, 0x2

    const-string v1, "exp"

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

    const-string v1, "c_type"

    aput-object v1, v4, v0

    const/4 v0, 0x7

    const-string v1, "is_cdma_format"

    aput-object v1, v4, v0

    const/16 v0, 0x8

    const-string v1, "category"

    aput-object v1, v4, v0

    const/16 v0, 0x9

    const-string v1, "response"

    aput-object v1, v4, v0

    const/16 v0, 0xa

    const-string v1, "severity"

    aput-object v1, v4, v0

    const/16 v0, 0xb

    const-string v1, "urgency"

    aput-object v1, v4, v0

    const/16 v0, 0xc

    const-string v1, "certainty"

    aput-object v1, v4, v0

    .line 263
    .local v4, projection:[Ljava/lang/String;
    const/16 v1, 0x2718

    sget-object v0, Lcom/htc/wrap/android/provider/HtcWrapTelephony$HtcCmas;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v5, p0, Lcom/android/mms/ui/OneCmasViewActivity;->mId:J

    invoke-static {v0, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    move-object v0, p0

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v8}, Lcom/android/mms/ui/OneCmasViewActivity;->setMainQueryArgs(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private newOneCmasListItemView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 274
    new-instance v1, Lcom/android/mms/ui/OneCmasViewActivity$CmasListItemTag;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/android/mms/ui/OneCmasViewActivity$CmasListItemTag;-><init>(Lcom/android/mms/ui/OneCmasViewActivity;Lcom/android/mms/ui/OneCmasViewActivity$1;)V

    .line 275
    .local v1, tag:Lcom/android/mms/ui/OneCmasViewActivity$CmasListItemTag;
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030011

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 276
    .local v2, view:Landroid/view/View;
    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 277
    const v3, 0x7f0e0052

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 278
    .local v0, bodyV:Landroid/widget/TextView;
    const/16 v3, 0xf

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 279
    const/high16 v3, -0x100

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 285
    return-object v2
.end method

.method private setCursorCache(Landroid/database/Cursor;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 425
    iget-object v0, p0, Lcom/android/mms/ui/OneCmasViewActivity;->mCursorCache:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/OneCmasViewActivity;->mCursorCache:Landroid/os/Bundle;

    .line 426
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/OneCmasViewActivity;->mCursorCache:Landroid/os/Bundle;

    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/OneCmasViewActivity;->setModeOneCmasCache(Landroid/database/Cursor;Landroid/os/Bundle;)V

    .line 427
    return-void
.end method

.method private setModeOneCmasCache(Landroid/database/Cursor;Landroid/os/Bundle;)V
    .locals 12
    .parameter "c"
    .parameter "bundle"

    .prologue
    .line 390
    const-wide/16 v0, -0x1

    .line 391
    .local v0, _id:J
    const/4 v2, -0x1

    .line 392
    .local v2, cType:I
    const/4 v4, -0x1

    .line 393
    .local v4, cdmaFormat:I
    const/4 v3, -0x1

    .line 394
    .local v3, category:I
    const/4 v7, -0x1

    .line 395
    .local v7, response:I
    const/4 v8, -0x1

    .line 396
    .local v8, severity:I
    const/4 v9, -0x1

    .line 397
    .local v9, urgency:I
    const/4 v5, -0x1

    .line 398
    .local v5, certainty:I
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v10

    if-nez v10, :cond_0

    .line 400
    :try_start_0
    const-string v10, "_id"

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 401
    const-string v10, "c_type"

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 402
    const-string v10, "is_cdma_format"

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 403
    const-string v10, "category"

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 404
    const-string v10, "response"

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 405
    const-string v10, "severity"

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 406
    const-string v10, "urgency"

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 407
    const-string v10, "certainty"

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 412
    :goto_0
    const-string v10, "_id"

    invoke-virtual {p2, v10, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 413
    const-string v10, "c_type"

    invoke-virtual {p2, v10, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 414
    const-string v10, "is_cdma_format"

    invoke-virtual {p2, v10, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 415
    const-string v10, "category"

    invoke-virtual {p2, v10, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 416
    const-string v10, "response"

    invoke-virtual {p2, v10, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 417
    const-string v10, "severity"

    invoke-virtual {p2, v10, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 418
    const-string v10, "urgency"

    invoke-virtual {p2, v10, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 419
    const-string v10, "certainty"

    invoke-virtual {p2, v10, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 421
    :cond_0
    return-void

    .line 408
    :catch_0
    move-exception v6

    .line 409
    .local v6, e:Ljava/lang/Exception;
    const-string v10, "OneCmasViewActivity"

    const-string v11, "can not get cmas info! "

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected bindListItemView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 0
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/OneCmasViewActivity;->bindOneCmasListItemView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 64
    return-void
.end method

.method protected newListItemView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 69
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/OneCmasViewActivity;->newOneCmasListItemView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 80
    invoke-super {p0, p1}, Lcom/android/mms/ui/MmsBaseListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreate> @"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/OneCmasViewActivity;->htclogd(Ljava/lang/String;)V

    .line 83
    const/16 v0, 0x7d3

    invoke-static {p0, v0}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 85
    invoke-direct {p0}, Lcom/android/mms/ui/OneCmasViewActivity;->initOneCmasListAct()V

    .line 86
    return-void
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1
    .parameter "id"
    .parameter "args"

    .prologue
    .line 132
    packed-switch p1, :pswitch_data_0

    .line 136
    invoke-super {p0, p1, p2}, Lcom/android/mms/ui/MmsBaseListActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 134
    :pswitch_0
    invoke-direct {p0}, Lcom/android/mms/ui/OneCmasViewActivity;->createOneCmasInfoDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 132
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 154
    const/4 v0, 0x5

    const v1, 0x7f0903d3

    invoke-static {v1}, Lcom/android/mms/custom/CustomizedManager;->getStringResId(I)I

    move-result v1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 156
    const/4 v0, 0x1

    const v1, 0x20c01fc

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 158
    const/4 v0, 0x3

    const v1, 0x7f0901fe

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 160
    const/4 v0, 0x2

    const v1, 0x7f0901fd

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 163
    const/4 v0, 0x4

    const v1, 0x7f0903da

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 165
    invoke-super {p0, p1}, Lcom/android/mms/ui/MmsBaseListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 125
    invoke-super {p0}, Lcom/android/mms/ui/MmsBaseListActivity;->onDestroy()V

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDestroy> @"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/OneCmasViewActivity;->htclogd(Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 74
    invoke-super {p0, p1}, Lcom/android/mms/ui/MmsBaseListActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNewIntent> @"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/OneCmasViewActivity;->htclogd(Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter "item"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 187
    iget-wide v0, p0, Lcom/android/mms/ui/OneCmasViewActivity;->mId:J

    .line 188
    .local v0, _id:J
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 230
    :goto_0
    invoke-super {p0, p1}, Lcom/android/mms/ui/MmsBaseListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    return v3

    .line 190
    :pswitch_0
    invoke-direct {p0}, Lcom/android/mms/ui/OneCmasViewActivity;->goToAllCmasListScreen()V

    goto :goto_0

    .line 194
    :pswitch_1
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 195
    .local v2, args:Landroid/os/Bundle;
    const-string v3, "finish"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 196
    const-string v3, "msgId"

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 197
    invoke-virtual {p0, v4, v2}, Lcom/android/mms/ui/OneCmasViewActivity;->showDialog(ILandroid/os/Bundle;)Z

    goto :goto_0

    .line 201
    .end local v2           #args:Landroid/os/Bundle;
    :pswitch_2
    iput-boolean v4, p0, Lcom/android/mms/ui/OneCmasViewActivity;->mLocked:Z

    .line 202
    invoke-static {}, Lcom/android/mms/util/MmsAsyncWorkHandler;->getBGhandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/android/mms/ui/OneCmasViewActivity$2;

    invoke-direct {v4, p0, v0, v1}, Lcom/android/mms/ui/OneCmasViewActivity$2;-><init>(Lcom/android/mms/ui/OneCmasViewActivity;J)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 213
    :pswitch_3
    iput-boolean v5, p0, Lcom/android/mms/ui/OneCmasViewActivity;->mLocked:Z

    .line 214
    invoke-static {}, Lcom/android/mms/util/MmsAsyncWorkHandler;->getBGhandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/android/mms/ui/OneCmasViewActivity$3;

    invoke-direct {v4, p0, v0, v1}, Lcom/android/mms/ui/OneCmasViewActivity$3;-><init>(Lcom/android/mms/ui/OneCmasViewActivity;J)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 226
    :pswitch_4
    iget-object v3, p0, Lcom/android/mms/ui/OneCmasViewActivity;->mCursorCache:Landroid/os/Bundle;

    invoke-virtual {p0, v5, v3}, Lcom/android/mms/ui/OneCmasViewActivity;->showDialog(ILandroid/os/Bundle;)Z

    goto :goto_0

    .line 188
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 4

    .prologue
    .line 102
    invoke-super {p0}, Lcom/android/mms/ui/MmsBaseListActivity;->onPause()V

    .line 103
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPause> @"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/mms/ui/OneCmasViewActivity;->htclogd(Ljava/lang/String;)V

    .line 105
    iget-boolean v2, p0, Lcom/android/mms/ui/OneCmasViewActivity;->mRead:Z

    if-nez v2, :cond_0

    .line 106
    iget-wide v0, p0, Lcom/android/mms/ui/OneCmasViewActivity;->mId:J

    .line 107
    .local v0, _id:J
    invoke-static {}, Lcom/android/mms/util/MmsAsyncWorkHandler;->getBGhandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/mms/ui/OneCmasViewActivity$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/mms/ui/OneCmasViewActivity$1;-><init>(Lcom/android/mms/ui/OneCmasViewActivity;J)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 121
    .end local v0           #_id:J
    :cond_0
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 2
    .parameter "id"
    .parameter "dialog"
    .parameter "args"

    .prologue
    .line 142
    move-object v0, p2

    check-cast v0, Lcom/htc/widget/HtcAlertDialog;

    .line 143
    .local v0, htcDialog:Lcom/htc/widget/HtcAlertDialog;
    packed-switch p1, :pswitch_data_0

    .line 148
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/mms/ui/MmsBaseListActivity;->onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V

    .line 149
    return-void

    .line 145
    :pswitch_0
    invoke-direct {p0, p3}, Lcom/android/mms/ui/OneCmasViewActivity;->getOneCmasInfoDetails(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 143
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .parameter "menu"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 171
    invoke-virtual {p0}, Lcom/android/mms/ui/OneCmasViewActivity;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 172
    .local v0, c:Landroid/database/Cursor;
    invoke-direct {p0, v0}, Lcom/android/mms/ui/OneCmasViewActivity;->setCursorCache(Landroid/database/Cursor;)V

    .line 173
    const/4 v2, 0x5

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 174
    const/4 v2, 0x3

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iget-boolean v5, p0, Lcom/android/mms/ui/OneCmasViewActivity;->mLocked:Z

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 175
    const/4 v2, 0x2

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    iget-boolean v2, p0, Lcom/android/mms/ui/OneCmasViewActivity;->mLocked:Z

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 177
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iget-boolean v5, p0, Lcom/android/mms/ui/OneCmasViewActivity;->mLocked:Z

    if-nez v5, :cond_1

    iget-boolean v5, p0, Lcom/android/mms/ui/OneCmasViewActivity;->mDeletable:Z

    if-eqz v5, :cond_1

    :goto_1
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 180
    iget-object v2, p0, Lcom/android/mms/ui/OneCmasViewActivity;->mCursorCache:Landroid/os/Bundle;

    invoke-direct {p0, v2}, Lcom/android/mms/ui/OneCmasViewActivity;->hasMoreInfo(Landroid/os/Bundle;)Z

    move-result v1

    .line 181
    .local v1, showMoreInfo:Z
    const/4 v2, 0x4

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 182
    invoke-super {p0, p1}, Lcom/android/mms/ui/MmsBaseListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    return v2

    .end local v1           #showMoreInfo:Z
    :cond_0
    move v2, v4

    .line 175
    goto :goto_0

    :cond_1
    move v3, v4

    .line 177
    goto :goto_1
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 96
    invoke-super {p0}, Lcom/android/mms/ui/MmsBaseListActivity;->onResume()V

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onResume> @"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/OneCmasViewActivity;->htclogd(Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 90
    invoke-super {p0}, Lcom/android/mms/ui/MmsBaseListActivity;->onStart()V

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStart> @"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/OneCmasViewActivity;->htclogd(Ljava/lang/String;)V

    .line 92
    return-void
.end method
