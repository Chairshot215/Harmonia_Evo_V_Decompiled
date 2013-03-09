.class public Lcom/android/mms/ui/MultipleDeleteListAdapter;
.super Landroid/widget/CursorAdapter;
.source "MultipleDeleteListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/MultipleDeleteListAdapter$ListItemCache;
    }
.end annotation


# static fields
.field static final COLUMN_DATE:I = 0x3

.field static final COLUMN_ERROR:I = 0x7

.field static final COLUMN_ID:I = 0x0

.field static final COLUMN_MESSAGE_COUNT:I = 0x1

.field static final COLUMN_MESSAGE_ID:I = 0x1

.field static final COLUMN_MESSAGE_TYPE:I = 0x0

.field static final COLUMN_MMS_DATE:I = 0xa

.field static final COLUMN_MMS_READ:I = 0xb

.field static final COLUMN_MMS_SUBJECT:I = 0x8

.field static final COLUMN_MMS_SUBJECT_CHARSET:I = 0x9

.field static final COLUMN_READ:I = 0x4

.field static final COLUMN_RECIPIENTS_IDS:I = 0x2

.field static final COLUMN_RECIPIENT_ADDRESS:I = 0x9

.field static final COLUMN_SMS_ADDRESS:I = 0x3

.field static final COLUMN_SMS_BODY:I = 0x4

.field static final COLUMN_SMS_DATE:I = 0x5

.field static final COLUMN_SMS_READ:I = 0x6

.field static final COLUMN_SMS_TYPE:I = 0x7

.field static final COLUMN_SNIPPET:I = 0x5

.field static final COLUMN_SNIPPET_CHARSET:I = 0x6

.field static final COLUMN_THREAD_ID:I = 0x2

.field static final COLUMN_UNREAD_COUNT:I = 0x8

.field static final HTC_COLUMN_ERROR:I = 0x11

.field static final HTC_COLUMN_ID:I = 0x0

.field static final HTC_COLUMN_LATEST_DATAE:I = 0x4

.field static final HTC_COLUMN_MSG_TYPE:I = 0x8

.field static final HTC_COLUMN_PRIVATE:I = 0xa

.field static final HTC_COLUMN_P_MESSAGE_COUNT:I = 0x5

.field static final HTC_COLUMN_P_READ:I = 0x7

.field static final HTC_COLUMN_P_UNREAD_COUNT:I = 0x6

.field static final HTC_COLUMN_RECIPIENTS_IDS:I = 0x2

.field static final HTC_COLUMN_RECIPIENT_ADDRESS:I = 0x3

.field static final HTC_COLUMN_SNIPPET:I = 0xf

.field static final HTC_COLUMN_SNIPPET_CHARSET:I = 0x10

.field static final HTC_COLUMN_THREAD_ID:I = 0x1

.field static final HTC_COLUMN_T_DATE:I = 0xd

.field static final HTC_COLUMN_T_MESSAGE_COUNT:I = 0xc

.field static final HTC_COLUMN_T_PRIORITY:I = 0x13

.field static final HTC_COLUMN_T_READ:I = 0xe

.field static final HTC_COLUMN_T_TYPE:I = 0x14

.field static final HTC_COLUMN_T_UNREAD_COUNT:I = 0x12

.field static final HTC_COLUMN_URGENT:I = 0xb

.field static final HTC_COLUMN_VVM_PLAY_TIME:I = 0x9

.field public static final MARK_ALL:I = 0x1

.field public static final NO_VALUE:I = -0x1

.field private static final TAG:Ljava/lang/String; = "MultipleDeleteListAdapter"

.field public static final UNMARK_ALL:I = 0x0

.field static final mCOLUMN_ID:I = 0x1

.field static final mCOLUMN_MMS_MSG_TYPE:I = 0x5

.field static final mCOLUMN_MSG_TYPE:I = 0x0

.field static final mCOLUMN_SMS_ADDRESS:I = 0x2

.field static final mCOLUMN_SMS_BODY:I = 0x3

.field static final mCOLUMN_SMS_DATE:I = 0x4


# instance fields
.field private mBlank:Ljava/lang/String;

.field private mBodyView:Landroid/widget/TextView;

.field private mCaller:Lcom/android/mms/ui/MultipleDeleteActivity;

.field private mCheckIcon:Lcom/htc/widget/HtcListItemCheckBox;

.field mCheckbox:Lcom/htc/widget/HtcListItemImageButton;

.field mCurrentCursorCount:I

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mListView:Lcom/htc/widget/HtcListView;

.field private mMode:I

.field public mSelectStatus:I

.field mText:Lcom/htc/widget/HtcListItem2LineText;

.field private m_vFooter:Landroid/view/View;

