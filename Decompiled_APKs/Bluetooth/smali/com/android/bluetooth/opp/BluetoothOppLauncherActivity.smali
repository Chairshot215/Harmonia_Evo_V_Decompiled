.class public Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;
.super Landroid/app/Activity;
.source "BluetoothOppLauncherActivity.java"


# static fields
.field private static final CONTENT_VCAL_TYPE:Ljava/lang/String; = "text/x-vcalendar"

.field private static final CONTENT_VCARD_TYPE:Ljava/lang/String; = "text/x-vcard"

.field private static final D:Z = false

.field private static final TAG:Ljava/lang/String; = "BluetoothLauncherActivity"

.field private static final V:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private creatFileForSharedContent(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Landroid/net/Uri;
    .locals 15
    .parameter "context"
    .parameter "text"
    .parameter "title"
    .parameter "hyperlinkindex"

    .prologue
    .line 207
    if-nez p2, :cond_1

    .line 208
    const/4 v6, 0x0

    .line 272
    :cond_0
    :goto_0
    return-object v6

    .line 211
    :cond_1
    const/4 v6, 0x0

    .line 212
    .local v6, fileUri:Landroid/net/Uri;
    const/4 v8, 0x0

    .line 214
    .local v8, outStream:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v10, Landroid/text/format/Time;

    invoke-direct {v10}, Landroid/text/format/Time;-><init>()V

    .line 215
    .local v10, time:Landroid/text/format/Time;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Landroid/text/format/Time;->set(J)V

    .line 216
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const v13, 0x7f04005c

    invoke-virtual {p0, v13}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "-"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v10, Landroid/text/format/Time;->second:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".html"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 217
    .local v5, fileName:Ljava/lang/String;
    if-eqz p3, :cond_3

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 220
    .local v11, uri:Ljava/lang/String;
    :goto_1
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 221
    .local v9, sText:Ljava/lang/String;
    if-ltz p4, :cond_5

    .line 222
    const/4 v12, 0x0

    move/from16 v0, p4

    invoke-virtual {v9, v12, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 223
    .local v7, msg:Ljava/lang/String;
    const-string v12, "*"

    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 224
    .local v4, end:I
    if-lez v4, :cond_4

    .line 225
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\"/></head><body><p>"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "</p><p>"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v11, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "</p><a href=\""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v11, v13, v4}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\">"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v11, v13, v4}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "</a></p>"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "</body></html>"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 244
    .end local v4           #end:I
    .end local v7           #msg:Ljava/lang/String;
    .local v2, content:Ljava/lang/String;
    :goto_2
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 245
    .local v1, byteBuff:[B
    const-string v12, "BluetoothLauncherActivity"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "content: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v12}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v8

    .line 248
    if-eqz v8, :cond_2

    .line 249
    const/4 v12, 0x0

    array-length v13, v1

    invoke-virtual {v8, v1, v12, v13}, Ljava/io/FileOutputStream;->write([BII)V

    .line 250
    new-instance v12, Ljava/io/File;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v13

    invoke-direct {v12, v13, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v12}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    move-result-object v6

    .line 251
    if-eqz v6, :cond_2

    .line 265
    :cond_2
    if-eqz v8, :cond_0

    .line 266
    :try_start_1
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 268
    :catch_0
    move-exception v3

    .line 269
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 217
    .end local v1           #byteBuff:[B
    .end local v2           #content:Ljava/lang/String;
    .end local v3           #e:Ljava/io/IOException;
    .end local v9           #sText:Ljava/lang/String;
    .end local v11           #uri:Ljava/lang/String;
    :cond_3
    :try_start_2
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_1

    .line 229
    .restart local v4       #end:I
    .restart local v7       #msg:Ljava/lang/String;
    .restart local v9       #sText:Ljava/lang/String;
    .restart local v11       #uri:Ljava/lang/String;
    :cond_4
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\"/></head><body><p>"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "</p><a href=\""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\">"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "</a></p>"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "</body></html>"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2       #content:Ljava/lang/String;
    goto :goto_2

    .line 233
    .end local v2           #content:Ljava/lang/String;
    .end local v4           #end:I
    .end local v7           #msg:Ljava/lang/String;
    :cond_5
    if-nez p3, :cond_6

    .line 235
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\"/></head><body>"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "</body></html>"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2       #content:Ljava/lang/String;
    goto/16 :goto_2

    .line 239
    .end local v2           #content:Ljava/lang/String;
    :cond_6
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\"/></head><body><a href=\""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\">"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "</a></p>"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "</body></html>"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    move-result-object v2

    .restart local v2       #content:Ljava/lang/String;
    goto/16 :goto_2

    .line 256
    .end local v2           #content:Ljava/lang/String;
    .end local v5           #fileName:Ljava/lang/String;
    .end local v9           #sText:Ljava/lang/String;
    .end local v10           #time:Landroid/text/format/Time;
    .end local v11           #uri:Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 257
    .local v3, e:Ljava/io/FileNotFoundException;
    :try_start_3
    const-string v12, "BluetoothLauncherActivity"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "FileNotFoundException: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 265
    if-eqz v8, :cond_0

    .line 266
    :try_start_4
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 268
    :catch_2
    move-exception v3

    .line 269
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 259
    .end local v3           #e:Ljava/io/IOException;
    :catch_3
    move-exception v3

    .line 260
    .restart local v3       #e:Ljava/io/IOException;
    :try_start_5
    const-string v12, "BluetoothLauncherActivity"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "IOException: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 265
    if-eqz v8, :cond_0

    .line 266
    :try_start_6
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_0

    .line 268
    :catch_4
    move-exception v3

    .line 269
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 261
    .end local v3           #e:Ljava/io/IOException;
    :catch_5
    move-exception v3

    .line 262
    .local v3, e:Ljava/lang/Exception;
    :try_start_7
    const-string v12, "BluetoothLauncherActivity"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Exception: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 265
    if-eqz v8, :cond_0

    .line 266
    :try_start_8
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto/16 :goto_0

    .line 268
    :catch_6
    move-exception v3

    .line 269
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 264
    .end local v3           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v12

    .line 265
    if-eqz v8, :cond_7

    .line 266
    :try_start_9
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 270
    :cond_7
    :goto_3
    throw v12

    .line 268
    :catch_7
    move-exception v3

    .line 269
    .restart local v3       #e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3
.end method

.method private createMultipleVcard(Landroid/content/Context;I)V
    .locals 15
    .parameter "context"
    .parameter "num"

    .prologue
    .line 313
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 315
    .local v11, uris:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const/4 v9, 0x0

    .line 317
    .local v9, outStream:Ljava/io/FileOutputStream;
    const-string v12, "BluetoothLauncherActivity"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "createMultipleVcard: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    move/from16 v0, p2

    if-ge v7, v0, :cond_6

    .line 319
    const-string v3, "name"

    .line 320
    .local v3, extraName:Ljava/lang/String;
    const-string v4, "result"

    .line 321
    .local v4, extraResult:Ljava/lang/String;
    if-lez v7, :cond_0

    .line 322
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 323
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 325
    :cond_0
    const-string v12, "BluetoothLauncherActivity"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "i:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", name:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", result:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    :try_start_0
    const-string v12, "\\W"

    invoke-static {v12}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v10

    .line 329
    .local v10, p:Ljava/util/regex/Pattern;
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v12

    invoke-virtual {v12, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 330
    .local v8, m:Ljava/util/regex/Matcher;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ""

    invoke-virtual {v8, v13}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".vcf"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 331
    .local v5, fileName:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v12

    invoke-virtual {v12, v4}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    .line 332
    .local v1, data:[B
    if-nez v1, :cond_2

    .line 333
    const-string v12, "BluetoothLauncherActivity"

    const-string v13, "This fuction only create vCard & vCal for HtcContacts & HtcCalendar"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 352
    if-eqz v9, :cond_1

    .line 353
    :try_start_1
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 318
    .end local v1           #data:[B
    .end local v5           #fileName:Ljava/lang/String;
    .end local v8           #m:Ljava/util/regex/Matcher;
    .end local v10           #p:Ljava/util/regex/Pattern;
    :cond_1
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 355
    .restart local v1       #data:[B
    .restart local v5       #fileName:Ljava/lang/String;
    .restart local v8       #m:Ljava/util/regex/Matcher;
    .restart local v10       #p:Ljava/util/regex/Pattern;
    :catch_0
    move-exception v2

    .line 356
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 336
    .end local v2           #e:Ljava/io/IOException;
    :cond_2
    :try_start_2
    const-string v12, "BluetoothLauncherActivity"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "fileName : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    const-string v12, "BluetoothLauncherActivity"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "data : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    new-instance v14, Ljava/lang/String;

    invoke-direct {v14, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v12}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v9

    .line 339
    if-eqz v9, :cond_4

    .line 340
    const/4 v12, 0x0

    array-length v13, v1

    invoke-virtual {v9, v1, v12, v13}, Ljava/io/FileOutputStream;->write([BII)V

    .line 341
    new-instance v12, Ljava/io/File;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v13

    invoke-direct {v12, v13, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v12}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    .line 342
    .local v6, fileUri:Landroid/net/Uri;
    if-eqz v6, :cond_3

    .line 346
    :cond_3
    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 352
    .end local v6           #fileUri:Landroid/net/Uri;
    :cond_4
    if-eqz v9, :cond_1

    .line 353
    :try_start_3
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 355
    :catch_1
    move-exception v2

    .line 356
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 348
    .end local v1           #data:[B
    .end local v2           #e:Ljava/io/IOException;
    .end local v5           #fileName:Ljava/lang/String;
    .end local v8           #m:Ljava/util/regex/Matcher;
    .end local v10           #p:Ljava/util/regex/Pattern;
    :catch_2
    move-exception v2

    .line 349
    .local v2, e:Ljava/lang/Exception;
    :try_start_4
    const-string v12, "BluetoothLauncherActivity"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Exception: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 352
    if-eqz v9, :cond_1

    .line 353
    :try_start_5
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_1

    .line 355
    :catch_3
    move-exception v2

    .line 356
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 351
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v12

    .line 352
    if-eqz v9, :cond_5

    .line 353
    :try_start_6
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 357
    :cond_5
    :goto_2
    throw v12

    .line 355
    :catch_4
    move-exception v2

    .line 356
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 360
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #extraName:Ljava/lang/String;
    .end local v4           #extraResult:Ljava/lang/String;
    :cond_6
    invoke-static {p0}, Lcom/android/bluetooth/opp/BluetoothOppManager;->getInstance(Landroid/content/Context;)Lcom/android/bluetooth/opp/BluetoothOppManager;

    move-result-object v12

    const-string v13, "text/x-vcard"

    invoke-virtual {v12, v13, v11}, Lcom/android/bluetooth/opp/BluetoothOppManager;->saveSendingFileInfo(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 361
    return-void
.end method

.method private creatvCardvCal(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;
    .locals 10
    .parameter "context"
    .parameter "extension"

    .prologue
    .line 276
    const/4 v3, 0x0

    .line 277
    .local v3, fileUri:Landroid/net/Uri;
    const/4 v5, 0x0

    .line 279
    .local v5, outStream:Ljava/io/FileOutputStream;
    :try_start_0
    const-string v7, "\\W"

    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    .line 280
    .local v6, p:Ljava/util/regex/Pattern;
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "name"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 281
    .local v4, m:Ljava/util/regex/Matcher;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v4, v8}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 282
    .local v2, fileName:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "result"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    .line 283
    .local v0, data:[B
    if-nez v0, :cond_1

    .line 284
    const-string v7, "BluetoothLauncherActivity"

    const-string v8, "This fuction only create vCard & vCal for HtcContacts & HtcCalendar"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 285
    const/4 v7, 0x0

    .line 302
    if-eqz v5, :cond_0

    .line 303
    :try_start_1
    throw v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 309
    .end local v0           #data:[B
    .end local v2           #fileName:Ljava/lang/String;
    .end local v4           #m:Ljava/util/regex/Matcher;
    .end local v6           #p:Ljava/util/regex/Pattern;
    :cond_0
    :goto_0
    return-object v7

    .line 305
    .restart local v0       #data:[B
    .restart local v2       #fileName:Ljava/lang/String;
    .restart local v4       #m:Ljava/util/regex/Matcher;
    .restart local v6       #p:Ljava/util/regex/Pattern;
    :catch_0
    move-exception v1

    .line 306
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 287
    .end local v1           #e:Ljava/io/IOException;
    :cond_1
    :try_start_2
    const-string v7, "BluetoothLauncherActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "fileName : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    const-string v7, "BluetoothLauncherActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "data : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    const/4 v7, 0x0

    invoke-virtual {p1, v2, v7}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v5

    .line 290
    if-eqz v5, :cond_2

    .line 291
    const/4 v7, 0x0

    array-length v8, v0

    invoke-virtual {v5, v0, v7, v8}, Ljava/io/FileOutputStream;->write([BII)V

    .line 292
    new-instance v7, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v8

    invoke-direct {v7, v8, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v7}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v3

    .line 293
    if-eqz v3, :cond_2

    .line 302
    :cond_2
    if-eqz v5, :cond_3

    .line 303
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .end local v0           #data:[B
    .end local v2           #fileName:Ljava/lang/String;
    .end local v4           #m:Ljava/util/regex/Matcher;
    .end local v6           #p:Ljava/util/regex/Pattern;
    :cond_3
    :goto_1
    move-object v7, v3

    .line 309
    goto :goto_0

    .line 305
    .restart local v0       #data:[B
    .restart local v2       #fileName:Ljava/lang/String;
    .restart local v4       #m:Ljava/util/regex/Matcher;
    .restart local v6       #p:Ljava/util/regex/Pattern;
    :catch_1
    move-exception v1

    .line 306
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 298
    .end local v0           #data:[B
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #fileName:Ljava/lang/String;
    .end local v4           #m:Ljava/util/regex/Matcher;
    .end local v6           #p:Ljava/util/regex/Pattern;
    :catch_2
    move-exception v1

    .line 299
    .local v1, e:Ljava/lang/Exception;
    :try_start_4
    const-string v7, "BluetoothLauncherActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 302
    if-eqz v5, :cond_3

    .line 303
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_1

    .line 305
    :catch_3
    move-exception v1

    .line 306
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 301
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 302
    if-eqz v5, :cond_4

    .line 303
    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 307
    :cond_4
    :goto_2
    throw v7

    .line 305
    :catch_4
    move-exception v1

    .line 306
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method private isAirplaneModeOn()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 194
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private isAirplaneToggleable()Z
    .locals 3

    .prologue
    .line 200
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_toggleable_radios"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, toggleableRadios:Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const-string v1, "bluetooth"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 23
    .parameter "savedInstanceState"

    .prologue
    .line 70
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    .line 73
    .local v10, intent:Landroid/content/Intent;
    invoke-virtual {v10}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 75
    .local v3, action:Ljava/lang/String;
    const-string v20, "android.intent.action.SEND"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_0

    const-string v20, "android.intent.action.SEND_MULTIPLE"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_d

    .line 81
    :cond_0
    const-string v20, "android.intent.action.SEND"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_7

    .line 83
    invoke-virtual {v10}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v15

    .line 84
    .local v15, type:Ljava/lang/String;
    const-string v20, "android.intent.extra.STREAM"

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v14

    check-cast v14, Landroid/net/Uri;

    .line 85
    .local v14, stream:Landroid/net/Uri;
    const-string v20, "android.intent.extra.TEXT"

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 86
    .local v4, extra_text:Ljava/lang/CharSequence;
    const-string v20, "android.intent.extra.TITLE"

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 88
    .local v5, extra_title:Ljava/lang/CharSequence;
    const-string v20, "BluetoothLauncherActivity"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "text: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", title: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    if-eqz v14, :cond_4

    if-eqz v15, :cond_4

    .line 98
    const-string v20, "text/x-vcard"

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 99
    const-string v20, ".vcf"

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->creatvCardvCal(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    .line 100
    .local v19, vcard:Landroid/net/Uri;
    if-eqz v19, :cond_1

    move-object/from16 v14, v19

    .line 107
    .end local v19           #vcard:Landroid/net/Uri;
    :cond_1
    :goto_0
    invoke-static/range {p0 .. p0}, Lcom/android/bluetooth/opp/BluetoothOppManager;->getInstance(Landroid/content/Context;)Lcom/android/bluetooth/opp/BluetoothOppManager;

    move-result-object v20

    invoke-virtual {v14}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v15, v1}, Lcom/android/bluetooth/opp/BluetoothOppManager;->saveSendingFileInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    .end local v4           #extra_text:Ljava/lang/CharSequence;
    .end local v5           #extra_title:Ljava/lang/CharSequence;
    .end local v14           #stream:Landroid/net/Uri;
    .end local v15           #type:Ljava/lang/String;
    :cond_2
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->isAirplaneModeOn()Z

    move-result v20

    if-eqz v20, :cond_a

    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->isAirplaneToggleable()Z

    move-result v20

    if-nez v20, :cond_a

    .line 147
    new-instance v8, Landroid/content/Intent;

    const-class v20, Lcom/android/bluetooth/opp/BluetoothOppBtErrorActivity;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v8, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 148
    .local v8, in:Landroid/content/Intent;
    const/high16 v20, 0x1000

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 149
    const-string v20, "title"

    const v21, 0x7f040005

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    const-string v20, "content"

    const v21, 0x7f040006

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->startActivity(Landroid/content/Intent;)V

    .line 153
    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->finish()V

    .line 190
    .end local v8           #in:Landroid/content/Intent;
    :goto_2
    return-void

    .line 101
    .restart local v4       #extra_text:Ljava/lang/CharSequence;
    .restart local v5       #extra_title:Ljava/lang/CharSequence;
    .restart local v14       #stream:Landroid/net/Uri;
    .restart local v15       #type:Ljava/lang/String;
    :cond_3
    const-string v20, "text/x-vcalendar"

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 102
    const-string v20, ".vcs"

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->creatvCardvCal(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    .line 103
    .local v18, vcal:Landroid/net/Uri;
    if-eqz v18, :cond_1

    move-object/from16 v14, v18

    goto :goto_0

    .line 109
    .end local v18           #vcal:Landroid/net/Uri;
    :cond_4
    if-eqz v4, :cond_6

    if-eqz v15, :cond_6

    .line 112
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    .line 113
    .local v13, sText:Ljava/lang/String;
    const-string v20, "http"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 114
    .local v7, hyperlinkindex:I
    if-lez v7, :cond_5

    .line 115
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v13, v7, v0}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    .line 117
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4, v5, v7}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->creatFileForSharedContent(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Landroid/net/Uri;

    move-result-object v6

    .line 119
    .local v6, fileUri:Landroid/net/Uri;
    if-eqz v6, :cond_2

    .line 120
    invoke-static/range {p0 .. p0}, Lcom/android/bluetooth/opp/BluetoothOppManager;->getInstance(Landroid/content/Context;)Lcom/android/bluetooth/opp/BluetoothOppManager;

    move-result-object v20

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v15, v1}, Lcom/android/bluetooth/opp/BluetoothOppManager;->saveSendingFileInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 124
    .end local v6           #fileUri:Landroid/net/Uri;
    .end local v7           #hyperlinkindex:I
    .end local v13           #sText:Ljava/lang/String;
    :cond_6
    const-string v20, "BluetoothLauncherActivity"

    const-string v21, "type is null; or sending file URI is null"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->finish()V

    goto :goto_2

    .line 128
    .end local v4           #extra_text:Ljava/lang/CharSequence;
    .end local v5           #extra_title:Ljava/lang/CharSequence;
    .end local v14           #stream:Landroid/net/Uri;
    .end local v15           #type:Ljava/lang/String;
    :cond_7
    const-string v20, "android.intent.action.SEND_MULTIPLE"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 129
    invoke-virtual {v10}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v12

    .line 130
    .local v12, mimeType:Ljava/lang/String;
    const-string v20, "android.intent.extra.STREAM"

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v17

    .line 131
    .local v17, uris:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    if-eqz v12, :cond_8

    if-eqz v17, :cond_8

    .line 134
    invoke-static/range {p0 .. p0}, Lcom/android/bluetooth/opp/BluetoothOppManager;->getInstance(Landroid/content/Context;)Lcom/android/bluetooth/opp/BluetoothOppManager;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v12, v1}, Lcom/android/bluetooth/opp/BluetoothOppManager;->saveSendingFileInfo(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_1

    .line 136
    :cond_8
    const-string v20, "text/x-vcard"

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_9

    .line 137
    const-string v20, "result_num"

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v20

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->createMultipleVcard(Landroid/content/Context;I)V

    goto/16 :goto_1

    .line 140
    :cond_9
    const-string v20, "BluetoothLauncherActivity"

    const-string v21, "type is null; or sending files URIs are null"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->finish()V

    goto/16 :goto_2

    .line 160
    .end local v12           #mimeType:Ljava/lang/String;
    .end local v17           #uris:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_a
    invoke-static/range {p0 .. p0}, Lcom/android/bluetooth/opp/BluetoothOppManager;->getInstance(Landroid/content/Context;)Lcom/android/bluetooth/opp/BluetoothOppManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/bluetooth/opp/BluetoothOppManager;->isEnabled()Z

    move-result v20

    if-nez v20, :cond_c

    .line 162
    new-instance v8, Landroid/content/Intent;

    const-class v20, Lcom/android/bluetooth/opp/BluetoothOppBtEnableActivity;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v8, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 163
    .restart local v8       #in:Landroid/content/Intent;
    const/high16 v20, 0x1000

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 164
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->startActivity(Landroid/content/Intent;)V

    .line 189
    .end local v8           #in:Landroid/content/Intent;
    :cond_b
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->finish()V

    goto/16 :goto_2

    .line 167
    :cond_c
    new-instance v9, Landroid/content/Intent;

    const-string v20, "android.bluetooth.devicepicker.action.LAUNCH"

    move-object/from16 v0, v20

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 168
    .local v9, in1:Landroid/content/Intent;
    const/high16 v20, 0x80

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 169
    const-string v20, "android.bluetooth.devicepicker.extra.NEED_AUTH"

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 170
    const-string v20, "android.bluetooth.devicepicker.extra.FILTER_TYPE"

    const/16 v21, 0x2

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 172
    const-string v20, "android.bluetooth.devicepicker.extra.LAUNCH_PACKAGE"

    const-string v21, "com.android.bluetooth"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    const-string v20, "android.bluetooth.devicepicker.extra.DEVICE_PICKER_LAUNCH_CLASS"

    const-class v21, Lcom/android/bluetooth/opp/BluetoothOppReceiver;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 177
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_3

    .line 179
    .end local v9           #in1:Landroid/content/Intent;
    :cond_d
    const-string v20, "android.btopp.intent.action.OPEN"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_b

    .line 180
    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v16

    .line 183
    .local v16, uri:Landroid/net/Uri;
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    .line 184
    .local v11, intent1:Landroid/content/Intent;
    invoke-virtual {v11, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 185
    const-string v20, "com.android.bluetooth"

    const-class v21, Lcom/android/bluetooth/opp/BluetoothOppReceiver;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 187
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_3
.end method
