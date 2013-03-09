.class public Lcom/htc/home/personalize/localresource/DownloadDelegant;
.super Landroid/content/BroadcastReceiver;
.source "DownloadDelegant.java"


# static fields
.field public static final MIME_TYPE_IMAGE:Ljava/lang/String; = "image/png"

.field public static final MIME_TYPE_XML:Ljava/lang/String; = "text/xml"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/htc/home/personalize/localresource/DownloadDelegant;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/home/personalize/localresource/DownloadDelegant;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/htc/home/personalize/localresource/DownloadDelegant;ILandroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/home/personalize/localresource/DownloadDelegant;->startPicker(ILandroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/htc/home/personalize/localresource/DownloadDelegant;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static cancelOrRemove(Ljava/lang/String;Landroid/content/Context;)V
    .locals 5
    .parameter "saveAs"
    .parameter "context"

    .prologue
    .line 253
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notificationextras=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 254
    .local v1, where:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    .end local v1           #where:Ljava/lang/String;
    :goto_0
    return-void

    .line 255
    :catch_0
    move-exception v0

    .line 262
    .local v0, e:Ljava/lang/RuntimeException;
    sget-object v2, Lcom/htc/home/personalize/localresource/DownloadDelegant;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cancelOrRemove: saveAs="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/home/personalize/abstractresource/Logger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0
.end method

.method public static download(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;IZLjava/lang/String;)Z
    .locals 6
    .parameter "targetUrl"
    .parameter "saveAs"
    .parameter "title"
    .parameter "FileName"
    .parameter "context"
    .parameter "type"
    .parameter "showNotification"
    .parameter "mimeType"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 274
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 275
    .local v1, values:Landroid/content/ContentValues;
    const-string v4, "mimetype"

    invoke-virtual {v1, v4, p7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    const-string v4, "destination"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 277
    const-string v4, "uri"

    invoke-virtual {v1, v4, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    const-string v4, "notificationextras"

    invoke-virtual {v1, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    const-string v4, "title"

    invoke-virtual {v1, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    const-string v4, "hint"

    invoke-virtual {v1, v4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    if-eqz p6, :cond_0

    .line 282
    const-string v4, "visibility"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 300
    :goto_0
    const-string v4, "notificationpackage"

    invoke-virtual {p4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    const-string v4, "notificationclass"

    const-class v5, Lcom/htc/home/personalize/localresource/DownloadDelegant;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    invoke-virtual {p4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 305
    .local v0, uri:Landroid/net/Uri;
    if-eqz v0, :cond_1

    :goto_1
    return v2

    .line 284
    .end local v0           #uri:Landroid/net/Uri;
    :cond_0
    const-string v4, "visibility"

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .restart local v0       #uri:Landroid/net/Uri;
    :cond_1
    move v2, v3

    .line 305
    goto :goto_1
.end method

.method public static hasTask(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 9
    .parameter "saveAs"
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notificationextras=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 238
    .local v3, where:Ljava/lang/String;
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "status"

    aput-object v0, v2, v8

    const-string v0, "_data"

    aput-object v0, v2, v7

    const/4 v0, 0x2

    const-string v1, "notificationextras"

    aput-object v1, v2, v0

    .line 240
    .local v2, columns:[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 242
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 243
    .local v7, ret:Z
    :goto_0
    if-eqz v6, :cond_1

    .line 244
    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 245
    :cond_0
    const/4 v6, 0x0

    .line 247
    :cond_1
    return v7

    .end local v7           #ret:Z
    :cond_2
    move v7, v8

    .line 242
    goto :goto_0
.end method

.method private startPicker(ILandroid/content/Context;Ljava/lang/String;)V
    .locals 12
    .parameter "type"
    .parameter "context"
    .parameter "guid"

    .prologue
    .line 185
    invoke-static {p1, p2}, Lcom/htc/home/personalize/localresource/LocalResourceList;->getInstance2(ILandroid/content/Context;)Lcom/htc/home/personalize/localresource/LocalResourceList;

    move-result-object v7

    .line 186
    .local v7, list:Lcom/htc/home/personalize/localresource/LocalResourceList;
    if-nez v7, :cond_1

    const/4 v8, 0x0

    .line 194
    .local v8, res:Lcom/htc/home/personalize/localresource/LocalResource;
    :goto_0
    const-string v1, ""

    .line 195
    .local v1, cateId:Ljava/lang/String;
    const-string v2, ""

    .line 196
    .local v2, cateName:Ljava/lang/String;
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 198
    .local v6, intent:Landroid/content/Intent;
    const/4 v9, 0x1

    if-ne v9, p1, :cond_2

    .line 199
    const-string v1, "all_category"

    .line 200
    const-string v9, "com.htc.personalizer.action.ONLINERESPICKER_SCENE"

    invoke-virtual {v6, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 216
    :cond_0
    :goto_1
    const-string v9, "RES_TYPE"

    invoke-virtual {v6, v9, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 217
    const-string v9, "GUID"

    invoke-virtual {v6, v9, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 218
    const-string v9, "CATE_ID"

    invoke-virtual {v6, v9, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 219
    const-string v9, "CATE_LABEL"

    invoke-virtual {v6, v9, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 220
    const/high16 v9, 0x1000

    invoke-virtual {v6, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 225
    :try_start_0
    invoke-virtual {p2, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    :goto_2
    return-void

    .line 186
    .end local v1           #cateId:Ljava/lang/String;
    .end local v2           #cateName:Ljava/lang/String;
    .end local v6           #intent:Landroid/content/Intent;
    .end local v8           #res:Lcom/htc/home/personalize/localresource/LocalResource;
    :cond_1
    invoke-virtual {v7, p3}, Lcom/htc/home/personalize/localresource/LocalResourceList;->getByGuid(Ljava/lang/String;)Lcom/htc/home/personalize/localresource/LocalResource;

    move-result-object v8

    goto :goto_0

    .line 202
    .restart local v1       #cateId:Ljava/lang/String;
    .restart local v2       #cateName:Ljava/lang/String;
    .restart local v6       #intent:Landroid/content/Intent;
    .restart local v8       #res:Lcom/htc/home/personalize/localresource/LocalResource;
    :cond_2
    if-nez v8, :cond_4

    const-string v1, "all_category"

    .line 203
    :goto_3
    const-string v9, "com.htc.personalize.action.ONLINERESPICKER_WALLPAPER"

    invoke-virtual {v6, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 205
    const-string v9, "all_category"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 206
    invoke-static {p2}, Lcom/htc/home/personalize/storedatamanager/StoreDataManager;->getWallpaperCategory(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    .line 207
    .local v3, categories:Ljava/util/List;,"Ljava/util/List<Lcom/htc/home/personalize/storedatamanager/Category;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/home/personalize/storedatamanager/Category;

    .line 208
    .local v0, cate:Lcom/htc/home/personalize/storedatamanager/Category;
    iget-object v9, v0, Lcom/htc/home/personalize/storedatamanager/Category;->categoryID:Ljava/lang/String;

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 209
    iget-object v2, v0, Lcom/htc/home/personalize/storedatamanager/Category;->displayName:Ljava/lang/String;

    .line 210
    goto :goto_1

    .line 202
    .end local v0           #cate:Lcom/htc/home/personalize/storedatamanager/Category;
    .end local v3           #categories:Ljava/util/List;,"Ljava/util/List<Lcom/htc/home/personalize/storedatamanager/Category;>;"
    .end local v5           #i$:Ljava/util/Iterator;
    :cond_4
    invoke-virtual {v8}, Lcom/htc/home/personalize/localresource/LocalResource;->getCategoryID()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 226
    :catch_0
    move-exception v4

    .line 229
    .local v4, e:Ljava/lang/RuntimeException;
    sget-object v9, Lcom/htc/home/personalize/localresource/DownloadDelegant;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "startPicker: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/home/personalize/abstractresource/Logger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    invoke-virtual {v4}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_2
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 37
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/home/personalize/localresource/DownloadDelegant$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/htc/home/personalize/localresource/DownloadDelegant$1;-><init>(Lcom/htc/home/personalize/localresource/DownloadDelegant;Landroid/content/Intent;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 178
    .local v0, thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->getPriority()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 179
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 180
    return-void
.end method
