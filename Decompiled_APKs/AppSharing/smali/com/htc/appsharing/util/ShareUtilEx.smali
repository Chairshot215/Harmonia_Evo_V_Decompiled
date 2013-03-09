.class public final Lcom/htc/appsharing/util/ShareUtilEx;
.super Ljava/lang/Object;
.source "ShareUtilEx.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AppSharing.ShareUtilEx"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createSendIntent(Landroid/content/Context;Lcom/htc/appsharing/util/ShareContextEx;)Landroid/content/Intent;
    .locals 3
    .parameter "context"
    .parameter "shareContext"

    .prologue
    .line 245
    const/4 v0, 0x0

    .line 246
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.SEND"

    const-string v2, "text/plain"

    invoke-static {p0, v1, v2}, Lcom/htc/appsharing/util/ShareUtil;->isIntentAvailable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 248
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 249
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 250
    const-string v1, "extra.SRCAPP"

    const-string v2, "appsharing"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 251
    const-string v1, "android.intent.extra.TITLE"

    iget-object v2, p1, Lcom/htc/appsharing/util/ShareContextEx;->composeTitleForGmail:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 252
    const-string v1, "android.intent.extra.SUBJECT"

    iget-object v2, p1, Lcom/htc/appsharing/util/ShareContextEx;->composeTitleForGmail:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 253
    const-string v1, "android.intent.extra.TEXT"

    iget-object v2, p1, Lcom/htc/appsharing/util/ShareContextEx;->composeMessage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 254
    const-string v1, "com.htc.appsharing.intent.extra.SUBJECT_FOR_MAIL"

    iget-object v2, p1, Lcom/htc/appsharing/util/ShareContextEx;->composeTitle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 255
    const-string v1, "com.htc.appsharing.intent.extra.APP_ICON"

    iget-object v2, p1, Lcom/htc/appsharing/util/ShareContextEx;->appIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 256
    const-string v1, "com.htc.appsharing.intent.extra.APP_ICON_URL"

    iget-object v2, p1, Lcom/htc/appsharing/util/ShareContextEx;->appIconUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 259
    :cond_0
    return-object v0
.end method

.method private static createShareIntent(Landroid/content/Context;Lcom/htc/appsharing/util/ShareContextEx;)Landroid/content/Intent;
    .locals 3
    .parameter "context"
    .parameter "shareContext"

    .prologue
    .line 223
    const/4 v0, 0x0

    .line 224
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "share"

    const-string v2, "text/plain"

    invoke-static {p0, v1, v2}, Lcom/htc/appsharing/util/ShareUtil;->isIntentAvailable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 226
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v1, "share"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 227
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 228
    const-string v1, "extra.SRCAPP"

    const-string v2, "appsharing"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 229
    const-string v1, "android.intent.extra.TITLE"

    iget-object v2, p1, Lcom/htc/appsharing/util/ShareContextEx;->composeMessage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 230
    const-string v1, "android.intent.extra.TEXT"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 231
    const-string v1, "android.intent.extra.SUBJECT"

    iget-object v2, p1, Lcom/htc/appsharing/util/ShareContextEx;->composeTitleForGmail:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 232
    const-string v1, "com.htc.appsharing.intent.extra.SUBJECT_FOR_MAIL"

    iget-object v2, p1, Lcom/htc/appsharing/util/ShareContextEx;->composeTitle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 233
    const-string v1, "com.htc.appsharing.intent.extra.APP_ICON"

    iget-object v2, p1, Lcom/htc/appsharing/util/ShareContextEx;->appIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 234
    const-string v1, "com.htc.appsharing.intent.extra.APP_ICON_URL"

    iget-object v2, p1, Lcom/htc/appsharing/util/ShareContextEx;->appIconUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 237
    :cond_0
    return-object v0
.end method

