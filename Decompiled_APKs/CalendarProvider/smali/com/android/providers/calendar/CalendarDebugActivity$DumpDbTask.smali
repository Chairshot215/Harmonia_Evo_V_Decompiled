.class Lcom/android/providers/calendar/CalendarDebugActivity$DumpDbTask;
.super Landroid/os/AsyncTask;
.source "CalendarDebugActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/calendar/CalendarDebugActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DumpDbTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/calendar/CalendarDebugActivity;


# direct methods
.method private constructor <init>(Lcom/android/providers/calendar/CalendarDebugActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/providers/calendar/CalendarDebugActivity$DumpDbTask;->this$0:Lcom/android/providers/calendar/CalendarDebugActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/providers/calendar/CalendarDebugActivity;Lcom/android/providers/calendar/CalendarDebugActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDebugActivity$DumpDbTask;-><init>(Lcom/android/providers/calendar/CalendarDebugActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/io/File;
    .locals 17
    .parameter "params"

    .prologue
    .line 113
    const/4 v4, 0x0

    .line 114
    .local v4, is:Ljava/io/InputStream;
    const/4 v7, 0x0

    .line 117
    .local v7, os:Ljava/util/zip/ZipOutputStream;
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v10

    .line 118
    .local v10, path:Ljava/io/File;
    new-instance v9, Ljava/io/File;

    const-string v12, "calendar.db.zip"

    invoke-direct {v9, v10, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 119
    .local v9, outFile:Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 120
    invoke-static {}, Lcom/android/providers/calendar/CalendarDebugActivity;->access$100()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Outfile="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/providers/calendar/CalendarDebugActivity$DumpDbTask;->this$0:Lcom/android/providers/calendar/CalendarDebugActivity;

    const-string v13, "calendar.db"

    invoke-virtual {v12, v13}, Lcom/android/providers/calendar/CalendarDebugActivity;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 123
    .local v3, inFile:Ljava/io/File;
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 125
    .end local v4           #is:Ljava/io/InputStream;
    .local v5, is:Ljava/io/InputStream;
    :try_start_1
    new-instance v8, Ljava/util/zip/ZipOutputStream;

    new-instance v12, Ljava/io/FileOutputStream;

    invoke-direct {v12, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v8, v12}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 126
    .end local v7           #os:Ljava/util/zip/ZipOutputStream;
    .local v8, os:Ljava/util/zip/ZipOutputStream;
    :try_start_2
    new-instance v12, Ljava/util/zip/ZipEntry;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v12}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 128
    const/16 v12, 0x1000

    new-array v1, v12, [B

    .line 129
    .local v1, buf:[B
    const/4 v11, 0x0

    .line 131
    .local v11, totalLen:I
    :goto_0
    invoke-virtual {v5, v1}, Ljava/io/InputStream;->read([B)I

    move-result v6

    .line 132
    .local v6, len:I
    if-gtz v6, :cond_2

    .line 138
    invoke-virtual {v8}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 140
    invoke-static {}, Lcom/android/providers/calendar/CalendarDebugActivity;->access$100()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "bytes read "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-virtual {v8}, Ljava/util/zip/ZipOutputStream;->flush()V

    .line 142
    invoke-virtual {v8}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 143
    const/4 v7, 0x0

    .line 147
    .end local v8           #os:Ljava/util/zip/ZipOutputStream;
    .restart local v7       #os:Ljava/util/zip/ZipOutputStream;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/providers/calendar/CalendarDebugActivity$DumpDbTask;->this$0:Lcom/android/providers/calendar/CalendarDebugActivity;

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    invoke-virtual {v9}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "application/zip"

    aput-object v16, v14, v15

    const/4 v15, 0x0

    invoke-static {v12, v13, v14, v15}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 158
    if-eqz v5, :cond_0

    .line 159
    :try_start_4
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 161
    :cond_0
    if-eqz v7, :cond_1

    .line 162
    throw v7
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_1
    :goto_1
    move-object v4, v5

    .line 168
    .end local v1           #buf:[B
    .end local v3           #inFile:Ljava/io/File;
    .end local v5           #is:Ljava/io/InputStream;
    .end local v6           #len:I
    .end local v9           #outFile:Ljava/io/File;
    .end local v10           #path:Ljava/io/File;
    .end local v11           #totalLen:I
    .restart local v4       #is:Ljava/io/InputStream;
    :goto_2
    return-object v9

    .line 135
    .end local v4           #is:Ljava/io/InputStream;
    .end local v7           #os:Ljava/util/zip/ZipOutputStream;
    .restart local v1       #buf:[B
    .restart local v3       #inFile:Ljava/io/File;
    .restart local v5       #is:Ljava/io/InputStream;
    .restart local v6       #len:I
    .restart local v8       #os:Ljava/util/zip/ZipOutputStream;
    .restart local v9       #outFile:Ljava/io/File;
    .restart local v10       #path:Ljava/io/File;
    .restart local v11       #totalLen:I
    :cond_2
    const/4 v12, 0x0

    :try_start_5
    invoke-virtual {v8, v1, v12, v6}, Ljava/util/zip/ZipOutputStream;->write([BII)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 136
    add-int/2addr v11, v6

    .line 137
    goto :goto_0

    .line 164
    .end local v8           #os:Ljava/util/zip/ZipOutputStream;
    .restart local v7       #os:Ljava/util/zip/ZipOutputStream;
    :catch_0
    move-exception v2

    .line 165
    .local v2, e:Ljava/io/IOException;
    invoke-static {}, Lcom/android/providers/calendar/CalendarDebugActivity;->access$100()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Error "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 154
    .end local v1           #buf:[B
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #inFile:Ljava/io/File;
    .end local v5           #is:Ljava/io/InputStream;
    .end local v6           #len:I
    .end local v9           #outFile:Ljava/io/File;
    .end local v10           #path:Ljava/io/File;
    .end local v11           #totalLen:I
    .restart local v4       #is:Ljava/io/InputStream;
    :catch_1
    move-exception v2

    .line 155
    .restart local v2       #e:Ljava/io/IOException;
    :goto_3
    :try_start_6
    invoke-static {}, Lcom/android/providers/calendar/CalendarDebugActivity;->access$100()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Error "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 158
    if-eqz v4, :cond_3

    .line 159
    :try_start_7
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 161
    :cond_3
    if-eqz v7, :cond_4

    .line 162
    invoke-virtual {v7}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 168
    :cond_4
    :goto_4
    const/4 v9, 0x0

    goto :goto_2

    .line 164
    :catch_2
    move-exception v2

    .line 165
    invoke-static {}, Lcom/android/providers/calendar/CalendarDebugActivity;->access$100()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Error "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 157
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v12

    .line 158
    :goto_5
    if-eqz v4, :cond_5

    .line 159
    :try_start_8
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 161
    :cond_5
    if-eqz v7, :cond_6

    .line 162
    invoke-virtual {v7}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 166
    :cond_6
    :goto_6
    throw v12

    .line 164
    :catch_3
    move-exception v2

    .line 165
    .restart local v2       #e:Ljava/io/IOException;
    invoke-static {}, Lcom/android/providers/calendar/CalendarDebugActivity;->access$100()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Error "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 157
    .end local v2           #e:Ljava/io/IOException;
    .end local v4           #is:Ljava/io/InputStream;
    .restart local v3       #inFile:Ljava/io/File;
    .restart local v5       #is:Ljava/io/InputStream;
    .restart local v9       #outFile:Ljava/io/File;
    .restart local v10       #path:Ljava/io/File;
    :catchall_1
    move-exception v12

    move-object v4, v5

    .end local v5           #is:Ljava/io/InputStream;
    .restart local v4       #is:Ljava/io/InputStream;
    goto :goto_5

    .end local v4           #is:Ljava/io/InputStream;
    .end local v7           #os:Ljava/util/zip/ZipOutputStream;
    .restart local v5       #is:Ljava/io/InputStream;
    .restart local v8       #os:Ljava/util/zip/ZipOutputStream;
    :catchall_2
    move-exception v12

    move-object v7, v8

    .end local v8           #os:Ljava/util/zip/ZipOutputStream;
    .restart local v7       #os:Ljava/util/zip/ZipOutputStream;
    move-object v4, v5

    .end local v5           #is:Ljava/io/InputStream;
    .restart local v4       #is:Ljava/io/InputStream;
    goto :goto_5

    .line 154
    .end local v4           #is:Ljava/io/InputStream;
    .restart local v5       #is:Ljava/io/InputStream;
    :catch_4
    move-exception v2

    move-object v4, v5

    .end local v5           #is:Ljava/io/InputStream;
    .restart local v4       #is:Ljava/io/InputStream;
    goto :goto_3

    .end local v4           #is:Ljava/io/InputStream;
    .end local v7           #os:Ljava/util/zip/ZipOutputStream;
    .restart local v5       #is:Ljava/io/InputStream;
    .restart local v8       #os:Ljava/util/zip/ZipOutputStream;
    :catch_5
    move-exception v2

    move-object v7, v8

    .end local v8           #os:Ljava/util/zip/ZipOutputStream;
    .restart local v7       #os:Ljava/util/zip/ZipOutputStream;
    move-object v4, v5

    .end local v5           #is:Ljava/io/InputStream;
    .restart local v4       #is:Ljava/io/InputStream;
    goto/16 :goto_3
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/providers/calendar/CalendarDebugActivity$DumpDbTask;->doInBackground([Ljava/lang/Void;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/io/File;)V
    .locals 1
    .parameter "outFile"

    .prologue
    .line 176
    if-eqz p1, :cond_0

    .line 177
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarDebugActivity$DumpDbTask;->this$0:Lcom/android/providers/calendar/CalendarDebugActivity;

    #calls: Lcom/android/providers/calendar/CalendarDebugActivity;->emailFile(Ljava/io/File;)V
    invoke-static {v0, p1}, Lcom/android/providers/calendar/CalendarDebugActivity;->access$200(Lcom/android/providers/calendar/CalendarDebugActivity;Ljava/io/File;)V

    .line 179
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 102
    check-cast p1, Ljava/io/File;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/providers/calendar/CalendarDebugActivity$DumpDbTask;->onPostExecute(Ljava/io/File;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarDebugActivity$DumpDbTask;->this$0:Lcom/android/providers/calendar/CalendarDebugActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/providers/calendar/CalendarDebugActivity;->setProgressBarIndeterminateVisibility(Z)V

    .line 110
    return-void
.end method
