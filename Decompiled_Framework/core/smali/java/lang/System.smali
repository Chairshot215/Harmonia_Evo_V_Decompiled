.class public final Ljava/lang/System;
.super Ljava/lang/Object;
.source "System.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/System$SystemEnvironment;
    }
.end annotation


# static fields
.field public static final err:Ljava/io/PrintStream;

.field public static final in:Ljava/io/InputStream;

.field private static final lineSeparator:Ljava/lang/String;

.field public static final out:Ljava/io/PrintStream;

.field private static systemProperties:Ljava/util/Properties;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/io/PrintStream;

    new-instance v1, Ljava/io/FileOutputStream;

    sget-object v2, Ljava/io/FileDescriptor;->err:Ljava/io/FileDescriptor;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v0, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    sput-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v0, Ljava/io/PrintStream;

    new-instance v1, Ljava/io/FileOutputStream;

    sget-object v2, Ljava/io/FileDescriptor;->out:Ljava/io/FileDescriptor;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v0, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    sput-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/io/FileInputStream;

    sget-object v1, Ljava/io/FileDescriptor;->in:Ljava/io/FileDescriptor;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    sput-object v0, Ljava/lang/System;->in:Ljava/io/InputStream;

    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljava/lang/System;->lineSeparator:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
.end method

.method public static clearProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static console()Ljava/io/Console;
    .locals 1

    invoke-static {}, Ljava/io/Console;->getConsole()Ljava/io/Console;

    move-result-object v0

    return-object v0
.end method

.method public static native currentTimeMillis()J
.end method

.method public static exit(I)V
    .locals 1

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Runtime;->exit(I)V

    return-void
.end method

.method public static gc()V
    .locals 1

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    return-void
.end method

