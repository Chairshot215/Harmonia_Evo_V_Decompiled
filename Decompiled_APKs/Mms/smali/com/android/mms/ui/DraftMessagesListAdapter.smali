.class public Lcom/android/mms/ui/DraftMessagesListAdapter;
.super Landroid/widget/CursorAdapter;
.source "DraftMessagesListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/DraftMessagesListAdapter$ListItemCache;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DraftMessagesListAdapter"


# instance fields
.field mBackground:Z

.field mCurrentCursorCount:I

.field mCurrent_limit:I

.field private final mListView:Lcom/htc/widget/HtcListView;

.field mNeedQuery:Z

.field private mRightIndicator:Landroid/widget/ImageView;

.field mTimeStamp:Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;

.field mTxt:Lcom/htc/widget/HtcListItem2LineText;

.field m_vFooter:Landroid/view/View;

.field mbShowFoot:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Lcom/htc/widget/HtcListView;)V
    .locals 2
    .parameter "context"
    .parameter "c"
    .parameter "listView"

    .prologue
    const/4 v1, 0x0

    .line 85
    invoke-direct {p0, p1, p2, v1}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 77
    iput v1, p0, Lcom/android/mms/ui/DraftMessagesListAdapter;->mCurrent_limit:I

    .line 78
    iput v1, p0, Lcom/android/mms/ui/DraftMessagesListAdapter;->mCurrentCursorCount:I

    .line 79
    iput-boolean v1, p0, Lcom/android/mms/ui/DraftMessagesListAdapter;->mbShowFoot:Z

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/DraftMessagesListAdapter;->m_vFooter:Landroid/view/View;

    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/DraftMessagesListAdapter;->mNeedQuery:Z

    .line 99
    iput-boolean v1, p0, Lcom/android/mms/ui/DraftMessagesListAdapter;->mBackground:Z

    .line 87
    iput-object p3, p0, Lcom/android/mms/ui/DraftMessagesListAdapter;->mListView:Lcom/htc/widget/HtcListView;

    .line 90
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportLoadAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/android/mms/ui/DraftMessagesListAdapter;->mCurrent_limit:I

    .line 96
    :goto_0
    return-void

    .line 93
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/DraftMessagesListAdapter;->mCurrent_limit:I

    goto :goto_0
.end method

