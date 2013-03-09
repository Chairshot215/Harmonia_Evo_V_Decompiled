.class public Lcom/htc/cslib/util/LogUtil;
.super Ljava/lang/Object;
.source "LogUtil.java"


# static fields
.field private static _handlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private static _notificationLog:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/htc/cslib/util/LogUtil;->_handlers:Ljava/util/ArrayList;

    .line 75
    const-string v0, ""

    sput-object v0, Lcom/htc/cslib/util/LogUtil;->_notificationLog:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Console(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 93
    sget-object v0, Lcom/htc/cslib/util/LogUtil;->_handlers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    :goto_0
    return-void

    .line 99
    :cond_0
    invoke-static {p0}, Lcom/htc/cslib/util/LogUtil;->_appendToLog(Ljava/lang/String;)V

    .line 101
    const-string v0, "CSENGINE Log"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static HasIntentEntries()Z
    .locals 1

    .prologue
    .line 177
    sget-object v0, Lcom/htc/cslib/util/LogUtil;->_notificationLog:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static _appendToLog(Ljava/lang/String;)V
    .locals 7
    .parameter "append"

    .prologue
    .line 113
    const-string v3, "%tT %s\n"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, ""

    invoke-static {v6}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, formatted:Ljava/lang/String;
    sget-object v3, Lcom/htc/cslib/util/LogUtil;->_notificationLog:Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 117
    .local v1, fulltext:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 119
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 121
    .local v2, len:I
    const/16 v3, 0x2710

    if-le v2, v3, :cond_0

    .line 125
    add-int/lit16 v3, v2, -0x2710

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 129
    :cond_0
    sput-object v1, Lcom/htc/cslib/util/LogUtil;->_notificationLog:Ljava/lang/CharSequence;

    .line 131
    invoke-static {}, Lcom/htc/cslib/util/LogUtil;->fireEvent()V

    .line 133
    return-void
.end method

.method public static declared-synchronized addHandler(Landroid/os/Handler;)V
    .locals 2
    .parameter "h"

    .prologue
    .line 153
    const-class v1, Lcom/htc/cslib/util/LogUtil;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/htc/cslib/util/LogUtil;->_handlers:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    monitor-exit v1

    return-void

    .line 153
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized fireEvent()V
    .locals 4

    .prologue
    .line 139
    const-class v2, Lcom/htc/cslib/util/LogUtil;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/htc/cslib/util/LogUtil;->_handlers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 141
    .local v0, i:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 143
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 139
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 147
    :cond_0
    monitor-exit v2

    return-void
.end method

.method public static getLog()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 169
    sget-object v0, Lcom/htc/cslib/util/LogUtil;->_notificationLog:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public static declared-synchronized removeHandler(Landroid/os/Handler;)V
    .locals 2
    .parameter "h"

    .prologue
    .line 161
    const-class v1, Lcom/htc/cslib/util/LogUtil;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/htc/cslib/util/LogUtil;->_handlers:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    monitor-exit v1

    return-void

    .line 161
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
