.class public Lcom/google/android/finsky/analytics/DfeAnalytics;
.super Ljava/lang/Object;
.source "DfeAnalytics.java"

# interfaces
.implements Lcom/google/android/finsky/analytics/Analytics;


# static fields
.field private static final DISPATCH_PERIOD_MS:I

.field private static final MAX_LOGS_BEFORE_FLUSH:I


# instance fields
.field private mDfeApi:Lcom/google/android/finsky/api/DfeApi;

.field private final mHandler:Landroid/os/Handler;

.field private final mLogFlusher:Ljava/lang/Runnable;

.field private mPendingEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Log$ClickLogEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/google/android/finsky/config/G;->logsDispatchIntervalSeconds:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    sput v0, Lcom/google/android/finsky/analytics/DfeAnalytics;->DISPATCH_PERIOD_MS:I

    .line 31
    sget-object v0, Lcom/google/android/finsky/config/G;->maxLogQueueSizeBeforeFlush:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/google/android/finsky/analytics/DfeAnalytics;->MAX_LOGS_BEFORE_FLUSH:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/google/android/finsky/api/DfeApi;)V
    .locals 1
    .parameter "handler"
    .parameter "dfeApi"

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/analytics/DfeAnalytics;->mPendingEvents:Ljava/util/List;

    .line 168
    new-instance v0, Lcom/google/android/finsky/analytics/DfeAnalytics$3;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/analytics/DfeAnalytics$3;-><init>(Lcom/google/android/finsky/analytics/DfeAnalytics;)V

    iput-object v0, p0, Lcom/google/android/finsky/analytics/DfeAnalytics;->mLogFlusher:Ljava/lang/Runnable;

    .line 43
    iput-object p1, p0, Lcom/google/android/finsky/analytics/DfeAnalytics;->mHandler:Landroid/os/Handler;

    .line 44
    iput-object p2, p0, Lcom/google/android/finsky/analytics/DfeAnalytics;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/analytics/DfeAnalytics;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/google/android/finsky/analytics/DfeAnalytics;->flushLogs()V

    return-void
.end method

