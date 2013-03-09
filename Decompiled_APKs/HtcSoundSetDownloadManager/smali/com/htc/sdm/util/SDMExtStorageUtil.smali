.class public Lcom/htc/sdm/util/SDMExtStorageUtil;
.super Ljava/lang/Object;
.source "SDMExtStorageUtil.java"


# static fields
.field private static final LOG_FLAG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "SDM"

.field private static final PREFIX:Ljava/lang/String; = "[SDMExtStorageUtil] "


# instance fields
.field private mExternalStorageWriteable:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sdm/util/SDMExtStorageUtil;->mExternalStorageWriteable:Z

    return-void
.end method

.method private updateExternalStorageState()V
    .locals 2

    .prologue
    .line 31
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 32
    .local v0, state:Ljava/lang/String;
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 34
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/sdm/util/SDMExtStorageUtil;->mExternalStorageWriteable:Z

    .line 40
    :goto_0
    return-void

    .line 38
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/sdm/util/SDMExtStorageUtil;->mExternalStorageWriteable:Z

    goto :goto_0
.end method


# virtual methods
.method public WriteSoundToSDCard(Landroid/content/Context;Landroid/net/Uri;ILjava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 23
    .parameter "context"
    .parameter "inputUri"
    .parameter "refID"
    .parameter "filename"
    .parameter "displayname"

    .prologue
    .line 115
    const/16 v20, 0x0

    .line 116
    .local v20, soundUri:Landroid/net/Uri;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 118
    .local v7, cr:Landroid/content/ContentResolver;
    const/4 v13, 0x0

    .line 119
    .local v13, fos:Ljava/io/FileOutputStream;
    const/4 v11, 0x0

    .line 123
    .local v11, fis:Ljava/io/FileInputStream;
    const/4 v9, 0x0

    .line 124
    .local v9, ext_dir:Ljava/io/File;
    const/4 v15, 0x0

    .line 125
    .local v15, out_dir:Ljava/io/File;
    const/16 v17, 0x0

    .line 126
    .local v17, out_file:Ljava/io/File;
    const/4 v10, 0x0

    .line 127
    .local v10, fd:Ljava/io/FileDescriptor;
    const/16 v19, 0x0

    .line 129
    .local v19, pfd:Landroid/os/ParcelFileDescriptor;
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/htc/sdm/util/SDMExtStorageUtil;->updateExternalStorageState()V

    .line 132
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/sdm/util/SDMExtStorageUtil;->mExternalStorageWriteable:Z

    move/from16 v21, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    if-nez v21, :cond_2

    .line 135
    const/16 v20, 0x0

    .line 219
    .end local v20           #soundUri:Landroid/net/Uri;
    if-eqz v11, :cond_0

    .line 224
    :try_start_1
    throw v11
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 232
    :cond_0
    :goto_0
    if-eqz v13, :cond_1

    .line 237
    :try_start_2
    throw v13
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    .line 247
    :cond_1
    :goto_1
    return-object v20

    .line 139
    .restart local v20       #soundUri:Landroid/net/Uri;
    :cond_2
    :try_start_3
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v9

    .line 142
    if-eqz v9, :cond_a

    .line 144
    const-string v21, "r"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v19

    .line 151
    if-eqz v19, :cond_3

    .line 153
    invoke-virtual/range {v19 .. v19}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v10

    .line 155
    :cond_3
    if-eqz v10, :cond_4

    .line 157
    new-instance v12, Ljava/io/FileInputStream;

    invoke-direct {v12, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .end local v11           #fis:Ljava/io/FileInputStream;
    .local v12, fis:Ljava/io/FileInputStream;
    move-object v11, v12

    .line 159
    .end local v12           #fis:Ljava/io/FileInputStream;
    .restart local v11       #fis:Ljava/io/FileInputStream;
    :cond_4
    if-eqz v11, :cond_5

    .line 163
    packed-switch p3, :pswitch_data_0

    .line 180
    new-instance v16, Ljava/io/File;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "/media/HTC"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .end local v15           #out_dir:Ljava/io/File;
    .local v16, out_dir:Ljava/io/File;
    move-object/from16 v15, v16

    .line 184
    .end local v16           #out_dir:Ljava/io/File;
    .restart local v15       #out_dir:Ljava/io/File;
    :goto_2
    invoke-virtual {v15}, Ljava/io/File;->mkdirs()Z

    .line 186
    :cond_5
    if-eqz v15, :cond_6

    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v21

    if-eqz v21, :cond_6

    .line 188
    new-instance v18, Ljava/io/File;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .end local v17           #out_file:Ljava/io/File;
    .local v18, out_file:Ljava/io/File;
    move-object/from16 v17, v18

    .line 190
    .end local v18           #out_file:Ljava/io/File;
    .restart local v17       #out_file:Ljava/io/File;
    :cond_6
    if-eqz v17, :cond_7

    .line 192
    new-instance v14, Ljava/io/FileOutputStream;

    move-object/from16 v0, v17

    invoke-direct {v14, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .end local v13           #fos:Ljava/io/FileOutputStream;
    .local v14, fos:Ljava/io/FileOutputStream;
    move-object v13, v14

    .line 194
    .end local v14           #fos:Ljava/io/FileOutputStream;
    .restart local v13       #fos:Ljava/io/FileOutputStream;
    :cond_7
    if-eqz v13, :cond_8

    .line 196
    const/16 v21, 0x1000

    move/from16 v0, v21

    new-array v5, v0, [B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    .line 200
    .local v5, buffer:[B
    :goto_3
    :try_start_4
    invoke-virtual {v11, v5}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    .local v6, bytes_read:I
    const/16 v21, -0x1

    move/from16 v0, v21

    if-eq v6, v0, :cond_c

    .line 201
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v13, v5, v0, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    .line 207
    .end local v6           #bytes_read:I
    :catch_0
    move-exception v8

    .line 209
    .local v8, e:Ljava/io/IOException;
    :try_start_5
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_3

    .line 219
    .end local v5           #buffer:[B
    .end local v8           #e:Ljava/io/IOException;
    :cond_8
    :goto_4
    if-eqz v11, :cond_9

    .line 224
    :try_start_6
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8

    .line 232
    :cond_9
    :goto_5
    if-eqz v13, :cond_1

    .line 237
    :try_start_7
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_1

    .line 239
    :catch_1
    move-exception v21

    goto/16 :goto_1

    .line 149
    :cond_a
    const/16 v20, 0x0

    .line 219
    .end local v20           #soundUri:Landroid/net/Uri;
    if-eqz v11, :cond_b

    .line 224
    :try_start_8
    throw v11
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 232
    :cond_b
    :goto_6
    if-eqz v13, :cond_1

    .line 237
    :try_start_9
    throw v13
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    goto/16 :goto_1

    .line 239
    :catch_2
    move-exception v21

    goto/16 :goto_1

    .line 166
    .restart local v20       #soundUri:Landroid/net/Uri;
    :pswitch_0
    :try_start_a
    new-instance v16, Ljava/io/File;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "/Ringtones"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .end local v15           #out_dir:Ljava/io/File;
    .restart local v16       #out_dir:Ljava/io/File;
    move-object/from16 v15, v16

    .line 167
    .end local v16           #out_dir:Ljava/io/File;
    .restart local v15       #out_dir:Ljava/io/File;
    goto/16 :goto_2

    .line 174
    :pswitch_1
    new-instance v16, Ljava/io/File;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "/Notifications"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .end local v15           #out_dir:Ljava/io/File;
    .restart local v16       #out_dir:Ljava/io/File;
    move-object/from16 v15, v16

    .line 175
    .end local v16           #out_dir:Ljava/io/File;
    .restart local v15       #out_dir:Ljava/io/File;
    goto/16 :goto_2

    .line 177
    :pswitch_2
    new-instance v16, Ljava/io/File;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "/Alarms"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_3

    .end local v15           #out_dir:Ljava/io/File;
    .restart local v16       #out_dir:Ljava/io/File;
    move-object/from16 v15, v16

    .line 178
    .end local v16           #out_dir:Ljava/io/File;
    .restart local v15       #out_dir:Ljava/io/File;
    goto/16 :goto_2

    .line 204
    .restart local v5       #buffer:[B
    .restart local v6       #bytes_read:I
    :cond_c
    :try_start_b
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    move/from16 v3, p3

    move-object/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/sdm/util/SDMExtStorageUtil;->regMediaStore(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Landroid/net/Uri;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_3

    goto/16 :goto_4

    .line 213
    .end local v5           #buffer:[B
    .end local v6           #bytes_read:I
    :catch_3
    move-exception v8

    .line 215
    .local v8, e:Ljava/io/FileNotFoundException;
    :try_start_c
    invoke-virtual {v8}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 219
    if-eqz v11, :cond_d

    .line 224
    :try_start_d
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    .line 232
    :cond_d
    :goto_7
    if-eqz v13, :cond_1

    .line 237
    :try_start_e
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_4

    goto/16 :goto_1

    .line 239
    :catch_4
    move-exception v21

    goto/16 :goto_1

    .line 219
    .end local v8           #e:Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v21

    if-eqz v11, :cond_e

    .line 224
    :try_start_f
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_a

    .line 232
    :cond_e
    :goto_8
    if-eqz v13, :cond_f

    .line 237
    :try_start_10
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_b

    .line 242
    :cond_f
    :goto_9
    throw v21

    .line 226
    .end local v20           #soundUri:Landroid/net/Uri;
    :catch_5
    move-exception v21

    goto/16 :goto_0

    .line 239
    :catch_6
    move-exception v21

    goto/16 :goto_1

    .line 226
    :catch_7
    move-exception v21

    goto/16 :goto_6

    .restart local v20       #soundUri:Landroid/net/Uri;
    :catch_8
    move-exception v21

    goto/16 :goto_5

    .restart local v8       #e:Ljava/io/FileNotFoundException;
    :catch_9
    move-exception v21

    goto :goto_7

    .end local v8           #e:Ljava/io/FileNotFoundException;
    :catch_a
    move-exception v22

    goto :goto_8

    .line 239
    :catch_b
    move-exception v22

    goto :goto_9

    .line 163
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public regMediaStore(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Landroid/net/Uri;
    .locals 9
    .parameter "context"
    .parameter "displayname"
    .parameter "refID"
    .parameter "path"

    .prologue
    const/4 v5, 0x1

    .line 44
    const/4 v7, 0x0

    .line 45
    .local v7, soundUri:Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 46
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 47
    .local v8, values:Landroid/content/ContentValues;
    const-string v2, "_display_name"

    invoke-virtual {v8, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string v2, "title"

    invoke-virtual {v8, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const-string v2, "_data"

    invoke-virtual {v8, v2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const-string v2, "mime_type"

    const-string v4, "audio/mp3"

    invoke-virtual {v8, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    packed-switch p3, :pswitch_data_0

    .line 72
    :goto_0
    invoke-static {p4}, Landroid/provider/MediaStore$Audio$Media;->getContentUriForPath(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 74
    .local v1, uri:Landroid/net/Uri;
    if-eqz v1, :cond_0

    .line 76
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_data=\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 77
    .local v3, src:Ljava/lang/String;
    const/4 v6, 0x0

    .line 81
    .local v6, c:Landroid/database/Cursor;
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 82
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 84
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 87
    invoke-virtual {v0, v1, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 100
    :goto_1
    if-eqz v6, :cond_0

    .line 102
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 108
    .end local v3           #src:Ljava/lang/String;
    .end local v6           #c:Landroid/database/Cursor;
    :cond_0
    return-object v7

    .line 54
    .end local v1           #uri:Landroid/net/Uri;
    :pswitch_0
    const-string v2, "is_ringtone"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v8, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 63
    :pswitch_1
    const-string v2, "is_notification"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v8, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 66
    :pswitch_2
    const-string v2, "is_alarm"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v8, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 93
    .restart local v1       #uri:Landroid/net/Uri;
    .restart local v3       #src:Ljava/lang/String;
    .restart local v6       #c:Landroid/database/Cursor;
    :cond_1
    :try_start_1
    invoke-virtual {v0, v1, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v7

    goto :goto_1

    .line 100
    :catchall_0
    move-exception v2

    if-eqz v6, :cond_2

    .line 102
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v2

    .line 51
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
