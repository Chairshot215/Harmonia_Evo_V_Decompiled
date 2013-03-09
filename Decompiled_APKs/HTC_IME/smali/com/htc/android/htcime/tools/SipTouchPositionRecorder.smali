.class public Lcom/htc/android/htcime/tools/SipTouchPositionRecorder;
.super Landroid/app/Activity;
.source "SipTouchPositionRecorder.java"


# static fields
.field private static final MENU_DECRYPT_REPORT:I = 0x1

.field public static SHARED_SECRET:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "SipTouchPositionRecorder"

.field private static final mSentListFile:Ljava/lang/String; = "sentReport_WO_moving_list.txt"


# instance fields
.field mAttachedFiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field mButton:Landroid/widget/Button;

.field mCheckBoxMode:Landroid/widget/CheckBox;

.field mCheckBoxZip:Landroid/widget/CheckBox;

.field mIsSendZip:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const-string v0, "HTC_IME_Test_STPR"

    sput-object v0, Lcom/htc/android/htcime/tools/SipTouchPositionRecorder;->SHARED_SECRET:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 50
    iput-object v0, p0, Lcom/htc/android/htcime/tools/SipTouchPositionRecorder;->mCheckBoxMode:Landroid/widget/CheckBox;

    .line 51
    iput-object v0, p0, Lcom/htc/android/htcime/tools/SipTouchPositionRecorder;->mCheckBoxZip:Landroid/widget/CheckBox;

    .line 52
    iput-object v0, p0, Lcom/htc/android/htcime/tools/SipTouchPositionRecorder;->mButton:Landroid/widget/Button;

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/htcime/tools/SipTouchPositionRecorder;->mIsSendZip:Z

    return-void
.end method

.method static synthetic access$000(Lcom/htc/android/htcime/tools/SipTouchPositionRecorder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/htc/android/htcime/tools/SipTouchPositionRecorder;->sendReport()V

    return-void
.end method

.method private checkAndMoveSentReport()V
    .locals 9

    .prologue
    .line 149
    new-instance v5, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IME_Test"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "sentReport_WO_moving_list.txt"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 150
    .local v5, sentReport_WO_moving_list:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 152
    :try_start_0
    new-instance v4, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IME_Test"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "STPR_report_sent"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 153
    .local v4, sentDir:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    .line 154
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    move-result v6

    if-nez v6, :cond_1

    .line 155
    invoke-virtual {p0}, Lcom/htc/android/htcime/tools/SipTouchPositionRecorder;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to create directory: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 179
    .end local v4           #sentDir:Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 160
    .restart local v4       #sentDir:Ljava/io/File;
    :cond_1
    :try_start_1
    const-string v6, "SipTouchPositionRecorder"

    const-string v7, "Start to check and move sent report(s)."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v5}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 163
    .local v0, br:Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .line 165
    .local v3, s:Ljava/lang/String;
    :cond_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 166
    if-eqz v3, :cond_3

    const-string v6, ""

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 167
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 168
    .local v2, f:Ljava/io/File;
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 169
    invoke-virtual {p0}, Lcom/htc/android/htcime/tools/SipTouchPositionRecorder;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to move file "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 171
    .end local v2           #f:Ljava/io/File;
    :cond_3
    if-nez v3, :cond_2

    .line 176
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    goto/16 :goto_0

    .line 172
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v3           #s:Ljava/lang/String;
    .end local v4           #sentDir:Ljava/io/File;
    :catch_0
    move-exception v1

    .line 173
    .local v1, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {p0}, Lcom/htc/android/htcime/tools/SipTouchPositionRecorder;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkAndMoveSentReport: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 174
    const-string v6, "SipTouchPositionRecorder"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkAndMoveSentReport: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 176
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    goto/16 :goto_0

    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    throw v6
.end method

