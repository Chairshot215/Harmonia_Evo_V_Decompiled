.class public Lcom/htc/idlescreen/base/setting/ApplicationManager;
.super Ljava/lang/Object;
.source "ApplicationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/idlescreen/base/setting/ApplicationManager$CustomizeAppInfo;
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

.field private static sInstance:Lcom/htc/idlescreen/base/setting/ApplicationManager;


# instance fields
.field private mHideApplicationList:[Lcom/htc/idlescreen/base/setting/ApplicationManager$CustomizeAppInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/idlescreen/base/setting/ApplicationManager;->initialized:Z

    .line 18
    new-instance v0, Lcom/htc/idlescreen/base/setting/ApplicationManager;

    invoke-direct {v0}, Lcom/htc/idlescreen/base/setting/ApplicationManager;-><init>()V

    sput-object v0, Lcom/htc/idlescreen/base/setting/ApplicationManager;->sInstance:Lcom/htc/idlescreen/base/setting/ApplicationManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/htc/idlescreen/base/setting/ApplicationManager$CustomizeAppInfo;

    iput-object v0, p0, Lcom/htc/idlescreen/base/setting/ApplicationManager;->mHideApplicationList:[Lcom/htc/idlescreen/base/setting/ApplicationManager$CustomizeAppInfo;

    .line 39
    return-void
.end method

.method static byteArrayToBundle([B)Landroid/os/Bundle;
    .locals 4
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    .line 279
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 280
    .local v1, parcel:Landroid/os/Parcel;
    array-length v2, p0

    invoke-virtual {v1, p0, v3, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 281
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 282
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 283
    .local v0, bundle:Landroid/os/Bundle;
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->readFromParcel(Landroid/os/Parcel;)V

    .line 284
    return-object v0
.end method

.method static getModuleBundle(Landroid/content/Context;)Landroid/os/Bundle;
    .locals 10
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 257
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 258
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v3, "content://customization_settings/SettingTable/application_Launcher"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .local v1, uri:Landroid/net/Uri;
    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 259
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 263
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_1

    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 264
    const-string v2, "value"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 265
    .local v9, idValue:I
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    .line 266
    .local v6, buffer:[B
    invoke-static {v6}, Lcom/htc/idlescreen/base/setting/ApplicationManager;->byteArrayToBundle([B)Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 270
    .local v7, bundle:Landroid/os/Bundle;
    if-eqz v8, :cond_0

    .line 271
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 275
    .end local v6           #buffer:[B
    .end local v7           #bundle:Landroid/os/Bundle;
    .end local v9           #idValue:I
    :cond_0
    :goto_0
    return-object v7

    .line 270
    :cond_1
    if-eqz v8, :cond_2

    .line 271
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 274
    :cond_2
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

    .line 275
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    goto :goto_0

    .line 270
    :catchall_0
    move-exception v2

    if-eqz v8, :cond_3

    .line 271
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v2
.end method

.method private init(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 163
    invoke-static {p1}, Lcom/htc/idlescreen/base/setting/ApplicationManager;->getModuleBundle(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    .line 164
    .local v0, moduleBundle:Landroid/os/Bundle;
    invoke-direct {p0, v0}, Lcom/htc/idlescreen/base/setting/ApplicationManager;->initShowHideCustomizationList(Landroid/os/Bundle;)V

    .line 165
    return-void
.end method

.method private initList(Landroid/os/Bundle;)[Lcom/htc/idlescreen/base/setting/ApplicationManager$CustomizeAppInfo;
    .locals 14
    .parameter "inputBundle"

    .prologue
    const/4 v13, 0x0

    .line 210
    if-nez p1, :cond_0

    .line 211
    new-array v11, v13, [Lcom/htc/idlescreen/base/setting/ApplicationManager$CustomizeAppInfo;

    .line 252
    :goto_0
    return-object v11

    .line 214
    :cond_0
    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result v7

    .line 216
    .local v7, size:I
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 217
    .local v10, tempShowList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/idlescreen/base/setting/ApplicationManager$CustomizeAppInfo;>;"
    const/4 v9, 0x0

    .line 218
    .local v9, tempShow:Lcom/htc/idlescreen/base/setting/ApplicationManager$CustomizeAppInfo;
    const/4 v5, 0x0

    .line 219
    .local v5, packageName:Ljava/lang/String;
    const/4 v1, 0x0

    .line 222
    .local v1, className:Ljava/lang/String;
    const/4 v8, 0x0

    .line 223
    .local v8, skip:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v7, :cond_5

    .line 224
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "plenty_set"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    add-int/lit8 v12, v2, 0x1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 226
    .local v4, key:Ljava/lang/String;
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 227
    .local v0, childBundle:Landroid/os/Bundle;
    const-string v11, "package"

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 228
    const-string v11, "class"

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 229
    const/4 v8, 0x0

    .line 230
    const/4 v3, 0x0

    .local v3, j:I
    :goto_2
    sget-object v11, Lcom/htc/idlescreen/base/setting/DefaultShortcut;->APP_PACKAGENAMEs:[Ljava/lang/String;

    array-length v11, v11

    if-ge v3, v11, :cond_1

    .line 231
    sget-object v11, Lcom/htc/idlescreen/base/setting/DefaultShortcut;->APP_PACKAGENAMEs:[Ljava/lang/String;

    aget-object v11, v11, v3

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    sget-object v11, Lcom/htc/idlescreen/base/setting/DefaultShortcut;->APP_CLASSs:[Ljava/lang/String;

    aget-object v11, v11, v3

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 233
    const/4 v8, 0x1

    .line 237
    :cond_1
    if-eqz v8, :cond_3

    .line 223
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 230
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 240
    :cond_3
    new-instance v9, Lcom/htc/idlescreen/base/setting/ApplicationManager$CustomizeAppInfo;

    .end local v9           #tempShow:Lcom/htc/idlescreen/base/setting/ApplicationManager$CustomizeAppInfo;
    invoke-direct {v9}, Lcom/htc/idlescreen/base/setting/ApplicationManager$CustomizeAppInfo;-><init>()V

    .line 241
    .restart local v9       #tempShow:Lcom/htc/idlescreen/base/setting/ApplicationManager$CustomizeAppInfo;
    iput-object v5, v9, Lcom/htc/idlescreen/base/setting/ApplicationManager$CustomizeAppInfo;->packageName:Ljava/lang/String;

    .line 242
    iput-object v1, v9, Lcom/htc/idlescreen/base/setting/ApplicationManager$CustomizeAppInfo;->className:Ljava/lang/String;

    .line 244
    const-string v11, "widget_name"

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v9, Lcom/htc/idlescreen/base/setting/ApplicationManager$CustomizeAppInfo;->widgetName:Ljava/lang/String;

    .line 245
    const-string v11, "priority"

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 246
    .local v6, priority:Ljava/lang/String;
    if-nez v6, :cond_4

    .line 247
    const/16 v11, 0xc8

    iput v11, v9, Lcom/htc/idlescreen/base/setting/ApplicationManager$CustomizeAppInfo;->priority:I

    .line 250
    :goto_4
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 249
    :cond_4
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, v9, Lcom/htc/idlescreen/base/setting/ApplicationManager$CustomizeAppInfo;->priority:I

    goto :goto_4

    .line 252
    .end local v0           #childBundle:Landroid/os/Bundle;
    .end local v3           #j:I
    .end local v4           #key:Ljava/lang/String;
    .end local v6           #priority:Ljava/lang/String;
    :cond_5
    new-array v11, v13, [Lcom/htc/idlescreen/base/setting/ApplicationManager$CustomizeAppInfo;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Lcom/htc/idlescreen/base/setting/ApplicationManager$CustomizeAppInfo;

    goto/16 :goto_0
.end method

.method private initShowHideCustomizationList(Landroid/os/Bundle;)V
    .locals 2
    .parameter "moduleBundle"

    .prologue
    .line 175
    const-string v1, "applications_hide"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 177
    .local v0, hideBundle:Landroid/os/Bundle;
    invoke-direct {p0, v0}, Lcom/htc/idlescreen/base/setting/ApplicationManager;->initList(Landroid/os/Bundle;)[Lcom/htc/idlescreen/base/setting/ApplicationManager$CustomizeAppInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/idlescreen/base/setting/ApplicationManager;->mHideApplicationList:[Lcom/htc/idlescreen/base/setting/ApplicationManager$CustomizeAppInfo;

    .line 207
    return-void
.end method

.method public static declared-synchronized instance(Landroid/content/Context;)Lcom/htc/idlescreen/base/setting/ApplicationManager;
    .locals 2
    .parameter "context"

    .prologue
    .line 47
    const-class v1, Lcom/htc/idlescreen/base/setting/ApplicationManager;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/htc/idlescreen/base/setting/ApplicationManager;->initialized:Z

    if-nez v0, :cond_0

    .line 48
    sget-object v0, Lcom/htc/idlescreen/base/setting/ApplicationManager;->sInstance:Lcom/htc/idlescreen/base/setting/ApplicationManager;

    invoke-direct {v0, p0}, Lcom/htc/idlescreen/base/setting/ApplicationManager;->init(Landroid/content/Context;)V

    .line 49
    const/4 v0, 0x1

    sput-boolean v0, Lcom/htc/idlescreen/base/setting/ApplicationManager;->initialized:Z

    .line 51
    :cond_0
    sget-object v0, Lcom/htc/idlescreen/base/setting/ApplicationManager;->sInstance:Lcom/htc/idlescreen/base/setting/ApplicationManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 47
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

    .line 65
    const-string v5, "null"

    .line 66
    .local v5, type:Ljava/lang/String;
    new-array v2, v7, [Lcom/htc/idlescreen/base/setting/ApplicationManager$CustomizeAppInfo;

    .line 67
    .local v2, customizeList:[Lcom/htc/idlescreen/base/setting/ApplicationManager$CustomizeAppInfo;
    packed-switch p3, :pswitch_data_0

    .line 87
    :goto_0
    if-eq p3, v8, :cond_2

    .line 88
    move-object v1, v2

    .local v1, arr$:[Lcom/htc/idlescreen/base/setting/ApplicationManager$CustomizeAppInfo;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_4

    aget-object v0, v1, v3

    .line 89
    .local v0, appInfo:Lcom/htc/idlescreen/base/setting/ApplicationManager$CustomizeAppInfo;
    iget-object v8, v0, Lcom/htc/idlescreen/base/setting/ApplicationManager$CustomizeAppInfo;->packageName:Ljava/lang/String;

    if-eqz v8, :cond_1

    iget-object v8, v0, Lcom/htc/idlescreen/base/setting/ApplicationManager$CustomizeAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, v0, Lcom/htc/idlescreen/base/setting/ApplicationManager$CustomizeAppInfo;->className:Ljava/lang/String;

    if-eqz v8, :cond_0

    iget-object v8, v0, Lcom/htc/idlescreen/base/setting/ApplicationManager$CustomizeAppInfo;->className:Ljava/lang/String;

    const-string v9, "null"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, v0, Lcom/htc/idlescreen/base/setting/ApplicationManager$CustomizeAppInfo;->className:Ljava/lang/String;

    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 106
    .end local v0           #appInfo:Lcom/htc/idlescreen/base/setting/ApplicationManager$CustomizeAppInfo;
    .end local v1           #arr$:[Lcom/htc/idlescreen/base/setting/ApplicationManager$CustomizeAppInfo;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_0
    :goto_2
    return v6

    .line 69
    :pswitch_0
    iget-object v2, p0, Lcom/htc/idlescreen/base/setting/ApplicationManager;->mHideApplicationList:[Lcom/htc/idlescreen/base/setting/ApplicationManager$CustomizeAppInfo;

    .line 70
    const-string v5, "Application"

    goto :goto_0

    .line 88
    .restart local v0       #appInfo:Lcom/htc/idlescreen/base/setting/ApplicationManager$CustomizeAppInfo;
    .restart local v1       #arr$:[Lcom/htc/idlescreen/base/setting/ApplicationManager$CustomizeAppInfo;
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 96
    .end local v0           #appInfo:Lcom/htc/idlescreen/base/setting/ApplicationManager$CustomizeAppInfo;
    .end local v1           #arr$:[Lcom/htc/idlescreen/base/setting/ApplicationManager$CustomizeAppInfo;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_2
    if-ne p3, v8, :cond_4

    .line 97
    move-object v1, v2

    .restart local v1       #arr$:[Lcom/htc/idlescreen/base/setting/ApplicationManager$CustomizeAppInfo;
    array-length v4, v1

    .restart local v4       #len$:I
    const/4 v3, 0x0

    .restart local v3       #i$:I
    :goto_3
    if-ge v3, v4, :cond_4

    aget-object v0, v1, v3

    .line 98
    .restart local v0       #appInfo:Lcom/htc/idlescreen/base/setting/ApplicationManager$CustomizeAppInfo;
    iget-object v8, v0, Lcom/htc/idlescreen/base/setting/ApplicationManager$CustomizeAppInfo;->packageName:Ljava/lang/String;

    if-eqz v8, :cond_3

    iget-object v8, v0, Lcom/htc/idlescreen/base/setting/ApplicationManager$CustomizeAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, v0, Lcom/htc/idlescreen/base/setting/ApplicationManager$CustomizeAppInfo;->widgetName:Ljava/lang/String;

    if-eqz v8, :cond_0

    iget-object v8, v0, Lcom/htc/idlescreen/base/setting/ApplicationManager$CustomizeAppInfo;->widgetName:Ljava/lang/String;

    const-string v9, "null"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, v0, Lcom/htc/idlescreen/base/setting/ApplicationManager$CustomizeAppInfo;->widgetName:Ljava/lang/String;

    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 97
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .end local v0           #appInfo:Lcom/htc/idlescreen/base/setting/ApplicationManager$CustomizeAppInfo;
    .end local v1           #arr$:[Lcom/htc/idlescreen/base/setting/ApplicationManager$CustomizeAppInfo;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_4
    move v6, v7

    .line 106
    goto :goto_2

    .line 67
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
