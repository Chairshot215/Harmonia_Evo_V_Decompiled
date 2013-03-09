.class public Ljava/util/logging/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field private static final EMPTY_HANDLERS_ARRAY:[Ljava/util/logging/Handler; = null

.field private static final GENERAL_LOG_HANDLER:Ldalvik/system/DalvikLogHandler; = null

.field public static final GLOBAL_LOGGER_NAME:Ljava/lang/String; = "global"

.field public static final global:Ljava/util/logging/Logger;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final androidTag:Ljava/lang/String;

.field final children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/logging/Logger;",
            ">;"
        }
    .end annotation
.end field

.field private volatile dalvikLogHandler:Ldalvik/system/DalvikLogHandler;

.field private filter:Ljava/util/logging/Filter;

.field private final handlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/logging/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private isNamed:Z

.field volatile levelIntVal:I

.field volatile levelObjVal:Ljava/util/logging/Level;

.field private volatile name:Ljava/lang/String;

.field private notifyParentHandlers:Z

.field parent:Ljava/util/logging/Logger;

.field private volatile resourceBundle:Ljava/util/ResourceBundle;

.field private volatile resourceBundleName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/logging/Logger$1;

    invoke-direct {v0}, Ljava/util/logging/Logger$1;-><init>()V

    sput-object v0, Ljava/util/logging/Logger;->GENERAL_LOG_HANDLER:Ldalvik/system/DalvikLogHandler;

    new-instance v0, Ljava/util/logging/Logger;

    const-string v1, "global"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/logging/Logger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Ljava/util/logging/Logger;->global:Ljava/util/logging/Logger;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/util/logging/Handler;

    sput-object v0, Ljava/util/logging/Logger;->EMPTY_HANDLERS_ARRAY:[Ljava/util/logging/Handler;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/util/logging/Level;->intValue()I

    move-result v0

    iput v0, p0, Ljava/util/logging/Logger;->levelIntVal:I

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Ljava/util/logging/Logger;->handlers:Ljava/util/List;

    iput-boolean v1, p0, Ljava/util/logging/Logger;->notifyParentHandlers:Z

    iput-boolean v1, p0, Ljava/util/logging/Logger;->isNamed:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljava/util/logging/Logger;->children:Ljava/util/List;

    sget-object v0, Ljava/util/logging/Logger;->GENERAL_LOG_HANDLER:Ldalvik/system/DalvikLogHandler;

    iput-object v0, p0, Ljava/util/logging/Logger;->dalvikLogHandler:Ldalvik/system/DalvikLogHandler;

    iput-object p1, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    invoke-direct {p0, p2}, Ljava/util/logging/Logger;->initResourceBundle(Ljava/lang/String;)V

    invoke-static {p1}, Ldalvik/system/DalvikLogging;->loggerNameToTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/util/logging/Logger;->androidTag:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/util/logging/Logger;->updateDalvikLogHandler()V

    return-void
.end method

.method static synthetic access$000(Ljava/util/logging/Logger;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Ljava/util/logging/Logger;Ljava/util/logging/LogRecord;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/util/logging/Logger;->setResourceBundle(Ljava/util/logging/LogRecord;)V

    return-void
.end method

.method public static getAnonymousLogger()Ljava/util/logging/Logger;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/util/logging/Logger;->getAnonymousLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    return-object v0
.end method

.method public static getAnonymousLogger(Ljava/lang/String;)Ljava/util/logging/Logger;
    .locals 3

    new-instance v1, Ljava/util/logging/Logger;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Ljava/util/logging/Logger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    iput-boolean v2, v1, Ljava/util/logging/Logger;->isNamed:Z

    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/util/logging/LogManager;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/LogManager;->setParent(Ljava/util/logging/Logger;Ljava/util/logging/Logger;)V

    return-object v1
.end method

.method public static getGlobal()Ljava/util/logging/Logger;
    .locals 1

    sget-object v0, Ljava/util/logging/Logger;->global:Ljava/util/logging/Logger;

    return-object v0
.end method

.method public static getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;
    .locals 2

    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/util/logging/LogManager;->getOrCreate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    return-object v0
.end method

.method public static getLogger(Ljava/lang/String;Ljava/lang/String;)Ljava/util/logging/Logger;
    .locals 2

    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/util/logging/LogManager;->getOrCreate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    invoke-direct {v0, p1}, Ljava/util/logging/Logger;->initResourceBundle(Ljava/lang/String;)V

    return-object v0
.end method

.method private declared-synchronized initResourceBundle(Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljava/util/logging/Logger;->resourceBundleName:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resource bundle name \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' is inconsistent with the existing \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_2
    if-eqz p1, :cond_0

    :try_start_2
    invoke-static {p1}, Ljava/util/logging/Logger;->loadResourceBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v1

    iput-object v1, p0, Ljava/util/logging/Logger;->resourceBundle:Ljava/util/ResourceBundle;

    iput-object p1, p0, Ljava/util/logging/Logger;->resourceBundleName:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private internalIsLoggable(Ljava/util/logging/Level;)Z
    .locals 3

    const/4 v1, 0x0

    iget v0, p0, Ljava/util/logging/Logger;->levelIntVal:I

    sget-object v2, Ljava/util/logging/Level;->OFF:Ljava/util/logging/Level;

    invoke-virtual {v2}, Ljava/util/logging/Level;->intValue()I

    move-result v2

    if-ne v0, v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p1}, Ljava/util/logging/Level;->intValue()I

    move-result v2

    if-lt v2, v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method static loadResourceBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;
    .locals 4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {p0, v1, v0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v1

    :cond_0
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {p0, v1, v0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    goto :goto_0

    :catch_1
    move-exception v1

    :cond_1
    new-instance v1, Ljava/util/MissingResourceException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to load the specified resource bundle \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, p0, v3}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1
.end method

.method private setResourceBundle(Ljava/util/logging/LogRecord;)V
    .locals 3

    move-object v0, p0

    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, v0, Ljava/util/logging/Logger;->resourceBundleName:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v2, v0, Ljava/util/logging/Logger;->resourceBundle:Ljava/util/ResourceBundle;

    invoke-virtual {p1, v2}, Ljava/util/logging/LogRecord;->setResourceBundle(Ljava/util/ResourceBundle;)V

    invoke-virtual {p1, v1}, Ljava/util/logging/LogRecord;->setResourceBundleName(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, v0, Ljava/util/logging/Logger;->parent:Ljava/util/logging/Logger;

    goto :goto_0
.end method


# virtual methods
.method public addHandler(Ljava/util/logging/Handler;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "handler == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-boolean v0, p0, Ljava/util/logging/Logger;->isNamed:Z

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/logging/LogManager;->checkAccess()V

    :cond_1
    iget-object v0, p0, Ljava/util/logging/Logger;->handlers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Ljava/util/logging/Logger;->updateDalvikLogHandler()V

    return-void
.end method

.method public config(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {p0, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    return-void
.end method

.method public entering(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-direct {p0, v1}, Ljava/util/logging/Logger;->internalIsLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/util/logging/LogRecord;

    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    const-string v2, "ENTRY"

    invoke-direct {v0, v1, v2}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    iget-object v1, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setLoggerName(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->setResourceBundle(Ljava/util/logging/LogRecord;)V

    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    goto :goto_0
.end method

.method public entering(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-direct {p0, v1}, Ljava/util/logging/Logger;->internalIsLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/util/logging/LogRecord;

    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    const-string v2, "ENTRY {0}"

    invoke-direct {v0, v1, v2}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    iget-object v1, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setLoggerName(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setParameters([Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->setResourceBundle(Ljava/util/logging/LogRecord;)V

    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    goto :goto_0
.end method

.method public entering(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6

    sget-object v4, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-direct {p0, v4}, Ljava/util/logging/Logger;->internalIsLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v1, "ENTRY"

    if-eqz p3, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "ENTRY"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_1
    array-length v4, p3

    if-ge v0, v4, :cond_1

    const-string v4, " {"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    new-instance v3, Ljava/util/logging/LogRecord;

    sget-object v4, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-direct {v3, v4, v1}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    iget-object v4, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/logging/LogRecord;->setLoggerName(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/util/logging/LogRecord;->setParameters([Ljava/lang/Object;)V

    invoke-direct {p0, v3}, Ljava/util/logging/Logger;->setResourceBundle(Ljava/util/logging/LogRecord;)V

    invoke-virtual {p0, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    goto :goto_0
.end method

.method public exiting(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-direct {p0, v1}, Ljava/util/logging/Logger;->internalIsLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/util/logging/LogRecord;

    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    const-string v2, "RETURN"

    invoke-direct {v0, v1, v2}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    iget-object v1, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setLoggerName(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->setResourceBundle(Ljava/util/logging/LogRecord;)V

    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    goto :goto_0
.end method

.method public exiting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-direct {p0, v1}, Ljava/util/logging/Logger;->internalIsLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/util/logging/LogRecord;

    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    const-string v2, "RETURN {0}"

    invoke-direct {v0, v1, v2}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    iget-object v1, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setLoggerName(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setParameters([Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->setResourceBundle(Ljava/util/logging/LogRecord;)V

    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    goto :goto_0
.end method

.method public fine(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {p0, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    return-void
.end method

.method public finer(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {p0, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    return-void
.end method

.method public finest(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {p0, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    return-void
.end method

.method public getFilter()Ljava/util/logging/Filter;
    .locals 1

    iget-object v0, p0, Ljava/util/logging/Logger;->filter:Ljava/util/logging/Filter;

    return-object v0
.end method

.method public getHandlers()[Ljava/util/logging/Handler;
    .locals 2

    iget-object v0, p0, Ljava/util/logging/Logger;->handlers:Ljava/util/List;

    sget-object v1, Ljava/util/logging/Logger;->EMPTY_HANDLERS_ARRAY:[Ljava/util/logging/Handler;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/logging/Handler;

    return-object v0
.end method

.method public getLevel()Ljava/util/logging/Level;
    .locals 1

    iget-object v0, p0, Ljava/util/logging/Logger;->levelObjVal:Ljava/util/logging/Level;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParent()Ljava/util/logging/Logger;
    .locals 1

    iget-object v0, p0, Ljava/util/logging/Logger;->parent:Ljava/util/logging/Logger;

    return-object v0
.end method

.method public getResourceBundle()Ljava/util/ResourceBundle;
    .locals 1

    iget-object v0, p0, Ljava/util/logging/Logger;->resourceBundle:Ljava/util/ResourceBundle;

    return-object v0
.end method

.method public getResourceBundleName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/util/logging/Logger;->resourceBundleName:Ljava/lang/String;

    return-object v0
.end method

.method public getUseParentHandlers()Z
    .locals 1

    iget-boolean v0, p0, Ljava/util/logging/Logger;->notifyParentHandlers:Z

    return v0
.end method

.method public info(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {p0, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    return-void
.end method

.method public isLoggable(Ljava/util/logging/Level;)Z
    .locals 1

    invoke-direct {p0, p1}, Ljava/util/logging/Logger;->internalIsLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    return v0
.end method

.method public log(Ljava/util/logging/Level;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1}, Ljava/util/logging/Logger;->internalIsLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Ljava/util/logging/Logger;->dalvikLogHandler:Ldalvik/system/DalvikLogHandler;

    iget-object v1, p0, Ljava/util/logging/Logger;->androidTag:Ljava/lang/String;

    invoke-interface {v0, p0, v1, p1, p2}, Ldalvik/system/DalvikLogHandler;->publish(Ljava/util/logging/Logger;Ljava/lang/String;Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    invoke-direct {p0, p1}, Ljava/util/logging/Logger;->internalIsLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/util/logging/LogRecord;

    invoke-direct {v0, p1, p2}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    iget-object v1, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setLoggerName(Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setParameters([Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->setResourceBundle(Ljava/util/logging/LogRecord;)V

    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    goto :goto_0
.end method

.method public log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    invoke-direct {p0, p1}, Ljava/util/logging/Logger;->internalIsLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/util/logging/LogRecord;

    invoke-direct {v0, p1, p2}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    iget-object v1, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setLoggerName(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/util/logging/LogRecord;->setThrown(Ljava/lang/Throwable;)V

    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->setResourceBundle(Ljava/util/logging/LogRecord;)V

    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    goto :goto_0
.end method

.method public log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    invoke-direct {p0, p1}, Ljava/util/logging/Logger;->internalIsLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/util/logging/LogRecord;

    invoke-direct {v0, p1, p2}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    iget-object v1, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setLoggerName(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/util/logging/LogRecord;->setParameters([Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->setResourceBundle(Ljava/util/logging/LogRecord;)V

    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    goto :goto_0
.end method

.method public log(Ljava/util/logging/LogRecord;)V
    .locals 10

    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getLevel()Ljava/util/logging/Level;

    move-result-object v9

    invoke-direct {p0, v9}, Ljava/util/logging/Logger;->internalIsLoggable(Ljava/util/logging/Level;)Z

    move-result v9

    if-nez v9, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v3, p0, Ljava/util/logging/Logger;->filter:Ljava/util/logging/Filter;

    if-eqz v3, :cond_2

    invoke-interface {v3, p1}, Ljava/util/logging/Filter;->isLoggable(Ljava/util/logging/LogRecord;)Z

    move-result v9

    if-eqz v9, :cond_0

    :cond_2
    invoke-virtual {p0}, Ljava/util/logging/Logger;->getHandlers()[Ljava/util/logging/Handler;

    move-result-object v0

    move-object v1, v0

    array-length v6, v1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v6, :cond_3

    aget-object v2, v1, v5

    invoke-virtual {v2, p1}, Ljava/util/logging/Handler;->publish(Ljava/util/logging/LogRecord;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    move-object v7, p0

    iget-object v8, v7, Ljava/util/logging/Logger;->parent:Ljava/util/logging/Logger;

    :goto_1
    if-eqz v8, :cond_0

    invoke-virtual {v7}, Ljava/util/logging/Logger;->getUseParentHandlers()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v8}, Ljava/util/logging/Logger;->getHandlers()[Ljava/util/logging/Handler;

    move-result-object v4

    move-object v1, v4

    array-length v6, v1

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v6, :cond_4

    aget-object v2, v1, v5

    invoke-virtual {v2, p1}, Ljava/util/logging/Handler;->publish(Ljava/util/logging/LogRecord;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    move-object v7, v8

    iget-object v8, v7, Ljava/util/logging/Logger;->parent:Ljava/util/logging/Logger;

    goto :goto_1
.end method

.method public logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1}, Ljava/util/logging/Logger;->internalIsLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/util/logging/LogRecord;

    invoke-direct {v0, p1, p4}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    iget-object v1, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setLoggerName(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->setResourceBundle(Ljava/util/logging/LogRecord;)V

    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    goto :goto_0
.end method

.method public logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    invoke-direct {p0, p1}, Ljava/util/logging/Logger;->internalIsLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/util/logging/LogRecord;

    invoke-direct {v0, p1, p4}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    iget-object v1, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setLoggerName(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p5, v1, v2

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setParameters([Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->setResourceBundle(Ljava/util/logging/LogRecord;)V

    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    goto :goto_0
.end method

.method public logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    invoke-direct {p0, p1}, Ljava/util/logging/Logger;->internalIsLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/util/logging/LogRecord;

    invoke-direct {v0, p1, p4}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    iget-object v1, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setLoggerName(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    invoke-virtual {v0, p5}, Ljava/util/logging/LogRecord;->setThrown(Ljava/lang/Throwable;)V

    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->setResourceBundle(Ljava/util/logging/LogRecord;)V

    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    goto :goto_0
.end method

.method public logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    invoke-direct {p0, p1}, Ljava/util/logging/Logger;->internalIsLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/util/logging/LogRecord;

    invoke-direct {v0, p1, p4}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    iget-object v1, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setLoggerName(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    invoke-virtual {v0, p5}, Ljava/util/logging/LogRecord;->setParameters([Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->setResourceBundle(Ljava/util/logging/LogRecord;)V

    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    goto :goto_0
.end method

.method public logrb(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1}, Ljava/util/logging/Logger;->internalIsLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/util/logging/LogRecord;

    invoke-direct {v0, p1, p5}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    if-eqz p4, :cond_1

    :try_start_0
    invoke-static {p4}, Ljava/util/logging/Logger;->loadResourceBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setResourceBundle(Ljava/util/ResourceBundle;)V
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {v0, p4}, Ljava/util/logging/LogRecord;->setResourceBundleName(Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setLoggerName(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public logrb(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    invoke-direct {p0, p1}, Ljava/util/logging/Logger;->internalIsLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/util/logging/LogRecord;

    invoke-direct {v0, p1, p5}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    if-eqz p4, :cond_1

    :try_start_0
    invoke-static {p4}, Ljava/util/logging/Logger;->loadResourceBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setResourceBundle(Ljava/util/ResourceBundle;)V
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {v0, p4}, Ljava/util/logging/LogRecord;->setResourceBundleName(Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setLoggerName(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p6, v1, v2

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setParameters([Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public logrb(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    invoke-direct {p0, p1}, Ljava/util/logging/Logger;->internalIsLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/util/logging/LogRecord;

    invoke-direct {v0, p1, p5}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    if-eqz p4, :cond_1

    :try_start_0
    invoke-static {p4}, Ljava/util/logging/Logger;->loadResourceBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setResourceBundle(Ljava/util/ResourceBundle;)V
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {v0, p4}, Ljava/util/logging/LogRecord;->setResourceBundleName(Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setLoggerName(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    invoke-virtual {v0, p6}, Ljava/util/logging/LogRecord;->setThrown(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public logrb(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    invoke-direct {p0, p1}, Ljava/util/logging/Logger;->internalIsLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/util/logging/LogRecord;

    invoke-direct {v0, p1, p5}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    if-eqz p4, :cond_1

    :try_start_0
    invoke-static {p4}, Ljava/util/logging/Logger;->loadResourceBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setResourceBundle(Ljava/util/ResourceBundle;)V
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {v0, p4}, Ljava/util/logging/LogRecord;->setResourceBundleName(Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setLoggerName(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    invoke-virtual {v0, p6}, Ljava/util/logging/LogRecord;->setParameters([Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public removeHandler(Ljava/util/logging/Handler;)V
    .locals 1

    iget-boolean v0, p0, Ljava/util/logging/Logger;->isNamed:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/logging/LogManager;->checkAccess()V

    :cond_0
    if-nez p1, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Ljava/util/logging/Logger;->handlers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Ljava/util/logging/Logger;->updateDalvikLogHandler()V

    goto :goto_0
.end method

.method reset()V
    .locals 3

    const/4 v2, 0x0

    iput-object v2, p0, Ljava/util/logging/Logger;->levelObjVal:Ljava/util/logging/Level;

    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v2}, Ljava/util/logging/Level;->intValue()I

    move-result v2

    iput v2, p0, Ljava/util/logging/Logger;->levelIntVal:I

    iget-object v2, p0, Ljava/util/logging/Logger;->handlers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/logging/Handler;

    :try_start_0
    iget-object v2, p0, Ljava/util/logging/Logger;->handlers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/util/logging/Handler;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/util/logging/Logger;->updateDalvikLogHandler()V

    return-void
.end method

.method public setFilter(Ljava/util/logging/Filter;)V
    .locals 1

    iget-boolean v0, p0, Ljava/util/logging/Logger;->isNamed:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/logging/LogManager;->checkAccess()V

    :cond_0
    iput-object p1, p0, Ljava/util/logging/Logger;->filter:Ljava/util/logging/Filter;

    return-void
.end method

.method public setLevel(Ljava/util/logging/Level;)V
    .locals 2

    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v0

    iget-boolean v1, p0, Ljava/util/logging/Logger;->isNamed:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/util/logging/LogManager;->checkAccess()V

    :cond_0
    invoke-virtual {v0, p0, p1}, Ljava/util/logging/LogManager;->setLevelRecursively(Ljava/util/logging/Logger;Ljava/util/logging/Level;)V

    return-void
.end method

.method setManager(Ljava/util/logging/LogManager;)V
    .locals 13

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".level"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v11}, Ljava/util/logging/LogManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_0

    :try_start_0
    invoke-static {v10}, Ljava/util/logging/Level;->parse(Ljava/lang/String;)Ljava/util/logging/Level;

    move-result-object v11

    invoke-virtual {p1, p0, v11}, Ljava/util/logging/LogManager;->setLevelRecursively(Ljava/util/logging/Logger;Ljava/util/logging/Level;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v11, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_1

    const-string v4, "handlers"

    :goto_1
    invoke-virtual {p1, v4}, Ljava/util/logging/LogManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    const-string v11, ",|\\s"

    invoke-virtual {v3, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v8, v0

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v8, :cond_4

    aget-object v2, v0, v5

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_2

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :catch_0
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :cond_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".handlers"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_2
    :try_start_1
    invoke-static {v2}, Ljava/util/logging/LogManager;->getInstanceByClass(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/logging/Handler;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".level"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v11}, Ljava/util/logging/LogManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_3

    invoke-static {v9}, Ljava/util/logging/Level;->parse(Ljava/lang/String;)Ljava/util/logging/Level;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/util/logging/Handler;->setLevel(Ljava/util/logging/Level;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_3
    :goto_4
    iget-object v11, p0, Ljava/util/logging/Logger;->handlers:Ljava/util/List;

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :catch_1
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :catch_2
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Ljava/util/logging/Logger;->updateDalvikLogHandler()V

    return-void
.end method

.method public setParent(Ljava/util/logging/Logger;)V
    .locals 3

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "parent == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/logging/LogManager;->checkAccess()V

    invoke-virtual {v0, p0, p1}, Ljava/util/logging/LogManager;->setParent(Ljava/util/logging/Logger;Ljava/util/logging/Logger;)V

    return-void
.end method

.method public setUseParentHandlers(Z)V
    .locals 1

    iget-boolean v0, p0, Ljava/util/logging/Logger;->isNamed:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/logging/LogManager;->checkAccess()V

    :cond_0
    iput-boolean p1, p0, Ljava/util/logging/Logger;->notifyParentHandlers:Z

    invoke-virtual {p0}, Ljava/util/logging/Logger;->updateDalvikLogHandler()V

    return-void
.end method

.method public severe(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {p0, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    return-void
.end method

.method public throwing(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-direct {p0, v1}, Ljava/util/logging/Logger;->internalIsLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/util/logging/LogRecord;

    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    const-string v2, "THROW"

    invoke-direct {v0, v1, v2}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    iget-object v1, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setLoggerName(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/util/logging/LogRecord;->setThrown(Ljava/lang/Throwable;)V

    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->setResourceBundle(Ljava/util/logging/LogRecord;)V

    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    goto :goto_0
.end method

.method updateDalvikLogHandler()V
    .locals 8

    sget-object v4, Ljava/util/logging/Logger;->GENERAL_LOG_HANDLER:Ldalvik/system/DalvikLogHandler;

    iget-object v5, p0, Ljava/util/logging/Logger;->parent:Ljava/util/logging/Logger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-class v7, Ljava/util/logging/Logger;

    if-eq v6, v7, :cond_2

    :cond_0
    :goto_0
    iget-object v6, p0, Ljava/util/logging/Logger;->dalvikLogHandler:Ldalvik/system/DalvikLogHandler;

    if-ne v4, v6, :cond_4

    :cond_1
    return-void

    :cond_2
    if-nez v5, :cond_3

    iget-object v6, p0, Ljava/util/logging/Logger;->handlers:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/logging/Handler;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_0

    instance-of v6, v0, Ldalvik/system/DalvikLogHandler;

    if-eqz v6, :cond_0

    move-object v4, v0

    check-cast v4, Ldalvik/system/DalvikLogHandler;

    goto :goto_0

    :cond_3
    iget-object v6, p0, Ljava/util/logging/Logger;->handlers:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-boolean v6, p0, Ljava/util/logging/Logger;->notifyParentHandlers:Z

    if-eqz v6, :cond_0

    iget-object v4, v5, Ljava/util/logging/Logger;->dalvikLogHandler:Ldalvik/system/DalvikLogHandler;

    goto :goto_0

    :cond_4
    iput-object v4, p0, Ljava/util/logging/Logger;->dalvikLogHandler:Ldalvik/system/DalvikLogHandler;

    iget-object v6, p0, Ljava/util/logging/Logger;->children:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/logging/Logger;

    invoke-virtual {v3}, Ljava/util/logging/Logger;->updateDalvikLogHandler()V

    goto :goto_1
.end method

.method public warning(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {p0, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    return-void
.end method
