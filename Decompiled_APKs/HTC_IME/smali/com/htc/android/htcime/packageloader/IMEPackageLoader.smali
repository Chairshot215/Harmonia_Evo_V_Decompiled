.class public Lcom/htc/android/htcime/packageloader/IMEPackageLoader;
.super Ljava/lang/Object;
.source "IMEPackageLoader.java"


# static fields
.field private static DEBUG:Z

.field public static EngineDescription:Ljava/util/HashMap;
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

.field public static EngineSupportMapping:Ljava/util/HashMap;
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

.field public static EngineSupportMappingEI:Ljava/util/HashMap;
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

.field public static EngineSupportMappingT:Ljava/util/HashMap;
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

.field public static EngineSupportOrder:[Ljava/lang/String;

.field private static INFO:Z

.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 34
    const-string v0, "IMEPackageLoader"

    sput-object v0, Lcom/htc/android/htcime/packageloader/IMEPackageLoader;->TAG:Ljava/lang/String;

    .line 35
    sput-boolean v3, Lcom/htc/android/htcime/packageloader/IMEPackageLoader;->DEBUG:Z

    .line 36
    sput-boolean v3, Lcom/htc/android/htcime/packageloader/IMEPackageLoader;->INFO:Z

    .line 41
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "XT9"

    aput-object v2, v0, v1

    const-string v1, "PenPower"

    aput-object v1, v0, v3

    sput-object v0, Lcom/htc/android/htcime/packageloader/IMEPackageLoader;->EngineSupportOrder:[Ljava/lang/String;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/htc/android/htcime/packageloader/IMEPackageLoader;->EngineSupportMapping:Ljava/util/HashMap;

    .line 52
    sget-object v0, Lcom/htc/android/htcime/packageloader/IMEPackageLoader;->EngineSupportMapping:Ljava/util/HashMap;

    const-string v1, "XT9"

    const-string v2, "com.htc.android.htcime.xt9engine"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/htc/android/htcime/packageloader/IMEPackageLoader;->EngineSupportMapping:Ljava/util/HashMap;

    const-string v1, "PenPower"

    const-string v2, "com.htc.android.htcime.ppengine"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/htc/android/htcime/packageloader/IMEPackageLoader;->EngineSupportMappingT:Ljava/util/HashMap;

    .line 64
    sget-object v0, Lcom/htc/android/htcime/packageloader/IMEPackageLoader;->EngineSupportMappingT:Ljava/util/HashMap;

    const-string v1, "XT9"

    const-string v2, "com.htc.android.htcime"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/htc/android/htcime/packageloader/IMEPackageLoader;->EngineSupportMappingT:Ljava/util/HashMap;

    const-string v1, "PenPower"

    const-string v2, "com.htc.android.htcime"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/htc/android/htcime/packageloader/IMEPackageLoader;->EngineSupportMappingEI:Ljava/util/HashMap;

    .line 74
    sget-object v0, Lcom/htc/android/htcime/packageloader/IMEPackageLoader;->EngineSupportMappingEI:Ljava/util/HashMap;

    const-string v1, "XT9"

    const-string v2, "com.htc.android.htcime.XT9IME.EngineInfo"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/htc/android/htcime/packageloader/IMEPackageLoader;->EngineSupportMappingEI:Ljava/util/HashMap;

    const-string v1, "PenPower"

    const-string v2, "com.htc.android.htcime.PPIME.EngineInfo"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/htc/android/htcime/packageloader/IMEPackageLoader;->EngineDescription:Ljava/util/HashMap;

    .line 84
    sget-object v0, Lcom/htc/android/htcime/packageloader/IMEPackageLoader;->EngineDescription:Ljava/util/HashMap;

    const-string v1, "XT9"

    const-string v2, "Support Latin & ZH input methods."

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/htc/android/htcime/packageloader/IMEPackageLoader;->EngineDescription:Ljava/util/HashMap;

    const-string v1, "PenPower"

    const-string v2, "Support handwriting input method."

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 12
    .parameter "context"

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    sget-object v2, Lcom/htc/android/htcime/packageloader/IMEPackageLoader;->EngineSupportOrder:[Ljava/lang/String;

    .local v2, arr$:[Ljava/lang/String;
    array-length v6, v2

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v6, :cond_3

    aget-object v4, v2, v5

    .line 92
    .local v4, e:Ljava/lang/String;
    sget-object v9, Lcom/htc/android/htcime/packageloader/IMEPackageLoader;->EngineSupportMappingT:Ljava/util/HashMap;

    invoke-virtual {v9, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 93
    .local v8, package_name:Ljava/lang/String;
    sget-boolean v9, Lcom/htc/android/htcime/packageloader/IMEPackageLoader;->DEBUG:Z

    if-eqz v9, :cond_0

    sget-object v9, Lcom/htc/android/htcime/packageloader/IMEPackageLoader;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "engine - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " package_name - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_0
    if-eqz v8, :cond_2

    invoke-static {v8, p1}, Lcom/htc/android/htcime/util/APKResTool;->isPackageExist(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 95
    sget-boolean v9, Lcom/htc/android/htcime/packageloader/IMEPackageLoader;->DEBUG:Z

    if-eqz v9, :cond_1

    sget-object v9, Lcom/htc/android/htcime/packageloader/IMEPackageLoader;->TAG:Ljava/lang/String;

    const-string v10, "installed "

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    .line 98
    .local v7, mClassLoader:Ljava/lang/ClassLoader;
    sget-object v9, Lcom/htc/android/htcime/packageloader/IMEPackageLoader;->EngineSupportMappingEI:Ljava/util/HashMap;

    invoke-virtual {v9, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const/4 v10, 0x1

    invoke-static {v9, v10, v7}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    .line 99
    .local v3, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {v4, v3}, Lcom/htc/android/htcime/packageloader/PackageContainer;->addPackageClass(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 91
    .end local v3           #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v7           #mClassLoader:Ljava/lang/ClassLoader;
    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, CNFE:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 102
    .end local v0           #CNFE:Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v1

    .line 103
    .local v1, E:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 108
    .end local v1           #E:Ljava/lang/Exception;
    .end local v4           #e:Ljava/lang/String;
    .end local v8           #package_name:Ljava/lang/String;
    :cond_3
    sget-boolean v9, Lcom/htc/android/htcime/packageloader/IMEPackageLoader;->DEBUG:Z

    if-eqz v9, :cond_4

    .line 109
    invoke-direct {p0, p1}, Lcom/htc/android/htcime/packageloader/IMEPackageLoader;->functionTest(Landroid/content/Context;)V

    .line 110
    :cond_4
    return-void
.end method

.method private functionTest(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 210
    sget-object v0, Lcom/htc/android/htcime/packageloader/IMEPackageLoader;->TAG:Ljava/lang/String;

    const-string v1, "-----  Engine package installed?   -----"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    sget-object v0, Lcom/htc/android/htcime/packageloader/IMEPackageLoader;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " getSupportEngine - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/htc/android/htcime/packageloader/IMEPackageLoader;->getSupportEngine()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    sget-object v0, Lcom/htc/android/htcime/packageloader/IMEPackageLoader;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " XT9 isntalled? - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "XT9"

    invoke-virtual {p0, v2, p1}, Lcom/htc/android/htcime/packageloader/IMEPackageLoader;->isEngineInstalled(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    sget-object v0, Lcom/htc/android/htcime/packageloader/IMEPackageLoader;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " PenPower isntalled? - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "PenPower"

    invoke-virtual {p0, v2, p1}, Lcom/htc/android/htcime/packageloader/IMEPackageLoader;->isEngineInstalled(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    sget-object v0, Lcom/htc/android/htcime/packageloader/IMEPackageLoader;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Blah isntalled? - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Blah"

    invoke-virtual {p0, v2, p1}, Lcom/htc/android/htcime/packageloader/IMEPackageLoader;->isEngineInstalled(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    sget-object v0, Lcom/htc/android/htcime/packageloader/IMEPackageLoader;->TAG:Ljava/lang/String;

    const-string v1, "-----  Engine description   -----"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    sget-object v0, Lcom/htc/android/htcime/packageloader/IMEPackageLoader;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " XT9 desc - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "XT9"

    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/packageloader/IMEPackageLoader;->getEngineDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    sget-object v0, Lcom/htc/android/htcime/packageloader/IMEPackageLoader;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " PenPower desc - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "PenPower"

    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/packageloader/IMEPackageLoader;->getEngineDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    sget-object v0, Lcom/htc/android/htcime/packageloader/IMEPackageLoader;->TAG:Ljava/lang/String;

    const-string v1, "-----  All support input name   -----"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    sget-object v0, Lcom/htc/android/htcime/packageloader/IMEPackageLoader;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " XT9 support - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "XT9"

    invoke-virtual {p0, v2, p1}, Lcom/htc/android/htcime/packageloader/IMEPackageLoader;->getEngineSupportInputMethod(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    sget-object v0, Lcom/htc/android/htcime/packageloader/IMEPackageLoader;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " PenPower support - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "PenPower"

    invoke-virtual {p0, v2, p1}, Lcom/htc/android/htcime/packageloader/IMEPackageLoader;->getEngineSupportInputMethod(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    sget-object v0, Lcom/htc/android/htcime/packageloader/IMEPackageLoader;->TAG:Ljava/lang/String;

    const-string v1, "-----  Input method package installed?   -----"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    sget-object v0, Lcom/htc/android/htcime/packageloader/IMEPackageLoader;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " XT9 Srpski jezik package installed? - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "XT9"

    const-string v3, "Srpski jezik"

    invoke-virtual {p0, v2, v3, p1}, Lcom/htc/android/htcime/packageloader/IMEPackageLoader;->isInputPackageInstalled(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    sget-object v0, Lcom/htc/android/htcime/packageloader/IMEPackageLoader;->TAG:Ljava/lang/String;

    const-string v1, "-----  Input method package not installed?   -----"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    sget-object v0, Lcom/htc/android/htcime/packageloader/IMEPackageLoader;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " XT9 not installed - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "XT9"

    invoke-virtual {p0, v2, p1}, Lcom/htc/android/htcime/packageloader/IMEPackageLoader;->getInputMethodNotInstalled(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    sget-object v0, Lcom/htc/android/htcime/packageloader/IMEPackageLoader;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " PenPower not installed - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "PenPower"

    invoke-virtual {p0, v2, p1}, Lcom/htc/android/htcime/packageloader/IMEPackageLoader;->getInputMethodNotInstalled(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    sget-object v0, Lcom/htc/android/htcime/packageloader/IMEPackageLoader;->TAG:Ljava/lang/String;

    const-string v1, "-----  Input package name test   -----"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    sget-object v0, Lcom/htc/android/htcime/packageloader/IMEPackageLoader;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " XT9 Srpski jezik - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "XT9"

    const-string v3, "Srpski jezik"

    invoke-virtual {p0, p1, v2, v3}, Lcom/htc/android/htcime/packageloader/IMEPackageLoader;->getInputPackageName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " XT9 \u6ce8\u97f3 - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "XT9"

    const-string v3, "\u6ce8\u97f3"

    invoke-virtual {p0, p1, v2, v3}, Lcom/htc/android/htcime/packageloader/IMEPackageLoader;->getInputPackageName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " XT9 Norsk - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "XT9"

    const-string v3, "Norsk"

    invoke-virtual {p0, p1, v2, v3}, Lcom/htc/android/htcime/packageloader/IMEPackageLoader;->getInputPackageName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    return-void
.end method

.method public static getSupportEngine()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 117
    sget-object v1, Lcom/htc/android/htcime/packageloader/IMEPackageLoader;->EngineSupportOrder:[Ljava/lang/String;

    invoke-virtual {v1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 118
    .local v0, k:[Ljava/lang/String;
    return-object v0
.end method


# virtual methods
.method public getEngineDescription(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "engine_name"

    .prologue
    .line 176
    sget-object v0, Lcom/htc/android/htcime/packageloader/IMEPackageLoader;->EngineDescription:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getEngineSupportInputMethod(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "engine_name"
    .parameter "context"

    .prologue
    .line 185
    sget-boolean v0, Lcom/htc/android/htcime/packageloader/IMEPackageLoader;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/android/htcime/packageloader/IMEPackageLoader;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getEngineSupportInputMethod - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_0
    invoke-static {p2, p1}, Lcom/htc/android/htcime/packageloader/InvocationProxy;->getSupportMethod(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInputMethodNotInstalled(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 12
    .parameter "engine_name"
    .parameter "context"

    .prologue
    .line 151
    const-string v8, ""

    .line 152
    .local v8, s:Ljava/lang/String;
    sget-boolean v9, Lcom/htc/android/htcime/packageloader/IMEPackageLoader;->DEBUG:Z

    if-eqz v9, :cond_0

    sget-object v9, Lcom/htc/android/htcime/packageloader/IMEPackageLoader;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getInputMethodNotInstalled - engine_name - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/htc/android/htcime/packageloader/IMEPackageLoader;->getEngineSupportInputMethod(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 155
    .local v5, im:Ljava/lang/String;
    if-eqz v5, :cond_3

    const-string v9, ""

    invoke-virtual {v5, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 156
    const-string v9, ";"

    invoke-virtual {v5, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, aim:[Ljava/lang/String;
    move-object v1, v0

    .local v1, arr$:[Ljava/lang/String;
    array-length v6, v1

    .local v6, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v6, :cond_3

    aget-object v3, v1, v4

    .line 158
    .local v3, i:Ljava/lang/String;
    invoke-virtual {p0, p2, p1, v3}, Lcom/htc/android/htcime/packageloader/IMEPackageLoader;->getInputPackageName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 159
    .local v7, p:Ljava/lang/String;
    if-eqz v7, :cond_1

    if-eqz v7, :cond_2

    invoke-static {v7, p2}, Lcom/htc/android/htcime/util/APKResTool;->isPackageExist(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 160
    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 157
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 164
    .end local v0           #aim:[Ljava/lang/String;
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v3           #i:Ljava/lang/String;
    .end local v4           #i$:I
    .end local v5           #im:Ljava/lang/String;
    .end local v6           #len$:I
    .end local v7           #p:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 165
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 167
    .end local v2           #e:Ljava/lang/Exception;
    :cond_3
    sget-boolean v9, Lcom/htc/android/htcime/packageloader/IMEPackageLoader;->DEBUG:Z

    if-eqz v9, :cond_4

    sget-object v9, Lcom/htc/android/htcime/packageloader/IMEPackageLoader;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "not installed - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_4
    return-object v8
.end method

.method public getInputPackageName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "engine_name"
    .parameter "input_method"

    .prologue
    .line 193
    invoke-static {p1, p2, p3}, Lcom/htc/android/htcime/packageloader/InvocationProxy;->getInputPackageName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isEngineInstalled(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 1
    .parameter "engine_name"
    .parameter "context"

    .prologue
    .line 134
    invoke-static {p1}, Lcom/htc/android/htcime/packageloader/PackageContainer;->isEngineContain(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isInputPackageInstalled(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z
    .locals 2
    .parameter "engine_name"
    .parameter "input_method"
    .parameter "context"

    .prologue
    .line 138
    const/4 v1, 0x0

    .line 139
    .local v1, ret:Z
    invoke-static {p3, p1, p2}, Lcom/htc/android/htcime/packageloader/InvocationProxy;->getInputPackageName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, p:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 141
    invoke-static {v0, p3}, Lcom/htc/android/htcime/util/APKResTool;->isPackageExist(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v1

    .line 144
    :cond_0
    return v1
.end method

.method public updatePackageUpdate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "action"
    .parameter "packageName"

    .prologue
    .line 200
    sget-object v2, Lcom/htc/android/htcime/packageloader/IMEPackageLoader;->EngineSupportMapping:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 201
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 202
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 203
    .local v0, engineName:Ljava/lang/String;
    invoke-static {p1, v0, p2, p3}, Lcom/htc/android/htcime/packageloader/InvocationProxy;->onPackageUpdate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 205
    .end local v0           #engineName:Ljava/lang/String;
    :cond_0
    return-void
.end method
