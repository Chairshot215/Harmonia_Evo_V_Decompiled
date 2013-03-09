.class public Lcom/htc/home/personalize/fusionwidget/FxWidgetScanner;
.super Ljava/lang/Object;
.source "FxWidgetScanner.java"


# static fields
.field public static final ACTION_SERVICE:Ljava/lang/String; = "com.htc.home.personalize.fusionwidget.fxwidgetservice"

.field public static final CMD_ADD:Ljava/lang/String; = "add"

.field public static final CMD_DISCOVER:Ljava/lang/String; = "discover"

.field public static final CMD_FORCE_REDISCOVER:Ljava/lang/String; = "rediscover"

.field public static final CMD_REMOVE:Ljava/lang/String; = "remove"

.field public static final CMD_UPDATE:Ljava/lang/String; = "update"

.field public static final HOST_ACTION:Ljava/lang/String; = "hostAction"

.field public static final PARAM_PACKAGE:Ljava/lang/String; = "package"

.field private static final TAG:Ljava/lang/String; = "FxWidgetScanner"


# instance fields
.field mContext:Landroid/content/Context;

.field mInstalledProviders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/home/personalize/fusionwidget/FxWidgetScanner;->mInstalledProviders:Ljava/util/ArrayList;

    .line 63
    iput-object p1, p0, Lcom/htc/home/personalize/fusionwidget/FxWidgetScanner;->mContext:Landroid/content/Context;

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/home/personalize/fusionwidget/FxWidgetScanner;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 65
    return-void
.end method