.field mbShowFoot:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Lcom/htc/widget/HtcListView;)V
    .locals 3
    .parameter "context"
    .parameter "c"
    .parameter "listView"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 154
    invoke-direct {p0, p1, p2, v1}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 62
    const-string v0, "          "

    iput-object v0, p0, Lcom/android/mms/ui/MultipleDeleteListAdapter;->mBlank:Ljava/lang/String;

    .line 136
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/MultipleDeleteListAdapter;->mSelectStatus:I

    .line 137
    iput-object v2, p0, Lcom/android/mms/ui/MultipleDeleteListAdapter;->mCaller:Lcom/android/mms/ui/MultipleDeleteActivity;

    .line 140
    iput v1, p0, Lcom/android/mms/ui/MultipleDeleteListAdapter;->mMode:I

    .line 145
    iput v1, p0, Lcom/android/mms/ui/MultipleDeleteListAdapter;->mCurrentCursorCount:I

    .line 146
    iput-boolean v1, p0, Lcom/android/mms/ui/MultipleDeleteListAdapter;->mbShowFoot:Z

    .line 147
    iput-object v2, p0, Lcom/android/mms/ui/MultipleDeleteListAdapter;->m_vFooter:Landroid/view/View;

    move-object v0, p1

    .line 156
    check-cast v0, Lcom/android/mms/ui/MultipleDeleteActivity;

    iput-object v0, p0, Lcom/android/mms/ui/MultipleDeleteListAdapter;->mCaller:Lcom/android/mms/ui/MultipleDeleteActivity;

    .line 157
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/mms/ui/MultipleDeleteListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 159
    iput-object p3, p0, Lcom/android/mms/ui/MultipleDeleteListAdapter;->mListView:Lcom/htc/widget/HtcListView;

    .line 160
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Lcom/htc/widget/HtcListView;I)V
    .locals 3
    .parameter "context"
    .parameter "c"
    .parameter "listView"
    .parameter "mode"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 164
    invoke-direct {p0, p1, p2, v1}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 62
    const-string v0, "          "

    iput-object v0, p0, Lcom/android/mms/ui/MultipleDeleteListAdapter;->mBlank:Ljava/lang/String;

    .line 136
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/MultipleDeleteListAdapter;->mSelectStatus:I

    .line 137
    iput-object v2, p0, Lcom/android/mms/ui/MultipleDeleteListAdapter;->mCaller:Lcom/android/mms/ui/MultipleDeleteActivity;

    .line 140
    iput v1, p0, Lcom/android/mms/ui/MultipleDeleteListAdapter;->mMode:I

    .line 145
    iput v1, p0, Lcom/android/mms/ui/MultipleDeleteListAdapter;->mCurrentCursorCount:I

    .line 146
    iput-boolean v1, p0, Lcom/android/mms/ui/MultipleDeleteListAdapter;->mbShowFoot:Z

    .line 147
    iput-object v2, p0, Lcom/android/mms/ui/MultipleDeleteListAdapter;->m_vFooter:Landroid/view/View;

    move-object v0, p1

    .line 166
    check-cast v0, Lcom/android/mms/ui/MultipleDeleteActivity;

    iput-object v0, p0, Lcom/android/mms/ui/MultipleDeleteListAdapter;->mCaller:Lcom/android/mms/ui/MultipleDeleteActivity;

    .line 167
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/mms/ui/MultipleDeleteListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 169
    iput-object p3, p0, Lcom/android/mms/ui/MultipleDeleteListAdapter;->mListView:Lcom/htc/widget/HtcListView;

    .line 170
    iput p4, p0, Lcom/android/mms/ui/MultipleDeleteListAdapter;->mMode:I

    .line 171
    return-void
.end method

.method private bindCmasView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 5
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 463
    const-string v3, "c_type"

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 464
    .local v1, cType:I
    const-string v3, "body"

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 465
    .local v0, body:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->getCmasTitleResId(I)I

    move-result v2

    .line 466
    .local v2, titleId:I
    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/android/mms/ui/MultipleDeleteListAdapter;->mText:Lcom/htc/widget/HtcListItem2LineText;

    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->getCmasTitleResId(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(I)V

    .line 467
    :cond_0
    iget-object v3, p0, Lcom/android/mms/ui/MultipleDeleteListAdapter;->mText:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v3, v0}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    .line 468
    return-void
.end method

