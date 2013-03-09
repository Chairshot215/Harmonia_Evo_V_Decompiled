.class public Lcom/google/android/gsf/talk/SuggestionFooterCursor;
.super Landroid/database/CursorWrapper;
.source "SuggestionFooterCursor.java"

# interfaces
.implements Landroid/database/CrossProcessCursor;


# static fields
.field private static sAccountUsername:Ljava/lang/String;


# instance fields
.field private mAtFooterPosition:Z

.field private final mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/CrossProcessCursor;

.field private mIntentAction:Ljava/lang/String;

.field private mIntentData:Ljava/lang/String;

.field private mQuery:Ljava/lang/String;

.field private mText1:Ljava/lang/String;

.field private mText2:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter "context"
    .parameter "cursor"
    .parameter "text1"
    .parameter "text2"
    .parameter "query"
    .parameter "intentAction"
    .parameter "intentData"

    .prologue
    .line 68
    invoke-direct {p0, p2}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 69
    check-cast p2, Landroid/database/CrossProcessCursor;

    .end local p2
    iput-object p2, p0, Lcom/google/android/gsf/talk/SuggestionFooterCursor;->mCursor:Landroid/database/CrossProcessCursor;

    .line 70
    iput-object p3, p0, Lcom/google/android/gsf/talk/SuggestionFooterCursor;->mText1:Ljava/lang/String;

    .line 71
    iput-object p4, p0, Lcom/google/android/gsf/talk/SuggestionFooterCursor;->mText2:Ljava/lang/String;

    .line 72
    iput-object p5, p0, Lcom/google/android/gsf/talk/SuggestionFooterCursor;->mQuery:Ljava/lang/String;

    .line 73
    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/google/android/gsf/talk/SuggestionFooterCursor;->mIntentAction:Ljava/lang/String;

    .line 74
    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/google/android/gsf/talk/SuggestionFooterCursor;->mIntentData:Ljava/lang/String;

    .line 75
    iput-object p1, p0, Lcom/google/android/gsf/talk/SuggestionFooterCursor;->mContext:Landroid/content/Context;

    .line 77
    sget-object v1, Lcom/google/android/gsf/talk/SuggestionFooterCursor;->sAccountUsername:Ljava/lang/String;

    if-nez v1, :cond_4

    .line 81
    const/4 v7, 0x0

    .line 87
    .local v7, accountUsername:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/gsf/talk/SuggestionFooterCursor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/google/android/gsf/TalkContract$Account;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "username"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 93
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_2

    .line 95
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 96
    .local v9, numRows:I
    const/4 v1, 0x1

    if-eq v9, v1, :cond_0

    .line 97
    const-string v1, "TalkProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Accounts table has "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " rows, using first account"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 101
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 104
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 107
    .end local v9           #numRows:I
    :cond_2
    if-nez v7, :cond_3

    .line 108
    const-string v1, "TalkProvider"

    const-string v2, "SuggestionFooterCursor - Couldn\'t get account username"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_3
    sput-object v7, Lcom/google/android/gsf/talk/SuggestionFooterCursor;->sAccountUsername:Ljava/lang/String;

    .line 112
    .end local v7           #accountUsername:Ljava/lang/String;
    .end local v8           #c:Landroid/database/Cursor;
    :cond_4
    return-void

    .line 104
    .restart local v7       #accountUsername:Ljava/lang/String;
    .restart local v8       #c:Landroid/database/Cursor;
    :catchall_0
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method private computeCapabilityIndex(I)I
    .locals 1
    .parameter "capabilities"

    .prologue
    .line 268
    invoke-static {p1}, Lcom/google/android/gsf/talk/SuggestionFooterCursor;->isVideoChatCapable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    const/4 v0, 0x2

    .line 276
    :goto_0
    return v0

    .line 272
    :cond_0
    invoke-static {p1}, Lcom/google/android/gsf/talk/SuggestionFooterCursor;->isAudioChatCapable(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 273
    const/4 v0, 0x1

    goto :goto_0

    .line 276
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isAudioChatCapable(I)Z
    .locals 1
    .parameter "capabilities"

    .prologue
    .line 264
    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isVideoChatCapable(I)Z
    .locals 1
    .parameter "capabilities"

    .prologue
    .line 259
    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_0

    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public fillWindow(ILandroid/database/CursorWindow;)V
    .locals 1
    .parameter "position"
    .parameter "window"

    .prologue
    .line 247
    iget-object v0, p0, Lcom/google/android/gsf/talk/SuggestionFooterCursor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-static {v0, p1, p2}, Landroid/database/DatabaseUtils;->cursorFillWindow(Landroid/database/Cursor;ILandroid/database/CursorWindow;)V

    .line 248
    return-void
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 115
    iget-object v1, p0, Lcom/google/android/gsf/talk/SuggestionFooterCursor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v1}, Landroid/database/CrossProcessCursor;->getCount()I

    move-result v0

    .line 117
    .local v0, count:I
    if-gtz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gsf/talk/SuggestionFooterCursor;->mQuery:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 118
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 120
    :cond_1
    return v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/google/android/gsf/talk/SuggestionFooterCursor;->mAtFooterPosition:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gsf/talk/SuggestionFooterCursor;->getCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/talk/SuggestionFooterCursor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v0}, Landroid/database/CrossProcessCursor;->getPosition()I

    move-result v0

    goto :goto_0
