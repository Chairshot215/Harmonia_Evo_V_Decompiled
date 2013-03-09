.class public Lcom/android/htccontacts/widget/PrepareLaputaIntentTask;
.super Lcom/android/htccontacts/util/WeakAsyncTask;
.source "PrepareLaputaIntentTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/htccontacts/util/WeakAsyncTask",
        "<",
        "Landroid/os/Bundle;",
        "Ljava/lang/Void;",
        "Landroid/content/Intent;",
        "Lcom/android/htccontacts/HtcViewContactDetailActivity;",
        ">;"
    }
.end annotation


# static fields
.field public static final ACTION_REVERSE_ADDR_ON_MAP:Ljava/lang/String; = "com.htc.laputa.map.action.REVERSE_ADDR_ON_MAP"

.field private static final DEBUG:Z = false

.field public static final KEY_ADDRESS:Ljava/lang/String; = "address"

.field public static final KEY_CONTACT_ID:Ljava/lang/String; = "contactId"

.field public static final KEY_NAME:Ljava/lang/String; = "Name"

.field public static final KEY_NUMBER:Ljava/lang/String; = "number"

.field private static final LAPUTA_CONTACT_PHOTO_NAME:Ljava/lang/String; = "LaputaContactPhoto.jpg"

.field public static final REVERSE_ADDR_ON_MAP_ADDRESS_INFO:Ljava/lang/String; = "Address"

.field public static final REVERSE_ADDR_ON_MAP_BUNDLE:Ljava/lang/String; = "REVERSE_ADDR_ON_MAP_BUNDLE"

.field public static final REVERSE_ADDR_ON_MAP_NAME:Ljava/lang/String; = "Name"

.field public static final REVERSE_ADDR_ON_MAP_PHOTO_IMAGE:Ljava/lang/String; = "PhotoImage"

.field public static final REVERSE_ADDR_ON_MAP_TEL_NUM:Ljava/lang/String; = "Tel"

.field private static final TAG:Ljava/lang/String; = "PrepareLaputaIntentTask"


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/HtcViewContactDetailActivity;)V
    .locals 0
    .parameter "target"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/htccontacts/util/WeakAsyncTask;-><init>(Ljava/lang/Object;)V

    .line 65
    return-void
.end method


