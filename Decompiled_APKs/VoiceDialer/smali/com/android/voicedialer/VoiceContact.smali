.class public Lcom/android/voicedialer/VoiceContact;
.super Ljava/lang/Object;
.source "VoiceContact.java"


# static fields
.field public static final ID_UNDEFINED:J = -0x1L

.field private static final TAG:Ljava/lang/String; = "VoiceContact"


# instance fields
.field public final mContactId:J

.field public final mHomeId:J

.field public final mMobileId:J

.field public final mName:Ljava/lang/String;

.field public final mOtherId:J

.field public final mPrimaryId:J

.field public final mWorkId:J


# direct methods
.method private constructor <init>(Ljava/lang/String;JJJJJJ)V
    .locals 0
    .parameter "name"
    .parameter "contactId"
    .parameter "primaryId"
    .parameter "homeId"
    .parameter "mobileId"
    .parameter "workId"
    .parameter "otherId"

    .prologue
    .line 66
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/android/voicedialer/VoiceContact;->mName:Ljava/lang/String;

    .line 68
    iput-wide p2, p0, Lcom/android/voicedialer/VoiceContact;->mContactId:J

    .line 69
    iput-wide p4, p0, Lcom/android/voicedialer/VoiceContact;->mPrimaryId:J

    .line 70
    iput-wide p6, p0, Lcom/android/voicedialer/VoiceContact;->mHomeId:J

    .line 71
    iput-wide p8, p0, Lcom/android/voicedialer/VoiceContact;->mMobileId:J

    .line 72
    iput-wide p10, p0, Lcom/android/voicedialer/VoiceContact;->mWorkId:J

    .line 73
    iput-wide p12, p0, Lcom/android/voicedialer/VoiceContact;->mOtherId:J

    .line 74
    return-void
.end method

