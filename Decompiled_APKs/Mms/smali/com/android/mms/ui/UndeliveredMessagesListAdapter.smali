.class public Lcom/android/mms/ui/UndeliveredMessagesListAdapter;
.super Landroid/widget/CursorAdapter;
.source "UndeliveredMessagesListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/UndeliveredMessagesListAdapter$ListItemCache;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "UndeliveredMessagesListAdapter"

.field public static mBackground:Z

.field public static mNeedQuery:Z


# instance fields
.field private caller_context:Landroid/content/Context;

.field private mAddrView:Landroid/widget/TextView;

.field private mBodyView:Landroid/widget/TextView;

.field mCurrentCursorCount:I

.field mCurrent_limit:I

.field private mErrIcon:Landroid/widget/ImageView;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mListView:Lcom/htc/widget/HtcListView;

.field private mPriorityIcon:Landroid/widget/ImageView;

.field private mRightIndicator:Landroid/widget/ImageView;

.field mStamp:Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;

.field mText:Lcom/htc/widget/HtcListItem2LineText;

.field private mTimeStamp:Landroid/widget/TextView;

.field private m_vFooter:Landroid/view/View;

.field mbShowFoot:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Lcom/htc/widget/HtcListView;)V
    .locals 1
    .parameter "context"
    .parameter "c"
    .parameter "listView"

    .prologue
    const/4 v0, 0x0

    .line 101
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 90
    iput v0, p0, Lcom/android/mms/ui/UndeliveredMessagesListAdapter;->mCurrent_limit:I

    .line 91
    iput v0, p0, Lcom/android/mms/ui/UndeliveredMessagesListAdapter;->mCurrentCursorCount:I

    .line 92
    iput-boolean v0, p0, Lcom/android/mms/ui/UndeliveredMessagesListAdapter;->mbShowFoot:Z

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/UndeliveredMessagesListAdapter;->m_vFooter:Landroid/view/View;

    .line 103
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/mms/ui/UndeliveredMessagesListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 105
    iput-object p3, p0, Lcom/android/mms/ui/UndeliveredMessagesListAdapter;->mListView:Lcom/htc/widget/HtcListView;

    .line 106
    iput-object p1, p0, Lcom/android/mms/ui/UndeliveredMessagesListAdapter;->caller_context:Landroid/content/Context;

    .line 109
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportLoadAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/android/mms/ui/UndeliveredMessagesListAdapter;->mCurrent_limit:I

    .line 115
    :goto_0
    return-void

    .line 112
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/UndeliveredMessagesListAdapter;->mCurrent_limit:I

    goto :goto_0
.end method

