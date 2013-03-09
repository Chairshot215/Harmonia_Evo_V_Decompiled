.class public Lcom/htc/android/htcime/XT9IME/EngineInfo;
.super Ljava/lang/Object;
.source "EngineInfo.java"


# static fields
.field private static DEBUG:Z

.field private static DUMPLOG:Z

.field private static TAG:Ljava/lang/String;

.field public static XT9INPUT_PKGMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static XT9PackageMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mLP_AM:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 21
    const-string v0, "XT9 EngineInfo"

    sput-object v0, Lcom/htc/android/htcime/XT9IME/EngineInfo;->TAG:Ljava/lang/String;

    .line 22
    const/4 v0, 0x1

    sput-boolean v0, Lcom/htc/android/htcime/XT9IME/EngineInfo;->DEBUG:Z

    .line 23
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/android/htcime/XT9IME/EngineInfo;->DUMPLOG:Z

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/htc/android/htcime/XT9IME/EngineInfo;->XT9PackageMap:Ljava/util/HashMap;

    .line 30
    sget-object v0, Lcom/htc/android/htcime/XT9IME/EngineInfo;->XT9PackageMap:Ljava/util/HashMap;

    const-string v1, "EEU"

    const-string v2, "com.htc.android.inputset.xt9eeu"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lcom/htc/android/htcime/XT9IME/EngineInfo;->XT9PackageMap:Ljava/util/HashMap;

    const-string v1, "ZH"

    const-string v2, "com.htc.android.inputset.xt9zh"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/htc/android/htcime/XT9IME/EngineInfo;->XT9INPUT_PKGMap:Ljava/util/HashMap;

    .line 49
    sget-object v0, Lcom/htc/android/htcime/XT9IME/EngineInfo;->XT9INPUT_PKGMap:Ljava/util/HashMap;

    const-string v1, "Hrvatski"

    const-string v2, "EEU"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/htc/android/htcime/XT9IME/EngineInfo;->XT9INPUT_PKGMap:Ljava/util/HashMap;

    const-string v1, "Sloven\u0161\u010dina"

    const-string v2, "EEU"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/htc/android/htcime/XT9IME/EngineInfo;->XT9INPUT_PKGMap:Ljava/util/HashMap;

    const-string v1, "Srpski jezik"

    const-string v2, "EEU"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/htc/android/htcime/XT9IME/EngineInfo;->XT9INPUT_PKGMap:Ljava/util/HashMap;

    const-string v1, "ZuhYin"

    const-string v2, "ZH"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/htc/android/htcime/XT9IME/EngineInfo;->XT9INPUT_PKGMap:Ljava/util/HashMap;

    const-string v1, "CangJie"

    const-string v2, "ZH"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/htc/android/htcime/XT9IME/EngineInfo;->XT9INPUT_PKGMap:Ljava/util/HashMap;

    const-string v1, "PinYin"

    const-string v2, "ZH"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/htc/android/htcime/XT9IME/EngineInfo;->XT9INPUT_PKGMap:Ljava/util/HashMap;

    const-string v1, "Stroke"

    const-string v2, "ZH"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/htc/android/htcime/XT9IME/EngineInfo;->mLP_AM:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createAMMap(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    .line 138
    sget-object v3, Lcom/htc/android/htcime/XT9IME/EngineInfo;->XT9PackageMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 140
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    sget-boolean v3, Lcom/htc/android/htcime/XT9IME/EngineInfo;->DEBUG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/htc/android/htcime/XT9IME/EngineInfo;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CreateAMMap XT9PackageMap size - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/htc/android/htcime/XT9IME/EngineInfo;->XT9PackageMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 143
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 144
    .local v2, p:Ljava/lang/String;
    sget-boolean v3, Lcom/htc/android/htcime/XT9IME/EngineInfo;->DEBUG:Z

    if-eqz v3, :cond_1

    sget-object v3, Lcom/htc/android/htcime/XT9IME/EngineInfo;->TAG:Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_1
    invoke-static {v2, p0}, Lcom/htc/android/htcime/XT9IME/EngineInfo;->loadPackageAssetManager(Ljava/lang/String;Landroid/content/Context;)Landroid/content/res/AssetManager;

    move-result-object v0

    .line 147
    .local v0, am:Landroid/content/res/AssetManager;
    if-eqz v0, :cond_0

    .line 148
    sget-boolean v3, Lcom/htc/android/htcime/XT9IME/EngineInfo;->DEBUG:Z

    if-eqz v3, :cond_2

    sget-object v3, Lcom/htc/android/htcime/XT9IME/EngineInfo;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "add "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " asset manager"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_2
    sget-object v3, Lcom/htc/android/htcime/XT9IME/EngineInfo;->mLP_AM:Ljava/util/HashMap;

    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 152
    .end local v0           #am:Landroid/content/res/AssetManager;
    .end local v2           #p:Ljava/lang/String;
    :cond_3
    return-void
.end method

.method public static getPackageAssetManager(Ljava/lang/String;Landroid/content/Context;)Landroid/content/res/AssetManager;
    .locals 2
    .parameter "input"
    .parameter "context"

    .prologue
    .line 168
    invoke-static {p1}, Lcom/htc/android/htcime/XT9IME/EngineInfo;->updateAMMap(Landroid/content/Context;)V

    .line 169
    sget-object v0, Lcom/htc/android/htcime/XT9IME/EngineInfo;->mLP_AM:Ljava/util/HashMap;

    sget-object v1, Lcom/htc/android/htcime/XT9IME/EngineInfo;->XT9INPUT_PKGMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/AssetManager;

    return-object v0
.end method

.method public static getPackageResource(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/Resources;
    .locals 2
    .parameter "context"
    .parameter "sku"

    .prologue
    .line 223
    new-instance v0, Lcom/htc/android/htcime/util/APKResTool;

    sget-object v1, Lcom/htc/android/htcime/XT9IME/EngineInfo;->XT9PackageMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Lcom/htc/android/htcime/util/APKResTool;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 225
    .local v0, apkTool:Lcom/htc/android/htcime/util/APKResTool;
    invoke-virtual {v0}, Lcom/htc/android/htcime/util/APKResTool;->getResource()Landroid/content/res/Resources;

    move-result-object v1

    return-object v1
.end method

.method private static loadPackageAssetManager(Ljava/lang/String;Landroid/content/Context;)Landroid/content/res/AssetManager;
    .locals 2
    .parameter "sku"
    .parameter "context"

    .prologue
    .line 177
    if-nez p1, :cond_0

    const/4 v1, 0x0

    .line 180
    :goto_0
    return-object v1

    .line 179
    :cond_0
    new-instance v0, Lcom/htc/android/htcime/util/APKResTool;

    sget-object v1, Lcom/htc/android/htcime/XT9IME/EngineInfo;->XT9PackageMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Lcom/htc/android/htcime/util/APKResTool;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 180
    .local v0, apkTool:Lcom/htc/android/htcime/util/APKResTool;
    invoke-virtual {v0}, Lcom/htc/android/htcime/util/APKResTool;->getAsset()Landroid/content/res/AssetManager;

    move-result-object v1

    goto :goto_0
.end method

.method public static loadPackageRaw(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 10
    .parameter "context"
    .parameter "sku"
    .parameter "raw_name"

    .prologue
    .line 188
    if-nez p0, :cond_1

    const/4 v4, 0x0

    .line 213
    :cond_0
    :goto_0
    return-object v4

    .line 190
    :cond_1
    const/4 v4, 0x0

    .line 191
    .local v4, is:Ljava/io/InputStream;
    new-instance v0, Lcom/htc/android/htcime/util/APKResTool;

    sget-object v7, Lcom/htc/android/htcime/XT9IME/EngineInfo;->XT9PackageMap:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {v0, v7, p0}, Lcom/htc/android/htcime/util/APKResTool;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 192
    .local v0, apkTool:Lcom/htc/android/htcime/util/APKResTool;
    invoke-virtual {v0, p2}, Lcom/htc/android/htcime/util/APKResTool;->getRawIdByName(Ljava/lang/String;)I

    move-result v3

    .line 193
    .local v3, id:I
    const/4 v7, -0x1

    if-eq v3, v7, :cond_3

    .line 195
    :try_start_0
    invoke-virtual {v0}, Lcom/htc/android/htcime/util/APKResTool;->getResource()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v4

    .line 196
    sget-boolean v7, Lcom/htc/android/htcime/XT9IME/EngineInfo;->DUMPLOG:Z

    if-eqz v7, :cond_0

    .line 197
    const/16 v7, 0x40

    new-array v1, v7, [B

    .line 198
    .local v1, b2:[B
    invoke-virtual {v4, v1}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .line 199
    .local v5, len2:I
    if-lez v5, :cond_2

    .line 200
    new-instance v6, Ljava/lang/String;

    const-string v7, "UTF-16"

    invoke-direct {v6, v1, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 201
    .local v6, s:Ljava/lang/String;
    sget-object v7, Lcom/htc/android/htcime/XT9IME/EngineInfo;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "s - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 206
    .end local v1           #b2:[B
    .end local v5           #len2:I
    .end local v6           #s:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 207
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 203
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v1       #b2:[B
    .restart local v5       #len2:I
    :cond_2
    :try_start_1
    sget-object v7, Lcom/htc/android/htcime/XT9IME/EngineInfo;->TAG:Ljava/lang/String;

    const-string v8, "s len = 0"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 210
    .end local v1           #b2:[B
    .end local v5           #len2:I
    :cond_3
    sget-boolean v7, Lcom/htc/android/htcime/XT9IME/EngineInfo;->DEBUG:Z

    if-eqz v7, :cond_0

    sget-object v7, Lcom/htc/android/htcime/XT9IME/EngineInfo;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "----- raw \""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\" not found -----"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static test(Landroid/content/Context;)V
    .locals 13
    .parameter "context"

    .prologue
    .line 230
    :try_start_0
    const-string v10, "RRRLOG"

    const-string v11, "----- asset test -----"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    const-string v10, "Hrvatski"

    invoke-static {v10, p0}, Lcom/htc/android/htcime/XT9IME/EngineInfo;->getPackageAssetManager(Ljava/lang/String;Landroid/content/Context;)Landroid/content/res/AssetManager;

    move-result-object v10

    const-string v11, "xt9_raw/mdb_normal"

    invoke-virtual {v10, v11}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v8

    check-cast v8, Landroid/content/res/AssetManager$AssetInputStream;

    .line 232
    .local v8, pfd:Landroid/content/res/AssetManager$AssetInputStream;
    if-eqz v8, :cond_1

    .line 233
    const/16 v10, 0x40

    new-array v1, v10, [B

    .line 234
    .local v1, b:[B
    invoke-virtual {v8, v1}, Landroid/content/res/AssetManager$AssetInputStream;->read([B)I

    move-result v6

    .line 235
    .local v6, len:I
    const-string v10, "RRRLOG"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "len - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    if-lez v6, :cond_0

    .line 237
    new-instance v9, Ljava/lang/String;

    const-string v10, "UTF-16"

    invoke-direct {v9, v1, v10}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 238
    .local v9, s:Ljava/lang/String;
    const-string v10, "RRRLOG"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "s - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    .end local v1           #b:[B
    .end local v6           #len:I
    .end local v9           #s:Ljava/lang/String;
    :goto_0
    const-string v10, "RRRLOG"

    const-string v11, "----- raw test -----"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    new-instance v0, Lcom/htc/android/htcime/util/APKResTool;

    sget-object v10, Lcom/htc/android/htcime/XT9IME/EngineInfo;->XT9PackageMap:Ljava/util/HashMap;

    const-string v11, "ZH"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-direct {v0, v10, p0}, Lcom/htc/android/htcime/util/APKResTool;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 248
    .local v0, apkTool:Lcom/htc/android/htcime/util/APKResTool;
    const-string v10, "mdb_normal"

    invoke-virtual {v0, v10}, Lcom/htc/android/htcime/util/APKResTool;->getRawIdByName(Ljava/lang/String;)I

    move-result v4

    .line 249
    .local v4, id:I
    const/4 v10, -0x1

    if-eq v4, v10, :cond_3

    .line 250
    invoke-virtual {v0}, Lcom/htc/android/htcime/util/APKResTool;->getResource()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v4}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    .line 251
    .local v5, is:Ljava/io/InputStream;
    const/16 v10, 0x40

    new-array v2, v10, [B

    .line 252
    .local v2, b2:[B
    invoke-virtual {v5, v2}, Ljava/io/InputStream;->read([B)I

    move-result v7

    .line 253
    .local v7, len2:I
    if-lez v7, :cond_2

    .line 254
    new-instance v9, Ljava/lang/String;

    const-string v10, "UTF-16"

    invoke-direct {v9, v2, v10}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 255
    .restart local v9       #s:Ljava/lang/String;
    const-string v10, "RRRLOG"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "s - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    .end local v0           #apkTool:Lcom/htc/android/htcime/util/APKResTool;
    .end local v2           #b2:[B
    .end local v4           #id:I
    .end local v5           #is:Ljava/io/InputStream;
    .end local v7           #len2:I
    .end local v8           #pfd:Landroid/content/res/AssetManager$AssetInputStream;
    .end local v9           #s:Ljava/lang/String;
    :goto_1
    return-void

    .line 240
    .restart local v1       #b:[B
    .restart local v6       #len:I
    .restart local v8       #pfd:Landroid/content/res/AssetManager$AssetInputStream;
    :cond_0
    const-string v10, "RRRLOG"

    const-string v11, "s len = 0"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 263
    .end local v1           #b:[B
    .end local v6           #len:I
    .end local v8           #pfd:Landroid/content/res/AssetManager$AssetInputStream;
    :catch_0
    move-exception v3

    .line 264
    .local v3, e:Ljava/lang/Exception;
    const-string v10, "RRRLOG"

    const-string v11, "open asset fail"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 243
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v8       #pfd:Landroid/content/res/AssetManager$AssetInputStream;
    :cond_1
    :try_start_1
    const-string v10, "RRRLOG"

    const-string v11, "----- asset test not found-----"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 257
    .restart local v0       #apkTool:Lcom/htc/android/htcime/util/APKResTool;
    .restart local v2       #b2:[B
    .restart local v4       #id:I
    .restart local v5       #is:Ljava/io/InputStream;
    .restart local v7       #len2:I
    :cond_2
    const-string v10, "RRRLOG"

    const-string v11, "s len = 0"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 260
    .end local v2           #b2:[B
    .end local v5           #is:Ljava/io/InputStream;
    .end local v7           #len2:I
    :cond_3
    const-string v10, "RRRLOG"

    const-string v11, "----- raw test not found -----"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private static updateAMMap(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 155
    sget-object v0, Lcom/htc/android/htcime/XT9IME/EngineInfo;->mLP_AM:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 156
    invoke-static {p0}, Lcom/htc/android/htcime/XT9IME/EngineInfo;->createAMMap(Landroid/content/Context;)V

    .line 158
    :cond_0
    return-void
.end method


# virtual methods
.method public getInputPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "context"
    .parameter "method"

    .prologue
    .line 90
    const/4 v2, 0x0

    .local v2, p:Ljava/lang/String;
    const/4 v1, 0x0

    .line 91
    .local v1, m:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f07001f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 92
    .local v4, zh_s:[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f07002c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 94
    .local v3, zh_localized:[Ljava/lang/String;
    move-object v1, p2

    .line 96
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v5, v3

    if-ge v0, v5, :cond_0

    .line 97
    aget-object v5, v3, v0

    invoke-virtual {v5, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 98
    add-int/lit8 v5, v0, 0x1

    aget-object v1, v4, v5

    .line 102
    :cond_0
    sget-boolean v5, Lcom/htc/android/htcime/XT9IME/EngineInfo;->DEBUG:Z

    if-eqz v5, :cond_1

    sget-object v5, Lcom/htc/android/htcime/XT9IME/EngineInfo;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getInputPackageName method - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_1
    sget-object v5, Lcom/htc/android/htcime/XT9IME/EngineInfo;->XT9PackageMap:Ljava/util/HashMap;

    sget-object v6, Lcom/htc/android/htcime/XT9IME/EngineInfo;->XT9INPUT_PKGMap:Ljava/util/HashMap;

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #p:Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 106
    .restart local v2       #p:Ljava/lang/String;
    if-nez v2, :cond_2

    .line 107
    const-string v2, "com.htc.android.htcime"

    .line 110
    :cond_2
    return-object v2

    .line 96
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getSupportMethod(Landroid/content/Context;)Ljava/lang/String;
    .locals 11
    .parameter "context"

    .prologue
    .line 66
    const-string v4, ""

    .line 70
    .local v4, m:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f070009

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 71
    .local v5, s:[Ljava/lang/String;
    move-object v0, v5

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v6, v0, v2

    .line 72
    .local v6, t:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 71
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 74
    .end local v6           #t:Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f07001f

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    .line 75
    .local v8, zh_s:[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f07002c

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    .line 76
    .local v7, zh_localized:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v9, v8

    if-ge v1, v9, :cond_2

    .line 78
    aget-object v9, v8, v1

    const-string v10, "Latin"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    aget-object v9, v8, v1

    const-string v10, "Handwriting"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 79
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int/lit8 v10, v1, -0x1

    aget-object v10, v7, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 76
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 82
    :cond_2
    return-object v4
.end method

.method public onPackageUpdate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "action"
    .parameter "packageName"

    .prologue
    .line 117
    sget-boolean v0, Lcom/htc/android/htcime/XT9IME/EngineInfo;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/android/htcime/XT9IME/EngineInfo;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUpdatePackage, action : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " packageName : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_0
    if-eqz p2, :cond_1

    if-nez p3, :cond_2

    .line 129
    :cond_1
    :goto_0
    return-void

    .line 121
    :cond_2
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_3
    sget-object v0, Lcom/htc/android/htcime/XT9IME/EngineInfo;->XT9PackageMap:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    sget-boolean v0, Lcom/htc/android/htcime/XT9IME/EngineInfo;->DEBUG:Z

    if-eqz v0, :cond_4

    sget-object v0, Lcom/htc/android/htcime/XT9IME/EngineInfo;->TAG:Ljava/lang/String;

    const-string v1, "onUpdatePackage  update..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_4
    sget-object v0, Lcom/htc/android/htcime/XT9IME/EngineInfo;->mLP_AM:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 127
    invoke-static {p1}, Lcom/htc/android/htcime/XT9IME/EngineInfo;->updateAMMap(Landroid/content/Context;)V

    goto :goto_0
.end method
