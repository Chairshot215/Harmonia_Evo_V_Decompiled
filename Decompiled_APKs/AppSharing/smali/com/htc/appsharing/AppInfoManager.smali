.class public Lcom/htc/appsharing/AppInfoManager;
.super Ljava/lang/Object;
.source "AppInfoManager.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AppSharing.AppInfoManager"

.field public static final STR_KEY_LIST_EXCLUDE:Ljava/lang/String; = "com.htc.appsharing.list.exclude"

.field public static sAppInfoCpr:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/htc/appsharing/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static sInstance:Lcom/htc/appsharing/AppInfoManager;


# instance fields
.field private mLoader:Lcom/htc/appsharing/AppInfoLoader;

.field private mLstAppInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/appsharing/AppInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lcom/htc/appsharing/AppInfoManager;

    invoke-direct {v0}, Lcom/htc/appsharing/AppInfoManager;-><init>()V

    sput-object v0, Lcom/htc/appsharing/AppInfoManager;->sInstance:Lcom/htc/appsharing/AppInfoManager;

    .line 24
    new-instance v0, Lcom/htc/appsharing/AppInfoManager$1;

    invoke-direct {v0}, Lcom/htc/appsharing/AppInfoManager$1;-><init>()V

    sput-object v0, Lcom/htc/appsharing/AppInfoManager;->sAppInfoCpr:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/appsharing/AppInfoManager;->mLstAppInfo:Ljava/util/ArrayList;

    .line 43
    return-void
.end method

.method public static GetInstance()Lcom/htc/appsharing/AppInfoManager;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/htc/appsharing/AppInfoManager;->sInstance:Lcom/htc/appsharing/AppInfoManager;

    return-object v0
.end method