.method private static native getEnvByName(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static getProperties()Ljava/util/Properties;
    .locals 1

    sget-object v0, Ljava/lang/System;->systemProperties:Ljava/util/Properties;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->initSystemProperties()V

    :cond_0
    sget-object v0, Ljava/lang/System;->systemProperties:Ljava/util/Properties;

    return-object v0
.end method

.method public static getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSecurityManager()Ljava/lang/SecurityManager;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getenv(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/System;->getenv(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getenv(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "name == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v1, p0}, Llibcore/io/Os;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    :goto_0
    return-object v0

    :cond_1
    move-object v0, p1

    goto :goto_0
.end method

.method public static getenv()Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    sget-object v6, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v6}, Llibcore/io/Os;->environ()[Ljava/lang/String;

    move-result-object v0

    array-length v4, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v1, v0, v2

    const/16 v6, 0x3d

    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v6, -0x1

    if-eq v3, v6, :cond_0

    const/4 v6, 0x0

    invoke-virtual {v1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v6, Ljava/lang/System$SystemEnvironment;

    invoke-direct {v6, v5}, Ljava/lang/System$SystemEnvironment;-><init>(Ljava/util/Map;)V

    return-object v6
.end method

.method public static native identityHashCode(Ljava/lang/Object;)I
.end method

.method public static inheritedChannel()Ljava/nio/channels/Channel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Ljava/nio/channels/spi/SelectorProvider;->provider()Ljava/nio/channels/spi/SelectorProvider;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/spi/SelectorProvider;->inheritedChannel()Ljava/nio/channels/Channel;

    move-result-object v0

    return-object v0
.end method

.method private static initSystemProperties()V
    .locals 8

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v4

    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    const-string v3, "http://www.android.com/"

    const-string v2, "The Android Project"

    const-string v5, "java.boot.class.path"

    invoke-virtual {v4}, Ldalvik/system/VMRuntime;->bootClassPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "java.class.path"

    invoke-virtual {v4}, Ldalvik/system/VMRuntime;->classPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "java.class.version"

    const-string v6, "50.0"

    invoke-virtual {v1, v5, v6}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "java.compiler"

    const-string v6, ""

    invoke-virtual {v1, v5, v6}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "java.ext.dirs"

    const-string v6, ""

    invoke-virtual {v1, v5, v6}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "java.version"

    const-string v6, "0"

    invoke-virtual {v1, v5, v6}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "java.home"

    const-string v6, "JAVA_HOME"

    const-string v7, "/system"

    invoke-static {v6, v7}, Ljava/lang/System;->getenv(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "java.io.tmpdir"

    const-string v6, "/tmp"

    invoke-virtual {v1, v5, v6}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "java.library.path"

    const-string v6, "LD_LIBRARY_PATH"

    invoke-static {v6}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "java.specification.name"

    const-string v6, "Dalvik Core Library"

    invoke-virtual {v1, v5, v6}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "java.specification.vendor"

    invoke-virtual {v1, v5, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "java.specification.version"

    const-string v6, "0.9"

    invoke-virtual {v1, v5, v6}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "java.vendor"

    invoke-virtual {v1, v5, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "java.vendor.url"

    invoke-virtual {v1, v5, v3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "java.vm.name"

    const-string v6, "Dalvik"

    invoke-virtual {v1, v5, v6}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "java.vm.specification.name"

    const-string v6, "Dalvik Virtual Machine Specification"

    invoke-virtual {v1, v5, v6}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "java.vm.specification.vendor"

    invoke-virtual {v1, v5, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "java.vm.specification.version"

    const-string v6, "0.9"

    invoke-virtual {v1, v5, v6}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "java.vm.vendor"

    invoke-virtual {v1, v5, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "java.vm.version"

    invoke-virtual {v4}, Ldalvik/system/VMRuntime;->vmVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "file.separator"

    const-string v6, "/"

    invoke-virtual {v1, v5, v6}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "line.separator"

    const-string v6, "\n"

    invoke-virtual {v1, v5, v6}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "path.separator"

    const-string v6, ":"

    invoke-virtual {v1, v5, v6}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "java.runtime.name"

    const-string v6, "Android Runtime"

    invoke-virtual {v1, v5, v6}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "java.runtime.version"

    const-string v6, "0.9"

    invoke-virtual {v1, v5, v6}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "java.vm.vendor.url"

    invoke-virtual {v1, v5, v3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "file.encoding"

    const-string v6, "UTF-8"

    invoke-virtual {v1, v5, v6}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "user.language"

    const-string v6, "en"

    invoke-virtual {v1, v5, v6}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "user.region"

    const-string v6, "US"

    invoke-virtual {v1, v5, v6}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "user.home"

    const-string v6, "HOME"

    const-string v7, ""

    invoke-static {v6, v7}, Ljava/lang/System;->getenv(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "user.name"

    const-string v6, "USER"

    const-string v7, ""

    invoke-static {v6, v7}, Ljava/lang/System;->getenv(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v5}, Llibcore/io/Os;->uname()Llibcore/io/StructUtsname;

    move-result-object v0

    const-string v5, "os.arch"

    iget-object v6, v0, Llibcore/io/StructUtsname;->machine:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "os.name"

    iget-object v6, v0, Llibcore/io/StructUtsname;->sysname:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "os.version"

    iget-object v6, v0, Llibcore/io/StructUtsname;->release:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "android.icu.library.version"

    invoke-static {}, Llibcore/icu/ICU;->getIcuVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "android.icu.unicode.version"

    invoke-static {}, Llibcore/icu/ICU;->getUnicodeVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->specialProperties()[Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Ljava/lang/System;->parsePropertyAssignments(Ljava/util/Properties;[Ljava/lang/String;)V

    invoke-virtual {v4}, Ldalvik/system/VMRuntime;->properties()[Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Ljava/lang/System;->parsePropertyAssignments(Ljava/util/Properties;[Ljava/lang/String;)V

    sput-object v1, Ljava/lang/System;->systemProperties:Ljava/util/Properties;

    return-void
.end method

.method public static lineSeparator()Ljava/lang/String;
    .locals 1

    sget-object v0, Ljava/lang/System;->lineSeparator:Ljava/lang/String;

    return-object v0
.end method

.method public static load(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-static {}, Ldalvik/system/VMStack;->getCallingClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/lang/Runtime;->load(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method public static loadLibrary(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-static {}, Ldalvik/system/VMStack;->getCallingClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/lang/Runtime;->loadLibrary(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method private static native log(CLjava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public static logE(Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0x45

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Ljava/lang/System;->log(CLjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static logE(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const/16 v0, 0x45

    invoke-static {v0, p0, p1}, Ljava/lang/System;->log(CLjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static logI(Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0x49

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Ljava/lang/System;->log(CLjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static logI(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const/16 v0, 0x49

    invoke-static {v0, p0, p1}, Ljava/lang/System;->log(CLjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static logW(Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0x57

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Ljava/lang/System;->log(CLjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static logW(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const/16 v0, 0x57

    invoke-static {v0, p0, p1}, Ljava/lang/System;->log(CLjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static native mapLibraryName(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native nanoTime()J
.end method

.method private static parsePropertyAssignments(Ljava/util/Properties;[Ljava/lang/String;)V
    .locals 8

    move-object v0, p1

    array-length v4, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v1, v0, v2

    const/16 v7, 0x3d

    invoke-virtual {v1, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v7, 0x0

    invoke-virtual {v1, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v3, v6}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static runFinalization()V
    .locals 1

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->runFinalization()V

    return-void
.end method

.method public static runFinalizersOnExit(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Ljava/lang/Runtime;->runFinalizersOnExit(Z)V

    return-void
.end method

.method public static setErr(Ljava/io/PrintStream;)V
    .locals 2

    const-string v0, "err"

    const-string v1, "Ljava/io/PrintStream;"

    invoke-static {v0, v1, p0}, Ljava/lang/System;->setFieldImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private static native setFieldImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public static setIn(Ljava/io/InputStream;)V
    .locals 2

    const-string v0, "in"

    const-string v1, "Ljava/io/InputStream;"

    invoke-static {v0, v1, p0}, Ljava/lang/System;->setFieldImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static setOut(Ljava/io/PrintStream;)V
    .locals 2

    const-string v0, "out"

    const-string v1, "Ljava/io/PrintStream;"

    invoke-static {v0, v1, p0}, Ljava/lang/System;->setFieldImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static setProperties(Ljava/util/Properties;)V
    .locals 0

    sput-object p0, Ljava/lang/System;->systemProperties:Ljava/util/Properties;

    return-void
.end method

.method public static setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static setSecurityManager(Ljava/lang/SecurityManager;)V
    .locals 1

    if-eqz p0, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0}, Ljava/lang/SecurityException;-><init>()V

    throw v0

    :cond_0
    return-void
.end method

.method private static native specialProperties()[Ljava/lang/String;
.end method