.method private bindMmsView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 17
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 325
    const/16 v13, 0xe

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    const/16 v14, 0x80

    if-eq v13, v14, :cond_0

    .line 378
    :goto_0
    return-void

    .line 330
    :cond_0
    const/4 v13, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 331
    .local v7, msgId:J
    sget-object v13, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v13, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v12

    .line 334
    .local v12, uri:Landroid/net/Uri;
    :try_start_0
    invoke-static/range {p2 .. p2}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v13

    invoke-virtual {v13, v12}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v6

    check-cast v6, Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    .local v6, msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    invoke-virtual {v6}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getSubject()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v9

    .line 343
    .local v9, subject:Lcom/google/android/mms/pdu/EncodedStringValue;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/UndeliveredMessagesListAdapter;->mText:Lcom/htc/widget/HtcListItem2LineText;

    if-nez v9, :cond_1

    const-string v13, ""

    :goto_1
    invoke-virtual {v14, v13}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    .line 348
    const-string v4, ""

    .local v4, contact:Ljava/lang/String;
    move-object v13, v6

    .line 349
    check-cast v13, Lcom/google/android/mms/pdu/SendReq;

    invoke-virtual {v13}, Lcom/google/android/mms/pdu/SendReq;->getTo()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v11

    .local v11, toList:[Lcom/google/android/mms/pdu/EncodedStringValue;
    move-object v13, v6

    .line 350
    check-cast v13, Lcom/google/android/mms/pdu/SendReq;

    invoke-virtual {v13}, Lcom/google/android/mms/pdu/SendReq;->getCc()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v3

    .local v3, ccList:[Lcom/google/android/mms/pdu/EncodedStringValue;
    move-object v13, v6

    .line 351
    check-cast v13, Lcom/google/android/mms/pdu/SendReq;

    invoke-virtual {v13}, Lcom/google/android/mms/pdu/SendReq;->getBcc()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v2

    .line 352
    .local v2, bccList:[Lcom/google/android/mms/pdu/EncodedStringValue;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v11}, Lcom/android/mms/ui/UndeliveredMessagesListAdapter;->getMmsAddressFromList(Landroid/content/Context;[Lcom/google/android/mms/pdu/EncodedStringValue;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v3}, Lcom/android/mms/ui/UndeliveredMessagesListAdapter;->getMmsAddressFromList(Landroid/content/Context;[Lcom/google/android/mms/pdu/EncodedStringValue;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/UndeliveredMessagesListAdapter;->getMmsAddressFromList(Landroid/content/Context;[Lcom/google/android/mms/pdu/EncodedStringValue;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 368
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const v14, 0x7f0900ab

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 370
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/UndeliveredMessagesListAdapter;->mText:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v13, v4}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 373
    check-cast v6, Lcom/google/android/mms/pdu/SendReq;

    .end local v6           #msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    invoke-virtual {v6}, Lcom/google/android/mms/pdu/SendReq;->getDate()J

    move-result-wide v13

    const-wide/16 v15, 0x3e8

    mul-long/2addr v13, v15

    move-object/from16 v0, p2

    invoke-static {v0, v13, v14}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v10

    .line 377
    .local v10, timeStamp:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/UndeliveredMessagesListAdapter;->mStamp:Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;

    invoke-virtual {v13, v10}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->setTextStamp(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 336
    .end local v2           #bccList:[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v3           #ccList:[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v4           #contact:Ljava/lang/String;
    .end local v9           #subject:Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v10           #timeStamp:Ljava/lang/String;
    .end local v11           #toList:[Lcom/google/android/mms/pdu/EncodedStringValue;
    :catch_0
    move-exception v5

    .line 337
    .local v5, e:Lcom/google/android/mms/MmsException;
    const-string v13, "UndeliveredMessagesListAdapter"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Cannot load: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 343
    .end local v5           #e:Lcom/google/android/mms/MmsException;
    .restart local v6       #msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    .restart local v9       #subject:Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_1
    invoke-virtual {v9}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_1
.end method

.method private bindSmsView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 12
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    const/4 v11, 0x3

    .line 272
    invoke-interface {p3, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 273
    invoke-interface {p3, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 274
    .local v8, values:[Ljava/lang/String;
    const-string v6, ""

    .line 275
    .local v6, result:Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    array-length v9, v8

    if-ge v4, v9, :cond_2

    .line 276
    aget-object v9, v8, v4

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_0

    .line 277
    if-nez v4, :cond_1

    .line 278
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Lcom/android/mms/util/ContactNameCache;->getInstance()Lcom/android/mms/util/ContactNameCache;

    move-result-object v10

    aget-object v11, v8, v4

    invoke-virtual {v10, p2, v11}, Lcom/android/mms/util/ContactNameCache;->getContactName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 275
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 280
    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Lcom/android/mms/util/ContactNameCache;->getInstance()Lcom/android/mms/util/ContactNameCache;

    move-result-object v10

    aget-object v11, v8, v4

    invoke-virtual {v10, p2, v11}, Lcom/android/mms/util/ContactNameCache;->getContactName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 283
    :cond_2
    move-object v1, v6

    .line 300
    .end local v4           #i:I
    .end local v6           #result:Ljava/lang/String;
    .end local v8           #values:[Ljava/lang/String;
    .local v1, contact:Ljava/lang/String;
    :goto_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const v10, 0x7f0900ab

    invoke-virtual {p2, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 302
    iget-object v9, p0, Lcom/android/mms/ui/UndeliveredMessagesListAdapter;->mText:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v9, v1}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 304
    const/4 v9, 0x4

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 306
    .local v0, body:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->isSmsVcard(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 308
    iget-object v9, p0, Lcom/android/mms/ui/UndeliveredMessagesListAdapter;->mText:Lcom/htc/widget/HtcListItem2LineText;

    const v10, 0x7f090172

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(I)V

    .line 317
    :goto_3
    const/4 v9, 0x5

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 318
    .local v2, date:J
    invoke-static {p2, v2, v3}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    .line 320
    .local v7, time:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/mms/ui/UndeliveredMessagesListAdapter;->mStamp:Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;

    invoke-virtual {v9, v7}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->setTextStamp(Ljava/lang/String;)V

    .line 322
    return-void

    .line 286
    .end local v0           #body:Ljava/lang/String;
    .end local v1           #contact:Ljava/lang/String;
    .end local v2           #date:J
    .end local v7           #time:Ljava/lang/String;
    :cond_3
    invoke-static {}, Lcom/android/mms/util/ContactNameCache;->getInstance()Lcom/android/mms/util/ContactNameCache;

    move-result-object v9

    invoke-interface {p3, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, p2, v10}, Lcom/android/mms/util/ContactNameCache;->getContactName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #contact:Ljava/lang/String;
    goto :goto_2

    .line 311
    .restart local v0       #body:Ljava/lang/String;
    :cond_4
    invoke-static {}, Lcom/android/mms/util/SmileyParser;->getInstance()Lcom/android/mms/util/SmileyParser;

    move-result-object v5

    .line 313
    .local v5, parser:Lcom/android/mms/util/SmileyParser;
    iget-object v9, p0, Lcom/android/mms/ui/UndeliveredMessagesListAdapter;->mText:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v5, v0}, Lcom/android/mms/util/SmileyParser;->addSmileySpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method


# virtual methods
.method addGetMoreView(Lcom/htc/widget/HtcListView;)V
    .locals 3
    .parameter "listView"

    .prologue
    .line 446
    iget-object v0, p0, Lcom/android/mms/ui/UndeliveredMessagesListAdapter;->m_vFooter:Landroid/view/View;

    if-nez v0, :cond_0

    .line 447
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->createGetMoreView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/UndeliveredMessagesListAdapter;->m_vFooter:Landroid/view/View;

    .line 448
    iget-object v0, p0, Lcom/android/mms/ui/UndeliveredMessagesListAdapter;->m_vFooter:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/htc/widget/HtcListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 449
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/UndeliveredMessagesListAdapter;->mbShowFoot:Z

    .line 451
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

    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 120
    if-eqz p3, :cond_0

    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v5

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne v5, v6, :cond_0

    .line 121
    iget-boolean v5, p0, Lcom/android/mms/ui/UndeliveredMessagesListAdapter;->mbShowFoot:Z

    if-eqz v5, :cond_0

    .line 122
    iget v5, p0, Lcom/android/mms/ui/UndeliveredMessagesListAdapter;->mCurrent_limit:I

    invoke-static {v5}, Lcom/android/mms/ui/MessageUtils;->addQueryLimit(I)I

    move-result v5

    iput v5, p0, Lcom/android/mms/ui/UndeliveredMessagesListAdapter;->mCurrent_limit:I

    .line 123
    iget-object v5, p0, Lcom/android/mms/ui/UndeliveredMessagesListAdapter;->caller_context:Landroid/content/Context;

    if-eqz v5, :cond_0

    .line 124
    iget-object v5, p0, Lcom/android/mms/ui/UndeliveredMessagesListAdapter;->caller_context:Landroid/content/Context;

    check-cast v5, Lcom/android/mms/ui/UndeliveredMessagesActivity;

    invoke-virtual {v5}, Lcom/android/mms/ui/UndeliveredMessagesActivity;->startAsyncQuery()V

    .line 129
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;

    .line 140
    .local v0, cache:Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;
    iget-object v5, v0, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;->Stamp:Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;

    iput-object v5, p0, Lcom/android/mms/ui/UndeliveredMessagesListAdapter;->mStamp:Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;

    .line 141
    iget-object v5, p0, Lcom/android/mms/ui/UndeliveredMessagesListAdapter;->mStamp:Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;

    invoke-virtual {v5, v7}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->getBadge(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/android/mms/ui/UndeliveredMessagesListAdapter;->mRightIndicator:Landroid/widget/ImageView;

    .line 142
    iget-object v5, p0, Lcom/android/mms/ui/UndeliveredMessagesListAdapter;->mStamp:Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;

    invoke-virtual {v5, v9}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->getBadge(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/android/mms/ui/UndeliveredMessagesListAdapter;->mPriorityIcon:Landroid/widget/ImageView;

    .line 143
    iget-object v5, p0, Lcom/android/mms/ui/UndeliveredMessagesListAdapter;->mStamp:Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->getBadge(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/android/mms/ui/UndeliveredMessagesListAdapter;->mErrIcon:Landroid/widget/ImageView;

    .line 144
    iget-object v5, v0, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;->Text:Lcom/htc/widget/HtcListItem2LineText;

    iput-object v5, p0, Lcom/android/mms/ui/UndeliveredMessagesListAdapter;->mText:Lcom/htc/widget/HtcListItem2LineText;

    .line 146
    const/16 v5, 0x11

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 147
    .local v2, priority:I
    if-lez v2, :cond_6

    .line 148
    iget-object v5, p0, Lcom/android/mms/ui/UndeliveredMessagesListAdapter;->mPriorityIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 150
    packed-switch v2, :pswitch_data_0

    .line 158
    :pswitch_0
    iget-object v5, p0, Lcom/android/mms/ui/UndeliveredMessagesListAdapter;->mPriorityIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 166
    :goto_0
    invoke-interface {p3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 167
    .local v4, type:Ljava/lang/String;
    const/16 v5, 0x10

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 168
    .local v1, errorType:I
    invoke-interface {p3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 169
    .local v3, status:I
    const-string v5, "mms"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 170
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/UndeliveredMessagesListAdapter;->bindMmsView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 175
    :cond_1
    :goto_1
    const-string v5, "mms"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0xa

    if-lt v1, v5, :cond_3

    :cond_2
    const-string v5, "sms"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    const/16 v5, 0x20

    if-ne v3, v5, :cond_8

    .line 177
    :cond_3
    iget-object v5, p0, Lcom/android/mms/ui/UndeliveredMessagesListAdapter;->mErrIcon:Landroid/widget/ImageView;

    const v6, 0x7f02017f

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 181
    :goto_2
    iget-object v5, p0, Lcom/android/mms/ui/UndeliveredMessagesListAdapter;->mErrIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 182
    const-string v5, "sms"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/16 v5, 0x9

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eq v5, v9, :cond_5

    :cond_4
    const-string v5, "mms"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    const/16 v5, 0x12

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-ne v5, v9, :cond_9

    .line 184
    :cond_5
    iget-object v5, p0, Lcom/android/mms/ui/UndeliveredMessagesListAdapter;->mRightIndicator:Landroid/widget/ImageView;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 186
    iget-object v5, p0, Lcom/android/mms/ui/UndeliveredMessagesListAdapter;->mRightIndicator:Landroid/widget/ImageView;

    const v6, 0x7f02017c

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 190
    :goto_3
    return-void

    .line 152
    .end local v1           #errorType:I
    .end local v3           #status:I
    .end local v4           #type:Ljava/lang/String;
    :pswitch_1
    iget-object v5, p0, Lcom/android/mms/ui/UndeliveredMessagesListAdapter;->mPriorityIcon:Landroid/widget/ImageView;

    const v6, 0x7f020102

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 155
    :pswitch_2
    iget-object v5, p0, Lcom/android/mms/ui/UndeliveredMessagesListAdapter;->mPriorityIcon:Landroid/widget/ImageView;

    const v6, 0x7f020103

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 162
    :cond_6
    iget-object v5, p0, Lcom/android/mms/ui/UndeliveredMessagesListAdapter;->mPriorityIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 171
    .restart local v1       #errorType:I
    .restart local v3       #status:I
    .restart local v4       #type:Ljava/lang/String;
    :cond_7
    const-string v5, "sms"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 172
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/UndeliveredMessagesListAdapter;->bindSmsView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    goto :goto_1

    .line 179
    :cond_8
    iget-object v5, p0, Lcom/android/mms/ui/UndeliveredMessagesListAdapter;->mErrIcon:Landroid/widget/ImageView;

    const v6, 0x7f020148

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 188
    :cond_9
    iget-object v5, p0, Lcom/android/mms/ui/UndeliveredMessagesListAdapter;->mRightIndicator:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 150
    nop

    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/mms/ui/UndeliveredMessagesListAdapter;->mCursor:Landroid/database/Cursor;

    if-ne p1, v0, :cond_0

    .line 248
    :goto_0
    return-void

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/UndeliveredMessagesListAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 230
    iget-object v0, p0, Lcom/android/mms/ui/UndeliveredMessagesListAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/mms/ui/UndeliveredMessagesListAdapter;->mChangeObserver:Landroid/widget/CursorAdapter$ChangeObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 231
    iget-object v0, p0, Lcom/android/mms/ui/UndeliveredMessagesListAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/mms/ui/UndeliveredMessagesListAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 232
    iget-object v0, p0, Lcom/android/mms/ui/UndeliveredMessagesListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-static {v0}, Lcom/android/mms/util/MmsAsyncWorkHandler;->CloseCursorInBG(Landroid/database/Cursor;)V

    .line 234
    :cond_1
    iput-object p1, p0, Lcom/android/mms/ui/UndeliveredMessagesListAdapter;->mCursor:Landroid/database/Cursor;

    .line 235
    if-eqz p1, :cond_2

    .line 236
    iget-object v0, p0, Lcom/android/mms/ui/UndeliveredMessagesListAdapter;->mChangeObserver:Landroid/widget/CursorAdapter$ChangeObserver;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 237
    iget-object v0, p0, Lcom/android/mms/ui/UndeliveredMessagesListAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 238
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/UndeliveredMessagesListAdapter;->mRowIDColumn:I

    .line 239
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/UndeliveredMessagesListAdapter;->mDataValid:Z

    .line 241
    invoke-virtual {p0}, Lcom/android/mms/ui/UndeliveredMessagesListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 243
    :cond_2
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/UndeliveredMessagesListAdapter;->mRowIDColumn:I

    .line 244
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/UndeliveredMessagesListAdapter;->mDataValid:Z

    .line 246
    invoke-virtual {p0}, Lcom/android/mms/ui/UndeliveredMessagesListAdapter;->notifyDataSetInvalidated()V

    goto :goto_0
.end method

.method getMmsAddressFromList(Landroid/content/Context;[Lcom/google/android/mms/pdu/EncodedStringValue;)Ljava/lang/String;
    .locals 7
    .parameter "context"
    .parameter "list"

    .prologue
    .line 458
    const-string v0, ""

    .line 459
    .local v0, contact:Ljava/lang/String;
    if-eqz p2, :cond_3

    .line 460
    invoke-static {p2}, Lcom/google/android/mms/pdu/EncodedStringValue;->concat([Lcom/google/android/mms/pdu/EncodedStringValue;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 462
    invoke-static {p2}, Lcom/google/android/mms/pdu/EncodedStringValue;->concat([Lcom/google/android/mms/pdu/EncodedStringValue;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 463
    .local v3, values:[Ljava/lang/String;
    const-string v2, ""

    .line 464
    .local v2, result:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_2

    .line 465
    aget-object v4, v3, v1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 466
    if-nez v1, :cond_1

    .line 467
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/mms/util/ContactNameCache;->getInstance()Lcom/android/mms/util/ContactNameCache;

    move-result-object v5

    aget-object v6, v3, v1

    invoke-virtual {v5, p1, v6}, Lcom/android/mms/util/ContactNameCache;->getContactName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 464
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 469
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/mms/util/ContactNameCache;->getInstance()Lcom/android/mms/util/ContactNameCache;

    move-result-object v5

    aget-object v6, v3, v1

    invoke-virtual {v5, p1, v6}, Lcom/android/mms/util/ContactNameCache;->getContactName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 472
    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 478
    .end local v1           #i:I
    .end local v2           #result:Ljava/lang/String;
    .end local v3           #values:[Ljava/lang/String;
    :cond_3
    :goto_2
    return-object v0

    .line 475
    :cond_4
    invoke-static {}, Lcom/android/mms/util/ContactNameCache;->getInstance()Lcom/android/mms/util/ContactNameCache;

    move-result-object v4

    invoke-static {p2}, Lcom/google/android/mms/pdu/EncodedStringValue;->concat([Lcom/google/android/mms/pdu/EncodedStringValue;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Lcom/android/mms/util/ContactNameCache;->getContactName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 210
    iget-object v2, p0, Lcom/android/mms/ui/UndeliveredMessagesListAdapter;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/mms/ui/HtcListItemComposer;->createStampListItem(Landroid/content/Context;Z)Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;

    move-result-object v0

    .line 211
    .local v0, group:Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;
    iget-object v1, v0, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;->ListItem:Landroid/view/View;

    .line 212
    .local v1, view:Landroid/view/View;
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 215
    return-object v1
.end method

.method public notifyDataSetChanged()V
    .locals 2

    .prologue
    .line 220
    invoke-super {p0}, Landroid/widget/CursorAdapter;->notifyDataSetChanged()V

    .line 221
    iget-object v0, p0, Lcom/android/mms/ui/UndeliveredMessagesListAdapter;->mListView:Lcom/htc/widget/HtcListView;

    iget-object v1, p0, Lcom/android/mms/ui/UndeliveredMessagesListAdapter;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v1}, Lcom/htc/widget/HtcListView;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setSelection(I)V

    .line 222
    return-void
.end method

.method protected onContentChanged()V
    .locals 2

    .prologue
    .line 252
    iget-object v1, p0, Lcom/android/mms/ui/UndeliveredMessagesListAdapter;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/UndeliveredMessagesListAdapter;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/mms/ui/UndeliveredMessagesActivity;

    invoke-virtual {v1}, Lcom/android/mms/ui/UndeliveredMessagesActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/mms/ui/UndeliveredMessagesListAdapter;->mBackground:Z

    if-eqz v1, :cond_2

    .line 253
    :cond_0
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/mms/ui/UndeliveredMessagesListAdapter;->mNeedQuery:Z

    .line 262
    :cond_1
    :goto_0
    return-void

    .line 257
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/UndeliveredMessagesListAdapter;->caller_context:Landroid/content/Context;

    check-cast v0, Lcom/android/mms/ui/UndeliveredMessagesActivity;

    .line 258
    .local v0, act:Lcom/android/mms/ui/UndeliveredMessagesActivity;
    iget-object v1, p0, Lcom/android/mms/ui/UndeliveredMessagesListAdapter;->caller_context:Landroid/content/Context;

    if-eqz v1, :cond_1

    .line 259
    invoke-virtual {v0}, Lcom/android/mms/ui/UndeliveredMessagesActivity;->startAsyncQuery()V

    .line 260
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/mms/ui/UndeliveredMessagesListAdapter;->mNeedQuery:Z

    goto :goto_0
.end method

.method removeGetMoreView(Lcom/htc/widget/HtcListView;)V
    .locals 1
    .parameter "listView"

    .prologue
    .line 439
    iget-object v0, p0, Lcom/android/mms/ui/UndeliveredMessagesListAdapter;->m_vFooter:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/htc/widget/HtcListView;->getFooterViewsCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 440
    iget-object v0, p0, Lcom/android/mms/ui/UndeliveredMessagesListAdapter;->m_vFooter:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/htc/widget/HtcListView;->removeFooterView(Landroid/view/View;)Z

    .line 441
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/UndeliveredMessagesListAdapter;->mbShowFoot:Z

    .line 443
    :cond_0
    return-void
.end method

.method public setActivityInBackround(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 265
    sput-boolean p1, Lcom/android/mms/ui/UndeliveredMessagesListAdapter;->mBackground:Z

    .line 266
    return-void
.end method

.method public setGetMoreFootView(Lcom/htc/widget/HtcListView;Landroid/database/Cursor;)Z
    .locals 4
    .parameter "listView"
    .parameter "newCursor"

    .prologue
    const/4 v3, -0x1

    const/4 v1, 0x0

    .line 395
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportLoadAnimation()Z

    move-result v2

    if-nez v2, :cond_1

    .line 435
    :cond_0
    :goto_0
    return v1

    .line 398
    :cond_1
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/UndeliveredMessagesListAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_0

    .line 402
    iget-object v2, p0, Lcom/android/mms/ui/UndeliveredMessagesListAdapter;->m_vFooter:Landroid/view/View;

    if-nez v2, :cond_2

    .line 404
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->createGetMoreView()Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/UndeliveredMessagesListAdapter;->m_vFooter:Landroid/view/View;

    .line 407
    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/UndeliveredMessagesListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 410
    const/4 v0, 0x0

    .line 413
    .local v0, count:I
    if-eqz p2, :cond_3

    .line 414
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 416
    :cond_3
    iget v2, p0, Lcom/android/mms/ui/UndeliveredMessagesListAdapter;->mCurrentCursorCount:I

    if-eq v0, v2, :cond_6

    iget v2, p0, Lcom/android/mms/ui/UndeliveredMessagesListAdapter;->mCurrent_limit:I

    if-eq v2, v3, :cond_6

    .line 417
    iget-boolean v1, p0, Lcom/android/mms/ui/UndeliveredMessagesListAdapter;->mbShowFoot:Z

    if-nez v1, :cond_4

    iget v1, p0, Lcom/android/mms/ui/UndeliveredMessagesListAdapter;->mCurrent_limit:I

    if-ne v0, v1, :cond_4

    .line 418
    iget-object v1, p0, Lcom/android/mms/ui/UndeliveredMessagesListAdapter;->m_vFooter:Landroid/view/View;

    invoke-virtual {p1, v1}, Lcom/htc/widget/HtcListView;->addFooterView(Landroid/view/View;)V

    .line 419
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/mms/ui/UndeliveredMessagesListAdapter;->mbShowFoot:Z

    .line 432
    :cond_4
    :goto_1
    if-lez v0, :cond_5

    .line 433
    iput v0, p0, Lcom/android/mms/ui/UndeliveredMessagesListAdapter;->mCurrentCursorCount:I

    .line 435
    :cond_5
    iget-boolean v1, p0, Lcom/android/mms/ui/UndeliveredMessagesListAdapter;->mbShowFoot:Z

    goto :goto_0

    .line 424
    :cond_6
    iget-boolean v2, p0, Lcom/android/mms/ui/UndeliveredMessagesListAdapter;->mbShowFoot:Z

    if-eqz v2, :cond_4

    .line 425
    invoke-virtual {p1}, Lcom/htc/widget/HtcListView;->getFooterViewsCount()I

    move-result v2

    if-lez v2, :cond_7

    .line 426
    iget-object v2, p0, Lcom/android/mms/ui/UndeliveredMessagesListAdapter;->m_vFooter:Landroid/view/View;

    invoke-virtual {p1, v2}, Lcom/htc/widget/HtcListView;->removeFooterView(Landroid/view/View;)Z

    .line 427
    :cond_7
    iput v3, p0, Lcom/android/mms/ui/UndeliveredMessagesListAdapter;->mCurrent_limit:I

    .line 428
    iput-boolean v1, p0, Lcom/android/mms/ui/UndeliveredMessagesListAdapter;->mbShowFoot:Z

    goto :goto_1
.end method
