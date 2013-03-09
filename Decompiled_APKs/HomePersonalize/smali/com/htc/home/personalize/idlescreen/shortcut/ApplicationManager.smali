.class public Lcom/htc/home/personalize/idlescreen/shortcut/ApplicationManager;
.super Ljava/lang/Object;
.source "ApplicationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/home/personalize/idlescreen/shortcut/ApplicationManager$CustomizeAppInfo;
    }
.end annotation


# static fields
.field public static final ALL_PROGRAM_LIST_DEFAULT_PRIORITY:I = 0xc8

.field public static final ALL_PROGRAM_LIST_HIGHEST_PRIORITY:I = -0x80000000

.field private static final CUSTOMIZATION_URI_STRING:Ljava/lang/String; = "content://customization_settings/SettingTable/application_Launcher"

.field public static final LIST_TYPE_APPLICATION:I = 0x1

.field public static final LIST_TYPE_APP_WIDGET:I = 0x2

.field public static final LIST_TYPE_HTC_WIDGET:I = 0x4

.field public static final LIST_TYPE_SHORTCUT:I = 0x3

.field private static final NULL:Ljava/lang/String; = "null"

.field private static final TAG:Ljava/lang/String; = "ApplicationManager"

.field private static initialized:Z

.field private static final localLOGV:Z

.field private static sInstance:Lcom/htc/home/personalize/idlescreen/shortcut/ApplicationManager;


