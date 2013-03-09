.class public Ltwitter4j/TwitterAPIMonitor;
.super Ljava/lang/Object;
.source "TwitterAPIMonitor.java"


# static fields
.field private static final SINGLETON:Ltwitter4j/TwitterAPIMonitor;

.field static class$twitter4j$TwitterAPIMonitor:Ljava/lang/Class;

.field private static final logger:Ltwitter4j/internal/logging/Logger;

.field private static final pattern:Ljava/util/regex/Pattern;


# instance fields
.field private final STATISTICS:Ltwitter4j/management/APIStatistics;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    .line 43
    sget-object v8, Ltwitter4j/TwitterAPIMonitor;->class$twitter4j$TwitterAPIMonitor:Ljava/lang/Class;

    if-nez v8, :cond_2

    const-string v8, "twitter4j.TwitterAPIMonitor"

    invoke-static {v8}, Ltwitter4j/TwitterAPIMonitor;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    sput-object v8, Ltwitter4j/TwitterAPIMonitor;->class$twitter4j$TwitterAPIMonitor:Ljava/lang/Class;

    :goto_0
    invoke-static {v8}, Ltwitter4j/internal/logging/Logger;->getLogger(Ljava/lang/Class;)Ltwitter4j/internal/logging/Logger;

    move-result-object v8

    sput-object v8, Ltwitter4j/TwitterAPIMonitor;->logger:Ltwitter4j/internal/logging/Logger;

    .line 46
    const-string v8, "https?:\\/\\/[^\\/]+\\/([a-zA-Z_\\.]*).*"

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8

    sput-object v8, Ltwitter4j/TwitterAPIMonitor;->pattern:Ljava/util/regex/Pattern;

    .line 49
    new-instance v8, Ltwitter4j/TwitterAPIMonitor;

    invoke-direct {v8}, Ltwitter4j/TwitterAPIMonitor;-><init>()V

    sput-object v8, Ltwitter4j/TwitterAPIMonitor;->SINGLETON:Ltwitter4j/TwitterAPIMonitor;

    .line 55
    const/4 v2, 0x0

    .line 57
    .local v2, isJDK14orEarlier:Z
    :try_start_0
    const-string v8, "java.specification.version"

    invoke-static {v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 58
    .local v7, versionStr:Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 59
    const-wide/high16 v8, 0x3ff8

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    cmpl-double v8, v8, v10

    if-lez v8, :cond_3

    const/4 v2, 0x1

    .line 61
    :cond_0
    :goto_1
    invoke-static {}, Ltwitter4j/conf/ConfigurationContext;->getInstance()Ltwitter4j/conf/Configuration;

    move-result-object v8

    invoke-interface {v8}, Ltwitter4j/conf/Configuration;->isDalvik()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 64
    const-string v8, "http.keepAlive"

    const-string v9, "false"

    invoke-static {v8, v9}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .end local v7           #versionStr:Ljava/lang/String;
    :cond_1
    :goto_2
    :try_start_1
    invoke-static {}, Ljava/lang/management/ManagementFactory;->getPlatformMBeanServer()Ljavax/management/MBeanServer;

    move-result-object v3

    .line 73
    .local v3, mbs:Ljavax/management/MBeanServer;
    new-instance v6, Ltwitter4j/management/APIStatistics;

    const/16 v8, 0x64

    invoke-direct {v6, v8}, Ltwitter4j/management/APIStatistics;-><init>(I)V

    .line 74
    .local v6, statsMBean:Ltwitter4j/management/APIStatistics;
    if-eqz v2, :cond_4

    .line 75
    new-instance v4, Ljavax/management/ObjectName;

    const-string v8, "twitter4j.mbean:type=APIStatistics"

    invoke-direct {v4, v8}, Ljavax/management/ObjectName;-><init>(Ljava/lang/String;)V

    .line 76
    .local v4, oName:Ljavax/management/ObjectName;
    invoke-interface {v3, v6, v4}, Ljavax/management/MBeanServer;->registerMBean(Ljava/lang/Object;Ljavax/management/ObjectName;)Ljavax/management/ObjectInstance;
    :try_end_1
    .catch Ljavax/management/InstanceAlreadyExistsException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/management/MBeanRegistrationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljavax/management/NotCompliantMBeanException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljavax/management/MalformedObjectNameException; {:try_start_1 .. :try_end_1} :catch_4

    .line 95
    .end local v3           #mbs:Ljavax/management/MBeanServer;
    .end local v4           #oName:Ljavax/management/ObjectName;
    .end local v6           #statsMBean:Ltwitter4j/management/APIStatistics;
    :goto_3
    return-void

    .line 43
    .end local v2           #isJDK14orEarlier:Z
    :cond_2
    sget-object v8, Ltwitter4j/TwitterAPIMonitor;->class$twitter4j$TwitterAPIMonitor:Ljava/lang/Class;

    goto :goto_0

    .line 59
    .restart local v2       #isJDK14orEarlier:Z
    .restart local v7       #versionStr:Ljava/lang/String;
    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 66
    .end local v7           #versionStr:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 68
    .local v1, ignore:Ljava/lang/SecurityException;
    const/4 v2, 0x1

    goto :goto_2

    .line 78
    .end local v1           #ignore:Ljava/lang/SecurityException;
    .restart local v3       #mbs:Ljavax/management/MBeanServer;
    .restart local v6       #statsMBean:Ltwitter4j/management/APIStatistics;
    :cond_4
    :try_start_2
    new-instance v4, Ljavax/management/ObjectName;

    const-string v8, "twitter4j.mbean:type=APIStatisticsOpenMBean"

    invoke-direct {v4, v8}, Ljavax/management/ObjectName;-><init>(Ljava/lang/String;)V

    .line 79
    .restart local v4       #oName:Ljavax/management/ObjectName;
    new-instance v5, Ltwitter4j/management/APIStatisticsOpenMBean;

    invoke-direct {v5, v6}, Ltwitter4j/management/APIStatisticsOpenMBean;-><init>(Ltwitter4j/management/APIStatistics;)V

    .line 80
    .local v5, openMBean:Ltwitter4j/management/APIStatisticsOpenMBean;
    invoke-interface {v3, v5, v4}, Ljavax/management/MBeanServer;->registerMBean(Ljava/lang/Object;Ljavax/management/ObjectName;)Ljavax/management/ObjectInstance;
    :try_end_2
    .catch Ljavax/management/InstanceAlreadyExistsException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljavax/management/MBeanRegistrationException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljavax/management/NotCompliantMBeanException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljavax/management/MalformedObjectNameException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_3

    .line 82
    .end local v3           #mbs:Ljavax/management/MBeanServer;
    .end local v4           #oName:Ljavax/management/ObjectName;
    .end local v5           #openMBean:Ltwitter4j/management/APIStatisticsOpenMBean;
    .end local v6           #statsMBean:Ltwitter4j/management/APIStatistics;
    :catch_1
    move-exception v0

    .line 83
    .local v0, e:Ljavax/management/InstanceAlreadyExistsException;
    invoke-virtual {v0}, Ljavax/management/InstanceAlreadyExistsException;->printStackTrace()V

    .line 84
    sget-object v8, Ltwitter4j/TwitterAPIMonitor;->logger:Ltwitter4j/internal/logging/Logger;

    invoke-virtual {v0}, Ljavax/management/InstanceAlreadyExistsException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ltwitter4j/internal/logging/Logger;->error(Ljava/lang/String;)V

    goto :goto_3

    .line 85
    .end local v0           #e:Ljavax/management/InstanceAlreadyExistsException;
    :catch_2
    move-exception v0

    .line 86
    .local v0, e:Ljavax/management/MBeanRegistrationException;
    invoke-virtual {v0}, Ljavax/management/MBeanRegistrationException;->printStackTrace()V

    .line 87
    sget-object v8, Ltwitter4j/TwitterAPIMonitor;->logger:Ltwitter4j/internal/logging/Logger;

    invoke-virtual {v0}, Ljavax/management/MBeanRegistrationException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ltwitter4j/internal/logging/Logger;->error(Ljava/lang/String;)V

    goto :goto_3

    .line 88
    .end local v0           #e:Ljavax/management/MBeanRegistrationException;
    :catch_3
    move-exception v0

    .line 89
    .local v0, e:Ljavax/management/NotCompliantMBeanException;
    invoke-virtual {v0}, Ljavax/management/NotCompliantMBeanException;->printStackTrace()V

    .line 90
    sget-object v8, Ltwitter4j/TwitterAPIMonitor;->logger:Ltwitter4j/internal/logging/Logger;

    invoke-virtual {v0}, Ljavax/management/NotCompliantMBeanException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ltwitter4j/internal/logging/Logger;->error(Ljava/lang/String;)V

    goto :goto_3

    .line 91
    .end local v0           #e:Ljavax/management/NotCompliantMBeanException;
    :catch_4
    move-exception v0

    .line 92
    .local v0, e:Ljavax/management/MalformedObjectNameException;
    invoke-virtual {v0}, Ljavax/management/MalformedObjectNameException;->printStackTrace()V

    .line 93
    sget-object v8, Ltwitter4j/TwitterAPIMonitor;->logger:Ltwitter4j/internal/logging/Logger;

    invoke-virtual {v0}, Ljavax/management/MalformedObjectNameException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ltwitter4j/internal/logging/Logger;->error(Ljava/lang/String;)V

    goto :goto_3
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ltwitter4j/management/APIStatistics;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ltwitter4j/management/APIStatistics;-><init>(I)V

    iput-object v0, p0, Ltwitter4j/TwitterAPIMonitor;->STATISTICS:Ltwitter4j/management/APIStatistics;

    .line 101
    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .parameter "x0"

    .prologue
    .line 43
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    .local v0, x1:Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    throw v1
.end method

.method public static getInstance()Ltwitter4j/TwitterAPIMonitor;
    .locals 1

    .prologue
    .line 104
    sget-object v0, Ltwitter4j/TwitterAPIMonitor;->SINGLETON:Ltwitter4j/TwitterAPIMonitor;

    return-object v0
.end method


# virtual methods
.method public getStatistics()Ltwitter4j/management/APIStatisticsMBean;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Ltwitter4j/TwitterAPIMonitor;->STATISTICS:Ltwitter4j/management/APIStatistics;

    return-object v0
.end method

.method methodCalled(Ljava/lang/String;JZ)V
    .locals 3
    .parameter "twitterUrl"
    .parameter "elapsedTime"
    .parameter "success"

    .prologue
    .line 112
    sget-object v2, Ltwitter4j/TwitterAPIMonitor;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 113
    .local v0, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 114
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    .line 115
    .local v1, method:Ljava/lang/String;
    iget-object v2, p0, Ltwitter4j/TwitterAPIMonitor;->STATISTICS:Ltwitter4j/management/APIStatistics;

    invoke-virtual {v2, v1, p2, p3, p4}, Ltwitter4j/management/APIStatistics;->methodCalled(Ljava/lang/String;JZ)V

    .line 117
    .end local v1           #method:Ljava/lang/String;
    :cond_0
    return-void
.end method