.end method

.method public getStatusIconResourceId(II)I
    .locals 2
    .parameter "status"
    .parameter "capabilities"

    .prologue
    .line 280
    invoke-direct {p0, p2}, Lcom/google/android/gsf/talk/SuggestionFooterCursor;->computeCapabilityIndex(I)I

    move-result v0

    .line 281
    .local v0, capabilityIndex:I
    packed-switch p1, :pswitch_data_0

    .line 318
    const v1, 0x108006a

    :goto_0
    return v1

    .line 283
    :pswitch_0
    packed-switch v0, :pswitch_data_1

    .line 294
    :pswitch_1
    packed-switch v0, :pswitch_data_2

    .line 304
    :pswitch_2
    packed-switch v0, :pswitch_data_3

    .line 314
    :pswitch_3
    const v1, 0x1080069

    goto :goto_0

    .line 285
    :pswitch_4
    const v1, 0x108006b

    goto :goto_0

    .line 287
    :pswitch_5
    const v1, 0x10800b1

    goto :goto_0

    .line 289
    :pswitch_6
    const v1, 0x10800ae

    goto :goto_0

    .line 296
    :pswitch_7
    const v1, 0x1080067

    goto :goto_0

    .line 298
    :pswitch_8
    const v1, 0x10800af

    goto :goto_0

    .line 300
    :pswitch_9
    const v1, 0x10800ac

    goto :goto_0

    .line 306
    :pswitch_a
    const v1, 0x1080068

    goto :goto_0

    .line 308
    :pswitch_b
    const v1, 0x10800b0

    goto :goto_0

    .line 310
    :pswitch_c
    const v1, 0x10800ad

    goto :goto_0

    .line 281
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch

    .line 283
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 294
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch

    .line 304
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method public getString(I)Ljava/lang/String;
    .locals 11
    .parameter "column"

    .prologue
    const/4 v8, 0x0

    .line 174
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/talk/SuggestionFooterCursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v4

    .line 175
    .local v4, name:Ljava/lang/String;
    iget-boolean v9, p0, Lcom/google/android/gsf/talk/SuggestionFooterCursor;->mAtFooterPosition:Z

    if-eqz v9, :cond_9

    .line 177
    const-string v9, "suggest_text_1"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 178
    iget-object v2, p0, Lcom/google/android/gsf/talk/SuggestionFooterCursor;->mText1:Ljava/lang/String;

    .line 238
    :cond_0
    :goto_0
    return-object v2

    .line 179
    :cond_1
    const-string v9, "suggest_text_2"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 180
    iget-object v2, p0, Lcom/google/android/gsf/talk/SuggestionFooterCursor;->mText2:Ljava/lang/String;

    goto :goto_0

    .line 181
    :cond_2
    const-string v9, "suggest_intent_query"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 182
    iget-object v2, p0, Lcom/google/android/gsf/talk/SuggestionFooterCursor;->mQuery:Ljava/lang/String;

    goto :goto_0

    .line 183
    :cond_3
    const-string v9, "suggest_intent_action"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 184
    iget-object v2, p0, Lcom/google/android/gsf/talk/SuggestionFooterCursor;->mIntentAction:Ljava/lang/String;

    goto :goto_0

    .line 185
    :cond_4
    const-string v9, "suggest_intent_data"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 186
    iget-object v2, p0, Lcom/google/android/gsf/talk/SuggestionFooterCursor;->mIntentData:Ljava/lang/String;

    goto :goto_0

    .line 187
    :cond_5
    const-string v9, "presenceMode"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    const-string v9, "presenceStatus"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    const-string v9, "capabilities"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    const-string v9, "userID"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    const-string v9, "suggest_icon_1"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    const-string v9, "suggest_icon_1"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    const-string v9, "suggest_icon_2"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    :cond_6
    move-object v2, v8

    .line 196
    goto :goto_0

    .line 197
    :cond_7
    const-string v8, "_id"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 198
    iget-object v8, p0, Lcom/google/android/gsf/talk/SuggestionFooterCursor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v8}, Landroid/database/CrossProcessCursor;->getCount()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 200
    :cond_8
    new-instance v8, Ljava/lang/UnsupportedOperationException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Footer column: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " not supported"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 204
    :cond_9
    const-string v9, "suggest_icon_1"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    move-object v2, v8

    .line 206
    goto/16 :goto_0

    .line 207
    :cond_a
    const-string v9, "suggest_icon_2"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 209
    iget-object v9, p0, Lcom/google/android/gsf/talk/SuggestionFooterCursor;->mCursor:Landroid/database/CrossProcessCursor;

    const-string v10, "presenceMode"

    invoke-interface {v9, v10}, Landroid/database/CrossProcessCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 210
    .local v6, presenceColumn:I
    if-gez v6, :cond_b

    move-object v2, v8

    .line 211
    goto/16 :goto_0

    .line 213
    :cond_b
    iget-object v9, p0, Lcom/google/android/gsf/talk/SuggestionFooterCursor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v9, v6}, Landroid/database/CrossProcessCursor;->getInt(I)I

    move-result v5

    .line 214
    .local v5, presence:I
    iget-object v9, p0, Lcom/google/android/gsf/talk/SuggestionFooterCursor;->mCursor:Landroid/database/CrossProcessCursor;

    const-string v10, "capabilities"

    invoke-interface {v9, v10}, Landroid/database/CrossProcessCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 215
    .local v1, capabilitiesColumn:I
    if-gez v1, :cond_c

    move-object v2, v8

    .line 216
    goto/16 :goto_0

    .line 218
    :cond_c
    iget-object v8, p0, Lcom/google/android/gsf/talk/SuggestionFooterCursor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v8, v1}, Landroid/database/CrossProcessCursor;->getInt(I)I

    move-result v0

    .line 220
    .local v0, capabilities:I
    invoke-virtual {p0, v5, v0}, Lcom/google/android/gsf/talk/SuggestionFooterCursor;->getStatusIconResourceId(II)I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 221
    .end local v0           #capabilities:I
    .end local v1           #capabilitiesColumn:I
    .end local v5           #presence:I
    .end local v6           #presenceColumn:I
    :cond_d
    const-string v9, "suggest_text_2"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 223
    iget-object v9, p0, Lcom/google/android/gsf/talk/SuggestionFooterCursor;->mCursor:Landroid/database/CrossProcessCursor;

    const-string v10, "presenceStatus"

    invoke-interface {v9, v10}, Landroid/database/CrossProcessCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 224
    .local v3, customStatusColumn:I
    if-gez v3, :cond_e

    move-object v2, v8

    .line 225
    goto/16 :goto_0

    .line 227
    :cond_e
    iget-object v9, p0, Lcom/google/android/gsf/talk/SuggestionFooterCursor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v9, v3}, Landroid/database/CrossProcessCursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 229
    .local v2, customStatus:Ljava/lang/String;
    if-eqz v2, :cond_f

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_0

    .line 230
    :cond_f
    iget-object v9, p0, Lcom/google/android/gsf/talk/SuggestionFooterCursor;->mCursor:Landroid/database/CrossProcessCursor;

    const-string v10, "userID"

    invoke-interface {v9, v10}, Landroid/database/CrossProcessCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 231
    .local v7, usernameColumn:I
    if-gez v7, :cond_10

    move-object v2, v8

    .line 232
    goto/16 :goto_0

    .line 234
    :cond_10
    iget-object v8, p0, Lcom/google/android/gsf/talk/SuggestionFooterCursor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v8, v7}, Landroid/database/CrossProcessCursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 238
    .end local v2           #customStatus:Ljava/lang/String;
    .end local v3           #customStatusColumn:I
    .end local v7           #usernameColumn:I
    :cond_11
    iget-object v8, p0, Lcom/google/android/gsf/talk/SuggestionFooterCursor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v8, p1}, Landroid/database/CrossProcessCursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0
