.class public Lcom/android/browser/DownloadHandler;
.super Ljava/lang/Object;
.source "DownloadHandler.java"


# static fields
.field private static final LOGD_ENABLED:Z = true

.field private static final LOGTAG:Ljava/lang/String; = "DLHandler"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static encodePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "path"

    .prologue
    const/16 v9, 0x5d

    const/16 v8, 0x5b

    .line 105
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 107
    .local v2, chars:[C
    const/4 v5, 0x0

    .line 108
    .local v5, needed:Z
    move-object v0, v2

    .local v0, arr$:[C
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-char v1, v0, v3

    .line 109
    .local v1, c:C
    if-eq v1, v8, :cond_0

    if-ne v1, v9, :cond_2

    .line 110
    :cond_0
    const/4 v5, 0x1

    .line 114
    .end local v1           #c:C
    :cond_1
    if-nez v5, :cond_3

    .line 128
    .end local p0
    :goto_1
    return-object p0

    .line 108
    .restart local v1       #c:C
    .restart local p0
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 118
    .end local v1           #c:C
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, ""

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 119
    .local v6, sb:Ljava/lang/StringBuilder;
    move-object v0, v2

    array-length v4, v0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v4, :cond_6

    aget-char v1, v0, v3

    .line 120
    .restart local v1       #c:C
    if-eq v1, v8, :cond_4

    if-ne v1, v9, :cond_5

    .line 121
    :cond_4
    const/16 v7, 0x25

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 122
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 124
    :cond_5
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 128
    .end local v1           #c:C
    :cond_6
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1
.end method

.method public static onDownloadStart(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 10
    .parameter "activity"
    .parameter "url"
    .parameter "userAgent"
    .parameter "contentDisposition"
    .parameter "mimetype"
    .parameter "privateBrowsing"

    .prologue
    const/4 v2, 0x0

    .line 63
    if-eqz p3, :cond_0

    const/4 v1, 0x1

    const-string v3, "attachment"

    const/16 v5, 0xa

    move-object v0, p3

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_2

    .line 68
    :cond_0
    new-instance v8, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 69
    .local v8, intent:Landroid/content/Intent;
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v8, v0, p4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v1, 0x1

    invoke-virtual {v0, v8, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v7

    .line 72
    .local v7, info:Landroid/content/pm/ResolveInfo;
    if-eqz v7, :cond_2

    .line 73
    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v9

    .line 76
    .local v9, myName:Landroid/content/ComponentName;
    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v9}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 83
    :cond_1
    :try_start_0
    invoke-virtual {p0, v8}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    .end local v7           #info:Landroid/content/pm/ResolveInfo;
    .end local v8           #intent:Landroid/content/Intent;
    .end local v9           #myName:Landroid/content/ComponentName;
    :goto_0
    return-void

    .line 85
    .restart local v7       #info:Landroid/content/pm/ResolveInfo;
    .restart local v8       #intent:Landroid/content/Intent;
    .restart local v9       #myName:Landroid/content/ComponentName;
    :catch_0
    move-exception v6

    .line 87
    .local v6, ex:Landroid/content/ActivityNotFoundException;
    const-string v0, "DLHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "activity not found for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " over "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 97
    .end local v6           #ex:Landroid/content/ActivityNotFoundException;
    .end local v7           #info:Landroid/content/pm/ResolveInfo;
    .end local v8           #intent:Landroid/content/Intent;
    .end local v9           #myName:Landroid/content/ComponentName;
    :cond_2
    invoke-static/range {p0 .. p5}, Lcom/android/browser/DownloadHandler;->onDownloadStartNoStream(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method static onDownloadStartNoStream(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 17
    .parameter "activity"
    .parameter "url"
    .parameter "userAgent"
    .parameter "contentDisposition"
    .parameter "mimetype"
    .parameter "privateBrowsing"

    .prologue
    .line 145
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-static {v0, v1, v2}, Landroid/webkit/URLUtil;->guessFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 149
    .local v10, filename:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v13

    .line 150
    .local v13, status:Ljava/lang/String;
    const-string v3, "mounted"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 155
    const-string v3, "shared"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 156
    const v3, 0x7f0c011f

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 157
    .local v12, msg:Ljava/lang/String;
    const v14, 0x7f0c011e

    .line 163
    .local v14, title:I
    :goto_0
    new-instance v3, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v14}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1080027

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v12}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0c0012

    const/4 v8, 0x0

    invoke-virtual {v3, v4, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 227
    .end local v12           #msg:Ljava/lang/String;
    .end local v14           #title:I
    :cond_0
    :goto_1
    return-void

    .line 159
    :cond_1
    const v3, 0x7f0c011d

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v10, v4, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 160
    .restart local v12       #msg:Ljava/lang/String;
    const v14, 0x7f0c011c

    .restart local v14       #title:I
    goto :goto_0

    .line 176
    .end local v12           #msg:Ljava/lang/String;
    .end local v14           #title:I
    :cond_2
    :try_start_0
    new-instance v16, Landroid/net/WebAddress;

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/net/WebAddress;-><init>(Ljava/lang/String;)V

    .line 177
    .local v16, webAddress:Landroid/net/WebAddress;
    invoke-virtual/range {v16 .. v16}, Landroid/net/WebAddress;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/browser/DownloadHandler;->encodePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/net/WebAddress;->setPath(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    invoke-virtual/range {v16 .. v16}, Landroid/net/WebAddress;->toString()Ljava/lang/String;

    move-result-object v6

    .line 186
    .local v6, addressString:Ljava/lang/String;
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    .line 189
    .local v15, uri:Landroid/net/Uri;
    :try_start_1
    new-instance v5, Landroid/app/DownloadManager$Request;

    invoke-direct {v5, v15}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 194
    .local v5, request:Landroid/app/DownloadManager$Request;
    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Landroid/app/DownloadManager$Request;->setMimeType(Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 197
    sget-object v3, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v5, v3, v10}, Landroid/app/DownloadManager$Request;->setDestinationInExternalPublicDir(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 200
    invoke-virtual {v5}, Landroid/app/DownloadManager$Request;->allowScanningByMediaScanner()V

    .line 201
    invoke-virtual/range {v16 .. v16}, Landroid/net/WebAddress;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/app/DownloadManager$Request;->setDescription(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    .line 204
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v3

    move-object/from16 v0, p1

    move/from16 v1, p5

    invoke-virtual {v3, v0, v1}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    .line 205
    .local v7, cookies:Ljava/lang/String;
    const-string v3, "cookie"

    invoke-virtual {v5, v3, v7}, Landroid/app/DownloadManager$Request;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 206
    const/4 v3, 0x1

    invoke-virtual {v5, v3}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    .line 208
    if-nez p4, :cond_3

    .line 209
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 214
    new-instance v3, Lcom/android/browser/FetchUrlMimeType;

    move-object/from16 v4, p0

    move-object/from16 v8, p2

    invoke-direct/range {v3 .. v8}, Lcom/android/browser/FetchUrlMimeType;-><init>(Landroid/content/Context;Landroid/app/DownloadManager$Request;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/browser/FetchUrlMimeType;->start()V

    .line 225
    :goto_2
    const v3, 0x7f0c0127

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 178
    .end local v5           #request:Landroid/app/DownloadManager$Request;
    .end local v6           #addressString:Ljava/lang/String;
    .end local v7           #cookies:Ljava/lang/String;
    .end local v15           #uri:Landroid/net/Uri;
    .end local v16           #webAddress:Landroid/net/WebAddress;
    :catch_0
    move-exception v9

    .line 181
    .local v9, e:Ljava/lang/Exception;
    const-string v3, "DLHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception trying to parse url:"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 190
    .end local v9           #e:Ljava/lang/Exception;
    .restart local v6       #addressString:Ljava/lang/String;
    .restart local v15       #uri:Landroid/net/Uri;
    .restart local v16       #webAddress:Landroid/net/WebAddress;
    :catch_1
    move-exception v9

    .line 191
    .local v9, e:Ljava/lang/IllegalArgumentException;
    const v3, 0x7f0c0120

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 217
    .end local v9           #e:Ljava/lang/IllegalArgumentException;
    .restart local v5       #request:Landroid/app/DownloadManager$Request;
    .restart local v7       #cookies:Ljava/lang/String;
    :cond_3
    const-string v3, "download"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/DownloadManager;

    .line 219
    .local v11, manager:Landroid/app/DownloadManager;
    new-instance v3, Lcom/android/browser/DownloadHandler$1;

    const-string v4, "Browser download"

    invoke-direct {v3, v4, v11, v5}, Lcom/android/browser/DownloadHandler$1;-><init>(Ljava/lang/String;Landroid/app/DownloadManager;Landroid/app/DownloadManager$Request;)V

    invoke-virtual {v3}, Lcom/android/browser/DownloadHandler$1;->start()V

    goto :goto_2
.end method
