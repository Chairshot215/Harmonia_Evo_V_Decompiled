.class Lcom/android/htccontacts/indicator/PersonIndicatorRequest$1;
.super Ljava/lang/Object;
.source "PersonIndicatorRequest.java"

# interfaces
.implements Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/indicator/PersonIndicatorRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/indicator/PersonIndicatorRequest;)V
    .locals 0
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$1;->this$0:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public query(Lcom/android/htccontacts/indicator/IndicatorResult;)Lcom/android/htccontacts/indicator/IndicatorResult;
    .locals 20
    .parameter "result"

    .prologue
    .line 127
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$1;->this$0:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    iget-object v1, v1, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mPhoneSet:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 128
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$1;->this$0:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    iget-object v1, v1, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mEmailSet:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 129
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$1;->this$0:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    iget-object v1, v1, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mRawContactIdSet:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 130
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$1;->this$0:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    iget-object v1, v1, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mEventInstanceIdSet:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 131
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$1;->this$0:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    iget-object v1, v1, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mDataIdSet:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 132
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$1;->this$0:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    iget-object v7, v1, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mSocialNetworkService:[Lcom/android/htccontacts/indicator/PersonIndicatorRequest$SocialNetworkService;

    .local v7, arr$:[Lcom/android/htccontacts/indicator/PersonIndicatorRequest$SocialNetworkService;
    array-length v0, v7

    move/from16 v17, v0

    .local v17, len$:I
    const/4 v11, 0x0

    .local v11, i$:I
    :goto_0
    move/from16 v0, v17

    if-ge v11, v0, :cond_0

    aget-object v19, v7, v11

    .line 133
    .local v19, sns:Lcom/android/htccontacts/indicator/PersonIndicatorRequest$SocialNetworkService;
    move-object/from16 v0, v19

    iget-object v1, v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$SocialNetworkService;->idSet:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 132
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 135
    .end local v19           #sns:Lcom/android/htccontacts/indicator/PersonIndicatorRequest$SocialNetworkService;
    :cond_0
    const/4 v9, 0x0

    .line 138
    .local v9, cursor:Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$1;->this$0:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    iget-object v1, v1, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mResolver:Landroid/content/ContentResolver;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://com.android.contacts/contacts/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$1;->this$0:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    iget-wide v3, v3, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mContactId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/simpledata"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "mimetype=\'vnd.android.cursor.item/phone_v2\' OR mimetype=\'vnd.android.cursor.item/email_v2\' OR mimetype=\'vnd.android.cursor.item/htc_event_v2\' OR mimetype=\'vnd.android.cursor.item/vnd.htcfacebook.profile\' OR mimetype=\'vnd.android.cursor.item/vnd.facebook.profile\' OR mimetype=\'vnd.android.cursor.item/vnd.htctwitter.profile\' OR mimetype=\'vnd.android.cursor.item/vnd.plurk.profile\'"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v9

    .line 161
    :goto_1
    if-eqz v9, :cond_9

    .line 162
    const-string v1, "mimetype"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 163
    .local v14, idxMimetype:I
    const-string v1, "data1"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 164
    .local v12, idxData:I
    const-string v1, "raw_contact_id"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 165
    .local v15, idxRawContactId:I
    const-string v1, "data_id"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 167
    .local v13, idxDataId:I
    :goto_2
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 169
    invoke-interface {v9, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 170
    .local v18, mimetype:Ljava/lang/String;
    const-string v1, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 171
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$1;->this$0:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    iget-object v1, v1, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mPhoneSet:Ljava/util/HashSet;

    invoke-interface {v9, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 172
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$1;->this$0:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    iget-object v1, v1, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mRawContactIdSet:Ljava/util/HashSet;

    invoke-interface {v9, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 187
    :cond_1
    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$1;->this$0:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    iget-object v1, v1, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mDataIdSet:Ljava/util/HashSet;

    invoke-interface {v9, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 191
    .end local v18           #mimetype:Ljava/lang/String;
    :catchall_0
    move-exception v1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v1

    .line 149
    .end local v12           #idxData:I
    .end local v13           #idxDataId:I
    .end local v14           #idxMimetype:I
    .end local v15           #idxRawContactId:I
    :catch_0
    move-exception v10

    .line 150
    .local v10, e:Ljava/util/ConcurrentModificationException;
    const-string v1, "PersonIndicatorRequest"

    const-string v2, "ConcurrentModification warning for query fail in PersonIndicatorRequest"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    if-eqz v9, :cond_2

    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2

    .line 152
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 153
    :cond_2
    const/4 v9, 0x0

    .line 159
    goto :goto_1

    .line 154
    .end local v10           #e:Ljava/util/ConcurrentModificationException;
    :catch_1
    move-exception v10

    .line 155
    .local v10, e:Ljava/lang/Exception;
    const-string v1, "PersonIndicatorRequest"

    const-string v2, "Contact\'s Data Query failed in PersonIndicatorRequest"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    if-eqz v9, :cond_3

    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_3

    .line 157
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 158
    :cond_3
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 174
    .end local v10           #e:Ljava/lang/Exception;
    .restart local v12       #idxData:I
    .restart local v13       #idxDataId:I
    .restart local v14       #idxMimetype:I
    .restart local v15       #idxRawContactId:I
    .restart local v18       #mimetype:Ljava/lang/String;
    :cond_4
    :try_start_2
    const-string v1, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 175
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$1;->this$0:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    iget-object v1, v1, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mEmailSet:Ljava/util/HashSet;

    invoke-interface {v9, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 177
    :cond_5
    const-string v1, "vnd.android.cursor.item/htc_event_v2"

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 178
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$1;->this$0:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    iget-object v1, v1, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mEventInstanceIdSet:Ljava/util/HashSet;

    invoke-interface {v9, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 181
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$1;->this$0:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    iget-object v7, v1, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mSocialNetworkService:[Lcom/android/htccontacts/indicator/PersonIndicatorRequest$SocialNetworkService;

    array-length v0, v7

    move/from16 v17, v0

    const/4 v11, 0x0

    :goto_4
    move/from16 v0, v17

    if-ge v11, v0, :cond_1

    aget-object v19, v7, v11

    .line 182
    .restart local v19       #sns:Lcom/android/htccontacts/indicator/PersonIndicatorRequest$SocialNetworkService;
    move-object/from16 v0, v19

    iget-object v1, v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$SocialNetworkService;->mimetype:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 183
    move-object/from16 v0, v19

    iget-object v1, v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$SocialNetworkService;->idSet:Ljava/util/HashSet;

    invoke-interface {v9, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 181
    :cond_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 191
    .end local v18           #mimetype:Ljava/lang/String;
    .end local v19           #sns:Lcom/android/htccontacts/indicator/PersonIndicatorRequest$SocialNetworkService;
    :cond_8
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 194
    .end local v12           #idxData:I
    .end local v13           #idxDataId:I
    .end local v14           #idxMimetype:I
    .end local v15           #idxRawContactId:I
    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$1;->this$0:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    const-string v2, ""

    iput-object v2, v1, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mRawIds:Ljava/lang/String;

    .line 196
    :try_start_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$1;->this$0:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    iget-object v1, v1, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mRawContactIdSet:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    if-lez v1, :cond_b

    .line 197
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$1;->this$0:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    iget-object v1, v1, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mRawContactIdSet:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .line 198
    .local v16, ite:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    :goto_5
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 199
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$1;->this$0:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    iget-object v1, v1, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mRawIds:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_a

    .line 200
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$1;->this$0:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    iget-object v3, v2, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mRawIds:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v3, 0x2c

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mRawIds:Ljava/lang/String;

    .line 202
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$1;->this$0:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    iget-object v3, v2, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mRawIds:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mRawIds:Ljava/lang/String;
    :try_end_3
    .catch Ljava/util/ConcurrentModificationException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_5

    .line 206
    .end local v16           #ite:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    :catch_2
    move-exception v10

    .line 207
    .local v10, e:Ljava/util/ConcurrentModificationException;
    const-string v1, "PersonIndicatorRequest"

    const-string v2, "ConcurrentModification warning for mRawIds in PersonIndicatorRequest"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    .end local v10           #e:Ljava/util/ConcurrentModificationException;
    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$1;->this$0:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    const-string v2, ""

    iput-object v2, v1, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mDataIds:Ljava/lang/String;

    .line 211
    :try_start_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$1;->this$0:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    iget-object v1, v1, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mDataIdSet:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    if-lez v1, :cond_e

    .line 212
    const/4 v8, 0x0

    .line 213
    .local v8, counts:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$1;->this$0:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    iget-object v1, v1, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mDataIdSet:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .line 214
    .restart local v16       #ite:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    :cond_c
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 215
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$1;->this$0:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    iget-object v1, v1, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mDataIds:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_d

    .line 216
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$1;->this$0:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    iget-object v3, v2, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mDataIds:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v3, 0x2c

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mDataIds:Ljava/lang/String;

    .line 218
    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$1;->this$0:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    iget-object v3, v2, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mDataIds:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mDataIds:Ljava/lang/String;
    :try_end_4
    .catch Ljava/util/ConcurrentModificationException; {:try_start_4 .. :try_end_4} :catch_4

    .line 219
    add-int/lit8 v8, v8, 0x1

    .line 220
    const/16 v1, 0x64

    if-lt v8, v1, :cond_c

    .line 229
    .end local v8           #counts:I
    .end local v16           #ite:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    :cond_e
    :goto_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$1;->this$0:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    const-string v2, ""

    iput-object v2, v1, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mEventInstancesIds:Ljava/lang/String;

    .line 231
    :try_start_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$1;->this$0:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    iget-object v1, v1, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mEventInstanceIdSet:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    if-lez v1, :cond_10

    .line 232
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$1;->this$0:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    iget-object v1, v1, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mEventInstanceIdSet:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .line 233
    .restart local v16       #ite:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    :goto_7
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 234
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$1;->this$0:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    iget-object v1, v1, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mEventInstancesIds:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_f

    .line 235
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$1;->this$0:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    iget-object v3, v2, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mEventInstancesIds:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v3, 0x2c

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mEventInstancesIds:Ljava/lang/String;

    .line 237
    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$1;->this$0:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    iget-object v3, v2, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mEventInstancesIds:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mEventInstancesIds:Ljava/lang/String;
    :try_end_5
    .catch Ljava/util/ConcurrentModificationException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_7

    .line 241
    .end local v16           #ite:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    :catch_3
    move-exception v10

    .line 242
    .restart local v10       #e:Ljava/util/ConcurrentModificationException;
    const-string v1, "PersonIndicatorRequest"

    const-string v2, "ConcurrentModification warning for mEventInstancesIds in PersonIndicatorRequest"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    .end local v10           #e:Ljava/util/ConcurrentModificationException;
    :cond_10
    return-object p1

    .line 226
    :catch_4
    move-exception v10

    .line 227
    .restart local v10       #e:Ljava/util/ConcurrentModificationException;
    const-string v1, "PersonIndicatorRequest"

    const-string v2, "ConcurrentModification warning for mRawIds in PersonIndicatorRequest"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6
.end method

.method public toPublishResult()Z
    .locals 1

    .prologue
    .line 248
    const/4 v0, 0x0

    return v0
.end method