.method public static getVoiceContacts(Landroid/app/Activity;)Ljava/util/List;
    .locals 37
    .parameter "activity"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/voicedialer/VoiceContact;",
            ">;"
        }
    .end annotation

    .prologue
    .line 106
    const-string v2, "VoiceContact"

    const-string v3, "VoiceContact.getVoiceContacts"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 110
    .local v19, contacts:Ljava/util/List;,"Ljava/util/List<Lcom/android/voicedialer/VoiceContact;>;"
    const/4 v2, 0x6

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "data2"

    aput-object v3, v4, v2

    const/4 v2, 0x2

    const-string v3, "is_primary"

    aput-object v3, v4, v2

    const/4 v2, 0x3

    const-string v3, "data3"

    aput-object v3, v4, v2

    const/4 v2, 0x4

    const-string v3, "display_name"

    aput-object v3, v4, v2

    const/4 v2, 0x5

    const-string v3, "contact_id"

    aput-object v3, v4, v2

    .line 122
    .local v4, phonesProjection:[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "data1 NOT NULL"

    const/4 v6, 0x0

    const-string v7, "last_time_contacted DESC, display_name ASC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 127
    .local v20, cursor:Landroid/database/Cursor;
    const-string v2, "_id"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v34

    .line 128
    .local v34, phoneIdColumn:I
    const-string v2, "data2"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v36

    .line 129
    .local v36, typeColumn:I
    const-string v2, "is_primary"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    .line 130
    .local v23, isPrimaryColumn:I
    const-string v2, "data3"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v26

    .line 131
    .local v26, labelColumn:I
    const-string v2, "display_name"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v28

    .line 132
    .local v28, nameColumn:I
    const-string v2, "contact_id"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v31

    .line 135
    .local v31, personIdColumn:I
    const/4 v6, 0x0

    .line 136
    .local v6, name:Ljava/lang/String;
    const-wide/16 v7, -0x1

    .line 137
    .local v7, personId:J
    const-wide/16 v9, -0x1

    .line 138
    .local v9, primaryId:J
    const-wide/16 v11, -0x1

    .line 139
    .local v11, homeId:J
    const-wide/16 v13, -0x1

    .line 140
    .local v13, mobileId:J
    const-wide/16 v15, -0x1

    .line 141
    .local v15, workId:J
    const-wide/16 v17, -0x1

    .line 144
    .local v17, otherId:J
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_a

    .line 145
    move-object/from16 v0, v20

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v32

    .line 146
    .local v32, phoneIdAtCursor:J
    move-object/from16 v0, v20

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v35

    .line 147
    .local v35, typeAtCursor:I
    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    .line 148
    .local v21, isPrimaryAtCursor:J
    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 149
    .local v25, labelAtCursor:Ljava/lang/String;
    move-object/from16 v0, v20

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 150
    .local v27, nameAtCursor:Ljava/lang/String;
    move-object/from16 v0, v20

    move/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v29

    .line 165
    .local v29, personIdAtCursor:J
    if-eqz v6, :cond_0

    move-object/from16 v0, v27

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 166
    new-instance v5, Lcom/android/voicedialer/VoiceContact;

    invoke-direct/range {v5 .. v18}, Lcom/android/voicedialer/VoiceContact;-><init>(Ljava/lang/String;JJJJJJ)V

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    const/4 v6, 0x0

    .line 172
    :cond_0
    if-nez v6, :cond_1

    .line 173
    move-object/from16 v6, v27

    .line 174
    move-wide/from16 v7, v29

    .line 175
    const-wide/16 v9, -0x1

    .line 176
    const-wide/16 v11, -0x1

    .line 177
    const-wide/16 v13, -0x1

    .line 178
    const-wide/16 v15, -0x1

    .line 179
    const-wide/16 v17, -0x1

    .line 183
    :cond_1
    if-nez v35, :cond_3

    if-eqz v25, :cond_3

    .line 185
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v24

    .line 186
    .local v24, label:Ljava/lang/String;
    const-string v2, "home"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "house"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 187
    :cond_2
    const/16 v35, 0x1

    .line 201
    .end local v24           #label:Ljava/lang/String;
    :cond_3
    :goto_1
    packed-switch v35, :pswitch_data_0

    .line 144
    :cond_4
    :goto_2
    :pswitch_0
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 189
    .restart local v24       #label:Ljava/lang/String;
    :cond_5
    const-string v2, "mobile"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "cell"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 190
    :cond_6
    const/16 v35, 0x2

    goto :goto_1

    .line 192
    :cond_7
    const-string v2, "work"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "office"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 193
    :cond_8
    const/16 v35, 0x3

    goto :goto_1

    .line 195
    :cond_9
    const-string v2, "other"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 196
    const/16 v35, 0x7

    goto :goto_1

    .line 203
    .end local v24           #label:Ljava/lang/String;
    :pswitch_1
    move-wide/from16 v11, v32

    .line 204
    const-wide/16 v2, 0x0

    cmp-long v2, v21, v2

    if-eqz v2, :cond_4

    .line 205
    move-wide/from16 v9, v32

    goto :goto_2

    .line 209
    :pswitch_2
    move-wide/from16 v13, v32

    .line 210
    const-wide/16 v2, 0x0

    cmp-long v2, v21, v2

    if-eqz v2, :cond_4

    .line 211
    move-wide/from16 v9, v32

    goto :goto_2

    .line 215
    :pswitch_3
    move-wide/from16 v15, v32

    .line 216
    const-wide/16 v2, 0x0

    cmp-long v2, v21, v2

    if-eqz v2, :cond_4

    .line 217
    move-wide/from16 v9, v32

    goto :goto_2

    .line 221
    :pswitch_4
    move-wide/from16 v17, v32

    .line 222
    const-wide/16 v2, 0x0

    cmp-long v2, v21, v2

    if-eqz v2, :cond_4

    .line 223
    move-wide/from16 v9, v32

    goto :goto_2

    .line 230
    .end local v21           #isPrimaryAtCursor:J
    .end local v25           #labelAtCursor:Ljava/lang/String;
    .end local v27           #nameAtCursor:Ljava/lang/String;
    .end local v29           #personIdAtCursor:J
    .end local v32           #phoneIdAtCursor:J
    .end local v35           #typeAtCursor:I
    :cond_a
    if-eqz v6, :cond_b

    .line 231
    new-instance v5, Lcom/android/voicedialer/VoiceContact;

    invoke-direct/range {v5 .. v18}, Lcom/android/voicedialer/VoiceContact;-><init>(Ljava/lang/String;JJJJJJ)V

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    :cond_b
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 238
    const-string v2, "VoiceContact"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VoiceContact.getVoiceContacts "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    return-object v19

    .line 201
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public static getVoiceContactsFromFile(Ljava/io/File;)Ljava/util/List;
    .locals 20
    .parameter "contactsFile"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/voicedialer/VoiceContact;",
            ">;"
        }
    .end annotation

    .prologue
    .line 249
    const-string v1, "VoiceContact"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getVoiceContactsFromFile "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 254
    .local v17, contacts:Ljava/util/List;,"Ljava/util/List<Lcom/android/voicedialer/VoiceContact;>;"
    const/4 v15, 0x0

    .line 256
    .local v15, br:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v16, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    const/16 v3, 0x2000

    move-object/from16 v0, v16

    invoke-direct {v0, v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    .end local v15           #br:Ljava/io/BufferedReader;
    .local v16, br:Ljava/io/BufferedReader;
    const/16 v19, 0x1

    .local v19, id:I
    :goto_0
    :try_start_1
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .local v2, name:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 259
    new-instance v1, Lcom/android/voicedialer/VoiceContact;

    move/from16 v0, v19

    int-to-long v3, v0

    const-wide/16 v5, -0x1

    const-wide/16 v7, -0x1

    const-wide/16 v9, -0x1

    const-wide/16 v11, -0x1

    const-wide/16 v13, -0x1

    invoke-direct/range {v1 .. v14}, Lcom/android/voicedialer/VoiceContact;-><init>(Ljava/lang/String;JJJJJJ)V

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 258
    add-int/lit8 v19, v19, 0x1

    goto :goto_0

    .line 268
    :cond_0
    if-eqz v16, :cond_1

    .line 269
    :try_start_2
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_1
    :goto_1
    move-object/from16 v15, v16

    .line 275
    .end local v2           #name:Ljava/lang/String;
    .end local v16           #br:Ljava/io/BufferedReader;
    .end local v19           #id:I
    .restart local v15       #br:Ljava/io/BufferedReader;
    :cond_2
    :goto_2
    const-string v1, "VoiceContact"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getVoiceContactsFromFile "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    return-object v17

    .line 263
    :catch_0
    move-exception v18

    .line 264
    .local v18, e:Ljava/io/IOException;
    :goto_3
    :try_start_3
    const-string v1, "VoiceContact"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getVoiceContactsFromFile failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 268
    if-eqz v15, :cond_2

    .line 269
    :try_start_4
    invoke-virtual {v15}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 270
    :catch_1
    move-exception v18

    .line 271
    const-string v1, "VoiceContact"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getVoiceContactsFromFile failed during close "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 267
    .end local v18           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v1

    .line 268
    :goto_4
    if-eqz v15, :cond_3

    .line 269
    :try_start_5
    invoke-virtual {v15}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 267
    :cond_3
    :goto_5
    throw v1

    .line 270
    :catch_2
    move-exception v18

    .line 271
    .restart local v18       #e:Ljava/io/IOException;
    const-string v3, "VoiceContact"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getVoiceContactsFromFile failed during close "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 270
    .end local v15           #br:Ljava/io/BufferedReader;
    .end local v18           #e:Ljava/io/IOException;
    .restart local v2       #name:Ljava/lang/String;
    .restart local v16       #br:Ljava/io/BufferedReader;
    .restart local v19       #id:I
    :catch_3
    move-exception v18

    .line 271
    .restart local v18       #e:Ljava/io/IOException;
    const-string v1, "VoiceContact"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getVoiceContactsFromFile failed during close "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 267
    .end local v2           #name:Ljava/lang/String;
    .end local v18           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v1

    move-object/from16 v15, v16

    .end local v16           #br:Ljava/io/BufferedReader;
    .restart local v15       #br:Ljava/io/BufferedReader;
    goto :goto_4

    .line 263
    .end local v15           #br:Ljava/io/BufferedReader;
    .restart local v16       #br:Ljava/io/BufferedReader;
    :catch_4
    move-exception v18

    move-object/from16 v15, v16

    .end local v16           #br:Ljava/io/BufferedReader;
    .restart local v15       #br:Ljava/io/BufferedReader;
    goto/16 :goto_3
.end method

.method public static redialNumber(Landroid/app/Activity;)Ljava/lang/String;
    .locals 10
    .parameter "activity"

    .prologue
    const/4 v9, 0x1

    .line 285
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v9, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "number"

    aput-object v4, v2, v3

    const-string v3, "type=2"

    const/4 v4, 0x0

    const-string v5, "date DESC LIMIT 1"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 291
    .local v7, cursor:Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 292
    .local v8, number:Ljava/lang/String;
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lt v0, v9, :cond_0

    .line 293
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    .line 294
    const-string v0, "number"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 295
    .local v6, column:I
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 297
    .end local v6           #column:I
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 299
    const-string v0, "VoiceContact"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "redialNumber "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    return-object v8
.end method


# virtual methods
.method public hashCode()I
    .locals 5

    .prologue
    const v4, 0x60000005

    .line 78
    const v0, 0x60000005

    .line 79
    .local v0, LARGE_PRIME:I
    const/4 v1, 0x0

    .line 80
    .local v1, hash:I
    iget-wide v2, p0, Lcom/android/voicedialer/VoiceContact;->mContactId:J

    long-to-int v2, v2

    add-int/2addr v2, v1

    mul-int v1, v4, v2

    .line 81
    iget-wide v2, p0, Lcom/android/voicedialer/VoiceContact;->mPrimaryId:J

    long-to-int v2, v2

    add-int/2addr v2, v1

    mul-int v1, v4, v2

    .line 82
    iget-wide v2, p0, Lcom/android/voicedialer/VoiceContact;->mHomeId:J

    long-to-int v2, v2

    add-int/2addr v2, v1

    mul-int v1, v4, v2

    .line 83
    iget-wide v2, p0, Lcom/android/voicedialer/VoiceContact;->mMobileId:J

    long-to-int v2, v2

    add-int/2addr v2, v1

    mul-int v1, v4, v2

    .line 84
    iget-wide v2, p0, Lcom/android/voicedialer/VoiceContact;->mWorkId:J

    long-to-int v2, v2

    add-int/2addr v2, v1

    mul-int v1, v4, v2

    .line 85
    iget-wide v2, p0, Lcom/android/voicedialer/VoiceContact;->mOtherId:J

    long-to-int v2, v2

    add-int/2addr v2, v1

    mul-int v1, v4, v2

    .line 86
    iget-object v2, p0, Lcom/android/voicedialer/VoiceContact;->mName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v2, v1

    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/voicedialer/VoiceContact;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mPersonId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/voicedialer/VoiceContact;->mContactId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mPrimaryId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/voicedialer/VoiceContact;->mPrimaryId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mHomeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/voicedialer/VoiceContact;->mHomeId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mMobileId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/voicedialer/VoiceContact;->mMobileId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mWorkId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/voicedialer/VoiceContact;->mWorkId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mOtherId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/voicedialer/VoiceContact;->mOtherId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