# virtual methods
.method protected varargs doInBackground(Lcom/android/htccontacts/HtcViewContactDetailActivity;[Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 14
    .parameter "target"
    .parameter "params"

    .prologue
    .line 76
    move-object v4, p1

    .line 77
    .local v4, context:Landroid/content/Context;
    if-nez v4, :cond_0

    const/4 v7, 0x0

    .line 125
    :goto_0
    return-object v7

    .line 78
    :cond_0
    invoke-virtual {v4}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 79
    .local v3, contentResolver:Landroid/content/ContentResolver;
    if-nez v3, :cond_1

    const/4 v7, 0x0

    goto :goto_0

    .line 80
    :cond_1
    const/4 v11, 0x0

    aget-object v0, p2, v11

    .line 81
    .local v0, b:Landroid/os/Bundle;
    if-nez v0, :cond_2

    const/4 v7, 0x0

    goto :goto_0

    .line 83
    :cond_2
    const/4 v10, 0x0

    .line 84
    .local v10, photoPath:Ljava/lang/String;
    const-string v11, "contactId"

    const-wide/16 v12, 0x0

    invoke-virtual {v0, v11, v12, v13}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v11

    invoke-static {v3, v11, v12}, Lcom/htc/provider/HtcContactsContract$CommonDataKinds$Photo;->getContactPhoto(Landroid/content/ContentResolver;J)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 85
    .local v1, bitmapContactPhoto:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_3

    .line 86
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    if-ge v11, v12, :cond_4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 88
    .local v8, nSquareSize:I
    :goto_1
    invoke-static {v1, v8, v8}, Lcom/htc/util/contacts/PhotoUtils;->getScaledCenterCropBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 90
    if-eqz v1, :cond_3

    .line 91
    const/4 v9, 0x0

    .line 93
    .local v9, output:Ljava/io/FileOutputStream;
    :try_start_0
    const-string v11, "LaputaContactPhoto.jpg"

    invoke-virtual {v4, v11}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 94
    const-string v11, "LaputaContactPhoto.jpg"

    const/4 v12, 0x1

    invoke-virtual {v4, v11, v12}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v9

    .line 95
    sget-object v11, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    sget v12, Lcom/htc/util/contacts/PhotoUtils;->JPEG_QUALITY:I

    invoke-virtual {v1, v11, v12, v9}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 96
    const-string v11, "LaputaContactPhoto.jpg"

    invoke-virtual {v4, v11}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    .line 97
    .local v6, file:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v10

    .line 103
    if-eqz v9, :cond_3

    .line 105
    :try_start_1
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->flush()V

    .line 106
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 117
    .end local v6           #file:Ljava/io/File;
    .end local v8           #nSquareSize:I
    .end local v9           #output:Ljava/io/FileOutputStream;
    :cond_3
    :goto_2
    new-instance v7, Landroid/content/Intent;

    const-string v11, "com.htc.laputa.map.action.REVERSE_ADDR_ON_MAP"

    invoke-direct {v7, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 118
    .local v7, intent:Landroid/content/Intent;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 119
    .local v2, bundle:Landroid/os/Bundle;
    const-string v11, "Address"

    const-string v12, "address"

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const-string v11, "Tel"

    const-string v12, "number"

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const-string v11, "PhotoImage"

    invoke-virtual {v2, v11, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const-string v11, "Name"

    const-string v12, "Name"

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-string v11, "REVERSE_ADDR_ON_MAP_BUNDLE"

    invoke-virtual {v7, v11, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 86
    .end local v2           #bundle:Landroid/os/Bundle;
    .end local v7           #intent:Landroid/content/Intent;
    :cond_4
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    goto :goto_1

    .line 98
    .restart local v8       #nSquareSize:I
    .restart local v9       #output:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v5

    .line 99
    .local v5, e:Ljava/io/FileNotFoundException;
    :try_start_2
    const-string v11, "PrepareLaputaIntentTask"

    const-string v12, "doInBackground"

    invoke-static {v11, v12, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 103
    if-eqz v9, :cond_3

    .line 105
    :try_start_3
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->flush()V

    .line 106
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 107
    :catch_1
    move-exception v5

    .line 108
    .local v5, e:Ljava/io/IOException;
    const-string v11, "PrepareLaputaIntentTask"

    const-string v12, "doInBackground"

    :goto_3
    invoke-static {v11, v12, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 100
    .end local v5           #e:Ljava/io/IOException;
    :catch_2
    move-exception v5

    .line 101
    .local v5, e:Ljava/lang/OutOfMemoryError;
    :try_start_4
    const-string v11, "PrepareLaputaIntentTask"

    const-string v12, "doInBackground"

    invoke-static {v11, v12, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 103
    if-eqz v9, :cond_3

    .line 105
    :try_start_5
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->flush()V

    .line 106
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_2

    .line 107
    :catch_3
    move-exception v5

    .line 108
    .local v5, e:Ljava/io/IOException;
    const-string v11, "PrepareLaputaIntentTask"

    const-string v12, "doInBackground"

    goto :goto_3

    .line 103
    .end local v5           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v11

    if-eqz v9, :cond_5

    .line 105
    :try_start_6
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->flush()V

    .line 106
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 103
    :cond_5
    :goto_4
    throw v11

    .line 107
    :catch_4
    move-exception v5

    .line 108
    .restart local v5       #e:Ljava/io/IOException;
    const-string v12, "PrepareLaputaIntentTask"

    const-string v13, "doInBackground"

    invoke-static {v12, v13, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 107
    .end local v5           #e:Ljava/io/IOException;
    .restart local v6       #file:Ljava/io/File;
    :catch_5
    move-exception v5

    .line 108
    .restart local v5       #e:Ljava/io/IOException;
    const-string v11, "PrepareLaputaIntentTask"

    const-string v12, "doInBackground"

    goto :goto_3
.end method

.method protected bridge synthetic doInBackground(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    check-cast p1, Lcom/android/htccontacts/HtcViewContactDetailActivity;

    .end local p1
    check-cast p2, [Landroid/os/Bundle;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/htccontacts/widget/PrepareLaputaIntentTask;->doInBackground(Lcom/android/htccontacts/HtcViewContactDetailActivity;[Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/htccontacts/HtcViewContactDetailActivity;Landroid/content/Intent;)V
    .locals 1
    .parameter "target"
    .parameter "result"

    .prologue
    .line 130
    instance-of v0, p1, Lcom/android/htccontacts/HtcViewContactDetailActivity;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 131
    invoke-virtual {p1}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->dismissProgressDialog()V

    .line 132
    if-eqz p2, :cond_0

    .line 133
    invoke-virtual {p1, p2}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->launchIntent(Landroid/content/Intent;)V

    .line 136
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    check-cast p1, Lcom/android/htccontacts/HtcViewContactDetailActivity;

    .end local p1
    check-cast p2, Landroid/content/Intent;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/htccontacts/widget/PrepareLaputaIntentTask;->onPostExecute(Lcom/android/htccontacts/HtcViewContactDetailActivity;Landroid/content/Intent;)V

    return-void
.end method

.method protected onPreExecute(Lcom/android/htccontacts/HtcViewContactDetailActivity;)V
    .locals 1
    .parameter "target"

    .prologue
    .line 69
    instance-of v0, p1, Lcom/android/htccontacts/HtcViewContactDetailActivity;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    invoke-virtual {p1}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->launchProgressDialog()V

    .line 72
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPreExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    check-cast p1, Lcom/android/htccontacts/HtcViewContactDetailActivity;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/widget/PrepareLaputaIntentTask;->onPreExecute(Lcom/android/htccontacts/HtcViewContactDetailActivity;)V

    return-void
.end method
