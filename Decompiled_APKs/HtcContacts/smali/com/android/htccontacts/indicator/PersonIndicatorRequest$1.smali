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
    .line 109
    iput-object p1, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$1;->this$0:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public query(Lcom/android/htccontacts/indicator/IndicatorResult;)Lcom/android/htccontacts/indicator/IndicatorResult;
    .locals 20
    .parameter "result"

    .prologue
    .line 111
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$1;->this$0:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    iget-object v1, v1, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mPhoneSet:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 112
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$1;->this$0:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    iget-object v1, v1, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mEmailSet:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 113
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$1;->this$0:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    iget-object v1, v1, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mRawContactIdSet:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 114
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$1;->this$0:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    iget-object v1, v1, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mEventInstanceIdSet:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 115
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$1;->this$0:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    iget-object v1, v1, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mDataIdSet:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 116
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

    .line 117
    .local v19, sns:Lcom/android/htccontacts/indicator/PersonIndicatorRequest$SocialNetworkService;
    move-object/from16 v0, v19

    iget-object v1, v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$SocialNetworkService;->idSet:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 116
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 119
    .end local v19           #sns:Lcom/android/htccontacts/indicator/PersonIndicatorRequest$SocialNetworkService;
    :cond_0
    const-string v4, "mimetype=\'vnd.android.cursor.item/phone_v2\' OR mimetype=\'vnd.android.cursor.item/email_v2\' OR mimetype=\'vnd.android.cursor.item/htc_event_v2\' OR mimetype=\'vnd.android.cursor.item/vnd.htcfacebook.profile\' OR mimetype=\'vnd.android.cursor.item/vnd.htctwitter.profile\' OR mimetype=\'vnd.android.cursor.item/vnd.plurk.profile\' OR mimetype= \'vnd.android.cursor.item/vnd.facebook.profile\'"

    .line 127
    .local v4, selection:Ljava/lang/String;
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

    iget-wide v5, v3, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mContactId:J

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/simpledata"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 131
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_7

    .line 132
    const-string v1, "mimetype"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 133
    .local v14, idxMimetype:I
    const-string v1, "data1"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 134
    .local v12, idxData:I
    const-string v1, "raw_contact_id"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 135
    .local v15, idxRawContactId:I
    const-string v1, "data_id"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 137
    .local v13, idxDataId:I
    :goto_1
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 139
    invoke-interface {v9, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 140
    .local v18, mimetype:Ljava/lang/String;
    const-string v1, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 141
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$1;->this$0:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    iget-object v1, v1, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mPhoneSet:Ljava/util/HashSet;

    invoke-interface {v9, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 142
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$1;->this$0:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    iget-object v1, v1, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mRawContactIdSet:Ljava/util/HashSet;

    invoke-interface {v9, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 157
    :cond_1
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$1;->this$0:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    iget-object v1, v1, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mDataIdSet:Ljava/util/HashSet;

    invoke-interface {v9, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 161
    .end local v18           #mimetype:Ljava/lang/String;
    :catchall_0
    move-exception v1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v1

    .line 144
    .restart local v18       #mimetype:Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v1, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 145
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$1;->this$0:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    iget-object v1, v1, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mEmailSet:Ljava/util/HashSet;

    invoke-interface {v9, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 147
    :cond_3
    const-string v1, "vnd.android.cursor.item/htc_event_v2"

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 148
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$1;->this$0:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    iget-object v1, v1, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mEventInstanceIdSet:Ljava/util/HashSet;

    invoke-interface {v9, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 151
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$1;->this$0:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    iget-object v7, v1, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mSocialNetworkService:[Lcom/android/htccontacts/indicator/PersonIndicatorRequest$SocialNetworkService;

    array-length v0, v7

    move/from16 v17, v0

    const/4 v11, 0x0

    :goto_3
    move/from16 v0, v17

    if-ge v11, v0, :cond_1

    aget-object v19, v7, v11

    .line 152
    .restart local v19       #sns:Lcom/android/htccontacts/indicator/PersonIndicatorRequest$SocialNetworkService;
    move-object/from16 v0, v19

    iget-object v1, v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$SocialNetworkService;->mimetype:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 153
    move-object/from16 v0, v19

    iget-object v1, v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$SocialNetworkService;->idSet:Ljava/util/HashSet;

    invoke-interface {v9, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 151
    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 161
    .end local v18           #mimetype:Ljava/lang/String;
    .end local v19           #sns:Lcom/android/htccontacts/indicator/PersonIndicatorRequest$SocialNetworkService;
    :cond_6
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 164
    .end local v12           #idxData:I
    .end local v13           #idxDataId:I
    .end local v14           #idxMimetype:I
    .end local v15           #idxRawContactId:I
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$1;->this$0:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    const-string v2, ""

    iput-object v2, v1, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mRawIds:Ljava/lang/String;

    .line 166
    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$1;->this$0:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    iget-object v1, v1, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mRawContactIdSet:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    if-lez v1, :cond_9

    .line 167
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$1;->this$0:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    iget-object v1, v1, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mRawContactIdSet:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .line 168
    .local v16, ite:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    :goto_4
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 169
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$1;->this$0:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    iget-object v1, v1, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mRawIds:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_8

    .line 170
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

    .line 172
    :cond_8
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
    :try_end_2
    .catch Ljava/util/ConcurrentModificationException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    .line 176
    .end local v16           #ite:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    :catch_0
    move-exception v10

    .line 177
    .local v10, e:Ljava/util/ConcurrentModificationException;
    const-string v1, "PersonIndicatorRequest"

    const-string v2, "ConcurrentModification warning for mRawIds in PersonIndicatorRequest"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    .end local v10           #e:Ljava/util/ConcurrentModificationException;
    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$1;->this$0:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    const-string v2, ""

    iput-object v2, v1, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mDataIds:Ljava/lang/String;

    .line 181
    :try_start_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$1;->this$0:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    iget-object v1, v1, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mDataIdSet:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    if-lez v1, :cond_c

    .line 182
    const/4 v8, 0x0

    .line 183
    .local v8, counts:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$1;->this$0:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    iget-object v1, v1, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mDataIdSet:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .line 184
    .restart local v16       #ite:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    :cond_a
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 185
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$1;->this$0:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    iget-object v1, v1, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mDataIds:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_b

    .line 186
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

    .line 188
    :cond_b
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
    :try_end_3
    .catch Ljava/util/ConcurrentModificationException; {:try_start_3 .. :try_end_3} :catch_2

    .line 189
    add-int/lit8 v8, v8, 0x1

    .line 190
    const/16 v1, 0x64

    if-lt v8, v1, :cond_a

    .line 199
    .end local v8           #counts:I
    .end local v16           #ite:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    :cond_c
    :goto_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$1;->this$0:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    const-string v2, ""

    iput-object v2, v1, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mEventInstancesIds:Ljava/lang/String;

    .line 201
    :try_start_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$1;->this$0:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    iget-object v1, v1, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mEventInstanceIdSet:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    if-lez v1, :cond_e

    .line 202
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$1;->this$0:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    iget-object v1, v1, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mEventInstanceIdSet:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .line 203
    .restart local v16       #ite:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    :goto_6
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 204
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$1;->this$0:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    iget-object v1, v1, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mEventInstancesIds:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_d

    .line 205
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

    .line 207
    :cond_d
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
    :try_end_4
    .catch Ljava/util/ConcurrentModificationException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_6

    .line 211
    .end local v16           #ite:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    :catch_1
    move-exception v10

    .line 212
    .restart local v10       #e:Ljava/util/ConcurrentModificationException;
    const-string v1, "PersonIndicatorRequest"

    const-string v2, "ConcurrentModification warning for mEventInstancesIds in PersonIndicatorRequest"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    .end local v10           #e:Ljava/util/ConcurrentModificationException;
    :cond_e
    return-object p1

    .line 196
    :catch_2
    move-exception v10

    .line 197
    .restart local v10       #e:Ljava/util/ConcurrentModificationException;
    const-string v1, "PersonIndicatorRequest"

    const-string v2, "ConcurrentModification warning for mRawIds in PersonIndicatorRequest"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public toPublishResult()Z
    .locals 1

    .prologue
    .line 218
    const/4 v0, 0x0

    return v0
.end method
