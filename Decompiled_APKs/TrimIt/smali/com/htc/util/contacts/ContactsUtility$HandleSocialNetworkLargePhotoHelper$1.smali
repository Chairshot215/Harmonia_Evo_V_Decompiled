.class final Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper$1;
.super Landroid/os/Handler;
.source "ContactsUtility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->newMessageHandler()Landroid/os/Handler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2089
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 44
    .parameter "msg"

    .prologue
    .line 2091
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 2356
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 2094
    :pswitch_1
    const-string v4, "ContactsUtility"

    const-string v6, "MSG_CHECK_DOWNLOAD_SET"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2095
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    int-to-long v0, v4

    move-wide/from16 v26, v0

    .line 2096
    .local v26, lContactId:J
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Landroid/content/Context;

    .line 2097
    .local v22, context:Landroid/content/Context;
    const-wide/16 v6, 0x0

    cmp-long v4, v6, v26

    if-gez v4, :cond_0

    if-eqz v22, :cond_0

    .line 2098
    const-string v4, "ContactsUtility"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MSG_CHECK_DOWNLOAD_SET lContactId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v26

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2100
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content://com.android.contacts/contacts/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v26

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "/simpleSocialNetworkdata"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 2101
    .local v5, uri:Landroid/net/Uri;
    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    .line 2102
    .local v38, sbSelection:Ljava/lang/StringBuilder;
    const-string v4, "account_type = \'com.htc.socialnetwork.facebook\'"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2103
    const-string v4, " AND "

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2104
    const-string v4, "( "

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2105
    const-string v4, "mimetype = \'vnd.android.cursor.item/photo\'"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2106
    const-string v4, " OR "

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2107
    const-string v4, "mimetype = \'com.htc.socialnetwork.facebook/largeavatar\'"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2108
    const-string v4, " )"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2109
    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v21

    .line 2110
    .local v21, c:Landroid/database/Cursor;
    if-eqz v21, :cond_d

    .line 2111
    const-string v4, "ContactsUtility"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MSG_CHECK_DOWNLOAD_SET c.getCount() "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2112
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_c

    .line 2113
    new-instance v36, Ljava/util/HashSet;

    invoke-direct/range {v36 .. v36}, Ljava/util/HashSet;-><init>()V

    .line 2114
    .local v36, rawContactIdset:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    :cond_1
    :goto_1
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2115
    const-string v4, "raw_contact_id"

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v28

    .line 2116
    .local v28, lRawContactId:J
    const-wide/16 v6, 0x0

    cmp-long v4, v6, v28

    if-gez v4, :cond_1

    .line 2117
    const-string v4, "ContactsUtility"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MSG_CHECK_DOWNLOAD_SET add rawContactIdset:lRawContactId "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v28

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2118
    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2121
    .end local v28           #lRawContactId:J
    :cond_2
    const-string v4, "ContactsUtility"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MSG_CHECK_DOWNLOAD_SET rawContactIdset.size() "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v36 .. v36}, Ljava/util/HashSet;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2122
    invoke-virtual/range {v36 .. v36}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .local v24, i$:Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    .line 2123
    .local v13, LrawContactId:Ljava/lang/Long;
    const-string v4, "ContactsUtility"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MSG_CHECK_DOWNLOAD_SET lRawContactId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2124
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2125
    const/4 v9, 0x0

    .line 2126
    .local v9, sLargeAvatarUrl:Ljava/lang/String;
    const/4 v14, 0x0

    .line 2127
    .local v14, bHasPhotoData:Z
    const/16 v16, 0x0

    .line 2128
    .local v16, bIsSocialNetworkPhotoData:Z
    const/4 v15, 0x1

    .line 2129
    .local v15, bIsSocialNetworkLargePhotoData:Z
    const-wide/16 v11, -0x1

    .line 2131
    .local v11, lDataId:J
    :cond_4
    const-string v4, "ContactsUtility"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MSG_CHECK_DOWNLOAD_SET c.getPosition() "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->getPosition()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2132
    const-string v4, "raw_contact_id"

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v28

    .line 2133
    .restart local v28       #lRawContactId:J
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v4, v6, v28

    if-nez v4, :cond_5

    .line 2134
    const-string v4, "mimetype"

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v37

    .line 2135
    .local v37, sMimetype:Ljava/lang/String;
    const-string v4, "com.htc.socialnetwork.facebook/largeavatar"

    move-object/from16 v0, v37

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2136
    const-string v4, "data1"

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 2137
    const-string v4, "ContactsUtility"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MSG_CHECK_DOWNLOAD_SET sLargeAvatarUrl "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2160
    .end local v37           #sMimetype:Ljava/lang/String;
    :cond_5
    :goto_3
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_4

    .line 2162
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 2163
    if-nez v14, :cond_b

    .line 2164
    const-string v4, "ContactsUtility"

    const-string v6, "MSG_CHECK_DOWNLOAD_SET download and insert"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2165
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const/4 v10, 0x0

    const-wide/16 v11, -0x1

    move-object/from16 v6, v22

    #calls: Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->downloadSocialNetworkLargePhoto(Landroid/content/Context;JLjava/lang/String;ZJ)V
    invoke-static/range {v6 .. v12}, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->access$000(Landroid/content/Context;JLjava/lang/String;ZJ)V

    goto/16 :goto_2

    .line 2138
    .restart local v37       #sMimetype:Ljava/lang/String;
    :cond_6
    const-string v4, "vnd.android.cursor.item/photo"

    move-object/from16 v0, v37

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2139
    const/4 v14, 0x1

    .line 2140
    const-wide/16 v6, 0x0

    const-string v4, "data7"

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v42

    cmp-long v4, v6, v42

    if-eqz v4, :cond_7

    const-string v4, "data7"

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 2143
    :cond_7
    const/16 v16, 0x0

    .line 2147
    :goto_4
    const-string v4, "ContactsUtility"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MSG_CHECK_DOWNLOAD_SET bIsSocialNetworkPhotoData "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2148
    const-wide/16 v6, 0x0

    const-string v4, "data8"

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v42

    cmp-long v4, v6, v42

    if-eqz v4, :cond_8

    const-string v4, "data8"

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 2151
    :cond_8
    const/4 v15, 0x0

    .line 2155
    :goto_5
    const-string v4, "ContactsUtility"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MSG_CHECK_DOWNLOAD_SET bIsSocialNetworkLargePhotoData "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2156
    const-string v4, "data_id"

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 2157
    const-string v4, "ContactsUtility"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MSG_CHECK_DOWNLOAD_SET lDataId "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 2145
    :cond_9
    const/16 v16, 0x1

    goto/16 :goto_4

    .line 2153
    :cond_a
    const/4 v15, 0x1

    goto :goto_5

    .line 2166
    .end local v37           #sMimetype:Ljava/lang/String;
    :cond_b
    if-eqz v14, :cond_3

    if-eqz v16, :cond_3

    if-nez v15, :cond_3

    .line 2167
    const-string v4, "ContactsUtility"

    const-string v6, "MSG_CHECK_DOWNLOAD_SET download and update"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2168
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const/4 v10, 0x1

    move-object/from16 v6, v22

    #calls: Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->downloadSocialNetworkLargePhoto(Landroid/content/Context;JLjava/lang/String;ZJ)V
    invoke-static/range {v6 .. v12}, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->access$000(Landroid/content/Context;JLjava/lang/String;ZJ)V

    goto/16 :goto_2

    .line 2173
    .end local v9           #sLargeAvatarUrl:Ljava/lang/String;
    .end local v11           #lDataId:J
    .end local v13           #LrawContactId:Ljava/lang/Long;
    .end local v14           #bHasPhotoData:Z
    .end local v15           #bIsSocialNetworkLargePhotoData:Z
    .end local v16           #bIsSocialNetworkPhotoData:Z
    .end local v24           #i$:Ljava/util/Iterator;
    .end local v28           #lRawContactId:J
    .end local v36           #rawContactIdset:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    :cond_c
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 2174
    const/16 v21, 0x0

    .line 2177
    :cond_d
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils;->isFaceBookPhoneProject()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2178
    move-wide/from16 v0, v26

    move-object/from16 v2, v22

    #calls: Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->downloadOriginalFacebookLargePhoto(JLandroid/content/Context;)V
    invoke-static {v0, v1, v2}, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->access$100(JLandroid/content/Context;)V

    goto/16 :goto_0

    .line 2186
    .end local v5           #uri:Landroid/net/Uri;
    .end local v21           #c:Landroid/database/Cursor;
    .end local v22           #context:Landroid/content/Context;
    .end local v26           #lContactId:J
    .end local v38           #sbSelection:Ljava/lang/StringBuilder;
    :pswitch_2
    const/16 v4, 0x34

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->what:I

    if-ne v4, v6, :cond_10

    .line 2187
    const-string v4, "ContactsUtility"

    const-string v6, "MSG_DOWNLOAD_UPDATE"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2192
    :cond_e
    :goto_6
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Landroid/content/Context;

    .line 2193
    .restart local v22       #context:Landroid/content/Context;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v18

    .line 2194
    .local v18, bundle:Landroid/os/Bundle;
    if-eqz v22, :cond_0

    if-eqz v18, :cond_0

    .line 2195
    const-string v4, "raw_contact_id"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v28

    .line 2196
    .restart local v28       #lRawContactId:J
    const-string v4, "large_avatar_url"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2197
    .restart local v9       #sLargeAvatarUrl:Ljava/lang/String;
    const-wide/16 v6, 0x0

    cmp-long v4, v6, v28

    if-gez v4, :cond_0

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2199
    invoke-static {}, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->access$200()Landroid/net/http/AndroidHttpClient;

    move-result-object v4

    invoke-static {v9, v4}, Lcom/htc/util/contacts/ContactsUtility;->getFromRemote4(Ljava/lang/String;Landroid/net/http/AndroidHttpClient;)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 2200
    .local v17, bmPhoto:Landroid/graphics/Bitmap;
    if-nez v17, :cond_f

    .line 2201
    const-string v4, "ContactsUtility"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MSG_DOWNLOAD_UPDATE(INSERT) getFromRemote3 NULL! sLargeAvatarUrl: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2202
    const-string v4, "ContactsUtility"

    const-string v6, "MSG_DOWNLOAD_UPDATE(INSERT) getFromRemote3 NULL! use default photo!"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2203
    sget v4, Lcom/htc/util/contacts/PhotoUtils;->FULL_ICON_SIZE:I

    sget v6, Lcom/htc/util/contacts/PhotoUtils;->FULL_ICON_SIZE:I

    move-object/from16 v0, v22

    invoke-static {v0, v4, v6}, Lcom/htc/util/contacts/ContactsUtility;->getDefaultPeoplePhoto(Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 2204
    if-nez v17, :cond_f

    .line 2205
    const-string v4, "ContactsUtility"

    const-string v6, "MSG_DOWNLOAD_UPDATE(INSERT) getFromRemote3 NULL! use default photo! still NULL!!"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2208
    :cond_f
    if-eqz v17, :cond_0

    .line 2209
    const-string v4, "ContactsUtility"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MSG_DOWNLOAD_UPDATE(INSERT) bmPhoto W H:  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2212
    sget v4, Lcom/htc/util/contacts/PhotoUtils;->FULL_ICON_SIZE:I

    sget v6, Lcom/htc/util/contacts/PhotoUtils;->FULL_ICON_SIZE:I

    move-object/from16 v0, v17

    invoke-static {v0, v4, v6}, Lcom/htc/util/contacts/PhotoUtils;->getScaledCenterCropBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 2222
    if-nez v17, :cond_11

    .line 2223
    const-string v4, "ContactsUtility"

    const-string v6, "MSG_DOWNLOAD_UPDATE(INSERT) bmPhoto after getFacebookSquareBitmap null return "

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2188
    .end local v9           #sLargeAvatarUrl:Ljava/lang/String;
    .end local v17           #bmPhoto:Landroid/graphics/Bitmap;
    .end local v18           #bundle:Landroid/os/Bundle;
    .end local v22           #context:Landroid/content/Context;
    .end local v28           #lRawContactId:J
    :cond_10
    const/16 v4, 0x35

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->what:I

    if-ne v4, v6, :cond_e

    .line 2189
    const-string v4, "ContactsUtility"

    const-string v6, "MSG_DOWNLOAD_INSERT"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 2227
    .restart local v9       #sLargeAvatarUrl:Ljava/lang/String;
    .restart local v17       #bmPhoto:Landroid/graphics/Bitmap;
    .restart local v18       #bundle:Landroid/os/Bundle;
    .restart local v22       #context:Landroid/content/Context;
    .restart local v28       #lRawContactId:J
    :cond_11
    sget v4, Lcom/htc/util/contacts/PhotoUtils;->JPEG_QUALITY_50:I

    move-object/from16 v0, v17

    #calls: Lcom/htc/util/contacts/ContactsUtility;->getPhotoByteArray(Landroid/graphics/Bitmap;I)[B
    invoke-static {v0, v4}, Lcom/htc/util/contacts/ContactsUtility;->access$300(Landroid/graphics/Bitmap;I)[B

    move-result-object v20

    .line 2228
    .local v20, byteArrayPhoto:[B
    if-eqz v20, :cond_0

    .line 2229
    const-string v4, "ContactsUtility"

    const-string v6, "MSG_DOWNLOAD_UPDATE(INSERT) null != byteArrayPhoto"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2230
    new-instance v41, Landroid/content/ContentValues;

    invoke-direct/range {v41 .. v41}, Landroid/content/ContentValues;-><init>()V

    .line 2231
    .local v41, valuesDataPhoto:Landroid/content/ContentValues;
    const-string v4, "raw_contact_id"

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2232
    const-string v4, "mimetype"

    const-string v6, "vnd.android.cursor.item/photo"

    move-object/from16 v0, v41

    invoke-virtual {v0, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2233
    const-string v4, "data15"

    move-object/from16 v0, v41

    move-object/from16 v1, v20

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 2248
    const-string v4, "data7"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2249
    const-string v4, "data8"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2250
    const-string v4, "data9"

    move-object/from16 v0, v41

    invoke-virtual {v0, v4, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2252
    const/16 v4, 0x34

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->what:I

    if-ne v4, v6, :cond_13

    .line 2253
    const-string v4, "data_id"

    const-wide/16 v6, -0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v11

    .line 2254
    .restart local v11       #lDataId:J
    const-wide/16 v6, -0x1

    cmp-long v4, v6, v11

    if-gez v4, :cond_12

    .line 2255
    const-string v4, "ContactsUtility"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MSG_DOWNLOAD_UPDATE do lDataId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2257
    :try_start_0
    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v6, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    move-object/from16 v0, v41

    invoke-virtual {v4, v6, v0, v7, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2291
    .end local v11           #lDataId:J
    :cond_12
    :goto_7
    move-object/from16 v0, v22

    move-wide/from16 v1, v28

    invoke-static {v0, v1, v2}, Lcom/htc/util/contacts/ContactsUtility;->getContactId(Landroid/content/Context;J)J

    move-result-wide v26

    .line 2292
    .restart local v26       #lContactId:J
    move-object/from16 v0, v22

    move-wide/from16 v1, v26

    #calls: Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->broadcastFavoriteChangeIntent(Landroid/content/Context;J)V
    invoke-static {v0, v1, v2}, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->access$400(Landroid/content/Context;J)V

    goto/16 :goto_0

    .line 2258
    .end local v26           #lContactId:J
    .restart local v11       #lDataId:J
    :catch_0
    move-exception v23

    .line 2259
    .local v23, e:Landroid/database/sqlite/SQLiteDiskIOException;
    const-string v4, "ContactsUtility"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "update sn photo fail:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 2260
    .end local v23           #e:Landroid/database/sqlite/SQLiteDiskIOException;
    :catch_1
    move-exception v23

    .line 2261
    .local v23, e:Landroid/database/sqlite/SQLiteException;
    const-string v4, "ContactsUtility"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "update sn photo fail:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 2264
    .end local v11           #lDataId:J
    .end local v23           #e:Landroid/database/sqlite/SQLiteException;
    :cond_13
    const/16 v4, 0x35

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->what:I

    if-ne v4, v6, :cond_12

    .line 2265
    const-string v4, "ContactsUtility"

    const-string v6, "MSG_DOWNLOAD_INSERT do"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2269
    new-instance v19, Landroid/os/Bundle;

    invoke-direct/range {v19 .. v19}, Landroid/os/Bundle;-><init>()V

    .line 2270
    .local v19, bundleData:Landroid/os/Bundle;
    move-object/from16 v0, v22

    move-wide/from16 v1, v28

    move-object/from16 v3, v19

    invoke-static {v0, v1, v2, v3}, Lcom/htc/util/contacts/ContactsUtility;->isRawContactHasPhoto(Landroid/content/Context;JLandroid/os/Bundle;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 2271
    const-string v4, "data_id"

    const-wide/16 v6, -0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v11

    .line 2272
    .restart local v11       #lDataId:J
    const-string v4, "ContactsUtility"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MSG_DOWNLOAD_INSERT insert changed to update!!! lDataId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2274
    :try_start_1
    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v6, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    move-object/from16 v0, v41

    invoke-virtual {v4, v6, v0, v7, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_3

    goto/16 :goto_7

    .line 2275
    :catch_2
    move-exception v23

    .line 2276
    .local v23, e:Landroid/database/sqlite/SQLiteDiskIOException;
    const-string v4, "ContactsUtility"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "update sn photo fail:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 2277
    .end local v23           #e:Landroid/database/sqlite/SQLiteDiskIOException;
    :catch_3
    move-exception v23

    .line 2278
    .local v23, e:Landroid/database/sqlite/SQLiteException;
    const-string v4, "ContactsUtility"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "update sn photo fail:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 2281
    .end local v11           #lDataId:J
    .end local v23           #e:Landroid/database/sqlite/SQLiteException;
    :cond_14
    const-string v4, "ContactsUtility"

    const-string v6, "MSG_DOWNLOAD_INSERT do still insert"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2283
    :try_start_2
    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v6, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v41

    invoke-virtual {v4, v6, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_5

    goto/16 :goto_7

    .line 2284
    :catch_4
    move-exception v23

    .line 2285
    .local v23, e:Landroid/database/sqlite/SQLiteDiskIOException;
    const-string v4, "ContactsUtility"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "insert sn photo fail:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 2286
    .end local v23           #e:Landroid/database/sqlite/SQLiteDiskIOException;
    :catch_5
    move-exception v23

    .line 2287
    .local v23, e:Landroid/database/sqlite/SQLiteException;
    const-string v4, "ContactsUtility"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "insert sn photo fail:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 2299
    .end local v9           #sLargeAvatarUrl:Ljava/lang/String;
    .end local v17           #bmPhoto:Landroid/graphics/Bitmap;
    .end local v18           #bundle:Landroid/os/Bundle;
    .end local v19           #bundleData:Landroid/os/Bundle;
    .end local v20           #byteArrayPhoto:[B
    .end local v22           #context:Landroid/content/Context;
    .end local v23           #e:Landroid/database/sqlite/SQLiteException;
    .end local v28           #lRawContactId:J
    .end local v41           #valuesDataPhoto:Landroid/content/ContentValues;
    :pswitch_3
    const-string v4, "ContactsUtility"

    const-string v6, "MSG_FAVORITE_CHANGE"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2300
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    int-to-long v0, v4

    move-wide/from16 v26, v0

    .line 2301
    .restart local v26       #lContactId:J
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Landroid/content/Context;

    .line 2302
    .restart local v22       #context:Landroid/content/Context;
    const-wide/16 v6, 0x0

    cmp-long v4, v6, v26

    if-gez v4, :cond_0

    if-eqz v22, :cond_0

    .line 2303
    const-string v4, "ContactsUtility"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MSG_FAVORITE_CHANGE lContactId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v26

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2304
    new-instance v25, Landroid/content/Intent;

    const-string v4, "anddroid.intent.action.FAVORITE_CHANGE"

    move-object/from16 v0, v25

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2305
    .local v25, intent:Landroid/content/Intent;
    const-string v4, "contact_id"

    move-object/from16 v0, v25

    move-wide/from16 v1, v26

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2306
    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2311
    .end local v22           #context:Landroid/content/Context;
    .end local v25           #intent:Landroid/content/Intent;
    .end local v26           #lContactId:J
    :pswitch_4
    const-string v4, "ContactsUtility"

    const-string v6, "MSG_CHECK_DOWNLOAD_ORIGINAL_FACEBOOK_LARGE_PHOTO"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2312
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Landroid/content/Context;

    .line 2313
    .restart local v22       #context:Landroid/content/Context;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v18

    .line 2314
    .restart local v18       #bundle:Landroid/os/Bundle;
    if-eqz v22, :cond_0

    if-eqz v18, :cond_0

    .line 2315
    const-string v4, "_id"

    const-wide/16 v6, -0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v34

    .line 2316
    .local v34, rawContactId:J
    const-string v4, "sourceid"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    .line 2317
    .local v40, sourceId:Ljava/lang/String;
    const-wide/16 v6, 0x0

    cmp-long v4, v6, v34

    if-gez v4, :cond_0

    invoke-static/range {v40 .. v40}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2318
    move-wide/from16 v0, v34

    move-object/from16 v2, v40

    move-object/from16 v3, v22

    #calls: Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->doDownloadOriginalFacebookLargePhoto(JLjava/lang/String;Landroid/content/Context;)V
    invoke-static {v0, v1, v2, v3}, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->access$500(JLjava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_0

    .line 2323
    .end local v18           #bundle:Landroid/os/Bundle;
    .end local v22           #context:Landroid/content/Context;
    .end local v34           #rawContactId:J
    .end local v40           #sourceId:Ljava/lang/String;
    :pswitch_5
    const-string v4, "ContactsUtility"

    const-string v6, "MSG_DOWNLOAD_ORIGINAL_FACEBOOK_LARGE_PHOTO"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2324
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Landroid/content/Context;

    .line 2325
    .restart local v22       #context:Landroid/content/Context;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v18

    .line 2326
    .restart local v18       #bundle:Landroid/os/Bundle;
    if-eqz v22, :cond_0

    if-eqz v18, :cond_0

    .line 2328
    const-string v4, "SocialServiceManager"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v31

    check-cast v31, Landroid/os/Message;

    .line 2329
    .local v31, objMsg:Landroid/os/Message;
    if-eqz v31, :cond_0

    .line 2330
    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Lcom/htc/opensense/social/SocialServiceManager;

    .line 2331
    .local v39, serviceManager:Lcom/htc/opensense/social/SocialServiceManager;
    if-eqz v39, :cond_0

    .line 2332
    const-string v4, "sourceid"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    .line 2333
    .restart local v40       #sourceId:Ljava/lang/String;
    invoke-static/range {v40 .. v40}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2335
    const/4 v4, 0x1

    :try_start_3
    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v40, v4, v6

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Lcom/htc/opensense/social/SocialServiceManager;->getPersonOps([Ljava/lang/String;)Ljava/util/List;

    move-result-object v32

    .line 2336
    .local v32, people:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/PersonOp;>;"
    const/16 v30, 0x0

    .line 2337
    .local v30, largeBuddyIconUrl:Ljava/lang/String;
    invoke-interface/range {v32 .. v32}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .restart local v24       #i$:Ljava/util/Iterator;
    :goto_8
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_15

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/htc/opensense/social/PersonOp;

    .line 2338
    .local v33, person:Lcom/htc/opensense/social/PersonOp;
    invoke-virtual/range {v33 .. v33}, Lcom/htc/opensense/social/PersonOp;->getData()Lcom/htc/opensense/social/data/Person;

    move-result-object v4

    iget-object v0, v4, Lcom/htc/opensense/social/data/Person;->largeBuddyIconUrl:Ljava/lang/String;

    move-object/from16 v30, v0

    .line 2339
    const-string v4, "ContactsUtility"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "downloadOriginalFacebookLargePhoto Large avatar:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v30

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException; {:try_start_3 .. :try_end_3} :catch_6

    goto :goto_8

    .line 2344
    .end local v24           #i$:Ljava/util/Iterator;
    .end local v30           #largeBuddyIconUrl:Ljava/lang/String;
    .end local v32           #people:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/PersonOp;>;"
    .end local v33           #person:Lcom/htc/opensense/social/PersonOp;
    :catch_6
    move-exception v23

    .line 2345
    .local v23, e:Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;
    invoke-virtual/range {v23 .. v23}, Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;->printStackTrace()V

    .line 2346
    const-string v4, "ContactsUtility"

    const-string v6, "error"

    move-object/from16 v0, v23

    invoke-static {v4, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 2341
    .end local v23           #e:Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;
    .restart local v24       #i$:Ljava/util/Iterator;
    .restart local v30       #largeBuddyIconUrl:Ljava/lang/String;
    .restart local v32       #people:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/PersonOp;>;"
    :cond_15
    :try_start_4
    invoke-static/range {v30 .. v30}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2342
    const-string v4, "_id"

    const-wide/16 v6, -0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    move-object/from16 v0, v40

    move-object/from16 v1, v22

    move-object/from16 v2, v30

    #calls: Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->doDownloadOriginalFacebookLargePhoto(JLjava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {v6, v7, v0, v1, v2}, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->access$600(JLjava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    :try_end_4
    .catch Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException; {:try_start_4 .. :try_end_4} :catch_6

    goto/16 :goto_0

    .line 2353
    .end local v18           #bundle:Landroid/os/Bundle;
    .end local v22           #context:Landroid/content/Context;
    .end local v24           #i$:Ljava/util/Iterator;
    .end local v30           #largeBuddyIconUrl:Ljava/lang/String;
    .end local v31           #objMsg:Landroid/os/Message;
    .end local v32           #people:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/PersonOp;>;"
    .end local v39           #serviceManager:Lcom/htc/opensense/social/SocialServiceManager;
    .end local v40           #sourceId:Ljava/lang/String;
    :pswitch_6
    #calls: Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->endHandler()V
    invoke-static {}, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->access$700()V

    goto/16 :goto_0

    .line 2091
    :pswitch_data_0
    .packed-switch 0x32
        :pswitch_6
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