.method private bindHtcThreadView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 19
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 393
    const/16 v16, 0x3

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 394
    .local v3, address:Ljava/lang/String;
    const/16 v16, 0x8

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 395
    .local v8, msgType:Ljava/lang/String;
    const/4 v11, 0x0

    .line 396
    .local v11, subject:Ljava/lang/String;
    const/16 v16, 0x4

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 397
    .local v6, l_date:J
    const/16 v16, 0xd

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 402
    .local v13, t_date:J
    const-string v16, ";"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 403
    const-string v16, ";"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 404
    .local v15, values:[Ljava/lang/String;
    const-string v10, ""

    .line 405
    .local v10, result:Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    array-length v0, v15

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v5, v0, :cond_2

    .line 406
    aget-object v16, v15, v5

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    if-lez v16, :cond_0

    .line 407
    if-nez v5, :cond_1

    .line 408
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {}, Lcom/android/mms/util/ContactNameCache;->getInstance()Lcom/android/mms/util/ContactNameCache;

    move-result-object v17

    aget-object v18, v15, v5

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/util/ContactNameCache;->getContactName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 405
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 410
    :cond_1
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ","

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {}, Lcom/android/mms/util/ContactNameCache;->getInstance()Lcom/android/mms/util/ContactNameCache;

    move-result-object v17

    aget-object v18, v15, v5

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/util/ContactNameCache;->getContactName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    .line 413
    :cond_2
    move-object v4, v10

    .line 417
    .end local v5           #i:I
    .end local v10           #result:Ljava/lang/String;
    .end local v15           #values:[Ljava/lang/String;
    .local v4, contact:Ljava/lang/String;
    :goto_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 418
    const v16, 0x7f090021

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 421
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MultipleDeleteListAdapter;->mText:Lcom/htc/widget/HtcListItem2LineText;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 424
    cmp-long v16, v6, v13

    if-nez v16, :cond_7

    .line 426
    const/16 v16, 0xf

    const/16 v17, 0x10

    move-object/from16 v0, p3

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->extractEncStrFromCursor(Landroid/database/Cursor;II)Ljava/lang/String;

    move-result-object v11

    .line 438
    :cond_4
    :goto_3
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 439
    const v16, 0x7f0900f3

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 442
    :cond_5
    invoke-static {v11}, Lcom/android/mms/ui/MessageUtils;->isSmsVcard(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_8

    .line 444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MultipleDeleteListAdapter;->mText:Lcom/htc/widget/HtcListItem2LineText;

    move-object/from16 v16, v0

    const v17, 0x7f090172

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    .line 458
    :goto_4
    return-void

    .line 415
    .end local v4           #contact:Ljava/lang/String;
    :cond_6
    invoke-static {}, Lcom/android/mms/util/ContactNameCache;->getInstance()Lcom/android/mms/util/ContactNameCache;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v3}, Lcom/android/mms/util/ContactNameCache;->getContactName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .restart local v4       #contact:Ljava/lang/String;
    goto :goto_2

    .line 430
    :cond_7
    const-string v16, "vvm"

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 432
    const/16 v16, 0x9

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Lcom/android/mms/ui/MessageUtils;->getPlaytimeFormatString(J)Ljava/lang/String;

    move-result-object v11

    goto :goto_3

    .line 447
    :cond_8
    invoke-static {}, Lcom/android/mms/util/SmileyParser;->getInstance()Lcom/android/mms/util/SmileyParser;

    move-result-object v9

    .line 448
    .local v9, parser:Lcom/android/mms/util/SmileyParser;
    invoke-virtual {v9, v11}, Lcom/android/mms/util/SmileyParser;->addSmileySpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v12

    .line 449
    .local v12, t:Ljava/lang/CharSequence;
    instance-of v0, v12, Landroid/text/Spannable;

    move/from16 v16, v0

    if-eqz v16, :cond_9

    move-object/from16 v16, v12

    .line 450
    check-cast v16, Landroid/text/Spannable;

    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v17

    invoke-interface/range {v16 .. v17}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 453
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MultipleDeleteListAdapter;->mText:Lcom/htc/widget/HtcListItem2LineText;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/CharSequence;)V

    goto :goto_4
.end method