.end method

.method public getWindow()Landroid/database/CursorWindow;
    .locals 1

    .prologue
    .line 251
    const/4 v0, 0x0

    return-object v0
.end method

.method public move(I)Z
    .locals 3
    .parameter "offset"

    .prologue
    const/4 v1, 0x0

    .line 141
    iget-object v0, p0, Lcom/google/android/gsf/talk/SuggestionFooterCursor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v0}, Landroid/database/CrossProcessCursor;->getPosition()I

    move-result v0

    add-int/2addr v0, p1

    iget-object v2, p0, Lcom/google/android/gsf/talk/SuggestionFooterCursor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v2}, Landroid/database/CrossProcessCursor;->getCount()I

    move-result v2

    if-lt v0, v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/gsf/talk/SuggestionFooterCursor;->mAtFooterPosition:Z

    .line 142
    iget-object v0, p0, Lcom/google/android/gsf/talk/SuggestionFooterCursor;->mCursor:Landroid/database/CrossProcessCursor;

    iget-boolean v2, p0, Lcom/google/android/gsf/talk/SuggestionFooterCursor;->mAtFooterPosition:Z

    if-eqz v2, :cond_0

    const/4 v1, -0x1

    :cond_0
    add-int/2addr v1, p1

    invoke-interface {v0, v1}, Landroid/database/CrossProcessCursor;->move(I)Z

    move-result v0

    return v0

    :cond_1
    move v0, v1

    .line 141
    goto :goto_0