# instance fields
.field private mHideApplicationList:[Lcom/htc/home/personalize/idlescreen/shortcut/ApplicationManager$CustomizeAppInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/home/personalize/idlescreen/shortcut/ApplicationManager;->initialized:Z

    .line 20
    new-instance v0, Lcom/htc/home/personalize/idlescreen/shortcut/ApplicationManager;

    invoke-direct {v0}, Lcom/htc/home/personalize/idlescreen/shortcut/ApplicationManager;-><init>()V

    sput-object v0, Lcom/htc/home/personalize/idlescreen/shortcut/ApplicationManager;->sInstance:Lcom/htc/home/personalize/idlescreen/shortcut/ApplicationManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/htc/home/personalize/idlescreen/shortcut/ApplicationManager$CustomizeAppInfo;

    iput-object v0, p0, Lcom/htc/home/personalize/idlescreen/shortcut/ApplicationManager;->mHideApplicationList:[Lcom/htc/home/personalize/idlescreen/shortcut/ApplicationManager$CustomizeAppInfo;

    .line 41
    return-void
.end method

.method static byteArrayToBundle([B)Landroid/os/Bundle;
    .locals 4
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    .line 283
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 284
    .local v1, parcel:Landroid/os/Parcel;
    array-length v2, p0

    invoke-virtual {v1, p0, v3, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 285
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 286
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 287
    .local v0, bundle:Landroid/os/Bundle;
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->readFromParcel(Landroid/os/Parcel;)V

    .line 288
    return-object v0
.end method

.method static getModuleBundle(Landroid/content/Context;)Landroid/os/Bundle;
    .locals 10
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 261
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 262
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v3, "content://customization_settings/SettingTable/application_Launcher"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .local v1, uri:Landroid/net/Uri;
    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 263
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 267
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_2

    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 268
    const-string v2, "value"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 269
    .local v9, idValue:I
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    .line 270
    .local v6, buffer:[B
    invoke-static {v6}, Lcom/htc/home/personalize/idlescreen/shortcut/ApplicationManager;->byteArrayToBundle([B)Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 274
    .local v7, bundle:Landroid/os/Bundle;
    if-eqz v8, :cond_0

    .line 275
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 279
    .end local v6           #buffer:[B
    .end local v7           #bundle:Landroid/os/Bundle;
    .end local v9           #idValue:I
    :cond_0
    :goto_0
    return-object v7

    .line 274
    :catchall_0
    move-exception v2

    if-eqz v8, :cond_1

    .line 275
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 274
    :cond_1
    throw v2

    :cond_2
    if-eqz v8, :cond_3

    .line 275
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 278
    :cond_3
    const-string v2, "ApplicationManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "no module bundle found = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    goto :goto_0
.end method

.method private init(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 165
    invoke-static {p1}, Lcom/htc/home/personalize/idlescreen/shortcut/ApplicationManager;->getModuleBundle(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    .line 166
    .local v0, moduleBundle:Landroid/os/Bundle;
    invoke-direct {p0, p1, v0}, Lcom/htc/home/personalize/idlescreen/shortcut/ApplicationManager;->initShowHideCustomizationList(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 167
    return-void
.end method

.method private initList(Landroid/content/Context;Landroid/os/Bundle;)[Lcom/htc/home/personalize/idlescreen/shortcut/ApplicationManager$CustomizeAppInfo;
    .locals 15
    .parameter "context"
    .parameter "inputBundle"

    .prologue
    .line 213
    if-nez p2, :cond_0

    .line 214
    const/4 v13, 0x0

    new-array v13, v13, [Lcom/htc/home/personalize/idlescreen/shortcut/ApplicationManager$CustomizeAppInfo;

    .line 256
    :goto_0
    return-object v13

    .line 217
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Bundle;->size()I

    move-result v9

    .line 219
    .local v9, size:I
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 220
    .local v12, tempShowList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/home/personalize/idlescreen/shortcut/ApplicationManager$CustomizeAppInfo;>;"
    const/4 v11, 0x0

    .line 221
    .local v11, tempShow:Lcom/htc/home/personalize/idlescreen/shortcut/ApplicationManager$CustomizeAppInfo;
    const/4 v6, 0x0

    .line 222
    .local v6, packageName:Ljava/lang/String;
    const/4 v2, 0x0

    .line 225
    .local v2, className:Ljava/lang/String;
    const/4 v10, 0x0

    .line 226
    .local v10, skip:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v9, :cond_5

    .line 227
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "plenty_set"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    add-int/lit8 v14, v3, 0x1

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 229
    .local v5, key:Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 230
    .local v1, childBundle:Landroid/os/Bundle;
    const-string v13, "package"

    invoke-virtual {v1, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 231
    const-string v13, "class"

    invoke-virtual {v1, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 232
    const/4 v10, 0x0

    .line 233
    invoke-static/range {p1 .. p1}, Lcom/htc/home/personalize/idlescreen/shortcut/LockscreenSetting;->getShortcutDefaultList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v8

    .line 234
    .local v8, shortcutDefaultList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/home/personalize/idlescreen/shortcut/LockscreenSetting$ShortcutInfo;>;"
    const/4 v4, 0x0

    .local v4, j:I
    :goto_2
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v13

    if-ge v4, v13, :cond_1

    .line 235
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/htc/home/personalize/idlescreen/shortcut/LockscreenSetting$ShortcutInfo;

    iget-object v13, v13, Lcom/htc/home/personalize/idlescreen/shortcut/LockscreenSetting$ShortcutInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/htc/home/personalize/idlescreen/shortcut/LockscreenSetting$ShortcutInfo;

    iget-object v13, v13, Lcom/htc/home/personalize/idlescreen/shortcut/LockscreenSetting$ShortcutInfo;->mClassName:Ljava/lang/String;

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 237
    const/4 v10, 0x1

    .line 241
    :cond_1
    if-eqz v10, :cond_3

    .line 226
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 234
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 244
    :cond_3
    new-instance v11, Lcom/htc/home/personalize/idlescreen/shortcut/ApplicationManager$CustomizeAppInfo;

    .end local v11           #tempShow:Lcom/htc/home/personalize/idlescreen/shortcut/ApplicationManager$CustomizeAppInfo;
    invoke-direct {v11}, Lcom/htc/home/personalize/idlescreen/shortcut/ApplicationManager$CustomizeAppInfo;-><init>()V

    .line 245
    .restart local v11       #tempShow:Lcom/htc/home/personalize/idlescreen/shortcut/ApplicationManager$CustomizeAppInfo;
    iput-object v6, v11, Lcom/htc/home/personalize/idlescreen/shortcut/ApplicationManager$CustomizeAppInfo;->packageName:Ljava/lang/String;

    .line 246
    iput-object v2, v11, Lcom/htc/home/personalize/idlescreen/shortcut/ApplicationManager$CustomizeAppInfo;->className:Ljava/lang/String;

    .line 248
    const-string v13, "widget_name"

    invoke-virtual {v1, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v11, Lcom/htc/home/personalize/idlescreen/shortcut/ApplicationManager$CustomizeAppInfo;->widgetName:Ljava/lang/String;

    .line 249
    const-string v13, "priority"

    invoke-virtual {v1, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 250
    .local v7, priority:Ljava/lang/String;
    if-nez v7, :cond_4

    .line 251
    const/16 v13, 0xc8

    iput v13, v11, Lcom/htc/home/personalize/idlescreen/shortcut/ApplicationManager$CustomizeAppInfo;->priority:I

    .line 254
    :goto_4
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 253
    :cond_4
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    iput v13, v11, Lcom/htc/home/personalize/idlescreen/shortcut/ApplicationManager$CustomizeAppInfo;->priority:I

    goto :goto_4

    .line 256
    .end local v1           #childBundle:Landroid/os/Bundle;
    .end local v4           #j:I
    .end local v5           #key:Ljava/lang/String;
    .end local v7           #priority:Ljava/lang/String;
    .end local v8           #shortcutDefaultList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/home/personalize/idlescreen/shortcut/LockscreenSetting$ShortcutInfo;>;"
    :cond_5
    const/4 v13, 0x0

    new-array v13, v13, [Lcom/htc/home/personalize/idlescreen/shortcut/ApplicationManager$CustomizeAppInfo;

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Lcom/htc/home/personalize/idlescreen/shortcut/ApplicationManager$CustomizeAppInfo;

    goto/16 :goto_0
.end method

.method private initShowHideCustomizationList(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 2
    .parameter "context"
    .parameter "moduleBundle"

    .prologue
    .line 177
    const-string v1, "applications_hide"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 179
    .local v0, hideBundle:Landroid/os/Bundle;
    invoke-direct {p0, p1, v0}, Lcom/htc/home/personalize/idlescreen/shortcut/ApplicationManager;->initList(Landroid/content/Context;Landroid/os/Bundle;)[Lcom/htc/home/personalize/idlescreen/shortcut/ApplicationManager$CustomizeAppInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/home/personalize/idlescreen/shortcut/ApplicationManager;->mHideApplicationList:[Lcom/htc/home/personalize/idlescreen/shortcut/ApplicationManager$CustomizeAppInfo;

    .line 209
    return-void
.end method

.method public static declared-synchronized instance(Landroid/content/Context;)Lcom/htc/home/personalize/idlescreen/shortcut/ApplicationManager;
    .locals 2
    .parameter "context"

    .prologue
    .line 49
    const-class v1, Lcom/htc/home/personalize/idlescreen/shortcut/ApplicationManager;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/htc/home/personalize/idlescreen/shortcut/ApplicationManager;->initialized:Z

    if-nez v0, :cond_0

    .line 50
    sget-object v0, Lcom/htc/home/personalize/idlescreen/shortcut/ApplicationManager;->sInstance:Lcom/htc/home/personalize/idlescreen/shortcut/ApplicationManager;

    invoke-direct {v0, p0}, Lcom/htc/home/personalize/idlescreen/shortcut/ApplicationManager;->init(Landroid/content/Context;)V

    .line 51
    const/4 v0, 0x1

    sput-boolean v0, Lcom/htc/home/personalize/idlescreen/shortcut/ApplicationManager;->initialized:Z

    .line 53
    :cond_0
    sget-object v0, Lcom/htc/home/personalize/idlescreen/shortcut/ApplicationManager;->sInstance:Lcom/htc/home/personalize/idlescreen/shortcut/ApplicationManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 49
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public inHideCustomizationList(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 10
    .parameter "packageName"
    .parameter "classNameOrWidgetName"
    .parameter "listType"

    .prologue
    const/4 v8, 0x4

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 67
    const-string v5, "null"

    .line 68
    .local v5, type:Ljava/lang/String;
    new-array v2, v7, [Lcom/htc/home/personalize/idlescreen/shortcut/ApplicationManager$CustomizeAppInfo;

    .line 69
    .local v2, customizeList:[Lcom/htc/home/personalize/idlescreen/shortcut/ApplicationManager$CustomizeAppInfo;
    packed-switch p3, :pswitch_data_0

    .line 89
    :goto_0
    if-eq p3, v8, :cond_2

    .line 90
    move-object v1, v2

    .local v1, arr$:[Lcom/htc/home/personalize/idlescreen/shortcut/ApplicationManager$CustomizeAppInfo;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_4

    aget-object v0, v1, v3

    .line 91
    .local v0, appInfo:Lcom/htc/home/personalize/idlescreen/shortcut/ApplicationManager$CustomizeAppInfo;
    iget-object v8, v0, Lcom/htc/home/personalize/idlescreen/shortcut/ApplicationManager$CustomizeAppInfo;->packageName:Ljava/lang/String;

    if-eqz v8, :cond_1

    iget-object v8, v0, Lcom/htc/home/personalize/idlescreen/shortcut/ApplicationManager$CustomizeAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, v0, Lcom/htc/home/personalize/idlescreen/shortcut/ApplicationManager$CustomizeAppInfo;->className:Ljava/lang/String;

    if-eqz v8, :cond_0

    iget-object v8, v0, Lcom/htc/home/personalize/idlescreen/shortcut/ApplicationManager$CustomizeAppInfo;->className:Ljava/lang/String;

    const-string v9, "null"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, v0, Lcom/htc/home/personalize/idlescreen/shortcut/ApplicationManager$CustomizeAppInfo;->className:Ljava/lang/String;

    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 108
    .end local v0           #appInfo:Lcom/htc/home/personalize/idlescreen/shortcut/ApplicationManager$CustomizeAppInfo;
    .end local v1           #arr$:[Lcom/htc/home/personalize/idlescreen/shortcut/ApplicationManager$CustomizeAppInfo;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_0
    :goto_2
    return v6

    .line 71
    :pswitch_0
    iget-object v2, p0, Lcom/htc/home/personalize/idlescreen/shortcut/ApplicationManager;->mHideApplicationList:[Lcom/htc/home/personalize/idlescreen/shortcut/ApplicationManager$CustomizeAppInfo;

    .line 72
    const-string v5, "Application"

    goto :goto_0

    .line 90
    .restart local v0       #appInfo:Lcom/htc/home/personalize/idlescreen/shortcut/ApplicationManager$CustomizeAppInfo;
    .restart local v1       #arr$:[Lcom/htc/home/personalize/idlescreen/shortcut/ApplicationManager$CustomizeAppInfo;
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 98
    .end local v0           #appInfo:Lcom/htc/home/personalize/idlescreen/shortcut/ApplicationManager$CustomizeAppInfo;
    .end local v1           #arr$:[Lcom/htc/home/personalize/idlescreen/shortcut/ApplicationManager$CustomizeAppInfo;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_2
    if-ne p3, v8, :cond_4

    .line 99
    move-object v1, v2

    .restart local v1       #arr$:[Lcom/htc/home/personalize/idlescreen/shortcut/ApplicationManager$CustomizeAppInfo;
    array-length v4, v1

    .restart local v4       #len$:I
    const/4 v3, 0x0

    .restart local v3       #i$:I
    :goto_3
    if-ge v3, v4, :cond_4

    aget-object v0, v1, v3

    .line 100
    .restart local v0       #appInfo:Lcom/htc/home/personalize/idlescreen/shortcut/ApplicationManager$CustomizeAppInfo;
    iget-object v8, v0, Lcom/htc/home/personalize/idlescreen/shortcut/ApplicationManager$CustomizeAppInfo;->packageName:Ljava/lang/String;

    if-eqz v8, :cond_3

    iget-object v8, v0, Lcom/htc/home/personalize/idlescreen/shortcut/ApplicationManager$CustomizeAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, v0, Lcom/htc/home/personalize/idlescreen/shortcut/ApplicationManager$CustomizeAppInfo;->widgetName:Ljava/lang/String;

    if-eqz v8, :cond_0

    iget-object v8, v0, Lcom/htc/home/personalize/idlescreen/shortcut/ApplicationManager$CustomizeAppInfo;->widgetName:Ljava/lang/String;

    const-string v9, "null"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, v0, Lcom/htc/home/personalize/idlescreen/shortcut/ApplicationManager$CustomizeAppInfo;->widgetName:Ljava/lang/String;

    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 99
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .end local v0           #appInfo:Lcom/htc/home/personalize/idlescreen/shortcut/ApplicationManager$CustomizeAppInfo;
    .end local v1           #arr$:[Lcom/htc/home/personalize/idlescreen/shortcut/ApplicationManager$CustomizeAppInfo;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_4
    move v6, v7

    .line 108
    goto :goto_2

    .line 69
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