.method private addFxWidgetList(Ljava/lang/String;)V
    .locals 10
    .parameter "pkgName"

    .prologue
    .line 135
    const-string v7, "FxWidgetScanner"

    const-string v8, "addWidgetList"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v5, p0, Lcom/htc/home/personalize/fusionwidget/FxWidgetScanner;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 138
    .local v5, pm:Landroid/content/pm/PackageManager;
    new-instance v3, Landroid/content/Intent;

    const-string v7, "com.htc.android.rosie.intent.action.UPDATE_WIDGET"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 139
    .local v3, intent:Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 140
    invoke-virtual {v3, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    :cond_0
    const/16 v7, 0x80

    invoke-virtual {v5, v3, v7}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 144
    .local v1, broadcastReceivers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 145
    .local v0, N:I
    :goto_0
    const-string v7, "FxWidgetScanner"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ResolveInfo size "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 148
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 149
    .local v6, ri:Landroid/content/pm/ResolveInfo;
    invoke-direct {p0, v5, v6}, Lcom/htc/home/personalize/fusionwidget/FxWidgetScanner;->addProvider(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Z

    .line 147
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 144
    .end local v0           #N:I
    .end local v2           #i:I
    .end local v6           #ri:Landroid/content/pm/ResolveInfo;
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    .line 152
    .restart local v0       #N:I
    .restart local v2       #i:I
    :cond_2
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 153
    .local v4, intentDiscovered:Landroid/content/Intent;
    const-string v7, "com.htc.android.rosie.host_app.intent.action.WIDGET_DISCOVERD"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 154
    iget-object v7, p0, Lcom/htc/home/personalize/fusionwidget/FxWidgetScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 155
    return-void
.end method

.method private addProvider(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Z
    .locals 3
    .parameter "pm"
    .parameter "ri"

    .prologue
    .line 163
    iget-object v1, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    const/4 v2, 0x1

    invoke-static {p1, v1, v2}, Lcom/htc/android/rosie/widget/ProviderInfoHelper;->load(Landroid/content/pm/PackageManager;Landroid/content/pm/ActivityInfo;Z)Lcom/htc/android/rosie/widget/WidgetProvider$Info;

    move-result-object v0

    .line 164
    .local v0, p:Lcom/htc/android/rosie/widget/WidgetProvider$Info;
    if-eqz v0, :cond_0

    .line 165
    iget-object v1, p0, Lcom/htc/home/personalize/fusionwidget/FxWidgetScanner;->mInstalledProviders:Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/htc/android/rosie/widget/WidgetProvider$Info;->provider:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    invoke-direct {p0, v0}, Lcom/htc/home/personalize/fusionwidget/FxWidgetScanner;->writeProviderToDB(Lcom/htc/android/rosie/widget/WidgetProvider$Info;)Z

    move-result v1

    .line 169
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static create(Landroid/content/Context;)Lcom/htc/home/personalize/fusionwidget/FxWidgetScanner;
    .locals 2
    .parameter "context"

    .prologue
    .line 58
    const-string v0, "FxWidgetScanner"

    const-string v1, "create"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    new-instance v0, Lcom/htc/home/personalize/fusionwidget/FxWidgetScanner;

    invoke-direct {v0, p0}, Lcom/htc/home/personalize/fusionwidget/FxWidgetScanner;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private isProviderUptodate(Lcom/htc/android/rosie/widget/WidgetProvider$Info;)Z
    .locals 12
    .parameter "p"

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 194
    const-string v0, "FxWidgetScanner"

    const-string v1, "isProviderUptodate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :try_start_0
    iget-object v0, p0, Lcom/htc/home/personalize/fusionwidget/FxWidgetScanner;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v1, p1, Lcom/htc/android/rosie/widget/WidgetProvider$Info;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v9, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 198
    .local v9, versionName:Ljava/lang/String;
    sget-object v0, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbProjection;->INFO:Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbProjection;

    invoke-static {v0}, Lcom/htc/android/rosie/widget/ProviderInfoHelper;->getProjection(Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbProjection;)[Ljava/lang/String;

    move-result-object v2

    .line 199
    .local v2, projection:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;->PROVIDER:Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;

    iget-object v1, v1, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;->PKG_VERSION:Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;

    iget-object v1, v1, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 201
    .local v3, selection:Ljava/lang/String;
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\'"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p1, Lcom/htc/android/rosie/widget/WidgetProvider$Info;->provider:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "\'"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x1

    aput-object v9, v4, v0

    .line 203
    .local v4, selectionArgs:[Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/home/personalize/fusionwidget/FxWidgetScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/home/personalize/fusionwidget/FxWigetProviderMetaData$FxWidgetTableMedata;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 205
    .local v6, cur:Landroid/database/Cursor;
    const/4 v8, -0x1

    .line 206
    .local v8, rows:I
    if-eqz v6, :cond_1

    .line 207
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 208
    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 209
    :cond_0
    const/4 v6, 0x0

    .line 211
    :cond_1
    const-string v0, "FxWidgetScanner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCount "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    if-lez v8, :cond_2

    move v0, v10

    .line 221
    .end local v2           #projection:[Ljava/lang/String;
    .end local v3           #selection:Ljava/lang/String;
    .end local v4           #selectionArgs:[Ljava/lang/String;
    .end local v6           #cur:Landroid/database/Cursor;
    .end local v8           #rows:I
    .end local v9           #versionName:Ljava/lang/String;
    :goto_0
    return v0

    .restart local v2       #projection:[Ljava/lang/String;
    .restart local v3       #selection:Ljava/lang/String;
    .restart local v4       #selectionArgs:[Ljava/lang/String;
    .restart local v6       #cur:Landroid/database/Cursor;
    .restart local v8       #rows:I
    .restart local v9       #versionName:Ljava/lang/String;
    :cond_2
    move v0, v11

    .line 217
    goto :goto_0

    .line 220
    .end local v2           #projection:[Ljava/lang/String;
    .end local v3           #selection:Ljava/lang/String;
    .end local v4           #selectionArgs:[Ljava/lang/String;
    .end local v6           #cur:Landroid/database/Cursor;
    .end local v8           #rows:I
    .end local v9           #versionName:Ljava/lang/String;
    :catch_0
    move-exception v7

    .local v7, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    move v0, v11

    .line 221
    goto :goto_0
.end method

.method private loadFxWidgetList()V
    .locals 2

    .prologue
    .line 158
    const-string v0, "FxWidgetScanner"

    const-string v1, "loadFxWidgetList"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/home/personalize/fusionwidget/FxWidgetScanner;->addFxWidgetList(Ljava/lang/String;)V

    .line 160
    return-void
.end method

.method private lookupProviderFromDB(Lcom/htc/android/rosie/widget/WidgetProvider$Info;)Z
    .locals 10
    .parameter "p"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 226
    const-string v0, "FxWidgetScanner"

    const-string v1, "lookupProviderFromDB"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    sget-object v0, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbProjection;->INFO:Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbProjection;

    invoke-static {v0}, Lcom/htc/android/rosie/widget/ProviderInfoHelper;->getProjection(Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbProjection;)[Ljava/lang/String;

    move-result-object v2

    .line 228
    .local v2, projection:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;->PROVIDER:Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;

    iget-object v1, v1, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 229
    .local v3, selection:Ljava/lang/String;
    new-array v4, v8, [Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/htc/android/rosie/widget/WidgetProvider$Info;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v9

    .line 231
    .local v4, selectionArgs:[Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/home/personalize/fusionwidget/FxWidgetScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/home/personalize/fusionwidget/FxWigetProviderMetaData$FxWidgetTableMedata;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 233
    .local v6, cur:Landroid/database/Cursor;
    const/4 v7, -0x1

    .line 234
    .local v7, rows:I
    if-eqz v6, :cond_1

    .line 235
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 236
    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 237
    :cond_0
    const/4 v6, 0x0

    .line 239
    :cond_1
    const-string v0, "FxWidgetScanner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCount "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    if-lez v7, :cond_2

    move v0, v8

    .line 245
    :goto_0
    return v0

    :cond_2
    move v0, v9

    goto :goto_0
.end method

.method private removeFxWidgetList(Ljava/lang/String;)V
    .locals 6
    .parameter "pkgName"

    .prologue
    .line 114
    const-string v4, "FxWidgetScanner"

    const-string v5, "removeFxWidgetList"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-direct {p0, p1}, Lcom/htc/home/personalize/fusionwidget/FxWidgetScanner;->removeProviderFromDB(Ljava/lang/String;)Z

    .line 118
    iget-object v4, p0, Lcom/htc/home/personalize/fusionwidget/FxWidgetScanner;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 119
    .local v0, N:I
    if-lez v0, :cond_1

    .line 120
    add-int/lit8 v1, v0, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_1

    .line 121
    iget-object v4, p0, Lcom/htc/home/personalize/fusionwidget/FxWidgetScanner;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 122
    .local v3, name:Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 124
    iget-object v4, p0, Lcom/htc/home/personalize/fusionwidget/FxWidgetScanner;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 120
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 129
    .end local v1           #i:I
    .end local v3           #name:Ljava/lang/String;
    :cond_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 130
    .local v2, intentDiscovered:Landroid/content/Intent;
    const-string v4, "com.htc.android.rosie.host_app.intent.action.WIDGET_DISCOVERD"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    iget-object v4, p0, Lcom/htc/home/personalize/fusionwidget/FxWidgetScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 132
    return-void
.end method

.method private removeProviderFromDB(Lcom/htc/android/rosie/widget/WidgetProvider$Info;)Z
    .locals 8
    .parameter "p"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 184
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;->PROVIDER:Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;

    iget-object v6, v6, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " = ?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 185
    .local v1, selection:Ljava/lang/String;
    new-array v2, v3, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/htc/android/rosie/widget/WidgetProvider$Info;->provider:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    .line 187
    .local v2, selectionArgs:[Ljava/lang/String;
    iget-object v5, p0, Lcom/htc/home/personalize/fusionwidget/FxWidgetScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/htc/home/personalize/fusionwidget/FxWigetProviderMetaData$FxWidgetTableMedata;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 189
    .local v0, rows:I
    const-string v5, "FxWidgetScanner"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "delete "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    if-lez v0, :cond_0

    :goto_0
    return v3

    :cond_0
    move v3, v4

    goto :goto_0
.end method

.method private removeProviderFromDB(Ljava/lang/String;)Z
    .locals 8
    .parameter "pkgName"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 174
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;->PROVIDER:Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;

    iget-object v6, v6, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " LIKE ?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 175
    .local v1, selection:Ljava/lang/String;
    new-array v2, v3, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    .line 177
    .local v2, selectionArgs:[Ljava/lang/String;
    iget-object v5, p0, Lcom/htc/home/personalize/fusionwidget/FxWidgetScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/htc/home/personalize/fusionwidget/FxWigetProviderMetaData$FxWidgetTableMedata;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 179
    .local v0, rows:I
    const-string v5, "FxWidgetScanner"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "delete "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    if-lez v0, :cond_0

    :goto_0
    return v3

    :cond_0
    move v3, v4

    goto :goto_0
.end method

.method private updateFxWidgetList(Ljava/lang/String;)V
    .locals 16
    .parameter "pkgName"

    .prologue
    .line 68
    const-string v13, "FxWidgetScanner"

    const-string v14, "updateFxWidgetList"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-direct/range {p0 .. p1}, Lcom/htc/home/personalize/fusionwidget/FxWidgetScanner;->removeProviderFromDB(Ljava/lang/String;)Z

    .line 71
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/home/personalize/fusionwidget/FxWidgetScanner;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 72
    .local v1, N:I
    if-lez v1, :cond_1

    .line 73
    add-int/lit8 v4, v1, -0x1

    .local v4, i:I
    :goto_0
    if-ltz v4, :cond_1

    .line 74
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/home/personalize/fusionwidget/FxWidgetScanner;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 75
    .local v8, name:Ljava/lang/String;
    if-eqz v8, :cond_0

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 77
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/home/personalize/fusionwidget/FxWidgetScanner;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 73
    :cond_0
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 82
    .end local v4           #i:I
    .end local v8           #name:Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/home/personalize/fusionwidget/FxWidgetScanner;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 84
    .local v10, pm:Landroid/content/pm/PackageManager;
    new-instance v6, Landroid/content/Intent;

    const-string v13, "com.htc.android.rosie.intent.action.UPDATE_WIDGET"

    invoke-direct {v6, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 85
    .local v6, intent:Landroid/content/Intent;
    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    const/16 v13, 0x80

    invoke-virtual {v10, v6, v13}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 89
    .local v2, broadcastReceivers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v2, :cond_2

    const/4 v1, 0x0

    .line 90
    :goto_1
    const-string v13, "FxWidgetScanner"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "ResolveInfo size "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_2
    if-ge v4, v1, :cond_5

    .line 93
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ResolveInfo;

    .line 94
    .local v11, ri:Landroid/content/pm/ResolveInfo;
    iget-object v13, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    const/4 v14, 0x1

    invoke-static {v10, v13, v14}, Lcom/htc/android/rosie/widget/ProviderInfoHelper;->load(Landroid/content/pm/PackageManager;Landroid/content/pm/ActivityInfo;Z)Lcom/htc/android/rosie/widget/WidgetProvider$Info;

    move-result-object v9

    .line 95
    .local v9, p:Lcom/htc/android/rosie/widget/WidgetProvider$Info;
    if-eqz v9, :cond_4

    .line 96
    invoke-static {v9}, Lcom/htc/android/rosie/widget/ProviderInfoHelper;->toContentValuesList(Lcom/htc/android/rosie/widget/WidgetProvider$Info;)Ljava/util/List;

    move-result-object v12

    .line 97
    .local v12, values:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v12, :cond_3

    .line 98
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    .line 99
    .local v3, cv:Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/home/personalize/fusionwidget/FxWidgetScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    sget-object v14, Lcom/htc/home/personalize/fusionwidget/FxWigetProviderMetaData$FxWidgetTableMedata;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v13, v14, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_3

    .line 89
    .end local v3           #cv:Landroid/content/ContentValues;
    .end local v4           #i:I
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v9           #p:Lcom/htc/android/rosie/widget/WidgetProvider$Info;
    .end local v11           #ri:Landroid/content/pm/ResolveInfo;
    .end local v12           #values:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_1

    .line 103
    .restart local v4       #i:I
    .restart local v9       #p:Lcom/htc/android/rosie/widget/WidgetProvider$Info;
    .restart local v11       #ri:Landroid/content/pm/ResolveInfo;
    .restart local v12       #values:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    :cond_3
    const-string v13, "FxWidgetScanner"

    const-string v14, "no ContentValues"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    .end local v12           #values:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 108
    .end local v9           #p:Lcom/htc/android/rosie/widget/WidgetProvider$Info;
    .end local v11           #ri:Landroid/content/pm/ResolveInfo;
    :cond_5
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 109
    .local v7, intentDiscovered:Landroid/content/Intent;
    const-string v13, "com.htc.android.rosie.host_app.intent.action.WIDGET_DISCOVERD"

    invoke-virtual {v7, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/home/personalize/fusionwidget/FxWidgetScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v13, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 111
    return-void
.end method

.method private writeProviderToDB(Lcom/htc/android/rosie/widget/WidgetProvider$Info;)Z
    .locals 8
    .parameter "p"

    .prologue
    const/4 v4, 0x1

    .line 250
    invoke-direct {p0, p1}, Lcom/htc/home/personalize/fusionwidget/FxWidgetScanner;->lookupProviderFromDB(Lcom/htc/android/rosie/widget/WidgetProvider$Info;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 251
    invoke-direct {p0, p1}, Lcom/htc/home/personalize/fusionwidget/FxWidgetScanner;->isProviderUptodate(Lcom/htc/android/rosie/widget/WidgetProvider$Info;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 252
    invoke-direct {p0, p1}, Lcom/htc/home/personalize/fusionwidget/FxWidgetScanner;->removeProviderFromDB(Lcom/htc/android/rosie/widget/WidgetProvider$Info;)Z

    .line 259
    :cond_0
    invoke-static {p1}, Lcom/htc/android/rosie/widget/ProviderInfoHelper;->toContentValuesList(Lcom/htc/android/rosie/widget/WidgetProvider$Info;)Ljava/util/List;

    move-result-object v3

    .line 260
    .local v3, values:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v3, :cond_1

    .line 261
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 262
    .local v0, cv:Landroid/content/ContentValues;
    iget-object v5, p0, Lcom/htc/home/personalize/fusionwidget/FxWidgetScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/htc/home/personalize/fusionwidget/FxWigetProviderMetaData$FxWidgetTableMedata;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 263
    .local v2, uri:Landroid/net/Uri;
    const-string v5, "FxWidgetScanner"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Uri "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 268
    .end local v0           #cv:Landroid/content/ContentValues;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #uri:Landroid/net/Uri;
    :cond_1
    const-string v4, "FxWidgetScanner"

    const-string v5, "no ContentValues"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    const/4 v4, 0x0

    .end local v3           #values:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    :cond_2
    return v4
.end method


# virtual methods
.method public handleIntent(Landroid/content/Intent;)V
    .locals 7
    .parameter "intent"

    .prologue
    const/4 v6, 0x0

    .line 275
    const-string v3, "hostAction"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 276
    .local v0, command:Ljava/lang/String;
    const-string v3, "FxWidgetScanner"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onHandleIntent "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    const-string v3, "discover"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 278
    invoke-direct {p0}, Lcom/htc/home/personalize/fusionwidget/FxWidgetScanner;->loadFxWidgetList()V

    .line 301
    :cond_0
    :goto_0
    return-void

    .line 280
    :cond_1
    const-string v3, "rediscover"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 281
    iget-object v3, p0, Lcom/htc/home/personalize/fusionwidget/FxWidgetScanner;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 282
    iget-object v3, p0, Lcom/htc/home/personalize/fusionwidget/FxWidgetScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/htc/home/personalize/fusionwidget/FxWigetProviderMetaData$FxWidgetTableMedata;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v6, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 283
    .local v2, rowdeleted:I
    const-string v3, "FxWidgetScanner"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "delete "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    invoke-direct {p0}, Lcom/htc/home/personalize/fusionwidget/FxWidgetScanner;->loadFxWidgetList()V

    goto :goto_0

    .line 286
    .end local v2           #rowdeleted:I
    :cond_2
    const-string v3, "update"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 287
    const-string v3, "package"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 288
    .local v1, pkg:Ljava/lang/String;
    const-string v3, "FxWidgetScanner"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "provider "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    invoke-direct {p0, v1}, Lcom/htc/home/personalize/fusionwidget/FxWidgetScanner;->updateFxWidgetList(Ljava/lang/String;)V

    goto :goto_0

    .line 291
    .end local v1           #pkg:Ljava/lang/String;
    :cond_3
    const-string v3, "add"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 292
    const-string v3, "package"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 293
    .restart local v1       #pkg:Ljava/lang/String;
    const-string v3, "FxWidgetScanner"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "provider "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    invoke-direct {p0, v1}, Lcom/htc/home/personalize/fusionwidget/FxWidgetScanner;->addFxWidgetList(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 296
    .end local v1           #pkg:Ljava/lang/String;
    :cond_4
    const-string v3, "remove"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 297
    const-string v3, "package"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 298
    .restart local v1       #pkg:Ljava/lang/String;
    const-string v3, "FxWidgetScanner"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "provider "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    invoke-direct {p0, v1}, Lcom/htc/home/personalize/fusionwidget/FxWidgetScanner;->removeFxWidgetList(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