.end method

.method public moveToLast()Z
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/talk/SuggestionFooterCursor;->mAtFooterPosition:Z

    .line 137
    iget-object v0, p0, Lcom/google/android/gsf/talk/SuggestionFooterCursor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v0}, Landroid/database/CrossProcessCursor;->moveToLast()Z

    move-result v0

    return v0
.end method

.method public moveToNext()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 155
    iget-boolean v1, p0, Lcom/google/android/gsf/talk/SuggestionFooterCursor;->mAtFooterPosition:Z

    if-eqz v1, :cond_0

    .line 156
    const/4 v0, 0x0

    .line 162
    :goto_0
    return v0

    .line 158
    :cond_0
    iget-object v1, p0, Lcom/google/android/gsf/talk/SuggestionFooterCursor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v1}, Landroid/database/CrossProcessCursor;->getPosition()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gsf/talk/SuggestionFooterCursor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v2}, Landroid/database/CrossProcessCursor;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_1

    .line 159
    iput-boolean v0, p0, Lcom/google/android/gsf/talk/SuggestionFooterCursor;->mAtFooterPosition:Z

    goto :goto_0

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/google/android/gsf/talk/SuggestionFooterCursor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v0}, Landroid/database/CrossProcessCursor;->moveToNext()Z

    move-result v0

    goto :goto_0
.end method

.method public moveToPosition(I)Z
    .locals 5
    .parameter "position"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    .line 146
    iget-object v1, p0, Lcom/google/android/gsf/talk/SuggestionFooterCursor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v1}, Landroid/database/CrossProcessCursor;->getCount()I

    move-result v1

    if-lt p1, v1, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/google/android/gsf/talk/SuggestionFooterCursor;->mAtFooterPosition:Z

    .line 147
    iget-boolean v1, p0, Lcom/google/android/gsf/talk/SuggestionFooterCursor;->mAtFooterPosition:Z

    if-eqz v1, :cond_0

    move v3, v4

    :cond_0
    add-int v0, p1, v3

    .line 148
    .local v0, computedPos:I
    if-ne v0, v4, :cond_2

    .line 151
    :goto_1
    return v2

    .end local v0           #computedPos:I
    :cond_1
    move v1, v3

    .line 146
    goto :goto_0

    .line 151
    .restart local v0       #computedPos:I
    :cond_2
    iget-object v1, p0, Lcom/google/android/gsf/talk/SuggestionFooterCursor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v1, v0}, Landroid/database/CrossProcessCursor;->moveToPosition(I)Z

    move-result v2

    goto :goto_1
.end method

.method public moveToPrevious()Z
    .locals 1

    .prologue
    .line 166
    iget-boolean v0, p0, Lcom/google/android/gsf/talk/SuggestionFooterCursor;->mAtFooterPosition:Z

    if-eqz v0, :cond_0

    .line 167
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gsf/talk/SuggestionFooterCursor;->mAtFooterPosition:Z

    .line 168
    const/4 v0, 0x1

    .line 170
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/talk/SuggestionFooterCursor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v0}, Landroid/database/CrossProcessCursor;->moveToPrevious()Z

    move-result v0

    goto :goto_0
.end method

.method public onMove(II)Z
    .locals 1
    .parameter "oldPosition"
    .parameter "newPosition"

    .prologue
    .line 255
    iget-object v0, p0, Lcom/google/android/gsf/talk/SuggestionFooterCursor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v0, p1, p2}, Landroid/database/CrossProcessCursor;->onMove(II)Z

    move-result v0

    return v0
.end method