.method private bindMmsView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 20
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 324
    const-string v17, "m_type"

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 325
    .local v14, msgType:I
    const/16 v17, 0x80

    move/from16 v0, v17

    if-eq v14, v0, :cond_0

    const/16 v17, 0x84

    move/from16 v0, v17

    if-eq v14, v0, :cond_0

    .line 388
    :goto_0
    return-void

    .line 331
    :cond_0
    const/16 v17, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 332
    .local v12, msgId:J
    sget-object v17, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v17

    invoke-static {v0, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v16

    .line 335
    .local v16, uri:Landroid/net/Uri;
    :try_start_0
    invoke-static/range {p2 .. p2}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v11

    check-cast v11, Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 343
    .local v11, msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    invoke-virtual {v11}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getSubject()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v15

    .line 345
    .local v15, subject:Lcom/google/android/mms/pdu/EncodedStringValue;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MultipleDeleteListAdapter;->mText:Lcom/htc/widget/HtcListItem2LineText;

    move-object/from16 v18, v0

    if-nez v15, :cond_3

    const-string v17, ""

    :goto_1
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    .line 348
    const/4 v4, 0x0

    .line 351
    .local v4, address:[Lcom/google/android/mms/pdu/EncodedStringValue;
    const/16 v17, 0x84

    move/from16 v0, v17

    if-eq v14, v0, :cond_1

    const/16 v17, 0x82

    move/from16 v0, v17

    if-ne v14, v0, :cond_4

    .line 353
    :cond_1
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v4, v0, [Lcom/google/android/mms/pdu/EncodedStringValue;

    .end local v4           #address:[Lcom/google/android/mms/pdu/EncodedStringValue;
    const/16 v17, 0x0

    check-cast v11, Lcom/google/android/mms/pdu/RetrieveConf;

    .end local v11           #msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    invoke-virtual {v11}, Lcom/google/android/mms/pdu/RetrieveConf;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v18

    aput-object v18, v4, v17

    .line 354
    .restart local v4       #address:[Lcom/google/android/mms/pdu/EncodedStringValue;
    const v5, 0x7f0900b9

    .line 368
    .local v5, addressLabelResId:I
    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 369
    .local v7, contact:Ljava/lang/StringBuilder;
    const/4 v9, 0x0

    .line 370
    .local v9, hasValidAddress:Z
    if-eqz v4, :cond_8

    .line 371
    const/4 v10, 0x0

    .local v10, i:I
    :goto_3
    array-length v0, v4

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v10, v0, :cond_8

    .line 372
    aget-object v17, v4, v10

    if-nez v17, :cond_6

    .line 371
    :cond_2
    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 337
    .end local v4           #address:[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v5           #addressLabelResId:I
    .end local v7           #contact:Ljava/lang/StringBuilder;
    .end local v9           #hasValidAddress:Z
    .end local v10           #i:I
    .end local v15           #subject:Lcom/google/android/mms/pdu/EncodedStringValue;
    :catch_0
    move-exception v8

    .line 338
    .local v8, e:Lcom/google/android/mms/MmsException;
    const-string v17, "MultipleDeleteListAdapter"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Cannot load: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 345
    .end local v8           #e:Lcom/google/android/mms/MmsException;
    .restart local v11       #msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    .restart local v15       #subject:Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_3
    invoke-virtual {v15}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v17

    goto :goto_1

    .restart local v4       #address:[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_4
    move-object/from16 v17, v11

    .line 356
    check-cast v17, Lcom/google/android/mms/pdu/SendReq;

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/mms/pdu/SendReq;->getTo()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v4

    .line 358
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportNGMGroupMessage()Z

    move-result v17

    if-eqz v17, :cond_5

    move-object/from16 v17, v11

    .line 359
    check-cast v17, Lcom/google/android/mms/pdu/SendReq;

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/mms/pdu/SendReq;->getBcc()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v2

    .line 360
    .local v2, Bcc:[Lcom/google/android/mms/pdu/EncodedStringValue;
    check-cast v11, Lcom/google/android/mms/pdu/SendReq;

    .end local v11           #msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    invoke-virtual {v11}, Lcom/google/android/mms/pdu/SendReq;->getCc()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v3

    .line 361
    .local v3, Cc:[Lcom/google/android/mms/pdu/EncodedStringValue;
    invoke-static {v4, v2}, Lcom/android/mms/ui/MessageUtils;->concatEncodedStringValueArray([Lcom/google/android/mms/pdu/EncodedStringValue;[Lcom/google/android/mms/pdu/EncodedStringValue;)[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v4

    .line 362
    invoke-static {v4, v3}, Lcom/android/mms/ui/MessageUtils;->concatEncodedStringValueArray([Lcom/google/android/mms/pdu/EncodedStringValue;[Lcom/google/android/mms/pdu/EncodedStringValue;)[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v4

    .line 365
    .end local v2           #Bcc:[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v3           #Cc:[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_5
    const v5, 0x7f0900ab

    .restart local v5       #addressLabelResId:I
    goto :goto_2

    .line 373
    .restart local v7       #contact:Ljava/lang/StringBuilder;
    .restart local v9       #hasValidAddress:Z
    .restart local v10       #i:I
    :cond_6
    aget-object v17, v4, v10

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v6

    .line 374
    .local v6, adrStr:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_2

    .line 375
    if-lez v10, :cond_7

    const/16 v17, 0x2c

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 376
    :cond_7
    invoke-static {}, Lcom/android/mms/util/ContactNameCache;->getInstance()Lcom/android/mms/util/ContactNameCache;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v6}, Lcom/android/mms/util/ContactNameCache;->getContactName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    const/4 v9, 0x1

    goto :goto_4

    .line 382
    .end local v6           #adrStr:Ljava/lang/String;
    .end local v10           #i:I
    :cond_8
    if-nez v9, :cond_9

    .line 383
    const v17, 0x7f090021

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MultipleDeleteListAdapter;->mText:Lcom/htc/widget/HtcListItem2LineText;

    move-object/from16 v17, v0

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private bindSmsView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 12
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    const/4 v11, 0x2

    .line 265
    invoke-interface {p3, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 266
    .local v3, mAddress:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 268
    const-string v8, ";"

    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 269
    const-string v8, ";"

    invoke-virtual {v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 270
    .local v7, values:[Ljava/lang/String;
    const-string v5, ""

    .line 271
    .local v5, result:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v8, v7

    if-ge v2, v8, :cond_2

    .line 272
    aget-object v8, v7, v2

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_0

    .line 273
    if-nez v2, :cond_1

    .line 274
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lcom/android/mms/util/ContactNameCache;->getInstance()Lcom/android/mms/util/ContactNameCache;

    move-result-object v9

    aget-object v10, v7, v2

    invoke-virtual {v9, p2, v10}, Lcom/android/mms/util/ContactNameCache;->getContactName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 271
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 276
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lcom/android/mms/util/ContactNameCache;->getInstance()Lcom/android/mms/util/ContactNameCache;

    move-result-object v9

    aget-object v10, v7, v2

    invoke-virtual {v9, p2, v10}, Lcom/android/mms/util/ContactNameCache;->getContactName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 279
    :cond_2
    move-object v1, v5

    .line 292
    .end local v2           #i:I
    .end local v5           #result:Ljava/lang/String;
    .end local v7           #values:[Ljava/lang/String;
    .local v1, contact:Ljava/lang/String;
    :goto_2
    const-string v8, "type"

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 293
    .local v6, type:I
    const/4 v8, 0x1

    if-ne v8, v6, :cond_6

    .line 294
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const v9, 0x7f0900b9

    invoke-virtual {p2, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 299
    :cond_3
    :goto_3
    iget-object v8, p0, Lcom/android/mms/ui/MultipleDeleteListAdapter;->mText:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v8, v1}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 301
    const/4 v8, 0x3

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 303
    .local v0, body:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->isSmsVcard(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 305
    iget-object v8, p0, Lcom/android/mms/ui/MultipleDeleteListAdapter;->mText:Lcom/htc/widget/HtcListItem2LineText;

    const v9, 0x7f090172

    invoke-virtual {p2, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    .line 321
    :goto_4
    return-void

    .line 282
    .end local v0           #body:Ljava/lang/String;
    .end local v1           #contact:Ljava/lang/String;
    .end local v6           #type:I
    :cond_4
    invoke-static {}, Lcom/android/mms/util/ContactNameCache;->getInstance()Lcom/android/mms/util/ContactNameCache;

    move-result-object v8

    invoke-virtual {v8, p2, v3}, Lcom/android/mms/util/ContactNameCache;->getContactName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #contact:Ljava/lang/String;
    goto :goto_2

    .line 289
    .end local v1           #contact:Ljava/lang/String;
    :cond_5
    const v8, 0x7f090021

    invoke-virtual {p2, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #contact:Ljava/lang/String;
    goto :goto_2

    .line 295
    .restart local v6       #type:I
    :cond_6
    if-eq v11, v6, :cond_7

    const/4 v8, 0x4

    if-ne v8, v6, :cond_3

    .line 296
    :cond_7
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const v9, 0x7f0900ab

    invoke-virtual {p2, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 308
    .restart local v0       #body:Ljava/lang/String;
    :cond_8
    invoke-static {}, Lcom/android/mms/util/SmileyParser;->getInstance()Lcom/android/mms/util/SmileyParser;

    move-result-object v4

    .line 310
    .local v4, parser:Lcom/android/mms/util/SmileyParser;
    iget-object v8, p0, Lcom/android/mms/ui/MultipleDeleteListAdapter;->mText:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v4, v0}, Lcom/android/mms/util/SmileyParser;->addSmileySpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/CharSequence;)V

    goto :goto_4
.end method

.method private bindThreadView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 16
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 480
    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 484
    .local v10, threadId:J
    const/16 v13, 0x9

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 488
    .local v1, address:Ljava/lang/String;
    const-string v13, ";"

    invoke-virtual {v1, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 489
    const-string v13, ";"

    invoke-virtual {v1, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 490
    .local v12, values:[Ljava/lang/String;
    const-string v7, ""

    .line 491
    .local v7, result:Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    array-length v13, v12

    if-ge v5, v13, :cond_2

    .line 492
    aget-object v13, v12, v5

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_0

    .line 493
    if-nez v5, :cond_1

    .line 494
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Lcom/android/mms/util/ContactNameCache;->getInstance()Lcom/android/mms/util/ContactNameCache;

    move-result-object v14

    aget-object v15, v12, v5

    move-object/from16 v0, p2

    invoke-virtual {v14, v0, v15}, Lcom/android/mms/util/ContactNameCache;->getContactName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 491
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 496
    :cond_1
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Lcom/android/mms/util/ContactNameCache;->getInstance()Lcom/android/mms/util/ContactNameCache;

    move-result-object v14

    aget-object v15, v12, v5

    move-object/from16 v0, p2

    invoke-virtual {v14, v0, v15}, Lcom/android/mms/util/ContactNameCache;->getContactName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 499
    :cond_2
    move-object v2, v7

    .line 506
    .end local v5           #i:I
    .end local v7           #result:Ljava/lang/String;
    .end local v12           #values:[Ljava/lang/String;
    .local v2, contact:Ljava/lang/String;
    :goto_2
    const/4 v13, 0x5

    const/4 v14, 0x6

    move-object/from16 v0, p3

    invoke-static {v0, v13, v14}, Lcom/android/mms/ui/MessageUtils;->extractEncStrFromCursor(Landroid/database/Cursor;II)Ljava/lang/String;

    move-result-object v8

    .line 508
    .local v8, subject:Ljava/lang/String;
    const/4 v13, 0x3

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 510
    .local v3, date:J
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 511
    const v13, 0x7f090021

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 513
    :cond_3
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 514
    const v13, 0x7f0900f3

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 518
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MultipleDeleteListAdapter;->mText:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v13, v2}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 522
    invoke-static {v8}, Lcom/android/mms/ui/MessageUtils;->isSmsVcard(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 524
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MultipleDeleteListAdapter;->mText:Lcom/htc/widget/HtcListItem2LineText;

    const v14, 0x7f090172

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    .line 551
    :goto_3
    return-void

    .line 502
    .end local v2           #contact:Ljava/lang/String;
    .end local v3           #date:J
    .end local v8           #subject:Ljava/lang/String;
    :cond_5
    invoke-static {}, Lcom/android/mms/util/ContactNameCache;->getInstance()Lcom/android/mms/util/ContactNameCache;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0, v1}, Lcom/android/mms/util/ContactNameCache;->getContactName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #contact:Ljava/lang/String;
    goto :goto_2

    .line 527
    .restart local v3       #date:J
    .restart local v8       #subject:Ljava/lang/String;
    :cond_6
    invoke-static {}, Lcom/android/mms/util/SmileyParser;->getInstance()Lcom/android/mms/util/SmileyParser;

    move-result-object v6

    .line 528
    .local v6, parser:Lcom/android/mms/util/SmileyParser;
    invoke-virtual {v6, v8}, Lcom/android/mms/util/SmileyParser;->addSmileySpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v9

    .line 529
    .local v9, t:Ljava/lang/CharSequence;
    instance-of v13, v9, Landroid/text/Spannable;

    if-eqz v13, :cond_7

    move-object v13, v9

    .line 530
    check-cast v13, Landroid/text/Spannable;

    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v14

    invoke-interface {v13, v14}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 533
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MultipleDeleteListAdapter;->mText:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v13, v9}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method


# virtual methods
.method addGetMoreView(Lcom/htc/widget/HtcListView;)V
    .locals 3
    .parameter "listView"

    .prologue
    .line 666
    iget-object v0, p0, Lcom/android/mms/ui/MultipleDeleteListAdapter;->m_vFooter:Landroid/view/View;

    if-nez v0, :cond_0

    .line 667
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->createGetMoreView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MultipleDeleteListAdapter;->m_vFooter:Landroid/view/View;

    .line 668
    iget-object v0, p0, Lcom/android/mms/ui/MultipleDeleteListAdapter;->m_vFooter:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/htc/widget/HtcListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 669
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/MultipleDeleteListAdapter;->mbShowFoot:Z

    .line 671
    :cond_0
    return-void
.end method

.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 10
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 180
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;

    .line 182
    .local v1, cache:Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;
    iget-object v6, v1, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;->Text:Lcom/htc/widget/HtcListItem2LineText;

    iput-object v6, p0, Lcom/android/mms/ui/MultipleDeleteListAdapter;->mText:Lcom/htc/widget/HtcListItem2LineText;

    .line 183
    iget-object v6, v1, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;->Checkbox:Lcom/htc/widget/HtcListItemCheckBox;

    iput-object v6, p0, Lcom/android/mms/ui/MultipleDeleteListAdapter;->mCheckIcon:Lcom/htc/widget/HtcListItemCheckBox;

    .line 186
    iget v6, p0, Lcom/android/mms/ui/MultipleDeleteListAdapter;->mMode:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    .line 187
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/MultipleDeleteListAdapter;->bindHtcThreadView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 218
    :goto_0
    iget-object v6, p0, Lcom/android/mms/ui/MultipleDeleteListAdapter;->mCheckIcon:Lcom/htc/widget/HtcListItemCheckBox;

    invoke-virtual {v6, v8}, Lcom/htc/widget/HtcListItemCheckBox;->setVisibility(I)V

    .line 221
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v4

    .line 222
    .local v4, position:I
    iget-object v6, p0, Lcom/android/mms/ui/MultipleDeleteListAdapter;->mCaller:Lcom/android/mms/ui/MultipleDeleteActivity;

    iget-object v6, v6, Lcom/android/mms/ui/MultipleDeleteActivity;->checkArray:[Z

    aget-boolean v6, v6, v4

    if-eqz v6, :cond_7

    .line 223
    iget-object v6, p0, Lcom/android/mms/ui/MultipleDeleteListAdapter;->mCheckIcon:Lcom/htc/widget/HtcListItemCheckBox;

    invoke-virtual {v6, v9}, Lcom/htc/widget/HtcListItemCheckBox;->setChecked(Z)V

    .line 228
    :goto_1
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSelectAllOnTop()Z

    move-result v6

    if-eqz v6, :cond_8

    if-nez v4, :cond_8

    .line 229
    check-cast p1, Lcom/htc/widget/HtcListItem;

    .end local p1
    const/16 v6, 0xa

    invoke-virtual {p1, v6}, Lcom/htc/widget/HtcListItem;->setRoundCorner(I)V

    .line 233
    :goto_2
    return-void

    .line 190
    .end local v4           #position:I
    .restart local p1
    :cond_0
    iget v6, p0, Lcom/android/mms/ui/MultipleDeleteListAdapter;->mMode:I

    const/4 v7, 0x5

    if-ne v6, v7, :cond_1

    .line 191
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/MultipleDeleteListAdapter;->bindSmsView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    goto :goto_0

    .line 192
    :cond_1
    iget v6, p0, Lcom/android/mms/ui/MultipleDeleteListAdapter;->mMode:I

    const/4 v7, 0x6

    if-ne v6, v7, :cond_3

    .line 193
    invoke-interface {p3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 194
    .local v0, address:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/util/ContactNameCache;->getInstance()Lcom/android/mms/util/ContactNameCache;

    move-result-object v6

    invoke-virtual {v6, p2, v0}, Lcom/android/mms/util/ContactNameCache;->getContactInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/provider/Telephony$namephoto;

    move-result-object v2

    .line 195
    .local v2, info:Landroid/provider/Telephony$namephoto;
    iget-object v3, v2, Landroid/provider/Telephony$namephoto;->mName:Ljava/lang/String;

    .line 196
    .local v3, name:Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 197
    iget-object v6, p0, Lcom/android/mms/ui/MultipleDeleteListAdapter;->mText:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v6, v3}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 198
    iget-object v6, p0, Lcom/android/mms/ui/MultipleDeleteListAdapter;->mText:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v6, v0}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    goto :goto_0

    .line 200
    :cond_2
    iget-object v6, p0, Lcom/android/mms/ui/MultipleDeleteListAdapter;->mText:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v6, v0}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    goto :goto_0

    .line 203
    .end local v0           #address:Ljava/lang/String;
    .end local v2           #info:Landroid/provider/Telephony$namephoto;
    .end local v3           #name:Ljava/lang/String;
    :cond_3
    iget v6, p0, Lcom/android/mms/ui/MultipleDeleteListAdapter;->mMode:I

    const/16 v7, 0x8

    if-ne v6, v7, :cond_4

    .line 204
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/MultipleDeleteListAdapter;->bindCmasView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    goto :goto_0

    .line 208
    :cond_4
    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 209
    .local v5, type:Ljava/lang/String;
    const-string v6, "mms"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 210
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/MultipleDeleteListAdapter;->bindMmsView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    goto :goto_0

    .line 211
    :cond_5
    const-string v6, "sms"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 212
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/MultipleDeleteListAdapter;->bindSmsView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    goto :goto_0

    .line 214
    :cond_6
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/MultipleDeleteListAdapter;->bindThreadView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    goto :goto_0

    .line 225
    .end local v5           #type:Ljava/lang/String;
    .restart local v4       #position:I
    :cond_7
    iget-object v6, p0, Lcom/android/mms/ui/MultipleDeleteListAdapter;->mCheckIcon:Lcom/htc/widget/HtcListItemCheckBox;

    invoke-virtual {v6, v8}, Lcom/htc/widget/HtcListItemCheckBox;->setChecked(Z)V

    goto :goto_1

    .line 231
    :cond_8
    check-cast p1, Lcom/htc/widget/HtcListItem;

    .end local p1
    const/16 v6, 0xc

    invoke-virtual {p1, v6}, Lcom/htc/widget/HtcListItem;->setRoundCorner(I)V

    goto :goto_2
.end method

.method public declared-synchronized changeCursor(Landroid/database/Cursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    .line 576
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/MultipleDeleteListAdapter;->mCursor:Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, v0, :cond_0

    .line 608
    :goto_0
    monitor-exit p0

    return-void

    .line 580
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/mms/ui/MultipleDeleteListAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 581
    iget-object v0, p0, Lcom/android/mms/ui/MultipleDeleteListAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/mms/ui/MultipleDeleteListAdapter;->mChangeObserver:Landroid/widget/CursorAdapter$ChangeObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 582
    iget-object v0, p0, Lcom/android/mms/ui/MultipleDeleteListAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/mms/ui/MultipleDeleteListAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 583
    iget-object v0, p0, Lcom/android/mms/ui/MultipleDeleteListAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/mms/util/MmsAsyncWorkHandler;->CloseCursorInBG(Landroid/database/Cursor;Z)V

    .line 585
    :cond_1
    iput-object p1, p0, Lcom/android/mms/ui/MultipleDeleteListAdapter;->mCursor:Landroid/database/Cursor;

    .line 587
    iget-object v0, p0, Lcom/android/mms/ui/MultipleDeleteListAdapter;->mCaller:Lcom/android/mms/ui/MultipleDeleteActivity;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/MultipleDeleteListAdapter;->mCaller:Lcom/android/mms/ui/MultipleDeleteActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/MultipleDeleteActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 588
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/MultipleDeleteListAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_3

    .line 589
    iget-object v0, p0, Lcom/android/mms/ui/MultipleDeleteListAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/mms/util/MmsAsyncWorkHandler;->CloseCursorInBG(Landroid/database/Cursor;Z)V

    .line 590
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/MultipleDeleteListAdapter;->mCursor:Landroid/database/Cursor;

    .line 591
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/MultipleDeleteListAdapter;->mDataValid:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 576
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 595
    :cond_4
    if-eqz p1, :cond_5

    .line 596
    :try_start_2
    iget-object v0, p0, Lcom/android/mms/ui/MultipleDeleteListAdapter;->mChangeObserver:Landroid/widget/CursorAdapter$ChangeObserver;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 597
    iget-object v0, p0, Lcom/android/mms/ui/MultipleDeleteListAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 598
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/MultipleDeleteListAdapter;->mRowIDColumn:I

    .line 599
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/MultipleDeleteListAdapter;->mDataValid:Z

    .line 601
    invoke-virtual {p0}, Lcom/android/mms/ui/MultipleDeleteListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 603
    :cond_5
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/MultipleDeleteListAdapter;->mRowIDColumn:I

    .line 604
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/MultipleDeleteListAdapter;->mDataValid:Z

    .line 606
    invoke-virtual {p0}, Lcom/android/mms/ui/MultipleDeleteListAdapter;->notifyDataSetInvalidated()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 566
    iget-object v0, p0, Lcom/android/mms/ui/MultipleDeleteListAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 567
    invoke-super {p0, p1, p2, p3}, Landroid/widget/CursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 569
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 240
    const/4 v2, 0x1

    invoke-static {p1, v2}, Lcom/android/mms/ui/HtcListItemComposer;->createCheckboxListItem(Landroid/content/Context;Z)Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;

    move-result-object v0

    .line 241
    .local v0, group:Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;
    iget-object v1, v0, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;->ListItem:Landroid/view/View;

    .line 243
    .local v1, view:Landroid/view/View;
    iget-object v2, v0, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;->Checkbox:Lcom/htc/widget/HtcListItemCheckBox;

    iput-object v2, p0, Lcom/android/mms/ui/MultipleDeleteListAdapter;->mCheckIcon:Lcom/htc/widget/HtcListItemCheckBox;

    .line 245
    iget v2, p0, Lcom/android/mms/ui/MultipleDeleteListAdapter;->mMode:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/android/mms/ui/MultipleDeleteListAdapter;->mMode:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 246
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/MultipleDeleteListAdapter;->mCheckIcon:Lcom/htc/widget/HtcListItemCheckBox;

    iget-object v3, p0, Lcom/android/mms/ui/MultipleDeleteListAdapter;->mContext:Landroid/content/Context;

    const-string v4, "common_checkbox"

    const v5, 0x7f0200e6

    invoke-static {v3, v4, v5}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItemCheckBox;->setButtonDrawable(I)V

    .line 249
    :cond_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 251
    return-object v1
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 256
    invoke-super {p0}, Landroid/widget/CursorAdapter;->notifyDataSetChanged()V

    .line 258
    return-void
.end method

.method removeGetMoreView(Lcom/htc/widget/HtcListView;)V
    .locals 1
    .parameter "listView"

    .prologue
    .line 659
    iget-object v0, p0, Lcom/android/mms/ui/MultipleDeleteListAdapter;->m_vFooter:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/htc/widget/HtcListView;->getFooterViewsCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 660
    iget-object v0, p0, Lcom/android/mms/ui/MultipleDeleteListAdapter;->m_vFooter:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/htc/widget/HtcListView;->removeFooterView(Landroid/view/View;)Z

    .line 661
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/MultipleDeleteListAdapter;->mbShowFoot:Z

    .line 663
    :cond_0
    return-void
.end method

.method public setGetMoreFootView(Lcom/android/mms/ui/MultipleDeleteActivity;Landroid/database/Cursor;)Z
    .locals 5
    .parameter "act"
    .parameter "newCursor"

    .prologue
    const/4 v4, -0x1

    const/4 v2, 0x0

    .line 613
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportLoadAnimation()Z

    move-result v3

    if-nez v3, :cond_1

    .line 655
    :cond_0
    :goto_0
    return v2

    .line 617
    :cond_1
    invoke-virtual {p1}, Lcom/android/mms/ui/MultipleDeleteActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v1

    .line 619
    .local v1, listView:Lcom/htc/widget/HtcListView;
    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/mms/ui/MultipleDeleteListAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_0

    .line 622
    iget-object v3, p0, Lcom/android/mms/ui/MultipleDeleteListAdapter;->m_vFooter:Landroid/view/View;

    if-nez v3, :cond_2

    .line 624
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->createGetMoreView()Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/MultipleDeleteListAdapter;->m_vFooter:Landroid/view/View;

    .line 627
    :cond_2
    iget-object v3, p0, Lcom/android/mms/ui/MultipleDeleteListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 630
    const/4 v0, 0x0

    .line 633
    .local v0, count:I
    if-eqz p2, :cond_3

    .line 634
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 636
    :cond_3
    iget v3, p0, Lcom/android/mms/ui/MultipleDeleteListAdapter;->mCurrentCursorCount:I

    if-eq v0, v3, :cond_6

    iget v3, p1, Lcom/android/mms/ui/MultipleDeleteActivity;->mQueryLimit:I

    if-eq v3, v4, :cond_6

    .line 637
    iget-boolean v2, p0, Lcom/android/mms/ui/MultipleDeleteListAdapter;->mbShowFoot:Z

    if-nez v2, :cond_4

    iget v2, p1, Lcom/android/mms/ui/MultipleDeleteActivity;->mQueryLimit:I

    if-ne v0, v2, :cond_4

    .line 638
    iget-object v2, p0, Lcom/android/mms/ui/MultipleDeleteListAdapter;->m_vFooter:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListView;->addFooterView(Landroid/view/View;)V

    .line 639
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/mms/ui/MultipleDeleteListAdapter;->mbShowFoot:Z

    .line 652
    :cond_4
    :goto_1
    if-lez v0, :cond_5

    .line 653
    iput v0, p0, Lcom/android/mms/ui/MultipleDeleteListAdapter;->mCurrentCursorCount:I

    .line 655
    :cond_5
    iget-boolean v2, p0, Lcom/android/mms/ui/MultipleDeleteListAdapter;->mbShowFoot:Z

    goto :goto_0

    .line 644
    :cond_6
    iget-boolean v3, p0, Lcom/android/mms/ui/MultipleDeleteListAdapter;->mbShowFoot:Z

    if-eqz v3, :cond_4

    .line 645
    invoke-virtual {v1}, Lcom/htc/widget/HtcListView;->getFooterViewsCount()I

    move-result v3

    if-lez v3, :cond_7

    .line 646
    iget-object v3, p0, Lcom/android/mms/ui/MultipleDeleteListAdapter;->m_vFooter:Landroid/view/View;

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcListView;->removeFooterView(Landroid/view/View;)Z

    .line 647
    :cond_7
    iput v4, p1, Lcom/android/mms/ui/MultipleDeleteActivity;->mQueryLimit:I

    .line 648
    iput-boolean v2, p0, Lcom/android/mms/ui/MultipleDeleteListAdapter;->mbShowFoot:Z

    goto :goto_1
.end method
