.class public Ljava/util/logging/LogManager;
.super Ljava/lang/Object;
.source "LogManager.java"


# static fields
.field public static final LOGGING_MXBEAN_NAME:Ljava/lang/String; = "java.util.logging:type=Logging"

.field static manager:Ljava/util/logging/LogManager;

.field private static final perm:Ljava/util/logging/LoggingPermission;


# instance fields
.field private listeners:Ljava/beans/PropertyChangeSupport;

.field private loggers:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/logging/Logger;",
            ">;"
        }
    .end annotation
.end field

.field private props:Ljava/util/Properties;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x0

    new-instance v3, Ljava/util/logging/LoggingPermission;

    const-string v4, "control"

    invoke-direct {v3, v4, v5}, Ljava/util/logging/LoggingPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Ljava/util/logging/LogManager;->perm:Ljava/util/logging/LoggingPermission;

    const-string v3, "java.util.logging.manager"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/util/logging/LogManager;->getInstanceByClass(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/logging/LogManager;

    sput-object v3, Ljava/util/logging/LogManager;->manager:Ljava/util/logging/LogManager;

    :cond_0
    sget-object v3, Ljava/util/logging/LogManager;->manager:Ljava/util/logging/LogManager;

    if-nez v3, :cond_1

    new-instance v3, Ljava/util/logging/LogManager;

    invoke-direct {v3}, Ljava/util/logging/LogManager;-><init>()V

    sput-object v3, Ljava/util/logging/LogManager;->manager:Ljava/util/logging/LogManager;

    :cond_1
    :try_start_0
    sget-object v3, Ljava/util/logging/LogManager;->manager:Ljava/util/logging/LogManager;

    invoke-virtual {v3}, Ljava/util/logging/LogManager;->readConfiguration()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v2, Ljava/util/logging/Logger;

    const-string v3, ""

    invoke-direct {v2, v3, v5}, Ljava/util/logging/Logger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    sget-object v3, Ljava/util/logging/Logger;->global:Ljava/util/logging/Logger;

    invoke-virtual {v3, v2}, Ljava/util/logging/Logger;->setParent(Ljava/util/logging/Logger;)V

    sget-object v3, Ljava/util/logging/LogManager;->manager:Ljava/util/logging/LogManager;

    invoke-virtual {v3, v2}, Ljava/util/logging/LogManager;->addLogger(Ljava/util/logging/Logger;)Z

    sget-object v3, Ljava/util/logging/LogManager;->manager:Ljava/util/logging/LogManager;

    sget-object v4, Ljava/util/logging/Logger;->global:Ljava/util/logging/Logger;

    invoke-virtual {v3, v4}, Ljava/util/logging/LogManager;->addLogger(Ljava/util/logging/Logger;)Z

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected constructor <init>()V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Ljava/util/logging/LogManager;->loggers:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Ljava/util/logging/LogManager;->props:Ljava/util/Properties;

    new-instance v0, Ljava/beans/PropertyChangeSupport;

    invoke-direct {v0, p0}, Ljava/beans/PropertyChangeSupport;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Ljava/util/logging/LogManager;->listeners:Ljava/beans/PropertyChangeSupport;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    new-instance v1, Ljava/util/logging/LogManager$1;

    invoke-direct {v1, p0}, Ljava/util/logging/LogManager$1;-><init>(Ljava/util/logging/LogManager;)V

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->addShutdownHook(Ljava/lang/Thread;)V

    return-void
.end method

.method private addToFamilyTree(Ljava/util/logging/Logger;Ljava/lang/String;)V
    .locals 12

    const/16 v11, 0x2e

    const/4 v6, 0x0

    move-object v7, p2

    :cond_0
    invoke-virtual {v7, v11}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    const/4 v9, -0x1

    if-eq v3, v9, :cond_1

    const/4 v9, 0x0

    invoke-virtual {v7, v9, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    iget-object v9, p0, Ljava/util/logging/LogManager;->loggers:Ljava/util/Hashtable;

    invoke-virtual {v9, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/logging/Logger;

    if-eqz v6, :cond_5

    invoke-virtual {p0, p1, v6}, Ljava/util/logging/LogManager;->setParent(Ljava/util/logging/Logger;Ljava/util/logging/Logger;)V

    :cond_1
    :goto_0
    if-nez v6, :cond_2

    iget-object v9, p0, Ljava/util/logging/LogManager;->loggers:Ljava/util/Hashtable;

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/logging/Logger;

    if-eqz v6, :cond_2

    invoke-virtual {p0, p1, v6}, Ljava/util/logging/LogManager;->setParent(Ljava/util/logging/Logger;Ljava/util/logging/Logger;)V

    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v9, p0, Ljava/util/logging/LogManager;->loggers:Ljava/util/Hashtable;

    invoke-virtual {v9}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/logging/Logger;

    invoke-virtual {v1}, Ljava/util/logging/Logger;->getParent()Ljava/util/logging/Logger;

    move-result-object v5

    if-ne v6, v5, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v1}, Ljava/util/logging/Logger;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    :cond_4
    move-object v8, p1

    invoke-virtual {v1, v8}, Ljava/util/logging/Logger;->setParent(Ljava/util/logging/Logger;)V

    if-eqz v5, :cond_3

    iget-object v9, v5, Ljava/util/logging/Logger;->children:Ljava/util/List;

    invoke-interface {v9, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".level"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Ljava/util/logging/LogManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".handlers"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Ljava/util/logging/LogManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_0

    :cond_6
    invoke-static {v7}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v6

    invoke-virtual {p0, p1, v6}, Ljava/util/logging/LogManager;->setParent(Ljava/util/logging/Logger;Ljava/util/logging/Logger;)V

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method static getInstanceByClass(Ljava/lang/String;)Ljava/lang/Object;
    .locals 6

    :try_start_0
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_0
    return-object v3

    :catch_0
    move-exception v1

    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    goto :goto_0

    :catch_1
    move-exception v2

    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Loading class \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' failed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static getLogManager()Ljava/util/logging/LogManager;
    .locals 1

    sget-object v0, Ljava/util/logging/LogManager;->manager:Ljava/util/logging/LogManager;

    return-object v0
.end method

.method public static getLoggingMXBean()Ljava/util/logging/LoggingMXBean;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method private declared-synchronized readConfigurationImpl(Ljava/io/InputStream;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/util/logging/LogManager;->reset()V

    iget-object v8, p0, Ljava/util/logging/LogManager;->props:Ljava/util/Properties;

    invoke-virtual {v8, p1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    iget-object v8, p0, Ljava/util/logging/LogManager;->loggers:Ljava/util/Hashtable;

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/logging/Logger;

    if-eqz v6, :cond_0

    invoke-virtual {v6, p0}, Ljava/util/logging/Logger;->setManager(Ljava/util/logging/LogManager;)V

    :cond_0
    iget-object v8, p0, Ljava/util/logging/LogManager;->props:Ljava/util/Properties;

    const-string v9, "config"

    invoke-virtual {v8, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v7, Ljava/util/StringTokenizer;

    const-string v8, " "

    invoke-direct {v7, v2, v8}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/logging/LogManager;->getInstanceByClass(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    :cond_1
    :try_start_1
    iget-object v8, p0, Ljava/util/logging/LogManager;->loggers:Ljava/util/Hashtable;

    invoke-virtual {v8}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/logging/Logger;

    iget-object v8, p0, Ljava/util/logging/LogManager;->props:Ljava/util/Properties;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/util/logging/Logger;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".level"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-static {v5}, Ljava/util/logging/Level;->parse(Ljava/lang/String;)Ljava/util/logging/Level;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    goto :goto_1

    :cond_3
    iget-object v8, p0, Ljava/util/logging/LogManager;->listeners:Ljava/beans/PropertyChangeSupport;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method


# virtual methods
.method public declared-synchronized addLogger(Ljava/util/logging/Logger;)Z
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/util/logging/Logger;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ljava/util/logging/LogManager;->loggers:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    invoke-direct {p0, p1, v0}, Ljava/util/logging/LogManager;->addToFamilyTree(Ljava/util/logging/Logger;Ljava/lang/String;)V

    iget-object v1, p0, Ljava/util/logging/LogManager;->loggers:Ljava/util/Hashtable;

    invoke-virtual {v1, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, p0}, Ljava/util/logging/Logger;->setManager(Ljava/util/logging/LogManager;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)V
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-virtual {p0}, Ljava/util/logging/LogManager;->checkAccess()V

    iget-object v0, p0, Ljava/util/logging/LogManager;->listeners:Ljava/beans/PropertyChangeSupport;

    invoke-virtual {v0, p1}, Ljava/beans/PropertyChangeSupport;->addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    return-void
.end method

.method public checkAccess()V
    .locals 0

    return-void
.end method

.method public declared-synchronized getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljava/util/logging/LogManager;->loggers:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/logging/Logger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLoggerNames()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljava/util/logging/LogManager;->loggers:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getOrCreate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/logging/Logger;
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/util/logging/LogManager;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/logging/Logger;

    invoke-direct {v0, p1, p2}, Ljava/util/logging/Logger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/logging/LogManager;->addLogger(Ljava/util/logging/Logger;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/util/logging/LogManager;->props:Ljava/util/Properties;

    invoke-virtual {v0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readConfiguration()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v5, "java.util.logging.config.class"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/util/logging/LogManager;->getInstanceByClass(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_3

    :cond_0
    const-string v5, "java.util.logging.config.file"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "java.home"

    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "lib"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "logging.properties"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v4

    :cond_2
    :try_start_1
    new-instance v5, Ljava/io/BufferedInputStream;

    invoke-direct {v5, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0, v5}, Ljava/util/logging/LogManager;->readConfiguration(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    :cond_3
    return-void

    :catch_0
    move-exception v2

    :try_start_2
    const-class v5, Ljava/util/logging/LogManager;

    const-string v6, "logging.properties"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    if-nez v3, :cond_2

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v5

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v5
.end method

.method public readConfiguration(Ljava/io/InputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/logging/LogManager;->checkAccess()V

    invoke-direct {p0, p1}, Ljava/util/logging/LogManager;->readConfigurationImpl(Ljava/io/InputStream;)V

    return-void
.end method

.method public removePropertyChangeListener(Ljava/beans/PropertyChangeListener;)V
    .locals 1

    invoke-virtual {p0}, Ljava/util/logging/LogManager;->checkAccess()V

    iget-object v0, p0, Ljava/util/logging/LogManager;->listeners:Ljava/beans/PropertyChangeSupport;

    invoke-virtual {v0, p1}, Ljava/beans/PropertyChangeSupport;->removePropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    return-void
.end method

.method public declared-synchronized reset()V
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/util/logging/LogManager;->checkAccess()V

    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    iput-object v4, p0, Ljava/util/logging/LogManager;->props:Ljava/util/Properties;

    invoke-virtual {p0}, Ljava/util/logging/LogManager;->getLoggerNames()Ljava/util/Enumeration;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/util/logging/LogManager;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/logging/Logger;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    :cond_1
    :try_start_1
    iget-object v4, p0, Ljava/util/logging/LogManager;->loggers:Ljava/util/Hashtable;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/logging/Logger;

    if-eqz v3, :cond_2

    sget-object v4, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit p0

    return-void
.end method

.method declared-synchronized setLevelRecursively(Ljava/util/logging/Logger;Ljava/util/logging/Level;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget v2, p1, Ljava/util/logging/Logger;->levelIntVal:I

    iput-object p2, p1, Ljava/util/logging/Logger;->levelObjVal:Ljava/util/logging/Level;

    if-nez p2, :cond_2

    iget-object v3, p1, Ljava/util/logging/Logger;->parent:Ljava/util/logging/Logger;

    if-eqz v3, :cond_1

    iget-object v3, p1, Ljava/util/logging/Logger;->parent:Ljava/util/logging/Logger;

    iget v3, v3, Ljava/util/logging/Logger;->levelIntVal:I

    :goto_0
    iput v3, p1, Ljava/util/logging/Logger;->levelIntVal:I

    :goto_1
    iget v3, p1, Ljava/util/logging/Logger;->levelIntVal:I

    if-eq v2, v3, :cond_3

    iget-object v3, p1, Ljava/util/logging/Logger;->children:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/logging/Logger;

    iget-object v3, v0, Ljava/util/logging/Logger;->levelObjVal:Ljava/util/logging/Level;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Ljava/util/logging/LogManager;->setLevelRecursively(Ljava/util/logging/Logger;Ljava/util/logging/Level;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_1
    :try_start_1
    sget-object v3, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v3}, Ljava/util/logging/Level;->intValue()I

    move-result v3

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Ljava/util/logging/Level;->intValue()I

    move-result v3

    iput v3, p1, Ljava/util/logging/Logger;->levelIntVal:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_3
    monitor-exit p0

    return-void
.end method

.method declared-synchronized setParent(Ljava/util/logging/Logger;Ljava/util/logging/Logger;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p2, p1, Ljava/util/logging/Logger;->parent:Ljava/util/logging/Logger;

    iget-object v0, p1, Ljava/util/logging/Logger;->levelObjVal:Ljava/util/logging/Level;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/util/logging/LogManager;->setLevelRecursively(Ljava/util/logging/Logger;Ljava/util/logging/Level;)V

    :cond_0
    iget-object v0, p2, Ljava/util/logging/Logger;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Ljava/util/logging/Logger;->updateDalvikLogHandler()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
