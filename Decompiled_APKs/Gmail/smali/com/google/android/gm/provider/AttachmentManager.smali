.class public Lcom/google/android/gm/provider/AttachmentManager;
.super Ljava/lang/Object;
.source "AttachmentManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gm/provider/AttachmentManager$RestrictedMailEngine;
    }
.end annotation


# static fields
.field public static ATTACHMENT_FROM:Ljava/lang/String;

.field private static final sAccountsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sRandom:Ljava/util/Random;


# instance fields
.field private final mAccount:Ljava/lang/String;

.field private final mAccountManager:Landroid/accounts/AccountManager;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private final mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private final mDownloadManager:Landroid/app/DownloadManager;

.field private final mRestrictedMailEngine:Lcom/google/android/gm/provider/AttachmentManager$RestrictedMailEngine;

.field private final mUrls:Lcom/google/android/gm/provider/Urls;

.field private mUsedSpace:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 46
    const-string v0, "attachment_from_sender"

    sput-object v0, Lcom/google/android/gm/provider/AttachmentManager;->ATTACHMENT_FROM:Ljava/lang/String;

    .line 89
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    sput-object v0, Lcom/google/android/gm/provider/AttachmentManager;->sRandom:Ljava/util/Random;

    .line 126
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/AttachmentManager;->sAccountsMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/gm/provider/Urls;Lcom/google/android/gm/provider/AttachmentManager$RestrictedMailEngine;)V
    .locals 2
    .parameter "context"
    .parameter "account"
    .parameter "db"
    .parameter "urls"
    .parameter "restrictedMailEngine"

    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    iput-object p1, p0, Lcom/google/android/gm/provider/AttachmentManager;->mContext:Landroid/content/Context;

    .line 141
    iput-object p2, p0, Lcom/google/android/gm/provider/AttachmentManager;->mAccount:Ljava/lang/String;

    .line 142
    iput-object p3, p0, Lcom/google/android/gm/provider/AttachmentManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 143
    iput-object p4, p0, Lcom/google/android/gm/provider/AttachmentManager;->mUrls:Lcom/google/android/gm/provider/Urls;

    .line 144
    iput-object p5, p0, Lcom/google/android/gm/provider/AttachmentManager;->mRestrictedMailEngine:Lcom/google/android/gm/provider/AttachmentManager$RestrictedMailEngine;

    .line 145
    iget-object v0, p0, Lcom/google/android/gm/provider/AttachmentManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/AttachmentManager;->mContentResolver:Landroid/content/ContentResolver;

    .line 146
    iget-object v0, p0, Lcom/google/android/gm/provider/AttachmentManager;->mContext:Landroid/content/Context;

    const-string v1, "download"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    iput-object v0, p0, Lcom/google/android/gm/provider/AttachmentManager;->mDownloadManager:Landroid/app/DownloadManager;

    .line 147
    iget-object v0, p0, Lcom/google/android/gm/provider/AttachmentManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/AttachmentManager;->mAccountManager:Landroid/accounts/AccountManager;

    .line 148
    invoke-direct {p0, p2}, Lcom/google/android/gm/provider/AttachmentManager;->getUsedSpacePerAccount(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gm/provider/AttachmentManager;->mUsedSpace:J

    .line 150
    iget-object v0, p0, Lcom/google/android/gm/provider/AttachmentManager;->mRestrictedMailEngine:Lcom/google/android/gm/provider/AttachmentManager$RestrictedMailEngine;

    new-instance v1, Lcom/google/android/gm/provider/AttachmentManager$1;

    invoke-direct {v1, p0}, Lcom/google/android/gm/provider/AttachmentManager$1;-><init>(Lcom/google/android/gm/provider/AttachmentManager;)V

    invoke-interface {v0, v1}, Lcom/google/android/gm/provider/AttachmentManager$RestrictedMailEngine;->postBackgroundTask(Ljava/lang/Runnable;)V

    .line 157
    iget-object v0, p0, Lcom/google/android/gm/provider/AttachmentManager;->mRestrictedMailEngine:Lcom/google/android/gm/provider/AttachmentManager$RestrictedMailEngine;

    invoke-interface {v0}, Lcom/google/android/gm/provider/AttachmentManager$RestrictedMailEngine;->enqueueAttachmentDownloadTask()V

    .line 158
    return-void
.end method

.method public static canDownloadAttachment(Landroid/content/Context;Lcom/google/android/gm/provider/Gmail$Attachment;)Z
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1227
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1230
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1231
    if-nez v0, :cond_1

    .line 1239
    :cond_0
    :goto_0
    return v1

    .line 1233
    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    .line 1234
    goto :goto_0

    .line 1235
    :cond_2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1236
    invoke-static {p0}, Landroid/app/DownloadManager;->getMaxBytesOverMobile(Landroid/content/Context;)Ljava/lang/Long;

    move-result-object v0

    .line 1237
    if-eqz v0, :cond_3

    iget v3, p1, Lcom/google/android/gm/provider/Gmail$Attachment;->size:I

    int-to-long v3, v3

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-gtz v0, :cond_4

    :cond_3
    move v0, v2

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method private copyAttachment(JJJLjava/lang/String;Lcom/google/android/gm/provider/Gmail$AttachmentRendition;ZLjava/lang/String;JLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 19
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1096
    if-eqz p9, :cond_5

    sget-object v2, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v2}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 1099
    :goto_0
    move-object/from16 v0, p10

    invoke-static {v2, v0}, Lcom/google/android/gm/provider/AttachmentManager;->getUniqueFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1104
    :try_start_0
    invoke-static/range {p11 .. p12}, Lcom/google/android/gm/provider/AttachmentManager;->isDownloadIdValid(J)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1105
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/provider/AttachmentManager;->mDownloadManager:Landroid/app/DownloadManager;

    move-wide/from16 v0, p11

    invoke-virtual {v2, v0, v1}, Landroid/app/DownloadManager;->openDownloadedFile(J)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 1106
    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v2, v3}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    move-object/from16 v16, v2

    .line 1110
    :goto_1
    new-instance v18, Ljava/io/FileOutputStream;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1124
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 1125
    const/16 v2, 0x1000

    new-array v5, v2, [B

    .line 1126
    const/4 v2, 0x0

    move v15, v2

    .line 1128
    :goto_2
    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/io/InputStream;->read([B)I

    move-result v6

    .line 1129
    const/4 v2, -0x1

    if-eq v6, v2, :cond_8

    .line 1130
    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v2, v6}, Ljava/io/OutputStream;->write([BII)V

    .line 1132
    add-int v2, v15, v6

    .line 1134
    if-nez p9, :cond_0

    .line 1135
    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/google/android/gm/provider/AttachmentManager;->mUsedSpace:J

    int-to-long v9, v6

    add-long v6, v7, v9

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/google/android/gm/provider/AttachmentManager;->mUsedSpace:J

    .line 1140
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v3

    const-wide/32 v8, 0x36ee80

    cmp-long v6, v6, v8

    if-lez v6, :cond_7

    .line 1141
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Timed out reading attachment data."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1175
    :catch_0
    move-exception v2

    .line 1177
    const-string v3, "Gmail"

    const-string v4, "Cannot write to file %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v17, v5, v6

    invoke-static {v3, v2, v4, v5}, Lcom/google/android/gm/provider/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1178
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, v17

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 1180
    const/16 v12, 0x3e8

    const/4 v13, 0x0

    move-object/from16 v2, p0

    move-wide/from16 v3, p1

    move-wide/from16 v5, p3

    move-wide/from16 v7, p5

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move/from16 v11, p9

    move/from16 v14, p14

    invoke-direct/range {v2 .. v14}, Lcom/google/android/gm/provider/AttachmentManager;->onAttachmentDownloadFinished(JJJLjava/lang/String;Lcom/google/android/gm/provider/Gmail$AttachmentRendition;ZILjava/lang/String;Z)V

    .line 1185
    :cond_1
    :goto_3
    if-eqz p14, :cond_2

    :try_start_2
    invoke-static/range {p11 .. p12}, Lcom/google/android/gm/provider/AttachmentManager;->isDownloadIdValid(J)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1187
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/provider/AttachmentManager;->mDownloadManager:Landroid/app/DownloadManager;

    const/4 v3, 0x1

    new-array v3, v3, [J

    const/4 v4, 0x0

    aput-wide p11, v3, v4

    invoke-virtual {v2, v3}, Landroid/app/DownloadManager;->remove([J)I
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_4

    .line 1194
    :cond_2
    :goto_4
    if-eqz v16, :cond_3

    .line 1195
    :try_start_3
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V

    .line 1197
    :cond_3
    if-eqz v18, :cond_4

    .line 1198
    invoke-virtual/range {v18 .. v18}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 1202
    :cond_4
    :goto_5
    return-void

    .line 1096
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/provider/AttachmentManager;->mAccount:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/gm/provider/AttachmentManager;->getCacheDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 1108
    :cond_6
    :try_start_4
    new-instance v2, Ljava/io/FileInputStream;

    invoke-static/range {p13 .. p13}, Lcom/google/android/gm/provider/AttachmentManager;->getPathFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_2

    move-object/from16 v16, v2

    goto/16 :goto_1

    .line 1111
    :catch_1
    move-exception v2

    .line 1112
    const-string v2, "Gmail"

    const-string v3, "File not found for download %d or file %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {p11 .. p12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p13, v4, v5

    invoke-static {v2, v3, v4}, Lcom/google/android/gm/provider/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1113
    const/16 v12, 0x3e8

    const/4 v13, 0x0

    move-object/from16 v2, p0

    move-wide/from16 v3, p1

    move-wide/from16 v5, p3

    move-wide/from16 v7, p5

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move/from16 v11, p9

    move/from16 v14, p14

    invoke-direct/range {v2 .. v14}, Lcom/google/android/gm/provider/AttachmentManager;->onAttachmentDownloadFinished(JJJLjava/lang/String;Lcom/google/android/gm/provider/Gmail$AttachmentRendition;ZILjava/lang/String;Z)V

    goto :goto_5

    .line 1116
    :catch_2
    move-exception v2

    .line 1117
    const-string v2, "Gmail"

    const-string v3, "This maybe called from tests where we don\'t have Download Manager."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/google/android/gm/provider/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1118
    const/16 v12, 0xc8

    const/4 v13, 0x0

    move-object/from16 v2, p0

    move-wide/from16 v3, p1

    move-wide/from16 v5, p3

    move-wide/from16 v7, p5

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move/from16 v11, p9

    move/from16 v14, p14

    invoke-direct/range {v2 .. v14}, Lcom/google/android/gm/provider/AttachmentManager;->onAttachmentDownloadFinished(JJJLjava/lang/String;Lcom/google/android/gm/provider/Gmail$AttachmentRendition;ZILjava/lang/String;Z)V

    goto :goto_5

    :cond_7
    move v15, v2

    .line 1143
    goto/16 :goto_2

    .line 1145
    :cond_8
    :try_start_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1146
    const/16 v12, 0xc8

    move-object/from16 v2, p0

    move-wide/from16 v3, p1

    move-wide/from16 v5, p3

    move-wide/from16 v7, p5

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move/from16 v11, p9

    move/from16 v14, p14

    invoke-direct/range {v2 .. v14}, Lcom/google/android/gm/provider/AttachmentManager;->onAttachmentDownloadFinished(JJJLjava/lang/String;Lcom/google/android/gm/provider/Gmail$AttachmentRendition;ZILjava/lang/String;Z)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 1150
    if-eqz p9, :cond_1

    .line 1151
    if-nez p16, :cond_a

    move-object/from16 v4, p17

    .line 1153
    :goto_6
    if-nez v4, :cond_9

    move-object/from16 v4, p10

    .line 1160
    :cond_9
    :try_start_6
    invoke-static/range {p10 .. p10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    move-object/from16 v3, p10

    .line 1162
    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/provider/AttachmentManager;->mDownloadManager:Landroid/app/DownloadManager;

    const/4 v5, 0x1

    int-to-long v8, v15

    const/4 v10, 0x0

    move-object/from16 v6, p15

    move-object/from16 v7, v17

    invoke-virtual/range {v2 .. v10}, Landroid/app/DownloadManager;->addCompletedDownload(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;JZ)J
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 1171
    :goto_8
    :try_start_7
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1172
    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1173
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gm/provider/AttachmentManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_3

    .line 1151
    :cond_a
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p16, v2, v3

    move-object/from16 v0, p18

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    move-result-object v4

    goto :goto_6

    .line 1160
    :cond_b
    :try_start_8
    invoke-static/range {v17 .. v17}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    move-result-object v3

    goto :goto_7

    .line 1166
    :catch_3
    move-exception v2

    .line 1169
    :try_start_9
    const-string v3, "Gmail"

    const-string v4, "Failed to save download to Downloads app."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v2, v4, v5}, Lcom/google/android/gm/provider/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0

    goto :goto_8

    .line 1189
    :catch_4
    move-exception v2

    .line 1190
    const-string v2, "Gmail"

    const-string v3, "This maybe called from tests where we don\'t have Download Manager."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/google/android/gm/provider/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_4

    .line 1200
    :catch_5
    move-exception v2

    goto/16 :goto_5
.end method

.method private deleteAttachment(JJLjava/lang/String;)V
    .locals 7
    .parameter "conversationId"
    .parameter "attachmentId"
    .parameter "fileUri"

    .prologue
    const/4 v3, -0x1

    .line 574
    if-eqz p5, :cond_0

    .line 575
    new-instance v1, Ljava/io/File;

    invoke-static {p5}, Lcom/google/android/gm/provider/AttachmentManager;->getPathFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 582
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 583
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "status"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 584
    const-string v1, "downloadId"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 585
    iget-object v1, p0, Lcom/google/android/gm/provider/AttachmentManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "attachments"

    const-string v3, "_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 587
    invoke-direct {p0, p1, p2}, Lcom/google/android/gm/provider/AttachmentManager;->notifyChanged(J)V

    .line 588
    return-void
.end method

.method public static getAccountFromDownloadId(J)Ljava/lang/String;
    .locals 2
    .parameter "downloadId"

    .prologue
    .line 135
    sget-object v0, Lcom/google/android/gm/provider/AttachmentManager;->sAccountsMap:Ljava/util/Map;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private getCacheDir(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "account"

    .prologue
    .line 220
    iget-object v0, p0, Lcom/google/android/gm/provider/AttachmentManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getPathFromUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "fileUri"

    .prologue
    .line 247
    const-string v0, "file://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 250
    :cond_0
    return-object p0
.end method

.method private static getUniqueFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "path"
    .parameter "fileName"

    .prologue
    const/4 v7, 0x0

    const/4 v9, -0x1

    .line 1031
    const/16 v8, 0x2e

    invoke-virtual {p1, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 1032
    .local v1, dotPosition:I
    const-string v2, ""

    .line 1033
    .local v2, extension:Ljava/lang/String;
    if-eq v1, v9, :cond_0

    .line 1034
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 1035
    const/4 v8, 0x0

    invoke-virtual {p1, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 1040
    :cond_0
    sget-char v8, Ljava/io/File;->separatorChar:C

    invoke-virtual {p1, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-eq v8, v9, :cond_1

    .line 1041
    sget-char v8, Ljava/io/File;->separatorChar:C

    const/16 v9, 0x5f

    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 1045
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1046
    .local v0, dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_5

    .line 1047
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 1053
    :cond_2
    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 1054
    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1057
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1058
    .local v3, fullFileName:Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_6

    .line 1084
    .end local v3           #fullFileName:Ljava/lang/String;
    :cond_4
    :goto_0
    return-object v3

    .line 1048
    :cond_5
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-nez v8, :cond_2

    move-object v3, v7

    .line 1049
    goto :goto_0

    .line 1061
    .restart local v3       #fullFileName:Ljava/lang/String;
    :cond_6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1074
    const/4 v6, 0x1

    .line 1075
    .local v6, sequence:I
    const/4 v5, 0x1

    .local v5, magnitude:I
    :goto_1
    const v8, 0x3b9aca00

    if-ge v5, v8, :cond_8

    .line 1076
    const/4 v4, 0x0

    .local v4, iteration:I
    :goto_2
    const/16 v8, 0x9

    if-ge v4, v8, :cond_7

    .line 1077
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1078
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1081
    sget-object v8, Lcom/google/android/gm/provider/AttachmentManager;->sRandom:Ljava/util/Random;

    invoke-virtual {v8, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    add-int/2addr v6, v8

    .line 1076
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1075
    :cond_7
    mul-int/lit8 v5, v5, 0xa

    goto :goto_1

    .end local v4           #iteration:I
    :cond_8
    move-object v3, v7

    .line 1084
    goto :goto_0
.end method

.method private getUsedSpacePerAccount(Ljava/lang/String;)J
    .locals 9
    .parameter "account"

    .prologue
    .line 230
    const-wide/16 v5, 0x0

    .line 231
    .local v5, usedSpace:J
    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/google/android/gm/provider/AttachmentManager;->getCacheDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 232
    .local v0, accountDir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 233
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .local v1, arr$:[Ljava/io/File;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v2, v1, v3

    .line 234
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v7

    add-long/2addr v5, v7

    .line 233
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 237
    .end local v1           #arr$:[Ljava/io/File;
    .end local v2           #file:Ljava/io/File;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_0
    return-wide v5
.end method

.method private static isDownloadIdValid(J)Z
    .locals 2
    .parameter "downloadId"

    .prologue
    .line 210
    const-wide/16 v0, -0x1

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDownloadStillPresent(Ljava/lang/String;)Z
    .locals 2
    .parameter "fileUri"

    .prologue
    .line 564
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/google/android/gm/provider/AttachmentManager;->getPathFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method private isLowSpace()Z
    .locals 13

    .prologue
    const/high16 v12, 0x3e80

    const/4 v9, 0x0

    .line 259
    iget-object v10, p0, Lcom/google/android/gm/provider/AttachmentManager;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 260
    .local v0, cacheDir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v5

    .line 261
    .local v5, totalSpace:J
    invoke-virtual {v0}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v7

    .line 262
    .local v7, usableSpace:J
    const/4 v2, 0x1

    .line 265
    .local v2, numberOfAccounts:I
    :try_start_0
    iget-object v10, p0, Lcom/google/android/gm/provider/AttachmentManager;->mAccountManager:Landroid/accounts/AccountManager;

    invoke-virtual {v10}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v10

    array-length v2, v10
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    long-to-float v10, v5

    mul-float/2addr v10, v12

    int-to-float v11, v2

    div-float/2addr v10, v11

    float-to-long v3, v10

    .line 276
    .local v3, perAccountSpace:J
    iget-wide v10, p0, Lcom/google/android/gm/provider/AttachmentManager;->mUsedSpace:J

    cmp-long v10, v10, v3

    if-ltz v10, :cond_0

    .line 277
    const-wide/16 v10, 0x0

    iput-wide v10, p0, Lcom/google/android/gm/provider/AttachmentManager;->mUsedSpace:J

    .line 278
    iget-object v10, p0, Lcom/google/android/gm/provider/AttachmentManager;->mAccount:Ljava/lang/String;

    invoke-direct {p0, v10}, Lcom/google/android/gm/provider/AttachmentManager;->getUsedSpacePerAccount(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, p0, Lcom/google/android/gm/provider/AttachmentManager;->mUsedSpace:J

    .line 281
    :cond_0
    long-to-float v10, v7

    long-to-float v11, v5

    mul-float/2addr v11, v12

    cmpg-float v10, v10, v11

    if-gez v10, :cond_1

    iget-wide v10, p0, Lcom/google/android/gm/provider/AttachmentManager;->mUsedSpace:J

    cmp-long v10, v10, v3

    if-ltz v10, :cond_1

    const/4 v9, 0x1

    .end local v3           #perAccountSpace:J
    :cond_1
    :goto_0
    return v9

    .line 266
    :catch_0
    move-exception v1

    .line 267
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v10, "Gmail"

    const-string v11, "This maybe called from tests where we don\'t have Account Manager."

    new-array v12, v9, [Ljava/lang/Object;

    invoke-static {v10, v11, v12}, Lcom/google/android/gm/provider/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public static isStatusError(I)Z
    .locals 1
    .parameter "status"

    .prologue
    .line 199
    const/16 v0, 0xc8

    if-le p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isStatusPending(I)Z
    .locals 1
    .parameter "status"

    .prologue
    .line 171
    const/16 v0, 0xbe

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isStatusRunning(I)Z
    .locals 1
    .parameter "status"

    .prologue
    .line 178
    const/16 v0, 0xc0

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isStatusSuccess(I)Z
    .locals 1
    .parameter "status"

    .prologue
    .line 192
    const/16 v0, 0xc8

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isStatusValid(I)Z
    .locals 1
    .parameter "status"

    .prologue
    .line 164
    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private newAttachmentCursor(JLjava/lang/String;Lcom/google/android/gm/provider/Gmail$AttachmentRendition;Z[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .parameter "messageId"
    .parameter "partId"
    .parameter "rendition"
    .parameter "saveToSd"
    .parameter "projection"

    .prologue
    const/4 v5, 0x0

    .line 665
    iget-object v0, p0, Lcom/google/android/gm/provider/AttachmentManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "attachments"

    const-string v3, "messages_messageId = ? AND messages_partId = ? AND desiredRendition = ? AND saveToSd = ?"

    const/4 v2, 0x4

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v2

    const/4 v2, 0x1

    aput-object p3, v4, v2

    const/4 v2, 0x2

    invoke-virtual {p4}, Lcom/google/android/gm/provider/Gmail$AttachmentRendition;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v2

    const/4 v2, 0x3

    if-eqz p5, :cond_0

    const-wide/16 v6, 0x1

    :goto_0
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v2

    move-object v2, p6

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 670
    .local v8, cursor:Landroid/database/Cursor;
    return-object v8

    .line 665
    .end local v8           #cursor:Landroid/database/Cursor;
    :cond_0
    const-wide/16 v6, 0x0

    goto :goto_0
.end method

.method private notifyChanged(J)V
    .locals 4
    .parameter "conversationId"

    .prologue
    .line 300
    iget-object v0, p0, Lcom/google/android/gm/provider/AttachmentManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/provider/AttachmentManager;->mAccount:Ljava/lang/String;

    invoke-static {v1, p1, p2}, Lcom/google/android/gm/provider/Gmail;->getAttachmentsForConversationUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 303
    return-void
.end method

.method private onAttachmentDownloadFinished(JJJLjava/lang/String;Lcom/google/android/gm/provider/Gmail$AttachmentRendition;ZILjava/lang/String;Z)V
    .locals 8
    .parameter "attachmentId"
    .parameter "conversationId"
    .parameter "messageId"
    .parameter "partId"
    .parameter "rendition"
    .parameter "saveToSd"
    .parameter "status"
    .parameter "fileUri"
    .parameter "shouldNotifyObserver"

    .prologue
    .line 904
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 905
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "downloadId"

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 906
    if-eqz p11, :cond_0

    .line 907
    const-string v2, "filename"

    move-object/from16 v0, p11

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 909
    :cond_0
    const-string v2, "status"

    invoke-static/range {p10 .. p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 910
    iget-object v2, p0, Lcom/google/android/gm/provider/AttachmentManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "attachments"

    const-string v4, "_id = ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 913
    iget-object v2, p0, Lcom/google/android/gm/provider/AttachmentManager;->mRestrictedMailEngine:Lcom/google/android/gm/provider/AttachmentManager$RestrictedMailEngine;

    invoke-interface {v2}, Lcom/google/android/gm/provider/AttachmentManager$RestrictedMailEngine;->enqueueAttachmentDownloadTask()V

    .line 914
    return-void
.end method

.method private purgeAttachmentEntries(Ljava/util/List;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 596
    .local p1, attachmentIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 597
    .local v2, numDownloads:I
    if-lez v2, :cond_2

    .line 598
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 599
    .local v3, whereSb:Ljava/lang/StringBuilder;
    const-string v4, "_id IN ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 600
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 601
    if-lez v1, :cond_0

    .line 602
    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 607
    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 608
    .local v0, attachmentId:Ljava/lang/Long;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 600
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 610
    .end local v0           #attachmentId:Ljava/lang/Long;
    :cond_1
    const/16 v4, 0x29

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 612
    iget-object v4, p0, Lcom/google/android/gm/provider/AttachmentManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "attachments"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 614
    .end local v1           #i:I
    .end local v3           #whereSb:Ljava/lang/StringBuilder;
    :cond_2
    return-void
.end method

.method private purgeInvalidAttachments()V
    .locals 15

    .prologue
    .line 936
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v10

    .line 937
    .local v10, attachmentIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v13

    .line 938
    .local v13, fileNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/google/android/gm/provider/AttachmentManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "attachments"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "filename"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "saveToSd"

    aput-object v4, v2, v3

    const-string v3, "status NOT IN (?, ?, ?, ?)"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const/16 v6, 0xbe

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/16 v6, 0xc0

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const/16 v6, 0xc1

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const/16 v6, 0xc8

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 946
    .local v11, cursor:Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 947
    const/4 v0, 0x0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 948
    .local v8, attachmentId:J
    const/4 v0, 0x1

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 949
    .local v12, fileName:Ljava/lang/String;
    const/4 v0, 0x2

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v14, 0x1

    .line 950
    .local v14, saveToSd:Z
    :goto_1
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 951
    if-eqz v14, :cond_0

    const/4 v12, 0x0

    .end local v12           #fileName:Ljava/lang/String;
    :cond_0
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 954
    .end local v8           #attachmentId:J
    .end local v14           #saveToSd:Z
    :catchall_0
    move-exception v0

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v0

    .line 949
    .restart local v8       #attachmentId:J
    .restart local v12       #fileName:Ljava/lang/String;
    :cond_1
    const/4 v14, 0x0

    goto :goto_1

    .line 954
    .end local v8           #attachmentId:J
    .end local v12           #fileName:Ljava/lang/String;
    :cond_2
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 958
    invoke-direct {p0, v13}, Lcom/google/android/gm/provider/AttachmentManager;->purgeOldAttachmentFiles(Ljava/util/List;)V

    .line 961
    invoke-direct {p0, v10}, Lcom/google/android/gm/provider/AttachmentManager;->purgeAttachmentEntries(Ljava/util/List;)V

    .line 962
    return-void
.end method

.method private purgeInvalidDownloadingAttachments()V
    .locals 23

    .prologue
    .line 968
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v12

    .line 969
    .local v12, attachmentIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v19

    .line 970
    .local v19, fileNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/provider/AttachmentManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "attachments"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "downloadId"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "filename"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "saveToSd"

    aput-object v6, v4, v5

    const-string v5, "status = ?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const/16 v8, 0xc0

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 975
    .local v14, cursor:Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 976
    const/4 v2, 0x0

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 977
    .local v10, attachmentId:J
    const/4 v2, 0x1

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 978
    .local v16, downloadId:J
    new-instance v2, Landroid/app/DownloadManager$Query;

    invoke-direct {v2}, Landroid/app/DownloadManager$Query;-><init>()V

    const/4 v3, 0x1

    new-array v3, v3, [J

    const/4 v4, 0x0

    aput-wide v16, v3, v4

    invoke-virtual {v2, v3}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    move-result-object v20

    .line 979
    .local v20, query:Landroid/app/DownloadManager$Query;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/provider/AttachmentManager;->mDownloadManager:Landroid/app/DownloadManager;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v15

    .line 981
    .local v15, downloadCursor:Landroid/database/Cursor;
    :try_start_1
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 982
    const-string v2, "status"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 984
    .local v13, columnStatus:I
    invoke-interface {v15, v13}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v22

    .line 985
    .local v22, status:I
    const/4 v2, 0x1

    move/from16 v0, v22

    if-eq v0, v2, :cond_0

    const/4 v2, 0x2

    move/from16 v0, v22

    if-eq v0, v2, :cond_0

    const/4 v2, 0x4

    move/from16 v0, v22

    if-ne v0, v2, :cond_1

    .line 994
    :cond_0
    :try_start_2
    invoke-interface {v15}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1002
    .end local v10           #attachmentId:J
    .end local v13           #columnStatus:I
    .end local v15           #downloadCursor:Landroid/database/Cursor;
    .end local v16           #downloadId:J
    .end local v20           #query:Landroid/app/DownloadManager$Query;
    .end local v22           #status:I
    :catchall_0
    move-exception v2

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    throw v2

    .line 994
    .restart local v10       #attachmentId:J
    .restart local v15       #downloadCursor:Landroid/database/Cursor;
    .restart local v16       #downloadId:J
    .restart local v20       #query:Landroid/app/DownloadManager$Query;
    :cond_1
    :try_start_3
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 996
    const/4 v2, 0x2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 997
    .local v18, fileName:Ljava/lang/String;
    const/4 v2, 0x3

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_3

    const/16 v21, 0x1

    .line 998
    .local v21, saveToSd:Z
    :goto_1
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 999
    if-eqz v21, :cond_2

    const/16 v18, 0x0

    .end local v18           #fileName:Ljava/lang/String;
    :cond_2
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 994
    .end local v21           #saveToSd:Z
    :catchall_1
    move-exception v2

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 997
    .restart local v18       #fileName:Ljava/lang/String;
    :cond_3
    const/16 v21, 0x0

    goto :goto_1

    .line 1002
    .end local v10           #attachmentId:J
    .end local v15           #downloadCursor:Landroid/database/Cursor;
    .end local v16           #downloadId:J
    .end local v18           #fileName:Ljava/lang/String;
    .end local v20           #query:Landroid/app/DownloadManager$Query;
    :cond_4
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 1006
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/google/android/gm/provider/AttachmentManager;->purgeOldAttachmentFiles(Ljava/util/List;)V

    .line 1009
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/google/android/gm/provider/AttachmentManager;->purgeAttachmentEntries(Ljava/util/List;)V

    .line 1010
    return-void
.end method

.method private purgeOldAttachmentFiles(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1013
    .local p1, fileUris:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_1

    .line 1014
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1015
    .local v0, fileUri:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1016
    new-instance v2, Ljava/io/File;

    invoke-static {v0}, Lcom/google/android/gm/provider/AttachmentManager;->getPathFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 1020
    .end local v0           #fileUri:Ljava/lang/String;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method private static requestDescription(JJLjava/lang/String;Lcom/google/android/gm/provider/Gmail$AttachmentRendition;Z)Ljava/lang/String;
    .locals 3
    .parameter "conversationId"
    .parameter "messageId"
    .parameter "partId"
    .parameter "rendition"
    .parameter "saveToSd"

    .prologue
    .line 290
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "conversationId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", messageId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", partId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", rendition = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p5}, Lcom/google/android/gm/provider/Gmail$AttachmentRendition;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", saveToSd = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p6}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 293
    .local v0, requestDescription:Ljava/lang/String;
    return-object v0
.end method

.method private startAttachmentDownloadInDownloadManager(JJZ)V
    .locals 33
    .parameter "attachmentId"
    .parameter "copyAttachmentId"
    .parameter "wifiOnly"

    .prologue
    .line 335
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gm/provider/AttachmentManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->isDbLockedByCurrentThread()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 338
    const-string v3, "Gmail"

    const-string v4, "SQLiteDatabase lock held beforecalling startAttachmentDownloadInDownloadManager"

    const/16 v29, 0x0

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-static {v3, v4, v0}, Lcom/google/android/gm/provider/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 341
    :cond_0
    const/16 v3, 0x8

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "messages_conversation"

    aput-object v4, v5, v3

    const/4 v3, 0x1

    const-string v4, "messages_messageId"

    aput-object v4, v5, v3

    const/4 v3, 0x2

    const-string v4, "messages_partId"

    aput-object v4, v5, v3

    const/4 v3, 0x3

    const-string v4, "originExtras"

    aput-object v4, v5, v3

    const/4 v3, 0x4

    const-string v4, "downloadedRendition"

    aput-object v4, v5, v3

    const/4 v3, 0x5

    const-string v4, "saveToSd"

    aput-object v4, v5, v3

    const/4 v3, 0x6

    const-string v4, "filename"

    aput-object v4, v5, v3

    const/4 v3, 0x7

    const-string v4, "automatic"

    aput-object v4, v5, v3

    .line 344
    .local v5, attachmentProjection:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gm/provider/AttachmentManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "attachments"

    const-string v6, "_id = ?"

    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v7, v0, [Ljava/lang/String;

    const/16 v29, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v30

    aput-object v30, v7, v29

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 347
    .local v13, attachmentCursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 348
    const-string v3, "Gmail"

    const-string v4, "Cannot find attachment %d"

    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    aput-object v31, v29, v30

    move-object/from16 v0, v29

    invoke-static {v3, v4, v0}, Lcom/google/android/gm/provider/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 432
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 434
    :goto_0
    return-void

    .line 352
    :cond_1
    const/4 v3, 0x0

    :try_start_1
    invoke-interface {v13, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 353
    .local v6, conversationId:J
    const/4 v3, 0x1

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 354
    .local v8, messageId:J
    const/4 v3, 0x2

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 355
    .local v10, partId:Ljava/lang/String;
    const/4 v3, 0x3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 356
    .local v20, originExtras:Ljava/lang/String;
    const/4 v3, 0x4

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gm/provider/Gmail$AttachmentRendition;->valueOf(Ljava/lang/String;)Lcom/google/android/gm/provider/Gmail$AttachmentRendition;

    move-result-object v11

    .line 358
    .local v11, rendition:Lcom/google/android/gm/provider/Gmail$AttachmentRendition;
    const/4 v3, 0x5

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_2

    const/4 v12, 0x1

    .line 359
    .local v12, saveToSd:Z
    :goto_1
    const/4 v3, 0x6

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 361
    .local v18, fileName:Ljava/lang/String;
    invoke-static/range {v6 .. v12}, Lcom/google/android/gm/provider/AttachmentManager;->requestDescription(JJLjava/lang/String;Lcom/google/android/gm/provider/Gmail$AttachmentRendition;Z)Ljava/lang/String;

    move-result-object v23

    .line 365
    .local v23, requestDescription:Ljava/lang/String;
    sget-object v3, Lcom/google/android/gm/provider/Gmail$AttachmentRendition;->SIMPLE:Lcom/google/android/gm/provider/Gmail$AttachmentRendition;

    if-eq v11, v3, :cond_3

    const/16 v19, 0x1

    .line 366
    .local v19, fullVersion:Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gm/provider/AttachmentManager;->mUrls:Lcom/google/android/gm/provider/Urls;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gm/provider/AttachmentManager;->mRestrictedMailEngine:Lcom/google/android/gm/provider/AttachmentManager$RestrictedMailEngine;

    invoke-interface {v4}, Lcom/google/android/gm/provider/AttachmentManager$RestrictedMailEngine;->getRequestVersion()I

    move-result v4

    const/16 v29, 0x60

    move-object/from16 v0, v20

    move/from16 v1, v29

    move/from16 v2, v19

    invoke-virtual {v3, v4, v0, v1, v2}, Lcom/google/android/gm/provider/Urls;->getFetchAttachmentUri(ILjava/lang/String;IZ)Ljava/net/URI;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v27

    .line 369
    .local v27, uri:Ljava/net/URI;
    const/4 v14, 0x0

    .line 371
    .local v14, authToken:Ljava/lang/String;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gm/provider/AttachmentManager;->mRestrictedMailEngine:Lcom/google/android/gm/provider/AttachmentManager$RestrictedMailEngine;

    invoke-interface {v3}, Lcom/google/android/gm/provider/AttachmentManager$RestrictedMailEngine;->getAuthToken()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v14

    .line 376
    :goto_3
    if-nez v14, :cond_4

    .line 380
    :try_start_3
    const-string v3, "Gmail"

    const-string v4, "Authentication failed for attachment %d, %s"

    const/16 v29, 0x2

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    aput-object v31, v29, v30

    const/16 v30, 0x1

    aput-object v23, v29, v30

    move-object/from16 v0, v29

    invoke-static {v3, v4, v0}, Lcom/google/android/gm/provider/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 432
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 358
    .end local v12           #saveToSd:Z
    .end local v14           #authToken:Ljava/lang/String;
    .end local v18           #fileName:Ljava/lang/String;
    .end local v19           #fullVersion:Z
    .end local v23           #requestDescription:Ljava/lang/String;
    .end local v27           #uri:Ljava/net/URI;
    :cond_2
    const/4 v12, 0x0

    goto :goto_1

    .line 365
    .restart local v12       #saveToSd:Z
    .restart local v18       #fileName:Ljava/lang/String;
    .restart local v23       #requestDescription:Ljava/lang/String;
    :cond_3
    const/16 v19, 0x0

    goto :goto_2

    .line 385
    .restart local v14       #authToken:Ljava/lang/String;
    .restart local v19       #fullVersion:Z
    .restart local v27       #uri:Ljava/net/URI;
    :cond_4
    :try_start_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gm/provider/AttachmentManager;->mAccount:Ljava/lang/String;

    invoke-static {v3, v14}, Lcom/google/android/gm/provider/Urls;->getCookieString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 387
    .local v15, cookieHeader:Ljava/lang/String;
    invoke-virtual/range {v27 .. v27}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v21

    .line 388
    .local v21, originalUrl:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gm/provider/AttachmentManager;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v3}, Lcom/google/android/common/http/UrlRules;->getRules(Landroid/content/ContentResolver;)Lcom/google/android/common/http/UrlRules;

    move-result-object v26

    .line 389
    .local v26, rules:Lcom/google/android/common/http/UrlRules;
    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/common/http/UrlRules;->matchRule(Ljava/lang/String;)Lcom/google/android/common/http/UrlRules$Rule;

    move-result-object v25

    .line 390
    .local v25, rule:Lcom/google/android/common/http/UrlRules$Rule;
    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/common/http/UrlRules$Rule;->apply(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 392
    .local v24, rewrittenUrl:Ljava/lang/String;
    if-nez v24, :cond_5

    .line 393
    const-string v3, "Gmail"

    const-string v4, "Abandon download of %s because it is blocked by rules."

    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    aput-object v27, v29, v30

    move-object/from16 v0, v29

    invoke-static {v3, v4, v0}, Lcom/google/android/gm/provider/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 395
    new-instance v28, Landroid/content/ContentValues;

    invoke-direct/range {v28 .. v28}, Landroid/content/ContentValues;-><init>()V

    .line 396
    .local v28, values:Landroid/content/ContentValues;
    const-string v3, "status"

    const/16 v4, 0x3e8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 397
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gm/provider/AttachmentManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "attachments"

    const-string v29, "_id = ? OR _id = ?"

    const/16 v30, 0x2

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v32

    aput-object v32, v30, v31

    const/16 v31, 0x1

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v32

    aput-object v32, v30, v31

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v3, v4, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 430
    :goto_4
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/google/android/gm/provider/AttachmentManager;->notifyChanged(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 432
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 406
    .end local v28           #values:Landroid/content/ContentValues;
    :cond_5
    :try_start_5
    new-instance v3, Landroid/app/DownloadManager$Request;

    invoke-static/range {v24 .. v24}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    const-string v4, "Cookie"

    invoke-virtual {v3, v4, v15}, Landroid/app/DownloadManager$Request;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/app/DownloadManager$Request;->setTitle(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/DownloadManager$Request;->setVisibleInDownloadsUi(Z)Landroid/app/DownloadManager$Request;

    move-result-object v22

    .line 408
    .local v22, request:Landroid/app/DownloadManager$Request;
    const-wide/16 v3, -0x1

    cmp-long v3, p3, v3

    if-nez v3, :cond_6

    .line 409
    const/4 v3, 0x2

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    .line 414
    :cond_6
    if-eqz p5, :cond_7

    .line 415
    const/4 v3, 0x2

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/app/DownloadManager$Request;->setAllowedNetworkTypes(I)Landroid/app/DownloadManager$Request;

    .line 418
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gm/provider/AttachmentManager;->mDownloadManager:Landroid/app/DownloadManager;

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    move-result-wide v16

    .line 419
    .local v16, downloadId:J
    sget-object v3, Lcom/google/android/gm/provider/AttachmentManager;->sAccountsMap:Ljava/util/Map;

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/AttachmentManager;->mAccount:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    new-instance v28, Landroid/content/ContentValues;

    invoke-direct/range {v28 .. v28}, Landroid/content/ContentValues;-><init>()V

    .line 422
    .restart local v28       #values:Landroid/content/ContentValues;
    const-string v3, "downloadId"

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 423
    const-string v3, "status"

    const/16 v4, 0xc0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 424
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gm/provider/AttachmentManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "attachments"

    const-string v29, "_id = ? OR _id = ?"

    const/16 v30, 0x2

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v32

    aput-object v32, v30, v31

    const/16 v31, 0x1

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v32

    aput-object v32, v30, v31

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v3, v4, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 427
    const-string v3, "Gmail"

    const-string v4, "ATTACHMENT: start downloading attachment %d dlid=%d, %s"

    const/16 v29, 0x3

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    aput-object v31, v29, v30

    const/16 v30, 0x1

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    aput-object v31, v29, v30

    const/16 v30, 0x2

    aput-object v23, v29, v30

    move-object/from16 v0, v29

    invoke-static {v3, v4, v0}, Lcom/google/android/gm/provider/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_4

    .line 432
    .end local v6           #conversationId:J
    .end local v8           #messageId:J
    .end local v10           #partId:Ljava/lang/String;
    .end local v11           #rendition:Lcom/google/android/gm/provider/Gmail$AttachmentRendition;
    .end local v12           #saveToSd:Z
    .end local v14           #authToken:Ljava/lang/String;
    .end local v15           #cookieHeader:Ljava/lang/String;
    .end local v16           #downloadId:J
    .end local v18           #fileName:Ljava/lang/String;
    .end local v19           #fullVersion:Z
    .end local v20           #originExtras:Ljava/lang/String;
    .end local v21           #originalUrl:Ljava/lang/String;
    .end local v22           #request:Landroid/app/DownloadManager$Request;
    .end local v23           #requestDescription:Ljava/lang/String;
    .end local v24           #rewrittenUrl:Ljava/lang/String;
    .end local v25           #rule:Lcom/google/android/common/http/UrlRules$Rule;
    .end local v26           #rules:Lcom/google/android/common/http/UrlRules;
    .end local v27           #uri:Ljava/net/URI;
    .end local v28           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v3

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    throw v3

    .line 372
    .restart local v6       #conversationId:J
    .restart local v8       #messageId:J
    .restart local v10       #partId:Ljava/lang/String;
    .restart local v11       #rendition:Lcom/google/android/gm/provider/Gmail$AttachmentRendition;
    .restart local v12       #saveToSd:Z
    .restart local v14       #authToken:Ljava/lang/String;
    .restart local v18       #fileName:Ljava/lang/String;
    .restart local v19       #fullVersion:Z
    .restart local v20       #originExtras:Ljava/lang/String;
    .restart local v23       #requestDescription:Ljava/lang/String;
    .restart local v27       #uri:Ljava/net/URI;
    :catch_0
    move-exception v3

    goto/16 :goto_3
.end method


# virtual methods
.method public cancelDownloadRequest(JJLjava/lang/String;Lcom/google/android/gm/provider/Gmail$AttachmentRendition;Z)I
    .locals 13
    .parameter "conversationId"
    .parameter "messageId"
    .parameter "partId"
    .parameter "rendition"
    .parameter "saveToSd"

    .prologue
    .line 736
    const-string v0, "Gmail"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/gm/provider/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 737
    invoke-static/range {p1 .. p7}, Lcom/google/android/gm/provider/AttachmentManager;->requestDescription(JJLjava/lang/String;Lcom/google/android/gm/provider/Gmail$AttachmentRendition;Z)Ljava/lang/String;

    move-result-object v11

    .line 739
    .local v11, requestDescription:Ljava/lang/String;
    const-string v0, "Gmail"

    const-string v1, "cancelDownloadRequest: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v11, v2, v6

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 742
    .end local v11           #requestDescription:Ljava/lang/String;
    :cond_0
    const/4 v0, 0x5

    new-array v6, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v6, v0

    const/4 v0, 0x1

    const-string v1, "downloadId"

    aput-object v1, v6, v0

    const/4 v0, 0x2

    const-string v1, "automatic"

    aput-object v1, v6, v0

    const/4 v0, 0x3

    const-string v1, "status"

    aput-object v1, v6, v0

    const/4 v0, 0x4

    const-string v1, "filename"

    aput-object v1, v6, v0

    move-object v0, p0

    move-wide/from16 v1, p3

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move/from16 v5, p7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gm/provider/AttachmentManager;->newAttachmentCursor(JLjava/lang/String;Lcom/google/android/gm/provider/Gmail$AttachmentRendition;Z[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 746
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 747
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 748
    .local v3, attachmentId:J
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 749
    .local v9, downloadId:J
    const/4 v0, 0x2

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v7, 0x1

    .line 750
    .local v7, automatic:Z
    :goto_0
    const/4 v0, 0x3

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 751
    .local v12, status:I
    const/4 v0, 0x4

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 754
    .local v5, fileName:Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/gm/provider/AttachmentManager;->mDownloadManager:Landroid/app/DownloadManager;

    if-eqz v0, :cond_1

    invoke-static {v9, v10}, Lcom/google/android/gm/provider/AttachmentManager;->isDownloadIdValid(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 755
    iget-object v0, p0, Lcom/google/android/gm/provider/AttachmentManager;->mDownloadManager:Landroid/app/DownloadManager;

    const/4 v1, 0x1

    new-array v1, v1, [J

    const/4 v2, 0x0

    aput-wide v9, v1, v2

    invoke-virtual {v0, v1}, Landroid/app/DownloadManager;->remove([J)I

    :cond_1
    move-object v0, p0

    move-wide v1, p1

    .line 757
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gm/provider/AttachmentManager;->deleteAttachment(JJLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 758
    const/4 v0, 0x1

    .line 761
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 763
    .end local v3           #attachmentId:J
    .end local v5           #fileName:Ljava/lang/String;
    .end local v7           #automatic:Z
    .end local v9           #downloadId:J
    .end local v12           #status:I
    :goto_1
    return v0

    .line 749
    .restart local v3       #attachmentId:J
    .restart local v9       #downloadId:J
    :cond_2
    const/4 v7, 0x0

    goto :goto_0

    .line 761
    .end local v3           #attachmentId:J
    .end local v9           #downloadId:J
    :cond_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 763
    const/4 v0, 0x0

    goto :goto_1

    .line 761
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public enqueueAttachment(JJLcom/google/android/gm/provider/Gmail$Attachment;Lcom/google/android/gm/provider/Gmail$AttachmentRendition;ZZI)V
    .locals 16
    .parameter "conversationId"
    .parameter "messageId"
    .parameter "attachment"
    .parameter "rendition"
    .parameter "saveToSd"
    .parameter "automatic"
    .parameter "priority"

    .prologue
    .line 314
    const-wide/16 v8, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    invoke-virtual/range {v1 .. v12}, Lcom/google/android/gm/provider/AttachmentManager;->recordAttachmentInDb(JJLcom/google/android/gm/provider/Gmail$Attachment;Lcom/google/android/gm/provider/Gmail$AttachmentRendition;JZZI)J

    move-result-wide v13

    .line 317
    .local v13, attachmentId:J
    const-string v1, "Gmail"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/android/gm/provider/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 318
    move-object/from16 v0, p5

    iget-object v5, v0, Lcom/google/android/gm/provider/Gmail$Attachment;->partId:Ljava/lang/String;

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-object/from16 v6, p6

    move/from16 v7, p7

    invoke-static/range {v1 .. v7}, Lcom/google/android/gm/provider/AttachmentManager;->requestDescription(JJLjava/lang/String;Lcom/google/android/gm/provider/Gmail$AttachmentRendition;Z)Ljava/lang/String;

    move-result-object v15

    .line 320
    .local v15, requestDescription:Ljava/lang/String;
    const-string v1, "Gmail"

    const-string v2, "enqueueAttachment attachmentId: %d: %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v15, v3, v4

    invoke-static {v1, v2, v3}, Lcom/google/android/gm/provider/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 324
    .end local v15           #requestDescription:Ljava/lang/String;
    :cond_0
    invoke-direct/range {p0 .. p2}, Lcom/google/android/gm/provider/AttachmentManager;->notifyChanged(J)V

    .line 325
    return-void
.end method

.method public handleDownloadManagerIntent(Landroid/content/Intent;)V
    .locals 13
    .parameter "intent"

    .prologue
    .line 679
    const-string v0, "extra_download_id"

    const-wide/16 v4, -0x1

    invoke-virtual {p1, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 680
    .local v1, downloadId:J
    const-wide/16 v4, -0x1

    cmp-long v0, v1, v4

    if-nez v0, :cond_0

    .line 681
    const-string v0, "Gmail"

    const-string v4, "Received notification from DownloadManager with invalid download id"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Lcom/google/android/gm/provider/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 713
    :goto_0
    return-void

    .line 685
    :cond_0
    new-instance v0, Landroid/app/DownloadManager$Query;

    invoke-direct {v0}, Landroid/app/DownloadManager$Query;-><init>()V

    const/4 v4, 0x1

    new-array v4, v4, [J

    const/4 v5, 0x0

    aput-wide v1, v4, v5

    invoke-virtual {v0, v4}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    move-result-object v11

    .line 686
    .local v11, query:Landroid/app/DownloadManager$Query;
    iget-object v0, p0, Lcom/google/android/gm/provider/AttachmentManager;->mDownloadManager:Landroid/app/DownloadManager;

    invoke-virtual {v0, v11}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v9

    .line 689
    .local v9, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 690
    const-string v0, "status"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 691
    .local v8, columnStatus:I
    const-string v0, "reason"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 692
    .local v7, columnError:I
    invoke-interface {v9, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 693
    .local v12, status:I
    invoke-interface {v9, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 694
    .local v10, error:I
    const/4 v3, 0x0

    .line 696
    .local v3, internalStatus:I
    sparse-switch v12, :sswitch_data_0

    .line 705
    :goto_1
    sget-object v0, Lcom/google/android/gm/provider/AttachmentManager;->ATTACHMENT_FROM:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 707
    .local v6, attachmentFrom:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gm/provider/AttachmentManager;->onDownloadCompletedByDownloadManager(JILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 711
    .end local v3           #internalStatus:I
    .end local v6           #attachmentFrom:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7           #columnError:I
    .end local v8           #columnStatus:I
    .end local v10           #error:I
    .end local v12           #status:I
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 698
    .restart local v3       #internalStatus:I
    .restart local v7       #columnError:I
    .restart local v8       #columnStatus:I
    .restart local v10       #error:I
    .restart local v12       #status:I
    :sswitch_0
    const/16 v3, 0xc8

    .line 699
    goto :goto_1

    .line 701
    :sswitch_1
    move v3, v10

    goto :goto_1

    .line 711
    .end local v3           #internalStatus:I
    .end local v7           #columnError:I
    .end local v8           #columnStatus:I
    .end local v10           #error:I
    .end local v12           #status:I
    :catchall_0
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0

    .line 696
    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_0
        0x10 -> :sswitch_1
    .end sparse-switch
.end method

.method public maybeStartNextAttachmentDownload()V
    .locals 19

    .prologue
    .line 771
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gm/provider/AttachmentManager;->isLowSpace()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 773
    const-string v1, "Gmail"

    const-string v4, "Not enough free space to download attachments in background"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1, v4, v5}, Lcom/google/android/gm/provider/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 845
    :goto_0
    return-void

    .line 779
    :cond_0
    const/16 v16, 0x0

    .line 782
    .local v16, isPausedByDownloadManager:Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gm/provider/AttachmentManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "attachments"

    const/4 v4, 0x1

    new-array v3, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "downloadId"

    aput-object v5, v3, v4

    const-string v4, "status = ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    const/16 v8, 0xc0

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 786
    .local v10, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_4

    .line 787
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v13

    .line 788
    .local v13, downloadingAttachments:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 789
    const/4 v1, 0x0

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v13, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 818
    .end local v13           #downloadingAttachments:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    :catchall_0
    move-exception v1

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v1

    .line 791
    .restart local v13       #downloadingAttachments:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    :cond_1
    :try_start_1
    new-instance v1, Landroid/app/DownloadManager$Query;

    invoke-direct {v1}, Landroid/app/DownloadManager$Query;-><init>()V

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Landroid/app/DownloadManager$Query;->setFilterByStatus(I)Landroid/app/DownloadManager$Query;

    move-result-object v17

    .line 792
    .local v17, query:Landroid/app/DownloadManager$Query;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gm/provider/AttachmentManager;->mDownloadManager:Landroid/app/DownloadManager;

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v11

    .line 794
    .local v11, downloadCursor:Landroid/database/Cursor;
    :cond_2
    :try_start_2
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 795
    const-string v1, "_id"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 796
    .local v9, columnId:I
    invoke-interface {v11, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 797
    .local v14, id:J
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v13, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 799
    const-string v1, "Gmail"

    const-string v4, "ATTACHMENT: existing download in progress (dlid=%d), exiting"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v5, v7

    invoke-static {v1, v4, v5}, Lcom/google/android/gm/provider/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 805
    :try_start_3
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 818
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 805
    .end local v9           #columnId:I
    .end local v14           #id:J
    :cond_3
    :try_start_4
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 808
    new-instance v1, Landroid/app/DownloadManager$Query;

    invoke-direct {v1}, Landroid/app/DownloadManager$Query;-><init>()V

    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Landroid/app/DownloadManager$Query;->setFilterByStatus(I)Landroid/app/DownloadManager$Query;

    move-result-object v17

    .line 809
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gm/provider/AttachmentManager;->mDownloadManager:Landroid/app/DownloadManager;

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v11

    .line 812
    :try_start_5
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result v1

    if-lez v1, :cond_6

    const/16 v16, 0x1

    .line 814
    :goto_2
    :try_start_6
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 818
    .end local v11           #downloadCursor:Landroid/database/Cursor;
    .end local v13           #downloadingAttachments:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    .end local v17           #query:Landroid/app/DownloadManager$Query;
    :cond_4
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 821
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gm/provider/AttachmentManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "attachments"

    const/4 v4, 0x2

    new-array v3, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "downloadedRendition"

    aput-object v5, v3, v4

    const-string v4, "downloadId = ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "0"

    aput-object v8, v5, v7

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "priority DESC"

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 825
    .local v12, downloadablesCursor:Landroid/database/Cursor;
    :try_start_7
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 826
    const/4 v1, 0x0

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 827
    .local v2, attachmentId:J
    const/4 v1, 0x1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gm/provider/Gmail$AttachmentRendition;->valueOf(Ljava/lang/String;)Lcom/google/android/gm/provider/Gmail$AttachmentRendition;

    move-result-object v18

    .line 829
    .local v18, rendition:Lcom/google/android/gm/provider/Gmail$AttachmentRendition;
    sget-object v1, Lcom/google/android/gm/provider/Gmail$AttachmentRendition;->SIMPLE:Lcom/google/android/gm/provider/Gmail$AttachmentRendition;

    move-object/from16 v0, v18

    if-eq v0, v1, :cond_7

    const/4 v6, 0x1

    .line 832
    .local v6, fullVersion:Z
    :goto_3
    if-eqz v6, :cond_5

    if-nez v16, :cond_8

    .line 833
    :cond_5
    const-wide/16 v4, -0x1

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gm/provider/AttachmentManager;->startAttachmentDownloadInDownloadManager(JJZ)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 843
    .end local v2           #attachmentId:J
    .end local v6           #fullVersion:Z
    .end local v18           #rendition:Lcom/google/android/gm/provider/Gmail$AttachmentRendition;
    :goto_4
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 805
    .end local v12           #downloadablesCursor:Landroid/database/Cursor;
    .restart local v11       #downloadCursor:Landroid/database/Cursor;
    .restart local v13       #downloadingAttachments:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    .restart local v17       #query:Landroid/app/DownloadManager$Query;
    :catchall_1
    move-exception v1

    :try_start_8
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v1

    .line 812
    :cond_6
    const/16 v16, 0x0

    goto :goto_2

    .line 814
    :catchall_2
    move-exception v1

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 829
    .end local v11           #downloadCursor:Landroid/database/Cursor;
    .end local v13           #downloadingAttachments:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    .end local v17           #query:Landroid/app/DownloadManager$Query;
    .restart local v2       #attachmentId:J
    .restart local v12       #downloadablesCursor:Landroid/database/Cursor;
    .restart local v18       #rendition:Lcom/google/android/gm/provider/Gmail$AttachmentRendition;
    :cond_7
    const/4 v6, 0x0

    goto :goto_3

    .line 835
    .restart local v6       #fullVersion:Z
    :cond_8
    :try_start_9
    const-string v1, "Gmail"

    const-string v4, "ATTACHMENT: unable to download full version id=%d b/c DL mgr has paused an existing DL."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v5, v7

    invoke-static {v1, v4, v5}, Lcom/google/android/gm/provider/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_4

    .line 843
    .end local v2           #attachmentId:J
    .end local v6           #fullVersion:Z
    .end local v18           #rendition:Lcom/google/android/gm/provider/Gmail$AttachmentRendition;
    :catchall_3
    move-exception v1

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v1

    .line 839
    :cond_9
    :try_start_a
    const-string v1, "Gmail"

    const-string v4, "ATTACHMENT: unable to find attachment download record to work on, exiting"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1, v4, v5}, Lcom/google/android/gm/provider/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_4
.end method

.method onDownloadCompletedByDownloadManager(JILjava/lang/String;Ljava/lang/String;)V
    .locals 43
    .parameter "downloadId"
    .parameter "status"
    .parameter "attachmentFrom"
    .parameter "attachmentFromSender"

    .prologue
    .line 849
    const/16 v1, 0x9

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "attachments._id"

    aput-object v2, v3, v1

    const/4 v1, 0x1

    const-string v2, "messages_conversation"

    aput-object v2, v3, v1

    const/4 v1, 0x2

    const-string v2, "messages_messageId"

    aput-object v2, v3, v1

    const/4 v1, 0x3

    const-string v2, "messages_partId"

    aput-object v2, v3, v1

    const/4 v1, 0x4

    const-string v2, "desiredRendition"

    aput-object v2, v3, v1

    const/4 v1, 0x5

    const-string v2, "saveToSd"

    aput-object v2, v3, v1

    const/4 v1, 0x6

    const-string v2, "filename"

    aput-object v2, v3, v1

    const/4 v1, 0x7

    const-string v2, "mimeType"

    aput-object v2, v3, v1

    const/16 v1, 0x8

    const-string v2, "fromAddress"

    aput-object v2, v3, v1

    .line 853
    .local v3, attachmentProjection:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gm/provider/AttachmentManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "attachments, messages"

    const-string v4, "downloadId = ? AND attachments.messages_messageId = messages.messageId"

    const/4 v11, 0x1

    new-array v5, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v5, v11

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "saveToSd ASC"

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v41

    .line 857
    .local v41, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface/range {v41 .. v41}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 858
    const-string v1, "Gmail"

    const-string v2, "No attachments found with downloadId %d"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v11, v14

    invoke-static {v1, v2, v11}, Lcom/google/android/gm/provider/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 861
    :cond_0
    :goto_0
    invoke-interface/range {v41 .. v41}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 862
    const/4 v1, 0x0

    move-object/from16 v0, v41

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 863
    .local v12, attachmentId:J
    const/4 v1, 0x1

    move-object/from16 v0, v41

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 864
    .local v4, conversationId:J
    const/4 v1, 0x2

    move-object/from16 v0, v41

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 865
    .local v6, messageId:J
    const/4 v1, 0x3

    move-object/from16 v0, v41

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 866
    .local v8, partId:Ljava/lang/String;
    const/4 v1, 0x4

    move-object/from16 v0, v41

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gm/provider/Gmail$AttachmentRendition;->valueOf(Ljava/lang/String;)Lcom/google/android/gm/provider/Gmail$AttachmentRendition;

    move-result-object v9

    .line 868
    .local v9, rendition:Lcom/google/android/gm/provider/Gmail$AttachmentRendition;
    const/4 v1, 0x5

    move-object/from16 v0, v41

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v10, 0x1

    .line 869
    .local v10, saveToSd:Z
    :goto_1
    const/4 v1, 0x6

    move-object/from16 v0, v41

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 870
    .local v21, fileName:Ljava/lang/String;
    const/4 v1, 0x7

    move-object/from16 v0, v41

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 871
    .local v26, mimeType:Ljava/lang/String;
    const/16 v1, 0x8

    move-object/from16 v0, v41

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 873
    .local v27, sender:Ljava/lang/String;
    invoke-static/range {v4 .. v10}, Lcom/google/android/gm/provider/AttachmentManager;->requestDescription(JJLjava/lang/String;Lcom/google/android/gm/provider/Gmail$AttachmentRendition;Z)Ljava/lang/String;

    move-result-object v42

    .line 875
    .local v42, requestDescription:Ljava/lang/String;
    const-string v1, "Gmail"

    const-string v2, "Download finished with status %d for download %d. %s"

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v11, v14

    const/4 v14, 0x1

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v11, v14

    const/4 v14, 0x2

    aput-object v42, v11, v14

    invoke-static {v1, v2, v11}, Lcom/google/android/gm/provider/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 878
    invoke-static/range {p3 .. p3}, Lcom/google/android/gm/provider/AttachmentManager;->isStatusSuccess(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 880
    const/16 v24, 0x0

    invoke-interface/range {v41 .. v41}, Landroid/database/Cursor;->isLast()Z

    move-result v25

    move-object/from16 v11, p0

    move-wide v14, v4

    move-wide/from16 v16, v6

    move-object/from16 v18, v8

    move-object/from16 v19, v9

    move/from16 v20, v10

    move-wide/from16 v22, p1

    move-object/from16 v28, p4

    move-object/from16 v29, p5

    invoke-direct/range {v11 .. v29}, Lcom/google/android/gm/provider/AttachmentManager;->copyAttachment(JJJLjava/lang/String;Lcom/google/android/gm/provider/Gmail$AttachmentRendition;ZLjava/lang/String;JLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 888
    :goto_2
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/google/android/gm/provider/AttachmentManager;->notifyChanged(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 892
    .end local v4           #conversationId:J
    .end local v6           #messageId:J
    .end local v8           #partId:Ljava/lang/String;
    .end local v9           #rendition:Lcom/google/android/gm/provider/Gmail$AttachmentRendition;
    .end local v10           #saveToSd:Z
    .end local v12           #attachmentId:J
    .end local v21           #fileName:Ljava/lang/String;
    .end local v26           #mimeType:Ljava/lang/String;
    .end local v27           #sender:Ljava/lang/String;
    .end local v42           #requestDescription:Ljava/lang/String;
    :catchall_0
    move-exception v1

    invoke-interface/range {v41 .. v41}, Landroid/database/Cursor;->close()V

    throw v1

    .line 868
    .restart local v4       #conversationId:J
    .restart local v6       #messageId:J
    .restart local v8       #partId:Ljava/lang/String;
    .restart local v9       #rendition:Lcom/google/android/gm/provider/Gmail$AttachmentRendition;
    .restart local v12       #attachmentId:J
    :cond_1
    const/4 v10, 0x0

    goto :goto_1

    .line 885
    .restart local v10       #saveToSd:Z
    .restart local v21       #fileName:Ljava/lang/String;
    .restart local v26       #mimeType:Ljava/lang/String;
    .restart local v27       #sender:Ljava/lang/String;
    .restart local v42       #requestDescription:Ljava/lang/String;
    :cond_2
    const/16 v39, 0x0

    const/16 v40, 0x1

    move-object/from16 v28, p0

    move-wide/from16 v29, v12

    move-wide/from16 v31, v4

    move-wide/from16 v33, v6

    move-object/from16 v35, v8

    move-object/from16 v36, v9

    move/from16 v37, v10

    move/from16 v38, p3

    :try_start_1
    invoke-direct/range {v28 .. v40}, Lcom/google/android/gm/provider/AttachmentManager;->onAttachmentDownloadFinished(JJJLjava/lang/String;Lcom/google/android/gm/provider/Gmail$AttachmentRendition;ZILjava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 892
    .end local v4           #conversationId:J
    .end local v6           #messageId:J
    .end local v8           #partId:Ljava/lang/String;
    .end local v9           #rendition:Lcom/google/android/gm/provider/Gmail$AttachmentRendition;
    .end local v10           #saveToSd:Z
    .end local v12           #attachmentId:J
    .end local v21           #fileName:Ljava/lang/String;
    .end local v26           #mimeType:Ljava/lang/String;
    .end local v27           #sender:Ljava/lang/String;
    .end local v42           #requestDescription:Ljava/lang/String;
    :cond_3
    invoke-interface/range {v41 .. v41}, Landroid/database/Cursor;->close()V

    .line 894
    return-void
.end method

.method public openAttachment(JJLcom/google/android/gm/provider/Gmail$Attachment;Lcom/google/android/gm/provider/Gmail$AttachmentRendition;ZLjava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 14
    .parameter "conversationId"
    .parameter "messageId"
    .parameter "attachment"
    .parameter "rendition"
    .parameter "saveToSd"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 623
    move-object/from16 v0, p5

    iget-object v5, v0, Lcom/google/android/gm/provider/Gmail$Attachment;->partId:Ljava/lang/String;

    move-wide v1, p1

    move-wide/from16 v3, p3

    move-object/from16 v6, p6

    move/from16 v7, p7

    invoke-static/range {v1 .. v7}, Lcom/google/android/gm/provider/AttachmentManager;->requestDescription(JJLjava/lang/String;Lcom/google/android/gm/provider/Gmail$AttachmentRendition;Z)Ljava/lang/String;

    move-result-object v11

    .line 625
    .local v11, description:Ljava/lang/String;
    const-string v1, "Gmail"

    const-string v2, "AttachmentManager.openAttachment: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v11, v3, v4

    invoke-static {v1, v2, v3}, Lcom/google/android/gm/provider/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 627
    const/4 v1, 0x2

    new-array v7, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "filename"

    aput-object v2, v7, v1

    const/4 v1, 0x1

    const-string v2, "status"

    aput-object v2, v7, v1

    .line 628
    .local v7, projection:[Ljava/lang/String;
    const/4 v10, 0x0

    .line 631
    .local v10, cursor:Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/google/android/gm/provider/Gmail$Attachment;->partId:Ljava/lang/String;

    move-object v1, p0

    move-wide/from16 v2, p3

    move-object/from16 v5, p6

    move/from16 v6, p7

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gm/provider/AttachmentManager;->newAttachmentCursor(JLjava/lang/String;Lcom/google/android/gm/provider/Gmail$AttachmentRendition;Z[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 633
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 634
    const/4 v1, 0x1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 635
    .local v13, status:I
    invoke-static {v13}, Lcom/google/android/gm/provider/AttachmentManager;->isStatusSuccess(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 636
    new-instance v1, Ljava/io/FileNotFoundException;

    const-string v2, "Download not complete or not successful."

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 656
    .end local v13           #status:I
    :catchall_0
    move-exception v1

    if-eqz v10, :cond_0

    .line 657
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v1

    .line 639
    .restart local v13       #status:I
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gm/provider/AttachmentManager;->getPathFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 643
    .local v12, fileName:Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v8

    .line 645
    .local v8, binderToken:J
    :try_start_2
    const-string v1, "Gmail"

    const-string v2, "Opening attachment %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v12, v3, v4

    invoke-static {v1, v2, v3}, Lcom/google/android/gm/provider/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 646
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x1000

    invoke-static {v1, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v1

    .line 649
    :try_start_3
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 656
    if-eqz v10, :cond_2

    .line 657
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v1

    .line 649
    :catchall_1
    move-exception v1

    :try_start_4
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    .line 652
    .end local v8           #binderToken:J
    .end local v12           #fileName:Ljava/lang/String;
    .end local v13           #status:I
    :cond_3
    const-string v1, "Gmail"

    const-string v2, "Attachment is not requested %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v11, v3, v4

    invoke-static {v1, v2, v3}, Lcom/google/android/gm/provider/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 653
    new-instance v1, Ljava/io/FileNotFoundException;

    const-string v2, "Attachment not requested."

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method purgeOldAttachments()V
    .locals 3

    .prologue
    .line 920
    const-string v0, "Gmail"

    const-string v1, "Purging old attachments."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 922
    iget-object v0, p0, Lcom/google/android/gm/provider/AttachmentManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isDbLockedByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 925
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Db should not be locked"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 928
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gm/provider/AttachmentManager;->purgeInvalidAttachments()V

    .line 929
    invoke-direct {p0}, Lcom/google/android/gm/provider/AttachmentManager;->purgeInvalidDownloadingAttachments()V

    .line 930
    return-void
.end method

.method public queryAndStartDownloadingAttachment(JJLcom/google/android/gm/provider/Gmail$Attachment;Lcom/google/android/gm/provider/Gmail$AttachmentRendition;Z[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 34
    .parameter "conversationId"
    .parameter "messageId"
    .parameter "attachment"
    .parameter "rendition"
    .parameter "saveToSd"
    .parameter "projection"

    .prologue
    .line 467
    const-string v2, "Gmail"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/gm/provider/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 468
    move-object/from16 v0, p5

    iget-object v6, v0, Lcom/google/android/gm/provider/Gmail$Attachment;->partId:Ljava/lang/String;

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-static/range {v2 .. v8}, Lcom/google/android/gm/provider/AttachmentManager;->requestDescription(JJLjava/lang/String;Lcom/google/android/gm/provider/Gmail$AttachmentRendition;Z)Ljava/lang/String;

    move-result-object v30

    .line 470
    .local v30, requestDescription:Ljava/lang/String;
    const-string v2, "Gmail"

    const-string v3, "queryAndStartDownloadingAttachment for %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v30, v5, v6

    invoke-static {v2, v3, v5}, Lcom/google/android/gm/provider/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 474
    .end local v30           #requestDescription:Ljava/lang/String;
    :cond_0
    const/4 v2, 0x5

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "downloadId"

    aput-object v3, v4, v2

    const/4 v2, 0x2

    const-string v3, "status"

    aput-object v3, v4, v2

    const/4 v2, 0x3

    const-string v3, "filename"

    aput-object v3, v4, v2

    const/4 v2, 0x4

    const-string v3, "saveToSd"

    aput-object v3, v4, v2

    .line 477
    .local v4, privateProjection:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/provider/AttachmentManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "attachments"

    const-string v5, "messages_messageId = ? AND messages_partId = ? AND desiredRendition = ? "

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    move-object/from16 v0, p5

    iget-object v8, v0, Lcom/google/android/gm/provider/Gmail$Attachment;->partId:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-virtual/range {p6 .. p6}, Lcom/google/android/gm/provider/Gmail$AttachmentRendition;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v28

    .line 482
    .local v28, privateCursor:Landroid/database/Cursor;
    const/4 v2, 0x2

    new-array v0, v2, [Ljava/lang/Long;

    move-object/from16 v24, v0

    const/4 v2, 0x0

    const-wide/16 v5, -0x1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v24, v2

    const/4 v2, 0x1

    const-wide/16 v5, -0x1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v24, v2

    .line 483
    .local v24, attachmentIds:[Ljava/lang/Long;
    const/4 v2, 0x2

    new-array v0, v2, [J

    move-object/from16 v25, v0

    fill-array-data v25, :array_0

    .line 484
    .local v25, downloadIds:[J
    const/4 v2, 0x2

    new-array v0, v2, [I

    move-object/from16 v31, v0

    fill-array-data v31, :array_1

    .line 485
    .local v31, statuses:[I
    const/4 v2, 0x2

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v26, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v26, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput-object v3, v26, v2

    .line 487
    .local v26, fileUris:[Ljava/lang/String;
    :goto_0
    :try_start_0
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 488
    const/4 v2, 0x4

    move-object/from16 v0, v28

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v33

    .line 490
    .local v33, version:I
    const/4 v2, 0x0

    move-object/from16 v0, v28

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v24, v33

    .line 491
    const/4 v2, 0x1

    move-object/from16 v0, v28

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    aput-wide v2, v25, v33

    .line 492
    const/4 v2, 0x2

    move-object/from16 v0, v28

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    aput v2, v31, v33

    .line 493
    const/4 v2, 0x3

    move-object/from16 v0, v28

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v26, v33
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 496
    .end local v33           #version:I
    :catchall_0
    move-exception v2

    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_1
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->close()V

    .line 500
    const/16 v27, 0x0

    .local v27, i:I
    :goto_1
    const/4 v2, 0x2

    move/from16 v0, v27

    if-ge v0, v2, :cond_4

    .line 501
    aget v2, v31, v27

    invoke-static {v2}, Lcom/google/android/gm/provider/AttachmentManager;->isStatusSuccess(I)Z

    move-result v2

    if-eqz v2, :cond_2

    aget-object v2, v26, v27

    invoke-static {v2}, Lcom/google/android/gm/provider/AttachmentManager;->isDownloadStillPresent(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 502
    :cond_2
    const/4 v2, 0x0

    aput-object v2, v26, v27

    .line 500
    :cond_3
    add-int/lit8 v27, v27, 0x1

    goto :goto_1

    .line 506
    :cond_4
    if-eqz p7, :cond_6

    const/16 v33, 0x1

    .line 509
    .restart local v33       #version:I
    :goto_2
    const/16 v27, 0x0

    :goto_3
    move/from16 v0, v27

    move/from16 v1, v33

    if-gt v0, v1, :cond_8

    .line 510
    aget-object v2, v24, v27

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v5, -0x1

    cmp-long v2, v2, v5

    if-nez v2, :cond_5

    .line 511
    const-wide/16 v12, -0x1

    if-eqz v27, :cond_7

    const/4 v14, 0x1

    :goto_4
    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v5, p0

    move-wide/from16 v6, p1

    move-wide/from16 v8, p3

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    invoke-virtual/range {v5 .. v16}, Lcom/google/android/gm/provider/AttachmentManager;->recordAttachmentInDb(JJLcom/google/android/gm/provider/Gmail$Attachment;Lcom/google/android/gm/provider/Gmail$AttachmentRendition;JZZI)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v24, v27

    .line 509
    :cond_5
    add-int/lit8 v27, v27, 0x1

    goto :goto_3

    .line 506
    .end local v33           #version:I
    :cond_6
    const/16 v33, 0x0

    goto :goto_2

    .line 511
    .restart local v33       #version:I
    :cond_7
    const/4 v14, 0x0

    goto :goto_4

    .line 516
    :cond_8
    const/4 v2, 0x0

    aget v2, v31, v2

    invoke-static {v2}, Lcom/google/android/gm/provider/AttachmentManager;->isStatusValid(I)Z

    move-result v2

    if-nez v2, :cond_b

    const/4 v2, 0x1

    aget v2, v31, v2

    invoke-static {v2}, Lcom/google/android/gm/provider/AttachmentManager;->isStatusValid(I)Z

    move-result v2

    if-nez v2, :cond_b

    .line 518
    const-string v2, "Gmail"

    const-string v3, "AttachmentManager.queryAndStartDownloadingAttachment() starting new download"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v5}, Lcom/google/android/gm/provider/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 521
    const/4 v2, 0x0

    aget-object v2, v24, v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const/4 v2, 0x1

    aget-object v2, v24, v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/provider/AttachmentManager;->mContext:Landroid/content/Context;

    move-object/from16 v0, p5

    invoke-static {v2, v0}, Lcom/google/android/gm/provider/AttachmentManager;->canDownloadAttachment(Landroid/content/Context;Lcom/google/android/gm/provider/Gmail$Attachment;)Z

    move-result v2

    if-nez v2, :cond_a

    const/4 v10, 0x1

    :goto_5
    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/google/android/gm/provider/AttachmentManager;->startAttachmentDownloadInDownloadManager(JJZ)V

    .line 552
    :cond_9
    :goto_6
    invoke-direct/range {p0 .. p2}, Lcom/google/android/gm/provider/AttachmentManager;->notifyChanged(J)V

    .line 553
    move-object/from16 v0, p5

    iget-object v8, v0, Lcom/google/android/gm/provider/Gmail$Attachment;->partId:Ljava/lang/String;

    move-object/from16 v5, p0

    move-wide/from16 v6, p3

    move-object/from16 v9, p6

    move/from16 v10, p7

    move-object/from16 v11, p8

    invoke-direct/range {v5 .. v11}, Lcom/google/android/gm/provider/AttachmentManager;->newAttachmentCursor(JLjava/lang/String;Lcom/google/android/gm/provider/Gmail$AttachmentRendition;Z[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v29

    .line 555
    .local v29, publicCursor:Landroid/database/Cursor;
    return-object v29

    .line 521
    .end local v29           #publicCursor:Landroid/database/Cursor;
    :cond_a
    const/4 v10, 0x0

    goto :goto_5

    .line 523
    :cond_b
    const/4 v2, 0x0

    aget-object v2, v26, v2

    if-nez v2, :cond_c

    const/4 v2, 0x1

    aget-object v2, v26, v2

    if-eqz v2, :cond_d

    .line 525
    :cond_c
    const-string v2, "Gmail"

    const-string v3, "AttachmentManager.queryAndStartDownloadingAttachment() file exists either on cache or sd card, will copy if needed"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v5}, Lcom/google/android/gm/provider/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 528
    aget-object v2, v26, v33

    if-nez v2, :cond_9

    .line 529
    aget-object v2, v24, v33

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-object/from16 v0, p5

    iget-object v12, v0, Lcom/google/android/gm/provider/Gmail$Attachment;->partId:Ljava/lang/String;

    move-object/from16 v0, p5

    iget-object v15, v0, Lcom/google/android/gm/provider/Gmail$Attachment;->name:Ljava/lang/String;

    const-wide/16 v16, -0x1

    rsub-int/lit8 v2, v33, 0x1

    aget-object v18, v26, v2

    const/16 v19, 0x1

    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/google/android/gm/provider/Gmail$Attachment;->contentType:Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v5, p0

    move-wide/from16 v8, p1

    move-wide/from16 v10, p3

    move-object/from16 v13, p6

    move/from16 v14, p7

    invoke-direct/range {v5 .. v23}, Lcom/google/android/gm/provider/AttachmentManager;->copyAttachment(JJJLjava/lang/String;Lcom/google/android/gm/provider/Gmail$AttachmentRendition;ZLjava/lang/String;JLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 536
    :cond_d
    const-string v2, "Gmail"

    const-string v3, "AttachmentManager.queryAndStartDownloadingAttachment() refetch attachment"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v5}, Lcom/google/android/gm/provider/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 539
    const/16 v27, 0x0

    :goto_7
    move/from16 v0, v27

    move/from16 v1, v33

    if-gt v0, v1, :cond_e

    .line 540
    new-instance v32, Landroid/content/ContentValues;

    invoke-direct/range {v32 .. v32}, Landroid/content/ContentValues;-><init>()V

    .line 541
    .local v32, values:Landroid/content/ContentValues;
    const-string v2, "filename"

    move-object/from16 v0, p5

    iget-object v3, v0, Lcom/google/android/gm/provider/Gmail$Attachment;->name:Ljava/lang/String;

    move-object/from16 v0, v32

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    const-string v2, "automatic"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 544
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/provider/AttachmentManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "attachments"

    const-string v5, "_id = ?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v8, v24, v27

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    move-object/from16 v0, v32

    invoke-virtual {v2, v3, v0, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 539
    add-int/lit8 v27, v27, 0x1

    goto :goto_7

    .line 548
    .end local v32           #values:Landroid/content/ContentValues;
    :cond_e
    const/4 v2, 0x0

    aget-object v2, v24, v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const/4 v2, 0x1

    aget-object v2, v24, v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/provider/AttachmentManager;->mContext:Landroid/content/Context;

    move-object/from16 v0, p5

    invoke-static {v2, v0}, Lcom/google/android/gm/provider/AttachmentManager;->canDownloadAttachment(Landroid/content/Context;Lcom/google/android/gm/provider/Gmail$Attachment;)Z

    move-result v2

    if-nez v2, :cond_f

    const/4 v10, 0x1

    :goto_8
    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/google/android/gm/provider/AttachmentManager;->startAttachmentDownloadInDownloadManager(JJZ)V

    goto/16 :goto_6

    :cond_f
    const/4 v10, 0x0

    goto :goto_8

    .line 483
    :array_0
    .array-data 0x8
        0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft
    .end array-data

    .line 484
    :array_1
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method public queryForConversation(J[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 1213
    iget-object v0, p0, Lcom/google/android/gm/provider/AttachmentManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "attachments"

    const-string v3, "messages_conversation = ? AND desiredRendition = ?"

    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v2

    const/4 v2, 0x1

    sget-object v6, Lcom/google/android/gm/provider/Gmail$AttachmentRendition;->BEST:Lcom/google/android/gm/provider/Gmail$AttachmentRendition;

    invoke-virtual {v6}, Lcom/google/android/gm/provider/Gmail$AttachmentRendition;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v2

    move-object v2, p3

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method recordAttachmentInDb(JJLcom/google/android/gm/provider/Gmail$Attachment;Lcom/google/android/gm/provider/Gmail$AttachmentRendition;JZZI)J
    .locals 5
    .parameter "conversationId"
    .parameter "messageId"
    .parameter "attachment"
    .parameter "rendition"
    .parameter "downloadId"
    .parameter "saveToSd"
    .parameter "automatic"
    .parameter "priority"

    .prologue
    .line 443
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 444
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "messages_conversation"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 445
    const-string v1, "messages_messageId"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 446
    const-string v1, "messages_partId"

    iget-object v2, p5, Lcom/google/android/gm/provider/Gmail$Attachment;->partId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    const-string v1, "originExtras"

    iget-object v2, p5, Lcom/google/android/gm/provider/Gmail$Attachment;->originExtras:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    const-string v1, "desiredRendition"

    invoke-virtual {p6}, Lcom/google/android/gm/provider/Gmail$AttachmentRendition;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    const-string v1, "downloadedRendition"

    invoke-virtual {p6}, Lcom/google/android/gm/provider/Gmail$AttachmentRendition;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    const-string v1, "downloadId"

    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 451
    const-string v2, "automatic"

    if-eqz p10, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 452
    const-string v1, "priority"

    invoke-static/range {p11 .. p11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 453
    const-string v2, "saveToSd"

    if-eqz p9, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 454
    const-string v1, "filename"

    iget-object v2, p5, Lcom/google/android/gm/provider/Gmail$Attachment;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    const-string v1, "status"

    const/16 v2, 0xbe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 456
    const-string v1, "mimeType"

    iget-object v2, p5, Lcom/google/android/gm/provider/Gmail$Attachment;->contentType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    iget-object v1, p0, Lcom/google/android/gm/provider/AttachmentManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "attachments"

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v1

    return-wide v1

    .line 451
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 453
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public updateMessageId(JJ)V
    .locals 5
    .parameter "prevMessageId"
    .parameter "newMessageId"

    .prologue
    .line 722
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 723
    .local v1, newAttachmentsValues:Landroid/content/ContentValues;
    const-string v2, "messages_messageId"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 724
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 725
    .local v0, bindArgs:[Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/gm/provider/AttachmentManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "attachments"

    const-string v4, "messages_messageId = ?"

    invoke-virtual {v2, v3, v1, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 726
    return-void
.end method