.method private bindMmsView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 25
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 252
    const/16 v21, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 253
    .local v12, msgId:J
    sget-object v21, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v21

    invoke-static {v0, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v19

    .line 256
    .local v19, uri:Landroid/net/Uri;
    :try_start_0
    invoke-static/range {p2 .. p2}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 263
    .local v11, msg:Lcom/google/android/mms/pdu/GenericPdu;
    const-wide/16 v6, 0x0

    .line 264
    .local v6, date:J
    const/16 v17, 0x0

    .line 265
    .local v17, subject:Lcom/google/android/mms/pdu/EncodedStringValue;
    const/16 v16, 0x0

    .line 268
    .local v16, sender:[Lcom/google/android/mms/pdu/EncodedStringValue;
    const/4 v4, 0x0

    .line 269
    .local v4, CC:[Lcom/google/android/mms/pdu/EncodedStringValue;
    const/4 v3, 0x0

    .line 271
    .local v3, BCC:[Lcom/google/android/mms/pdu/EncodedStringValue;
    const/4 v9, 0x0

    .line 272
    .local v9, from:Lcom/google/android/mms/pdu/EncodedStringValue;
    invoke-virtual {v11}, Lcom/google/android/mms/pdu/GenericPdu;->getMessageType()I

    move-result v14

    .line 273
    .local v14, msgType:I
    const/16 v21, 0x84

    move/from16 v0, v21

    if-ne v14, v0, :cond_4

    move-object/from16 v21, v11

    .line 274
    check-cast v21, Lcom/google/android/mms/pdu/RetrieveConf;

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/mms/pdu/RetrieveConf;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v9

    move-object/from16 v21, v11

    .line 275
    check-cast v21, Lcom/google/android/mms/pdu/RetrieveConf;

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/mms/pdu/RetrieveConf;->getSubject()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v17

    move-object/from16 v21, v11

    .line 276
    check-cast v21, Lcom/google/android/mms/pdu/RetrieveConf;

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/mms/pdu/RetrieveConf;->getDate()J

    move-result-wide v21

    const-wide/16 v23, 0x3e8

    mul-long v6, v21, v23

    .line 294
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/DraftMessagesListAdapter;->mTxt:Lcom/htc/widget/HtcListItem2LineText;

    move-object/from16 v22, v0

    if-nez v17, :cond_6

    const-string v21, ""

    :goto_1
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    .line 298
    const-string v5, ""

    .line 299
    .local v5, contact:Ljava/lang/String;
    if-nez v16, :cond_1

    if-nez v4, :cond_1

    if-eqz v3, :cond_b

    .line 301
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportNGMGroupMessage()Z

    move-result v21

    if-nez v21, :cond_a

    move-object/from16 v21, v11

    .line 303
    check-cast v21, Lcom/google/android/mms/pdu/SendReq;

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/mms/pdu/SendReq;->getTo()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/google/android/mms/pdu/EncodedStringValue;->concat([Lcom/google/android/mms/pdu/EncodedStringValue;)Ljava/lang/String;

    move-result-object v21

    const-string v22, ";"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_9

    .line 305
    check-cast v11, Lcom/google/android/mms/pdu/SendReq;

    .end local v11           #msg:Lcom/google/android/mms/pdu/GenericPdu;
    invoke-virtual {v11}, Lcom/google/android/mms/pdu/SendReq;->getTo()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/google/android/mms/pdu/EncodedStringValue;->concat([Lcom/google/android/mms/pdu/EncodedStringValue;)Ljava/lang/String;

    move-result-object v21

    const-string v22, ";"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    .line 306
    .local v20, values:[Ljava/lang/String;
    const-string v15, ""

    .line 307
    .local v15, result:Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, i:I
    :goto_2
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v10, v0, :cond_8

    .line 308
    aget-object v21, v20, v10

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    if-lez v21, :cond_2

    .line 309
    if-nez v10, :cond_7

    .line 310
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-static {}, Lcom/android/mms/util/ContactNameCache;->getInstance()Lcom/android/mms/util/ContactNameCache;

    move-result-object v22

    aget-object v23, v20, v10

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/util/ContactNameCache;->getContactName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 307
    :cond_2
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 257
    .end local v3           #BCC:[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v4           #CC:[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v5           #contact:Ljava/lang/String;
    .end local v6           #date:J
    .end local v9           #from:Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v10           #i:I
    .end local v14           #msgType:I
    .end local v15           #result:Ljava/lang/String;
    .end local v16           #sender:[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v17           #subject:Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v20           #values:[Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 258
    .local v8, e:Lcom/google/android/mms/MmsException;
    const-string v21, "DraftMessagesListAdapter"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Cannot load: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    .end local v8           #e:Lcom/google/android/mms/MmsException;
    :cond_3
    :goto_4
    return-void

    .line 278
    .restart local v3       #BCC:[Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v4       #CC:[Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v6       #date:J
    .restart local v9       #from:Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v11       #msg:Lcom/google/android/mms/pdu/GenericPdu;
    .restart local v14       #msgType:I
    .restart local v16       #sender:[Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v17       #subject:Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_4
    const/16 v21, 0x82

    move/from16 v0, v21

    if-ne v14, v0, :cond_5

    move-object/from16 v21, v11

    .line 279
    check-cast v21, Lcom/google/android/mms/pdu/NotificationInd;

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/mms/pdu/NotificationInd;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v9

    move-object/from16 v21, v11

    .line 280
    check-cast v21, Lcom/google/android/mms/pdu/NotificationInd;

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/mms/pdu/NotificationInd;->getSubject()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v17

    move-object/from16 v21, v11

    .line 281
    check-cast v21, Lcom/google/android/mms/pdu/NotificationInd;

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/mms/pdu/NotificationInd;->getExpiry()J

    move-result-wide v6

    goto/16 :goto_0

    .line 283
    :cond_5
    const/16 v21, 0x80

    move/from16 v0, v21

    if-ne v14, v0, :cond_0

    move-object/from16 v21, v11

    .line 285
    check-cast v21, Lcom/google/android/mms/pdu/SendReq;

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/mms/pdu/SendReq;->getCc()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v4

    move-object/from16 v21, v11

    .line 286
    check-cast v21, Lcom/google/android/mms/pdu/SendReq;

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/mms/pdu/SendReq;->getBcc()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v3

    move-object/from16 v21, v11

    .line 288
    check-cast v21, Lcom/google/android/mms/pdu/SendReq;

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/mms/pdu/SendReq;->getTo()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v16

    move-object/from16 v21, v11

    .line 289
    check-cast v21, Lcom/google/android/mms/pdu/SendReq;

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/mms/pdu/SendReq;->getSubject()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v17

    move-object/from16 v21, v11

    .line 290
    check-cast v21, Lcom/google/android/mms/pdu/SendReq;

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/mms/pdu/SendReq;->getDate()J

    move-result-wide v21

    const-wide/16 v23, 0x3e8

    mul-long v6, v21, v23

    goto/16 :goto_0

    .line 294
    :cond_6
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_1

    .line 312
    .end local v11           #msg:Lcom/google/android/mms/pdu/GenericPdu;
    .restart local v5       #contact:Ljava/lang/String;
    .restart local v10       #i:I
    .restart local v15       #result:Ljava/lang/String;
    .restart local v20       #values:[Ljava/lang/String;
    :cond_7
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ";"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-static {}, Lcom/android/mms/util/ContactNameCache;->getInstance()Lcom/android/mms/util/ContactNameCache;

    move-result-object v22

    aget-object v23, v20, v10

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/util/ContactNameCache;->getContactName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_3

    .line 315
    :cond_8
    move-object v5, v15

    .line 331
    .end local v10           #i:I
    .end local v15           #result:Ljava/lang/String;
    .end local v20           #values:[Ljava/lang/String;
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/DraftMessagesListAdapter;->mTxt:Lcom/htc/widget/HtcListItem2LineText;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 344
    :goto_6
    move-object/from16 v0, p2

    invoke-static {v0, v6, v7}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v18

    .line 346
    .local v18, timeStamp:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/DraftMessagesListAdapter;->mTimeStamp:Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->setTextStamp(Ljava/lang/String;)V

    .line 347
    const/16 v21, 0xf

    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_3

    .line 348
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/DraftMessagesListAdapter;->mRightIndicator:Landroid/widget/ImageView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 350
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/DraftMessagesListAdapter;->mRightIndicator:Landroid/widget/ImageView;

    move-object/from16 v21, v0

    const v22, 0x7f02017c

    invoke-virtual/range {v21 .. v22}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_4

    .line 318
    .end local v18           #timeStamp:Ljava/lang/String;
    .restart local v11       #msg:Lcom/google/android/mms/pdu/GenericPdu;
    :cond_9
    invoke-static {}, Lcom/android/mms/util/ContactNameCache;->getInstance()Lcom/android/mms/util/ContactNameCache;

    move-result-object v21

    check-cast v11, Lcom/google/android/mms/pdu/SendReq;

    .end local v11           #msg:Lcom/google/android/mms/pdu/GenericPdu;
    invoke-virtual {v11}, Lcom/google/android/mms/pdu/SendReq;->getTo()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/google/android/mms/pdu/EncodedStringValue;->concat([Lcom/google/android/mms/pdu/EncodedStringValue;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/util/ContactNameCache;->getContactName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_5

    .line 324
    .restart local v11       #msg:Lcom/google/android/mms/pdu/GenericPdu;
    :cond_a
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2, v5}, Lcom/android/mms/ui/DraftMessagesListAdapter;->getContactStringFromList(Landroid/content/Context;[Lcom/google/android/mms/pdu/EncodedStringValue;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 325
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v4, v5}, Lcom/android/mms/ui/DraftMessagesListAdapter;->getContactStringFromList(Landroid/content/Context;[Lcom/google/android/mms/pdu/EncodedStringValue;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 326
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v3, v5}, Lcom/android/mms/ui/DraftMessagesListAdapter;->getContactStringFromList(Landroid/content/Context;[Lcom/google/android/mms/pdu/EncodedStringValue;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_5

    .line 333
    :cond_b
    if-eqz v9, :cond_c

    .line 334
    invoke-static {}, Lcom/android/mms/util/ContactNameCache;->getInstance()Lcom/android/mms/util/ContactNameCache;

    move-result-object v21

    invoke-virtual {v9}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/util/ContactNameCache;->getContactName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 336
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/DraftMessagesListAdapter;->mTxt:Lcom/htc/widget/HtcListItem2LineText;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 340
    :cond_c
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f090021

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 341
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/DraftMessagesListAdapter;->mTxt:Lcom/htc/widget/HtcListItem2LineText;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    goto/16 :goto_6
.end method

.method private bindSmsView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 14
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 195
    const/4 v11, 0x2

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 196
    .local v6, mAddress:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 198
    const-string v11, ";"

    invoke-virtual {v6, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 201
    const-string v11, ";"

    invoke-virtual {v6, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 202
    .local v10, values:[Ljava/lang/String;
    const-string v8, ""

    .line 203
    .local v8, result:Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    array-length v11, v10

    if-ge v5, v11, :cond_2

    .line 204
    aget-object v11, v10, v5

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_0

    .line 205
    if-nez v5, :cond_1

    .line 206
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Lcom/android/mms/util/ContactNameCache;->getInstance()Lcom/android/mms/util/ContactNameCache;

    move-result-object v12

    aget-object v13, v10, v5

    move-object/from16 v0, p2

    invoke-virtual {v12, v0, v13}, Lcom/android/mms/util/ContactNameCache;->getContactName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 203
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 208
    :cond_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ";"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Lcom/android/mms/util/ContactNameCache;->getInstance()Lcom/android/mms/util/ContactNameCache;

    move-result-object v12

    aget-object v13, v10, v5

    move-object/from16 v0, p2

    invoke-virtual {v12, v0, v13}, Lcom/android/mms/util/ContactNameCache;->getContactName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 211
    :cond_2
    move-object v2, v8

    .line 224
    .end local v5           #i:I
    .end local v8           #result:Ljava/lang/String;
    .end local v10           #values:[Ljava/lang/String;
    .local v2, contact:Ljava/lang/String;
    :goto_2
    iget-object v11, p0, Lcom/android/mms/ui/DraftMessagesListAdapter;->mTxt:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v11, v2}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 227
    const/4 v11, 0x3

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 229
    .local v1, body:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->isSmsVcard(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 231
    iget-object v11, p0, Lcom/android/mms/ui/DraftMessagesListAdapter;->mTxt:Lcom/htc/widget/HtcListItem2LineText;

    const v12, 0x7f090172

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    .line 240
    :goto_3
    const/4 v11, 0x4

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 241
    .local v3, date:J
    move-object/from16 v0, p2

    invoke-static {v0, v3, v4}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v9

    .line 243
    .local v9, time:Ljava/lang/String;
    iget-object v11, p0, Lcom/android/mms/ui/DraftMessagesListAdapter;->mTimeStamp:Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;

    invoke-virtual {v11, v9}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->setTextStamp(Ljava/lang/String;)V

    .line 244
    const/16 v11, 0x8

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_3

    .line 245
    iget-object v11, p0, Lcom/android/mms/ui/DraftMessagesListAdapter;->mRightIndicator:Landroid/widget/ImageView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 247
    iget-object v11, p0, Lcom/android/mms/ui/DraftMessagesListAdapter;->mRightIndicator:Landroid/widget/ImageView;

    const v12, 0x7f02017c

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 249
    :cond_3
    return-void

    .line 214
    .end local v1           #body:Ljava/lang/String;
    .end local v2           #contact:Ljava/lang/String;
    .end local v3           #date:J
    .end local v9           #time:Ljava/lang/String;
    :cond_4
    invoke-static {}, Lcom/android/mms/util/ContactNameCache;->getInstance()Lcom/android/mms/util/ContactNameCache;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v11, v0, v6}, Lcom/android/mms/util/ContactNameCache;->getContactName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #contact:Ljava/lang/String;
    goto :goto_2

    .line 221
    .end local v2           #contact:Ljava/lang/String;
    :cond_5
    const v11, 0x7f090021

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #contact:Ljava/lang/String;
    goto :goto_2

    .line 234
    .restart local v1       #body:Ljava/lang/String;
    :cond_6
    invoke-static {}, Lcom/android/mms/util/SmileyParser;->getInstance()Lcom/android/mms/util/SmileyParser;

    move-result-object v7

    .line 236
    .local v7, parser:Lcom/android/mms/util/SmileyParser;
    iget-object v11, p0, Lcom/android/mms/ui/DraftMessagesListAdapter;->mTxt:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v7, v1}, Lcom/android/mms/util/SmileyParser;->addSmileySpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method

.method private getContactStringFromList(Landroid/content/Context;[Lcom/google/android/mms/pdu/EncodedStringValue;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "context"
    .parameter "addr"
    .parameter "currentContactString"

    .prologue
    .line 431
    const-string v0, ""

    .line 432
    .local v0, contactString:Ljava/lang/String;
    if-eqz p2, :cond_4

    invoke-static {p2}, Lcom/google/android/mms/pdu/EncodedStringValue;->concat([Lcom/google/android/mms/pdu/EncodedStringValue;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 433
    invoke-static {p2}, Lcom/google/android/mms/pdu/EncodedStringValue;->concat([Lcom/google/android/mms/pdu/EncodedStringValue;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 434
    .local v3, values:[Ljava/lang/String;
    const-string v2, ""

    .line 435
    .local v2, result:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_2

    .line 436
    aget-object v4, v3, v1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 437
    if-nez v1, :cond_1

    .line 438
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

    .line 435
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 440
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

    .line 443
    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 450
    .end local v1           #i:I
    .end local v2           #result:Ljava/lang/String;
    .end local v3           #values:[Ljava/lang/String;
    :cond_3
    :goto_2
    invoke-virtual {p3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 446
    :cond_4
    if-eqz p2, :cond_3

    .line 447
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


# virtual methods
.method addGetMoreView(Lcom/htc/widget/HtcListView;)V
    .locals 3
    .parameter "listView"

    .prologue
    .line 420
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessagesListAdapter;->m_vFooter:Landroid/view/View;

    if-nez v0, :cond_0

    .line 421
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->createGetMoreView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/DraftMessagesListAdapter;->m_vFooter:Landroid/view/View;

    .line 422
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessagesListAdapter;->m_vFooter:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/htc/widget/HtcListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 423
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/DraftMessagesListAdapter;->mbShowFoot:Z

    .line 425
    :cond_0
    return-void
.end method

.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 4
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    const/4 v3, 0x0

    .line 144
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;

    .line 145
    .local v0, group:Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;
    iget-object v2, v0, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;->Text:Lcom/htc/widget/HtcListItem2LineText;

    iput-object v2, p0, Lcom/android/mms/ui/DraftMessagesListAdapter;->mTxt:Lcom/htc/widget/HtcListItem2LineText;

    .line 146
    iget-object v2, v0, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;->Stamp:Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;

    iput-object v2, p0, Lcom/android/mms/ui/DraftMessagesListAdapter;->mTimeStamp:Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;

    .line 147
    iget-object v2, p0, Lcom/android/mms/ui/DraftMessagesListAdapter;->mTimeStamp:Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->getBadge(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/mms/ui/DraftMessagesListAdapter;->mRightIndicator:Landroid/widget/ImageView;

    .line 150
    if-eqz p3, :cond_1

    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_1

    .line 151
    iget-boolean v2, p0, Lcom/android/mms/ui/DraftMessagesListAdapter;->mbShowFoot:Z

    if-eqz v2, :cond_1

    .line 152
    iget v2, p0, Lcom/android/mms/ui/DraftMessagesListAdapter;->mCurrent_limit:I

    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->addQueryLimit(I)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/DraftMessagesListAdapter;->mCurrent_limit:I

    .line 153
    if-eqz p2, :cond_1

    .line 154
    instance-of v2, p2, Lcom/android/mms/ui/DraftList;

    if-eqz v2, :cond_0

    move-object v2, p2

    .line 155
    check-cast v2, Lcom/android/mms/ui/DraftList;

    invoke-virtual {v2}, Lcom/android/mms/ui/DraftList;->startAsyncQuery()V

    .line 157
    :cond_0
    instance-of v2, p2, Lcom/android/mms/ui/DeletedItemsActivity;

    if-eqz v2, :cond_1

    move-object v2, p2

    .line 158
    check-cast v2, Lcom/android/mms/ui/DeletedItemsActivity;

    invoke-virtual {v2}, Lcom/android/mms/ui/DeletedItemsActivity;->StartQuery()V

    .line 165
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v3

    monitor-enter v3

    .line 166
    const/4 v2, 0x0

    :try_start_0
    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 167
    .local v1, type:Ljava/lang/String;
    const-string v2, "mms"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 168
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/DraftMessagesListAdapter;->bindMmsView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 172
    :cond_2
    :goto_0
    monitor-exit v3

    .line 173
    return-void

    .line 169
    :cond_3
    const-string v2, "sms"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 170
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/DraftMessagesListAdapter;->bindSmsView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    goto :goto_0

    .line 172
    .end local v1           #type:Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessagesListAdapter;->mCursor:Landroid/database/Cursor;

    if-ne p1, v0, :cond_0

    .line 138
    :goto_0
    return-void

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessagesListAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessagesListAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/mms/ui/DraftMessagesListAdapter;->mChangeObserver:Landroid/widget/CursorAdapter$ChangeObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 121
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessagesListAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/mms/ui/DraftMessagesListAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 122
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessagesListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-static {v0}, Lcom/android/mms/util/MmsAsyncWorkHandler;->CloseCursorInBG(Landroid/database/Cursor;)V

    .line 124
    :cond_1
    iput-object p1, p0, Lcom/android/mms/ui/DraftMessagesListAdapter;->mCursor:Landroid/database/Cursor;

    .line 125
    if-eqz p1, :cond_2

    .line 126
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessagesListAdapter;->mChangeObserver:Landroid/widget/CursorAdapter$ChangeObserver;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 127
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessagesListAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 128
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/DraftMessagesListAdapter;->mRowIDColumn:I

    .line 129
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/DraftMessagesListAdapter;->mDataValid:Z

    .line 131
    invoke-virtual {p0}, Lcom/android/mms/ui/DraftMessagesListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 133
    :cond_2
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/DraftMessagesListAdapter;->mRowIDColumn:I

    .line 134
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/DraftMessagesListAdapter;->mDataValid:Z

    .line 136
    invoke-virtual {p0}, Lcom/android/mms/ui/DraftMessagesListAdapter;->notifyDataSetInvalidated()V

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 179
    iget-object v1, p0, Lcom/android/mms/ui/DraftMessagesListAdapter;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/mms/ui/HtcListItemComposer;->createStampListItem(Landroid/content/Context;Z)Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;

    move-result-object v0

    .line 180
    .local v0, group:Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;
    iget-object v1, v0, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;->ListItem:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 182
    iget-object v1, v0, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;->ListItem:Landroid/view/View;

    return-object v1
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 187
    invoke-super {p0}, Landroid/widget/CursorAdapter;->notifyDataSetChanged()V

    .line 189
    return-void
.end method

.method protected onContentChanged()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessagesListAdapter;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/DraftMessagesListAdapter;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/mms/ui/DraftList;

    invoke-virtual {v0}, Lcom/android/mms/ui/DraftList;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mms/ui/DraftMessagesListAdapter;->mBackground:Z

    if-eqz v0, :cond_2

    .line 104
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/DraftMessagesListAdapter;->mNeedQuery:Z

    .line 112
    :cond_1
    :goto_0
    return-void

    .line 108
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessagesListAdapter;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 109
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessagesListAdapter;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/mms/ui/DraftList;

    invoke-virtual {v0}, Lcom/android/mms/ui/DraftList;->startAsyncQuery()V

    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/DraftMessagesListAdapter;->mNeedQuery:Z

    goto :goto_0
.end method

.method removeGetMoreView(Lcom/htc/widget/HtcListView;)V
    .locals 1
    .parameter "listView"

    .prologue
    .line 413
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessagesListAdapter;->m_vFooter:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/htc/widget/HtcListView;->getFooterViewsCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 414
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessagesListAdapter;->m_vFooter:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/htc/widget/HtcListView;->removeFooterView(Landroid/view/View;)Z

    .line 415
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/DraftMessagesListAdapter;->mbShowFoot:Z

    .line 417
    :cond_0
    return-void
.end method

.method public setGetMoreFootView(Lcom/htc/widget/HtcListView;Landroid/database/Cursor;)Z
    .locals 5
    .parameter "listView"
    .parameter "newCursor"

    .prologue
    const/4 v4, -0x1

    const/4 v1, 0x0

    .line 365
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportLoadAnimation()Z

    move-result v2

    if-nez v2, :cond_1

    .line 409
    :cond_0
    :goto_0
    return v1

    .line 368
    :cond_1
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/DraftMessagesListAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_0

    .line 372
    iget-object v2, p0, Lcom/android/mms/ui/DraftMessagesListAdapter;->m_vFooter:Landroid/view/View;

    if-nez v2, :cond_2

    .line 374
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->createGetMoreView()Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/DraftMessagesListAdapter;->m_vFooter:Landroid/view/View;

    .line 377
    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/DraftMessagesListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 380
    const/4 v0, 0x0

    .line 383
    .local v0, count:I
    if-eqz p2, :cond_3

    .line 384
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 387
    :cond_3
    iget v2, p0, Lcom/android/mms/ui/DraftMessagesListAdapter;->mCurrentCursorCount:I

    if-eq v0, v2, :cond_6

    iget v2, p0, Lcom/android/mms/ui/DraftMessagesListAdapter;->mCurrentCursorCount:I

    sub-int v2, v0, v2

    const/16 v3, 0x1f4

    if-ne v2, v3, :cond_6

    iget v2, p0, Lcom/android/mms/ui/DraftMessagesListAdapter;->mCurrent_limit:I

    if-eq v2, v4, :cond_6

    .line 391
    iget-boolean v1, p0, Lcom/android/mms/ui/DraftMessagesListAdapter;->mbShowFoot:Z

    if-nez v1, :cond_4

    iget v1, p0, Lcom/android/mms/ui/DraftMessagesListAdapter;->mCurrent_limit:I

    if-ne v0, v1, :cond_4

    .line 392
    iget-object v1, p0, Lcom/android/mms/ui/DraftMessagesListAdapter;->m_vFooter:Landroid/view/View;

    invoke-virtual {p1, v1}, Lcom/htc/widget/HtcListView;->addFooterView(Landroid/view/View;)V

    .line 393
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/mms/ui/DraftMessagesListAdapter;->mbShowFoot:Z

    .line 406
    :cond_4
    :goto_1
    if-lez v0, :cond_5

    .line 407
    iput v0, p0, Lcom/android/mms/ui/DraftMessagesListAdapter;->mCurrentCursorCount:I

    .line 409
    :cond_5
    iget-boolean v1, p0, Lcom/android/mms/ui/DraftMessagesListAdapter;->mbShowFoot:Z

    goto :goto_0

    .line 398
    :cond_6
    iget-boolean v2, p0, Lcom/android/mms/ui/DraftMessagesListAdapter;->mbShowFoot:Z

    if-eqz v2, :cond_4

    .line 399
    invoke-virtual {p1}, Lcom/htc/widget/HtcListView;->getFooterViewsCount()I

    move-result v2

    if-lez v2, :cond_7

    .line 400
    iget-object v2, p0, Lcom/android/mms/ui/DraftMessagesListAdapter;->m_vFooter:Landroid/view/View;

    invoke-virtual {p1, v2}, Lcom/htc/widget/HtcListView;->removeFooterView(Landroid/view/View;)Z

    .line 401
    :cond_7
    iput v4, p0, Lcom/android/mms/ui/DraftMessagesListAdapter;->mCurrent_limit:I

    .line 402
    iput-boolean v1, p0, Lcom/android/mms/ui/DraftMessagesListAdapter;->mbShowFoot:Z

    goto :goto_1
.end method
