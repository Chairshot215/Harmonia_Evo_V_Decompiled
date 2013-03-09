.class public final Lcom/htc/appsharing/util/ShareUtil;
.super Ljava/lang/Object;
.source "ShareUtil.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AppSharing.ShareUtil"

.field private static final WDM_PROVIDER_URI_WIDGET_LIST:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-string v0, "content://com.htc.wdm.provider.WDMProvider/widgetlist"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/appsharing/util/ShareUtil;->WDM_PROVIDER_URI_WIDGET_LIST:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createComposeMessage(Landroid/content/Context;Lcom/htc/appsharing/ComposeMaterial;)Ljava/lang/String;
    .locals 8
    .parameter "context"
    .parameter "material"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 86
    const/4 v1, 0x0

    .line 87
    .local v1, message:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/htc/appsharing/ComposeMaterial;->getSelectedAppCount()I

    move-result v4

    if-gt v4, v6, :cond_0

    .line 89
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    .local v3, strBuilder:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/htc/appsharing/util/Customize;->COMPOSE_MSG_ID:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {p1, v7}, Lcom/htc/appsharing/ComposeMaterial;->getLabel(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {p1, v7}, Lcom/htc/appsharing/ComposeMaterial;->getUrl(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 120
    :goto_0
    return-object v1

    .line 98
    .end local v3           #strBuilder:Ljava/lang/StringBuilder;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .restart local v3       #strBuilder:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060007

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {p1}, Lcom/htc/appsharing/ComposeMaterial;->getSelectedAppCount()I

    move-result v2

    .line 103
    .local v2, selectedAppCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v2, :cond_2

    .line 105
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 106
    const-string v4, ". "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {p1, v0}, Lcom/htc/appsharing/ComposeMaterial;->getLabel(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {p1, v0}, Lcom/htc/appsharing/ComposeMaterial;->getUrl(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    add-int/lit8 v4, v2, -0x1

    if-ge v0, v4, :cond_1

    .line 112
    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 117
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static createComposeTitle(Landroid/content/Context;Lcom/htc/appsharing/ComposeMaterial;)Ljava/lang/String;
    .locals 6
    .parameter "context"
    .parameter "material"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 45
    invoke-virtual {p1}, Lcom/htc/appsharing/ComposeMaterial;->getUserName()Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, name:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, "null"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 48
    :cond_0
    const-string v0, ""

    .line 51
    :cond_1
    const/4 v1, 0x0

    .line 52
    .local v1, title:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/htc/appsharing/ComposeMaterial;->getSelectedAppCount()I

    move-result v2

    if-gt v2, v5, :cond_2

    .line 54
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060008

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-virtual {p1, v4}, Lcom/htc/appsharing/ComposeMaterial;->getLabel(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 61
    :goto_0
    return-object v1

    .line 58
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060006

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static createComposeTitleForGmail(Landroid/content/Context;Lcom/htc/appsharing/ComposeMaterial;)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "material"

    .prologue
    const/4 v4, 0x0

    .line 131
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v4}, Lcom/htc/appsharing/ComposeMaterial;->getLabel(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, title:Ljava/lang/String;
    return-object v0
.end method

.method private static createSendIntent(Landroid/content/Context;Lcom/htc/appsharing/util/ShareContext;)Landroid/content/Intent;
    .locals 3
    .parameter "context"
    .parameter "shareContext"

    .prologue
    .line 268
    const/4 v0, 0x0

    .line 269
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.SEND"

    const-string v2, "text/plain"

    invoke-static {p0, v1, v2}, Lcom/htc/appsharing/util/ShareUtil;->isIntentAvailable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 271
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 272
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 273
    const-string v1, "extra.SRCAPP"

    const-string v2, "appsharing"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 274
    const-string v1, "android.intent.extra.TITLE"

    iget-object v2, p1, Lcom/htc/appsharing/util/ShareContext;->composeTitleForGmail:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 275
    const-string v1, "android.intent.extra.SUBJECT"

    iget-object v2, p1, Lcom/htc/appsharing/util/ShareContext;->composeTitleForGmail:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 276
    const-string v1, "android.intent.extra.TEXT"

    iget-object v2, p1, Lcom/htc/appsharing/util/ShareContext;->composeMessage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 277
    const-string v1, "com.htc.appsharing.intent.extra.SUBJECT_FOR_MAIL"

    iget-object v2, p1, Lcom/htc/appsharing/util/ShareContext;->composeTitle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 278
    const-string v1, "com.htc.appsharing.intent.extra.APP_REFERENCES"

    iget-object v2, p1, Lcom/htc/appsharing/util/ShareContext;->appReferences:[Landroid/os/Parcelable;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 281
    :cond_0
    return-object v0
.end method

.method private static createShareIntent(Landroid/content/Context;Lcom/htc/appsharing/util/ShareContext;)Landroid/content/Intent;
    .locals 3
    .parameter "context"
    .parameter "shareContext"

    .prologue
    .line 248
    const/4 v0, 0x0

    .line 249
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "share"

    const-string v2, "text/plain"

    invoke-static {p0, v1, v2}, Lcom/htc/appsharing/util/ShareUtil;->isIntentAvailable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 250
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v1, "share"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 251
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 252
    const-string v1, "extra.SRCAPP"

    const-string v2, "appsharing"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 253
    const-string v1, "android.intent.extra.TITLE"

    iget-object v2, p1, Lcom/htc/appsharing/util/ShareContext;->composeMessage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 254
    const-string v1, "android.intent.extra.TEXT"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 255
    const-string v1, "android.intent.extra.SUBJECT"

    iget-object v2, p1, Lcom/htc/appsharing/util/ShareContext;->composeTitleForGmail:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 256
    const-string v1, "com.htc.appsharing.intent.extra.SUBJECT_FOR_MAIL"

    iget-object v2, p1, Lcom/htc/appsharing/util/ShareContext;->composeTitle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 257
    const-string v1, "com.htc.appsharing.intent.extra.APP_REFERENCES"

    iget-object v2, p1, Lcom/htc/appsharing/util/ShareContext;->appReferences:[Landroid/os/Parcelable;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 260
    :cond_0
    return-object v0
.end method

.method public static getUserName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 142
    const-string v0, ""

    return-object v0
.end method

.method public static getWidgetPackageName(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 9
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 304
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 305
    .local v8, rets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 309
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/appsharing/util/ShareUtil;->WDM_PROVIDER_URI_WIDGET_LIST:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "packageName"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 315
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 319
    :cond_0
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 320
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_0

    .line 330
    :cond_1
    if-eqz v6, :cond_2

    .line 332
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 336
    :cond_2
    :goto_0
    return-object v8

    .line 323
    :catch_0
    move-exception v7

    .line 325
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "AppSharing.ShareUtil"

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Lcom/htc/appsharing/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 326
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 330
    if-eqz v6, :cond_2

    .line 332
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 330
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 332
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static isIntentAvailable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "context"
    .parameter "action"
    .parameter "type"

    .prologue
    .line 289
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 290
    .local v2, pkgMgr:Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 292
    .local v0, intent:Landroid/content/Intent;
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 293
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 295
    :cond_0
    const/high16 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 296
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static sendSharedInvitation(Landroid/content/Context;Lcom/htc/appsharing/util/ShareContext;ZIZ)V
    .locals 7
    .parameter "context"
    .parameter "shareContext"
    .parameter "forResult"
    .parameter "requestCode"
    .parameter "bLaunchFS"

    .prologue
    .line 186
    const-string v4, "AppSharing.ShareUtil"

    const-string v5, "sendSharedInvitation()"

    invoke-static {v4, v5}, Lcom/htc/appsharing/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const-string v4, "AppSharing.ShareUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "title: ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/htc/appsharing/util/ShareContext;->composeTitle:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/appsharing/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const-string v4, "AppSharing.ShareUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "message: ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/htc/appsharing/util/ShareContext;->composeMessage:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/appsharing/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const-string v4, "AppSharing.ShareUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "title for gmail: ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/htc/appsharing/util/ShareContext;->composeTitleForGmail:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/appsharing/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    invoke-static {p0, p1}, Lcom/htc/appsharing/util/ShareUtil;->createSendIntent(Landroid/content/Context;Lcom/htc/appsharing/util/ShareContext;)Landroid/content/Intent;

    move-result-object v2

    .line 193
    .local v2, intent:Landroid/content/Intent;
    if-eqz v2, :cond_2

    .line 195
    if-eqz p4, :cond_0

    .line 199
    :try_start_0
    new-instance v0, Landroid/content/ComponentName;

    const-string v4, "com.htc.friendstream"

    const-string v5, "com.htc.friendstream.FriendStreamInput"

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    .local v0, componentName:Landroid/content/ComponentName;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 201
    check-cast p0, Landroid/app/Activity;

    .end local p0
    invoke-virtual {p0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    .end local v0           #componentName:Landroid/content/ComponentName;
    :goto_0
    return-void

    .line 203
    :catch_0
    move-exception v1

    .line 205
    .local v1, e:Landroid/content/ActivityNotFoundException;
    const-string v4, "AppSharing.ShareUtil"

    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Lcom/htc/appsharing/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 206
    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 213
    .end local v1           #e:Landroid/content/ActivityNotFoundException;
    .restart local p0
    :cond_0
    if-eqz p2, :cond_1

    .line 217
    :try_start_1
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.htc.appsharing.action.SHARE_VIA_IMP"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 218
    .local v3, intentForShareVia:Landroid/content/Intent;
    const-string v4, "com.htc.appsharing.intent.extra.SHARE_INTENT"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 219
    check-cast p0, Landroid/app/Activity;

    .end local p0
    invoke-virtual {p0, v3, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 230
    .end local v3           #intentForShareVia:Landroid/content/Intent;
    :catch_1
    move-exception v1

    .line 232
    .restart local v1       #e:Landroid/content/ActivityNotFoundException;
    const-string v4, "AppSharing.ShareUtil"

    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Lcom/htc/appsharing/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 233
    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 225
    .end local v1           #e:Landroid/content/ActivityNotFoundException;
    .restart local p0
    :cond_1
    :try_start_2
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.htc.appsharing.action.SHARE_VIA_IMP"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 226
    .restart local v3       #intentForShareVia:Landroid/content/Intent;
    const-string v4, "com.htc.appsharing.intent.extra.SHARE_INTENT"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 227
    invoke-virtual {p0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 239
    .end local v3           #intentForShareVia:Landroid/content/Intent;
    :cond_2
    const-string v4, "AppSharing.ShareUtil"

    const-string v5, "no sharing media"

    invoke-static {v4, v5}, Lcom/htc/appsharing/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