.method public static createAppInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageManager;)Lcom/htc/appsharing/AppInfo;
    .locals 2
    .parameter "applicationInfo"
    .parameter "pkgMgr"

    .prologue
    .line 52
    new-instance v0, Lcom/htc/appsharing/AppInfo;

    invoke-direct {v0}, Lcom/htc/appsharing/AppInfo;-><init>()V

    .line 53
    .local v0, appInfo:Lcom/htc/appsharing/AppInfo;
    iput-object p0, v0, Lcom/htc/appsharing/AppInfo;->reference:Landroid/content/pm/ApplicationInfo;

    .line 54
    invoke-virtual {p0, p1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/appsharing/AppInfo;->label:Ljava/lang/CharSequence;

    .line 55
    return-object v0
.end method

.method private isAppInList(Ljava/lang/String;)Z
    .locals 4
    .parameter "pkgName"

    .prologue
    .line 261
    const/4 v2, 0x0

    .line 262
    .local v2, inList:Z
    iget-object v3, p0, Lcom/htc/appsharing/AppInfoManager;->mLstAppInfo:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/appsharing/AppInfo;

    .line 264
    .local v0, appInfo:Lcom/htc/appsharing/AppInfo;
    iget-object v3, v0, Lcom/htc/appsharing/AppInfo;->reference:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 266
    const/4 v2, 0x1

    .line 270
    .end local v0           #appInfo:Lcom/htc/appsharing/AppInfo;
    :cond_1
    return v2
.end method

.method public static updateAppInfo(Lcom/htc/appsharing/AppInfo;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageManager;)V
    .locals 1
    .parameter "appInfo"
    .parameter "applicationInfo"
    .parameter "pkgMgr"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/htc/appsharing/AppInfo;->reference:Landroid/content/pm/ApplicationInfo;

    .line 61
    invoke-virtual {p1, p2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/appsharing/AppInfo;->label:Ljava/lang/CharSequence;

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/appsharing/AppInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/appsharing/AppInfo;->checkState:Z

    .line 64
    return-void
.end method


# virtual methods
.method public AddExternalAppInfo(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 11
    .parameter "context"
    .parameter "pkgList"

    .prologue
    .line 167
    if-eqz p2, :cond_2

    array-length v8, p2

    if-lez v8, :cond_2

    .line 169
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 170
    .local v6, pkgMgr:Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    .line 171
    .local v1, applicationInfo:Landroid/content/pm/ApplicationInfo;
    const/4 v0, 0x0

    .line 172
    .local v0, appInfo:Lcom/htc/appsharing/AppInfo;
    move-object v2, p2

    .local v2, arr$:[Ljava/lang/String;
    array-length v5, v2

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v7, v2, v4

    .line 174
    .local v7, pkgName:Ljava/lang/String;
    invoke-direct {p0, v7}, Lcom/htc/appsharing/AppInfoManager;->isAppInList(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 178
    const/4 v8, 0x0

    :try_start_0
    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 179
    invoke-static {v1, v6}, Lcom/htc/appsharing/AppInfoManager;->createAppInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageManager;)Lcom/htc/appsharing/AppInfo;

    move-result-object v0

    .line 180
    iget-object v8, p0, Lcom/htc/appsharing/AppInfoManager;->mLstAppInfo:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 182
    :catch_0
    move-exception v3

    .line 184
    .local v3, exception:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v8, "AppSharing.AppInfoManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getApplicationInfo("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ") fail!"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/appsharing/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 190
    .end local v3           #exception:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v7           #pkgName:Ljava/lang/String;
    :cond_1
    iget-object v8, p0, Lcom/htc/appsharing/AppInfoManager;->mLstAppInfo:Ljava/util/ArrayList;

    sget-object v9, Lcom/htc/appsharing/AppInfoManager;->sAppInfoCpr:Ljava/util/Comparator;

    invoke-static {v8, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 192
    .end local v0           #appInfo:Lcom/htc/appsharing/AppInfo;
    .end local v1           #applicationInfo:Landroid/content/pm/ApplicationInfo;
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v6           #pkgMgr:Landroid/content/pm/PackageManager;
    :cond_2
    return-void
.end method

.method public RemoveExternalAppInfo([Ljava/lang/String;)V
    .locals 7
    .parameter "pkgList"

    .prologue
    .line 196
    if-eqz p1, :cond_2

    array-length v6, p1

    if-lez v6, :cond_2

    .line 198
    const/4 v0, 0x0

    .line 199
    .local v0, appInfo:Lcom/htc/appsharing/AppInfo;
    move-object v1, p1

    .local v1, arr$:[Ljava/lang/String;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v5, v1, v3

    .line 201
    .local v5, pkgName:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v6, p0, Lcom/htc/appsharing/AppInfoManager;->mLstAppInfo:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 203
    iget-object v6, p0, Lcom/htc/appsharing/AppInfoManager;->mLstAppInfo:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #appInfo:Lcom/htc/appsharing/AppInfo;
    check-cast v0, Lcom/htc/appsharing/AppInfo;

    .line 204
    .restart local v0       #appInfo:Lcom/htc/appsharing/AppInfo;
    iget-object v6, v0, Lcom/htc/appsharing/AppInfo;->reference:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 206
    iget-object v6, p0, Lcom/htc/appsharing/AppInfoManager;->mLstAppInfo:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 199
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 201
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 212
    .end local v0           #appInfo:Lcom/htc/appsharing/AppInfo;
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #i:I
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #pkgName:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public SetAppInfo(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/appsharing/AppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 160
    .local p1, loadedAppInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/appsharing/AppInfo;>;"
    iput-object p1, p0, Lcom/htc/appsharing/AppInfoManager;->mLstAppInfo:Ljava/util/ArrayList;

    .line 161
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/appsharing/AppInfoManager;->mLoader:Lcom/htc/appsharing/AppInfoLoader;

    .line 162
    return-void
.end method

.method public getAppCount()I
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/htc/appsharing/AppInfoManager;->mLstAppInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getAppInfo(I)Lcom/htc/appsharing/AppInfo;
    .locals 2
    .parameter "position"

    .prologue
    .line 216
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/htc/appsharing/AppInfoManager;->mLstAppInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/htc/appsharing/AppInfoManager;->mLstAppInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/appsharing/AppInfo;

    .line 223
    :goto_0
    return-object v0

    .line 222
    :cond_0
    const-string v0, "AppSharing.AppInfoManager"

    const-string v1, "getAppInfo() invalid position"

    invoke-static {v0, v1}, Lcom/htc/appsharing/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSelectedApp()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/appsharing/AppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 234
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 235
    .local v2, lstRet:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/appsharing/AppInfo;>;"
    iget-object v3, p0, Lcom/htc/appsharing/AppInfoManager;->mLstAppInfo:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/appsharing/AppInfo;

    .line 237
    .local v0, appInfo:Lcom/htc/appsharing/AppInfo;
    iget-boolean v3, v0, Lcom/htc/appsharing/AppInfo;->checkState:Z

    if-eqz v3, :cond_0

    .line 239
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 242
    .end local v0           #appInfo:Lcom/htc/appsharing/AppInfo;
    :cond_1
    return-object v2
.end method

.method public isAppSelected()Z
    .locals 4

    .prologue
    .line 247
    const/4 v2, 0x0

    .line 248
    .local v2, selectAny:Z
    iget-object v3, p0, Lcom/htc/appsharing/AppInfoManager;->mLstAppInfo:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/appsharing/AppInfo;

    .line 250
    .local v0, appInfo:Lcom/htc/appsharing/AppInfo;
    iget-boolean v3, v0, Lcom/htc/appsharing/AppInfo;->checkState:Z

    if-eqz v3, :cond_0

    .line 252
    const/4 v2, 0x1

    .line 256
    .end local v0           #appInfo:Lcom/htc/appsharing/AppInfo;
    :cond_1
    return v2
.end method

.method public loadAppInfo_Async(Landroid/content/Context;Landroid/os/Handler;I)V
    .locals 1
    .parameter "context"
    .parameter "handler"
    .parameter "whatLoaded"

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/htc/appsharing/AppInfoManager;->stopLoadAppInfo()V

    .line 145
    new-instance v0, Lcom/htc/appsharing/AppInfoLoader;

    invoke-direct {v0, p1, p2, p3}, Lcom/htc/appsharing/AppInfoLoader;-><init>(Landroid/content/Context;Landroid/os/Handler;I)V

    iput-object v0, p0, Lcom/htc/appsharing/AppInfoManager;->mLoader:Lcom/htc/appsharing/AppInfoLoader;

    .line 146
    iget-object v0, p0, Lcom/htc/appsharing/AppInfoManager;->mLoader:Lcom/htc/appsharing/AppInfoLoader;

    invoke-virtual {v0}, Lcom/htc/appsharing/AppInfoLoader;->startLoad()V

    .line 147
    return-void
.end method

.method public loadAppInfo_Sync(Landroid/content/Context;)V
    .locals 13
    .parameter "context"

    .prologue
    .line 68
    const-string v10, "AppSharing.AppInfoManager"

    const-string v11, "+++load app info"

    invoke-static {v10, v11}, Lcom/htc/appsharing/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 71
    .local v7, pkgMgr:Landroid/content/pm/PackageManager;
    const/16 v10, 0x80

    invoke-virtual {v7, v10}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 73
    .local v6, lstAppInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ApplicationInfo;>;"
    iget-object v10, p0, Lcom/htc/appsharing/AppInfoManager;->mLstAppInfo:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 74
    .local v9, sizeOwn:I
    const/4 v5, 0x0

    .line 75
    .local v5, indexOwn:I
    const/4 v0, 0x0

    .line 76
    .local v0, appInfo:Lcom/htc/appsharing/AppInfo;
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 77
    .local v8, sizeLoad:I
    const/4 v1, 0x0

    .line 78
    .local v1, applicationInfo:Landroid/content/pm/ApplicationInfo;
    const/4 v2, 0x0

    .line 79
    .local v2, applicationMetaData:Landroid/os/Bundle;
    const/4 v3, 0x0

    .line 80
    .local v3, bFilterOut:Z
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v8, :cond_4

    .line 82
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #applicationInfo:Landroid/content/pm/ApplicationInfo;
    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 83
    .restart local v1       #applicationInfo:Landroid/content/pm/ApplicationInfo;
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 84
    iget v10, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v10, v10, 0x80

    if-nez v10, :cond_0

    iget v10, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v10, v10, 0x1

    if-nez v10, :cond_0

    invoke-static {v1}, Lcom/htc/wrap/android/content/pm/HtcWrapApplicationInfo;->isHtcApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v10

    if-nez v10, :cond_0

    if-eqz v2, :cond_2

    const-string v10, "com.htc.appsharing.list.exclude"

    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    :cond_0
    const/4 v3, 0x1

    .line 92
    :goto_1
    if-nez v3, :cond_1

    .line 95
    if-ge v5, v9, :cond_3

    .line 97
    iget-object v10, p0, Lcom/htc/appsharing/AppInfoManager;->mLstAppInfo:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #appInfo:Lcom/htc/appsharing/AppInfo;
    check-cast v0, Lcom/htc/appsharing/AppInfo;

    .line 98
    .restart local v0       #appInfo:Lcom/htc/appsharing/AppInfo;
    invoke-static {v0, v1, v7}, Lcom/htc/appsharing/AppInfoManager;->updateAppInfo(Lcom/htc/appsharing/AppInfo;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageManager;)V

    .line 99
    add-int/lit8 v5, v5, 0x1

    .line 80
    :cond_1
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 84
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 103
    :cond_3
    invoke-static {v1, v7}, Lcom/htc/appsharing/AppInfoManager;->createAppInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageManager;)Lcom/htc/appsharing/AppInfo;

    move-result-object v0

    .line 104
    iget-object v10, p0, Lcom/htc/appsharing/AppInfoManager;->mLstAppInfo:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 112
    :cond_4
    if-ge v5, v9, :cond_5

    .line 114
    iget-object v10, p0, Lcom/htc/appsharing/AppInfoManager;->mLstAppInfo:Ljava/util/ArrayList;

    invoke-virtual {v10, v5, v9}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->clear()V

    .line 118
    :cond_5
    iget-object v10, p0, Lcom/htc/appsharing/AppInfoManager;->mLstAppInfo:Ljava/util/ArrayList;

    sget-object v11, Lcom/htc/appsharing/AppInfoManager;->sAppInfoCpr:Ljava/util/Comparator;

    invoke-static {v10, v11}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 120
    const-string v10, "AppSharing.AppInfoManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "---load app info, total "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/htc/appsharing/AppInfoManager;->mLstAppInfo:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " apps"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/appsharing/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method public stopLoadAppInfo()V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/htc/appsharing/AppInfoManager;->mLoader:Lcom/htc/appsharing/AppInfoLoader;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/htc/appsharing/AppInfoManager;->mLoader:Lcom/htc/appsharing/AppInfoLoader;

    invoke-virtual {v0}, Lcom/htc/appsharing/AppInfoLoader;->stopLoad()V

    .line 154
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/appsharing/AppInfoManager;->mLoader:Lcom/htc/appsharing/AppInfoLoader;

    .line 156
    :cond_0
    return-void
.end method
