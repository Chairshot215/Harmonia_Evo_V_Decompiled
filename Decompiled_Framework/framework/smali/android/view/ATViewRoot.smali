.class Landroid/view/ATViewRoot;
.super Ljava/lang/Object;
.source "ATViewRoot.java"


# static fields
.field private static final AT_APK:Ljava/lang/String; = "/data/at/app/ATServer.apk"

.field private static final AT_CLASS:Ljava/lang/String; = "com.htc.autotest.server.ViewRootExt"

.field private static final AT_COMMAND:Ljava/lang/String; = "AT"

.field private static final AT_LIB:Ljava/lang/String; = "/data/at/app/AutoTestHelper.jar"

.field private static final AT_METHOD:Ljava/lang/String; = "dispatchCommand"

.field private static final LOG_TAG:Ljava/lang/String; = "ATScriptRunner"

.field public static final SRVER:Ljava/lang/String; = "11072015"

.field private static smInstance:Landroid/view/ATViewRoot;


# instance fields
.field private mClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private mInited:Z

.field private mLoader:Ldalvik/system/PathClassLoader;

.field private mMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Landroid/view/ATViewRoot;->smInstance:Landroid/view/ATViewRoot;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ATViewRoot;->mInited:Z

    iput-object v1, p0, Landroid/view/ATViewRoot;->mLoader:Ldalvik/system/PathClassLoader;

    iput-object v1, p0, Landroid/view/ATViewRoot;->mClazz:Ljava/lang/Class;

    iput-object v1, p0, Landroid/view/ATViewRoot;->mMethod:Ljava/lang/reflect/Method;

    return-void
.end method

.method private ensureInit()Z
    .locals 11

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v10, 0x0

    iget-boolean v5, p0, Landroid/view/ATViewRoot;->mInited:Z

    if-eqz v5, :cond_0

    :goto_0
    return v3

    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data/at/app/ATServer.apk"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Landroid/view/ATViewRoot;->getClassPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    const-string v5, ":"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/data/at/app/AutoTestHelper.jar"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v5, "ATScriptRunner"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ATViewRoot.ensureInit(), cp_loader: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ldalvik/system/PathClassLoader;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    iput-object v5, p0, Landroid/view/ATViewRoot;->mLoader:Ldalvik/system/PathClassLoader;

    const-string v5, "com.htc.autotest.server.ViewRootExt"

    const/4 v6, 0x1

    iget-object v7, p0, Landroid/view/ATViewRoot;->mLoader:Ldalvik/system/PathClassLoader;

    invoke-static {v5, v6, v7}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v5

    iput-object v5, p0, Landroid/view/ATViewRoot;->mClazz:Ljava/lang/Class;

    iget-object v5, p0, Landroid/view/ATViewRoot;->mClazz:Ljava/lang/Class;

    const-string v6, "dispatchCommand"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Landroid/view/View;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x3

    const-class v9, Ljava/io/OutputStream;

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    iput-object v5, p0, Landroid/view/ATViewRoot;->mMethod:Ljava/lang/reflect/Method;

    iget-object v5, p0, Landroid/view/ATViewRoot;->mLoader:Ldalvik/system/PathClassLoader;

    if-eqz v5, :cond_2

    iget-object v5, p0, Landroid/view/ATViewRoot;->mClazz:Ljava/lang/Class;

    if-eqz v5, :cond_2

    iget-object v5, p0, Landroid/view/ATViewRoot;->mMethod:Ljava/lang/reflect/Method;

    if-eqz v5, :cond_2

    :goto_1
    iput-boolean v3, p0, Landroid/view/ATViewRoot;->mInited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-boolean v3, p0, Landroid/view/ATViewRoot;->mInited:Z

    if-nez v3, :cond_5

    iput-object v10, p0, Landroid/view/ATViewRoot;->mLoader:Ldalvik/system/PathClassLoader;

    iput-object v10, p0, Landroid/view/ATViewRoot;->mClazz:Ljava/lang/Class;

    iput-object v10, p0, Landroid/view/ATViewRoot;->mMethod:Ljava/lang/reflect/Method;

    const-string v3, "ATScriptRunner"

    const-string v4, "ATViewRoot.ensureInit() = false"

    :goto_2
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    iget-boolean v3, p0, Landroid/view/ATViewRoot;->mInited:Z

    goto/16 :goto_0

    :cond_2
    move v3, v4

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_1
    const-string v3, "ATScriptRunner"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-boolean v3, p0, Landroid/view/ATViewRoot;->mInited:Z

    if-nez v3, :cond_4

    iput-object v10, p0, Landroid/view/ATViewRoot;->mLoader:Ldalvik/system/PathClassLoader;

    iput-object v10, p0, Landroid/view/ATViewRoot;->mClazz:Ljava/lang/Class;

    iput-object v10, p0, Landroid/view/ATViewRoot;->mMethod:Ljava/lang/reflect/Method;

    const-string v3, "ATScriptRunner"

    const-string v4, "ATViewRoot.ensureInit() = false"

    goto :goto_2

    :catchall_0
    move-exception v3

    iget-boolean v4, p0, Landroid/view/ATViewRoot;->mInited:Z

    if-nez v4, :cond_3

    iput-object v10, p0, Landroid/view/ATViewRoot;->mLoader:Ldalvik/system/PathClassLoader;

    iput-object v10, p0, Landroid/view/ATViewRoot;->mClazz:Ljava/lang/Class;

    iput-object v10, p0, Landroid/view/ATViewRoot;->mMethod:Ljava/lang/reflect/Method;

    const-string v4, "ATScriptRunner"

    const-string v5, "ATViewRoot.ensureInit() = false"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    throw v3

    :cond_3
    const-string v4, "ATScriptRunner"

    const-string v5, "ATViewRoot.ensureInit() = true"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_4
    const-string v3, "ATScriptRunner"

    const-string v4, "ATViewRoot.ensureInit() = true"

    :goto_5
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_5
    const-string v3, "ATScriptRunner"

    const-string v4, "ATViewRoot.ensureInit() = true"

    goto :goto_5
.end method

.method private getClassPath()Ljava/lang/String;
    .locals 9

    const/4 v8, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sr.runner.classpath.count"

    invoke-static {v5, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    :goto_0
    if-gt v3, v1, :cond_2

    const-string/jumbo v5, "sr.runner.classpath.%02d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_0

    const-string v5, ":"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static getInstance()Landroid/view/ATViewRoot;
    .locals 1

    sget-object v0, Landroid/view/ATViewRoot;->smInstance:Landroid/view/ATViewRoot;

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/ATViewRoot;

    invoke-direct {v0}, Landroid/view/ATViewRoot;-><init>()V

    sput-object v0, Landroid/view/ATViewRoot;->smInstance:Landroid/view/ATViewRoot;

    :cond_0
    sget-object v0, Landroid/view/ATViewRoot;->smInstance:Landroid/view/ATViewRoot;

    return-object v0
.end method


# virtual methods
.method public dispatchCommand(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "AT"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0}, Landroid/view/ATViewRoot;->ensureInit()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :cond_1
    :try_start_0
    iget-object v2, p0, Landroid/view/ATViewRoot;->mMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x2

    aput-object p3, v4, v5

    const/4 v5, 0x3

    aput-object p4, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "ATScriptRunner"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