.method public static sendSharedInvitation(Landroid/content/Context;Lcom/htc/appsharing/util/ShareContextEx;ZI)V
    .locals 6
    .parameter "context"
    .parameter "shareContext"
    .parameter "forResult"
    .parameter "requestCode"

    .prologue
    .line 173
    const-string v3, "AppSharing.ShareUtilEx"

    const-string v4, "sendSharedInvitation()"

    invoke-static {v3, v4}, Lcom/htc/appsharing/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const-string v3, "AppSharing.ShareUtilEx"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "title: ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/htc/appsharing/util/ShareContextEx;->composeTitle:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/appsharing/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const-string v3, "AppSharing.ShareUtilEx"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "message: ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/htc/appsharing/util/ShareContextEx;->composeMessage:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/appsharing/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string v3, "AppSharing.ShareUtilEx"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "title for gmail: ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/htc/appsharing/util/ShareContextEx;->composeTitleForGmail:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/appsharing/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const-string v3, "AppSharing.ShareUtilEx"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "app type: ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/htc/appsharing/util/ShareContextEx;->appType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/appsharing/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const-string v3, "AppSharing.ShareUtilEx"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "app icon url: ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/htc/appsharing/util/ShareContextEx;->appIconUrl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/appsharing/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    invoke-static {p0, p1}, Lcom/htc/appsharing/util/ShareUtilEx;->createSendIntent(Landroid/content/Context;Lcom/htc/appsharing/util/ShareContextEx;)Landroid/content/Intent;

    move-result-object v1

    .line 183
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_1

    .line 187
    if-eqz p2, :cond_0

    .line 191
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.htc.appsharing.action.SHARE_VIA_IMP"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 192
    .local v2, intentForShareVia:Landroid/content/Intent;
    const-string v3, "com.htc.appsharing.intent.extra.SHARE_INTENT"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 193
    check-cast p0, Landroid/app/Activity;

    .end local p0
    invoke-virtual {p0, v2, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 215
    .end local v2           #intentForShareVia:Landroid/content/Intent;
    :goto_0
    return-void

    .line 199
    .restart local p0
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.htc.appsharing.action.SHARE_VIA_IMP"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 200
    .restart local v2       #intentForShareVia:Landroid/content/Intent;
    const-string v3, "com.htc.appsharing.intent.extra.SHARE_INTENT"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 201
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 204
    .end local v2           #intentForShareVia:Landroid/content/Intent;
    .end local p0
    :catch_0
    move-exception v0

    .line 206
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v3, "AppSharing.ShareUtilEx"

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/htc/appsharing/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 207
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 212
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    .restart local p0
    :cond_1
    const-string v3, "AppSharing.ShareUtilEx"

    const-string v4, "no sharing media"

    invoke-static {v3, v4}, Lcom/htc/appsharing/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static shareApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 8
    .parameter "context"
    .parameter "appName"
    .parameter "packageName"
    .parameter "appType"
    .parameter "appIcon"
    .parameter "appIconUrl"

    .prologue
    .line 103
    if-nez p1, :cond_0

    .line 105
    const-string v5, "AppSharing.ShareUtilEx"

    const-string v6, "invalid app name"

    invoke-static {v5, v6}, Lcom/htc/appsharing/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    :goto_0
    return-void

    .line 109
    :cond_0
    if-nez p2, :cond_1

    .line 111
    const-string v5, "AppSharing.ShareUtilEx"

    const-string v6, "invalid package name"

    invoke-static {v5, v6}, Lcom/htc/appsharing/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 115
    :cond_1
    if-nez p3, :cond_2

    .line 117
    const-string v5, "AppSharing.ShareUtilEx"

    const-string v6, "invalid app type"

    invoke-static {v5, v6}, Lcom/htc/appsharing/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 123
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 124
    .local v2, res:Landroid/content/res/Resources;
    new-instance v3, Lcom/htc/appsharing/util/ShareContextEx;

    invoke-direct {v3}, Lcom/htc/appsharing/util/ShareContextEx;-><init>()V

    .line 125
    .local v3, shareContext:Lcom/htc/appsharing/util/ShareContextEx;
    const/4 v4, 0x0

    .line 128
    .local v4, strBuilder:Ljava/lang/StringBuilder;
    const v5, 0x7f060002

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/htc/appsharing/util/ShareContextEx;->invitationTitle:Ljava/lang/String;

    .line 131
    invoke-static {p0}, Lcom/htc/appsharing/util/ShareUtil;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 132
    .local v1, name:Ljava/lang/String;
    if-eqz v1, :cond_3

    const-string v5, "null"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 134
    :cond_3
    const-string v1, ""

    .line 137
    :cond_4
    const v5, 0x7f060008

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    const/4 v7, 0x1

    aput-object p1, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/htc/appsharing/util/ShareContextEx;->composeTitle:Ljava/lang/String;

    .line 140
    new-instance v4, Ljava/lang/StringBuilder;

    .end local v4           #strBuilder:Ljava/lang/StringBuilder;
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    .restart local v4       #strBuilder:Ljava/lang/StringBuilder;
    sget v5, Lcom/htc/appsharing/util/Customize;->COMPOSE_MSG_ID:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    sget-object v5, Lcom/htc/appsharing/util/Customize;->URL_MARKET_QUERY_PNAME:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/htc/appsharing/util/ShareContextEx;->composeMessage:Ljava/lang/String;

    .line 148
    const v5, 0x7f06000b

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/htc/appsharing/util/ShareContextEx;->composeTitleForGmail:Ljava/lang/String;

    .line 151
    iput-object p3, v3, Lcom/htc/appsharing/util/ShareContextEx;->appType:Ljava/lang/String;

    .line 154
    iput-object p4, v3, Lcom/htc/appsharing/util/ShareContextEx;->appIcon:Landroid/graphics/Bitmap;

    .line 157
    iput-object p5, v3, Lcom/htc/appsharing/util/ShareContextEx;->appIconUrl:Ljava/lang/String;

    .line 159
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {p0, v3, v5, v6}, Lcom/htc/appsharing/util/ShareUtilEx;->sendSharedInvitation(Landroid/content/Context;Lcom/htc/appsharing/util/ShareContextEx;ZI)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 161
    .end local v1           #name:Ljava/lang/String;
    .end local v2           #res:Landroid/content/res/Resources;
    .end local v3           #shareContext:Lcom/htc/appsharing/util/ShareContextEx;
    .end local v4           #strBuilder:Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    .line 163
    .local v0, e:Landroid/content/res/Resources$NotFoundException;
    const-string v5, "AppSharing.ShareUtilEx"

    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Lcom/htc/appsharing/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 164
    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto/16 :goto_0
.end method