.method private sendReport()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    .line 100
    invoke-virtual {p0}, Lcom/htc/android/htcime/tools/SipTouchPositionRecorder;->getBaseContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 101
    .local v5, r:Landroid/content/res/Resources;
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 102
    .local v4, it:Landroid/content/Intent;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/htc/android/htcime/tools/SipTouchPositionRecorder;->mAttachedFiles:Ljava/util/ArrayList;

    .line 103
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 104
    .local v7, uris:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    new-instance v6, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v9

    const-string v10, "IME_Test"

    invoke-direct {v6, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 106
    .local v6, reportDir:Ljava/io/File;
    invoke-direct {p0}, Lcom/htc/android/htcime/tools/SipTouchPositionRecorder;->checkAndMoveSentReport()V

    .line 108
    iget-object v9, p0, Lcom/htc/android/htcime/tools/SipTouchPositionRecorder;->mAttachedFiles:Ljava/util/ArrayList;

    invoke-static {v6, v9, v7, v12}, Lcom/htc/android/htcime/tools/SipReportUtil;->findFiles(Ljava/io/File;Ljava/util/ArrayList;Ljava/util/ArrayList;I)Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, device:Ljava/lang/String;
    iget-object v9, p0, Lcom/htc/android/htcime/tools/SipTouchPositionRecorder;->mAttachedFiles:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/htc/android/htcime/tools/SipTouchPositionRecorder;->getBaseContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "Can not find report."

    invoke-static {v9, v10, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    .line 145
    :goto_0
    return-void

    .line 113
    :cond_0
    const-string v9, "com.htc.android.mail"

    const-string v10, "com.htc.android.mail.ComposeActivity"

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    const-string v9, "android.intent.extra.EMAIL"

    const v10, 0x7f07002a

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    const-string v9, "android.intent.extra.SUBJECT"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const v11, 0x7f0902db

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    const-string v9, "android.intent.extra.TEXT"

    const v10, 0x7f0902dc

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    iget-boolean v9, p0, Lcom/htc/android/htcime/tools/SipTouchPositionRecorder;->mIsSendZip:Z

    if-eqz v9, :cond_5

    .line 119
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v9, "\'STPR_\'yyyy-MMdd"

    invoke-direct {v2, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 120
    .local v2, formatter:Ljava/text/SimpleDateFormat;
    new-instance v8, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    new-instance v10, Ljava/util/Date;

    invoke-direct {v10}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".zip"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 121
    .local v8, zipFile:Ljava/io/File;
    iget-object v9, p0, Lcom/htc/android/htcime/tools/SipTouchPositionRecorder;->mAttachedFiles:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/htc/android/htcime/tools/SipTouchPositionRecorder;->getBaseContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/htc/android/htcime/tools/SipReportUtil;->prepareZip(Ljava/io/File;Ljava/util/ArrayList;Landroid/content/Context;)Ljava/io/File;

    .line 122
    if-eqz v8, :cond_1

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_2

    .line 123
    :cond_1
    invoke-virtual {p0}, Lcom/htc/android/htcime/tools/SipTouchPositionRecorder;->getBaseContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "Unable to find zip file."

    invoke-static {v9, v10, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 126
    :cond_2
    iget-object v9, p0, Lcom/htc/android/htcime/tools/SipTouchPositionRecorder;->mAttachedFiles:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 127
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v9

    if-nez v9, :cond_3

    .line 128
    const-string v9, "SipTouchPositionRecorder"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to delete file: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 130
    .end local v1           #f:Ljava/io/File;
    :cond_4
    iget-object v9, p0, Lcom/htc/android/htcime/tools/SipTouchPositionRecorder;->mAttachedFiles:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 131
    iget-object v9, p0, Lcom/htc/android/htcime/tools/SipTouchPositionRecorder;->mAttachedFiles:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    const-string v9, "android.intent.action.SEND"

    invoke-virtual {v4, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    const-string v9, "application/zip"

    invoke-virtual {v4, v9}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    const-string v9, "android.intent.extra.STREAM"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "file://"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 143
    .end local v2           #formatter:Ljava/text/SimpleDateFormat;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v8           #zipFile:Ljava/io/File;
    :goto_2
    const/4 v9, 0x0

    invoke-virtual {p0, v4, v9}, Lcom/htc/android/htcime/tools/SipTouchPositionRecorder;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 138
    :cond_5
    const-string v9, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v4, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    const-string v9, "text/plain"

    invoke-virtual {v4, v9}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 140
    const-string v9, "android.intent.extra.STREAM"

    invoke-virtual {v4, v9, v7}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    goto :goto_2
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 9
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    const/4 v8, 0x1

    .line 183
    if-nez p3, :cond_0

    .line 209
    :goto_0
    return-void

    .line 187
    :cond_0
    :try_start_0
    new-instance v4, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IME_Test"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "sentReport_WO_moving_list.txt"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 188
    .local v4, sentReport_WO_moving_list:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 189
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    move-result v5

    if-nez v5, :cond_1

    .line 190
    invoke-virtual {p0}, Lcom/htc/android/htcime/tools/SipTouchPositionRecorder;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to create file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 205
    .end local v4           #sentReport_WO_moving_list:Ljava/io/File;
    :catch_0
    move-exception v0

    .line 206
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/htc/android/htcime/tools/SipTouchPositionRecorder;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onActivityResult: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 207
    const-string v5, "SipTouchPositionRecorder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onActivityResult: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 195
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v4       #sentReport_WO_moving_list:Ljava/io/File;
    :cond_1
    :try_start_1
    const-string v5, "SipTouchPositionRecorder"

    const-string v6, "Sent successfully. Create list of sent report without moving."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    new-instance v2, Ljava/io/FileWriter;

    const/4 v5, 0x1

    invoke-direct {v2, v4, v5}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 198
    .local v2, fw:Ljava/io/FileWriter;
    iget-object v5, p0, Lcom/htc/android/htcime/tools/SipTouchPositionRecorder;->mAttachedFiles:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 202
    .local v1, f:Ljava/io/File;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 204
    .end local v1           #f:Ljava/io/File;
    :cond_2
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "icicle"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 64
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    const v2, 0x7f030051

    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/tools/SipTouchPositionRecorder;->setContentView(I)V

    .line 68
    invoke-virtual {p0}, Lcom/htc/android/htcime/tools/SipTouchPositionRecorder;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 69
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v2, "sip_record_mode"

    invoke-static {v0, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 70
    .local v1, curMode:I
    const v2, 0x7f0e0057

    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/tools/SipTouchPositionRecorder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/htc/android/htcime/tools/SipTouchPositionRecorder;->mCheckBoxMode:Landroid/widget/CheckBox;

    .line 71
    iget-object v5, p0, Lcom/htc/android/htcime/tools/SipTouchPositionRecorder;->mCheckBoxMode:Landroid/widget/CheckBox;

    if-ne v1, v3, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 72
    iget-object v2, p0, Lcom/htc/android/htcime/tools/SipTouchPositionRecorder;->mCheckBoxMode:Landroid/widget/CheckBox;

    new-instance v4, Lcom/htc/android/htcime/tools/SipTouchPositionRecorder$1;

    invoke-direct {v4, p0, v0}, Lcom/htc/android/htcime/tools/SipTouchPositionRecorder$1;-><init>(Lcom/htc/android/htcime/tools/SipTouchPositionRecorder;Landroid/content/ContentResolver;)V

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 79
    const v2, 0x7f0e0058

    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/tools/SipTouchPositionRecorder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/htc/android/htcime/tools/SipTouchPositionRecorder;->mCheckBoxZip:Landroid/widget/CheckBox;

    .line 80
    iget-object v2, p0, Lcom/htc/android/htcime/tools/SipTouchPositionRecorder;->mCheckBoxZip:Landroid/widget/CheckBox;

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 81
    iget-object v2, p0, Lcom/htc/android/htcime/tools/SipTouchPositionRecorder;->mCheckBoxZip:Landroid/widget/CheckBox;

    new-instance v3, Lcom/htc/android/htcime/tools/SipTouchPositionRecorder$2;

    invoke-direct {v3, p0}, Lcom/htc/android/htcime/tools/SipTouchPositionRecorder$2;-><init>(Lcom/htc/android/htcime/tools/SipTouchPositionRecorder;)V

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 88
    const v2, 0x7f0e0059

    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/tools/SipTouchPositionRecorder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/htc/android/htcime/tools/SipTouchPositionRecorder;->mButton:Landroid/widget/Button;

    .line 89
    iget-object v2, p0, Lcom/htc/android/htcime/tools/SipTouchPositionRecorder;->mButton:Landroid/widget/Button;

    new-instance v3, Lcom/htc/android/htcime/tools/SipTouchPositionRecorder$3;

    invoke-direct {v3, p0}, Lcom/htc/android/htcime/tools/SipTouchPositionRecorder$3;-><init>(Lcom/htc/android/htcime/tools/SipTouchPositionRecorder;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    invoke-virtual {p0}, Lcom/htc/android/htcime/tools/SipTouchPositionRecorder;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0902e7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/htc/android/htcime/tools/SipTouchPositionRecorder;->SHARED_SECRET:Ljava/lang/String;

    .line 97
    return-void

    :cond_0
    move v2, v4

    .line 71
    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 215
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 217
    sget v0, Lcom/htc/android/htcime/tools/HTC_IME_Test;->mSecretOptionCounter:I

    if-le v0, v1, :cond_0

    .line 218
    const v0, 0x7f0902dd

    invoke-interface {p1, v2, v1, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 221
    :cond_0
    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter "item"

    .prologue
    const/4 v6, 0x1

    .line 227
    :try_start_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 250
    :goto_0
    return v6

    .line 229
    :pswitch_0
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "IME_Test"

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 230
    .local v1, reportDir:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 231
    invoke-virtual {p0}, Lcom/htc/android/htcime/tools/SipTouchPositionRecorder;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to find directory: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 245
    .end local v1           #reportDir:Ljava/io/File;
    :catch_0
    move-exception v0

    .line 246
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/htc/android/htcime/tools/SipTouchPositionRecorder;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 247
    const-string v3, "SipTouchPositionRecorder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 235
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #reportDir:Ljava/io/File;
    :cond_0
    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 236
    .local v2, sentReports:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/io/File;>;"
    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v1, v2, v3, v4}, Lcom/htc/android/htcime/tools/SipReportUtil;->findFiles(Ljava/io/File;Ljava/util/ArrayList;Ljava/util/ArrayList;I)Ljava/lang/String;

    .line 242
    sget-object v3, Lcom/htc/android/htcime/tools/SipTouchPositionRecorder;->SHARED_SECRET:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/htc/android/htcime/tools/SipTouchPositionRecorder;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/htc/android/htcime/tools/SipReportUtil;->decryptReport(Ljava/util/ArrayList;Ljava/lang/String;Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 227
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