.method private flushLogs()V
    .locals 7

    .prologue
    .line 131
    iget-object v6, p0, Lcom/google/android/finsky/analytics/DfeAnalytics;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    if-nez v6, :cond_1

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    iget-object v6, p0, Lcom/google/android/finsky/analytics/DfeAnalytics;->mPendingEvents:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    .line 136
    .local v0, currentLogCount:I
    if-eqz v0, :cond_0

    .line 140
    new-instance v4, Lcom/google/android/finsky/remoting/protos/Log$LogRequest;

    invoke-direct {v4}, Lcom/google/android/finsky/remoting/protos/Log$LogRequest;-><init>()V

    .line 142
    .local v4, request:Lcom/google/android/finsky/remoting/protos/Log$LogRequest;
    iget-object v6, p0, Lcom/google/android/finsky/analytics/DfeAnalytics;->mPendingEvents:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/remoting/protos/Log$ClickLogEvent;

    .line 143
    .local v2, event:Lcom/google/android/finsky/remoting/protos/Log$ClickLogEvent;
    invoke-virtual {v4, v2}, Lcom/google/android/finsky/remoting/protos/Log$LogRequest;->addClickEvent(Lcom/google/android/finsky/remoting/protos/Log$ClickLogEvent;)Lcom/google/android/finsky/remoting/protos/Log$LogRequest;

    goto :goto_1

    .line 145
    .end local v2           #event:Lcom/google/android/finsky/remoting/protos/Log$ClickLogEvent;
    :cond_2
    iget-object v6, p0, Lcom/google/android/finsky/analytics/DfeAnalytics;->mPendingEvents:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 147
    new-instance v5, Lcom/google/android/finsky/analytics/DfeAnalytics$1;

    invoke-direct {v5, p0, v0}, Lcom/google/android/finsky/analytics/DfeAnalytics$1;-><init>(Lcom/google/android/finsky/analytics/DfeAnalytics;I)V

    .line 155
    .local v5, responseListener:Lcom/android/volley/Response$Listener;,"Lcom/android/volley/Response$Listener<Lcom/google/android/finsky/remoting/protos/Log$LogResponse;>;"
    new-instance v1, Lcom/google/android/finsky/analytics/DfeAnalytics$2;

    invoke-direct {v1, p0, v0}, Lcom/google/android/finsky/analytics/DfeAnalytics$2;-><init>(Lcom/google/android/finsky/analytics/DfeAnalytics;I)V

    .line 161
    .local v1, errorListener:Lcom/android/volley/Response$ErrorListener;
    iget-object v6, p0, Lcom/google/android/finsky/analytics/DfeAnalytics;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-interface {v6, v4, v5, v1}, Lcom/google/android/finsky/api/DfeApi;->log(Lcom/google/android/finsky/remoting/protos/Log$LogRequest;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    goto :goto_0
.end method

.method private static makeClickLogEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Log$ClickLogEvent;
    .locals 3
    .parameter "referrerUrl"
    .parameter "referrerListCookie"
    .parameter "currentPageUrl"
    .parameter "listCookie"

    .prologue
    .line 87
    new-instance v0, Lcom/google/android/finsky/remoting/protos/Log$ClickLogEvent;

    invoke-direct {v0}, Lcom/google/android/finsky/remoting/protos/Log$ClickLogEvent;-><init>()V

    .line 88
    .local v0, cle:Lcom/google/android/finsky/remoting/protos/Log$ClickLogEvent;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/remoting/protos/Log$ClickLogEvent;->setEventTime(J)Lcom/google/android/finsky/remoting/protos/Log$ClickLogEvent;

    .line 89
    if-eqz p0, :cond_0

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/remoting/protos/Log$ClickLogEvent;->setReferrerUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Log$ClickLogEvent;

    .line 90
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/remoting/protos/Log$ClickLogEvent;->setReferrerListId(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Log$ClickLogEvent;

    .line 91
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {v0, p2}, Lcom/google/android/finsky/remoting/protos/Log$ClickLogEvent;->setUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Log$ClickLogEvent;

    .line 92
    :cond_2
    if-eqz p3, :cond_3

    invoke-virtual {v0, p3}, Lcom/google/android/finsky/remoting/protos/Log$ClickLogEvent;->setListId(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Log$ClickLogEvent;

    .line 93
    :cond_3
    return-object v0
.end method

.method private scheduleFlush(Z)V
    .locals 4
    .parameter "forceNow"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/android/finsky/analytics/DfeAnalytics;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/finsky/analytics/DfeAnalytics;->mLogFlusher:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 102
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/analytics/DfeAnalytics;->mPendingEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sget v1, Lcom/google/android/finsky/analytics/DfeAnalytics;->MAX_LOGS_BEFORE_FLUSH:I

    if-lt v0, v1, :cond_1

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/analytics/DfeAnalytics;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/finsky/analytics/DfeAnalytics;->mLogFlusher:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 107
    :goto_0
    return-void

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/analytics/DfeAnalytics;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/finsky/analytics/DfeAnalytics;->mLogFlusher:Ljava/lang/Runnable;

    sget v2, Lcom/google/android/finsky/analytics/DfeAnalytics;->DISPATCH_PERIOD_MS:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method


# virtual methods
.method public logListViewOnPage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "referrerUrl"
    .parameter "referrerListCookie"
    .parameter "currentPageUrl"
    .parameter "listCookie"

    .prologue
    const/4 v3, 0x0

    .line 63
    sget-boolean v0, Lcom/google/android/finsky/utils/FinskyLog;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 64
    const-string v0, "Logging list view: referrerUrl=[%s], referrerCookie=[%s], currentPageUrl=[%s], listCookie=[%s]"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const/4 v2, 0x3

    aput-object p4, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/analytics/DfeAnalytics;->mPendingEvents:Ljava/util/List;

    invoke-static {p1, p2, p3, p4}, Lcom/google/android/finsky/analytics/DfeAnalytics;->makeClickLogEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Log$ClickLogEvent;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    invoke-direct {p0, v3}, Lcom/google/android/finsky/analytics/DfeAnalytics;->scheduleFlush(Z)V

    .line 71
    return-void
.end method

.method public logPageView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "referrerUrl"
    .parameter "referrerListCookie"
    .parameter "currentPageUrl"

    .prologue
    const/4 v3, 0x0

    .line 49
    sget-boolean v0, Lcom/google/android/finsky/utils/FinskyLog;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 50
    const-string v0, "Logging page view: referrerUrl=[%s], referrerCookie=[%s], currentPageUrl=[%s]"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/analytics/DfeAnalytics;->mPendingEvents:Ljava/util/List;

    const/4 v1, 0x0

    invoke-static {p1, p2, p3, v1}, Lcom/google/android/finsky/analytics/DfeAnalytics;->makeClickLogEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Log$ClickLogEvent;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    invoke-direct {p0, v3}, Lcom/google/android/finsky/analytics/DfeAnalytics;->scheduleFlush(Z)V

    .line 58
    return-void
.end method

.method public logTagAndPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "packageName"
    .parameter "error"

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/finsky/analytics/DfeAnalytics;->logTagAndPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public logTagAndPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "tag"
    .parameter "packageName"
    .parameter "error"
    .parameter "reason"

    .prologue
    const/4 v3, 0x0

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?doc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez p3, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez p4, :cond_1

    const-string v0, ""

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v3, v0}, Lcom/google/android/finsky/analytics/DfeAnalytics;->logPageView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    return-void

    .line 80
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&error="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&reason="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p4}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/android/finsky/analytics/DfeAnalytics;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    .line 117
    .local v0, oldApi:Lcom/google/android/finsky/api/DfeApi;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getDfeApi()Lcom/google/android/finsky/api/DfeApi;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/analytics/DfeAnalytics;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    .line 118
    if-eqz v0, :cond_0

    .line 122
    iget-object v1, p0, Lcom/google/android/finsky/analytics/DfeAnalytics;->mPendingEvents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 127
    :goto_0
    return-void

    .line 125
    :cond_0
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/android/finsky/analytics/DfeAnalytics;->scheduleFlush(Z)V

    goto :goto_0
.end method
