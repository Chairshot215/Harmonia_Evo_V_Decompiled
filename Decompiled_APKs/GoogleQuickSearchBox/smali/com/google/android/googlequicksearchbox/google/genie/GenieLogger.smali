.class public Lcom/google/android/googlequicksearchbox/google/genie/GenieLogger;
.super Ljava/lang/Object;
.source "GenieLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/googlequicksearchbox/google/genie/GenieLogger$LoggingHandler;
    }
.end annotation


# instance fields
.field private final mContext:Lcom/google/android/googlequicksearchbox/QsbContext;

.field private final mHandler:Lcom/google/android/googlequicksearchbox/google/genie/GenieLogger$LoggingHandler;

.field private final mSource:Lcom/google/android/googlequicksearchbox/google/genie/GenieAllSource;

.field private final mSuggestionFactory:Lcom/google/android/googlequicksearchbox/google/genie/GenieSuggestionFactory;


# direct methods
.method public constructor <init>(Lcom/google/android/googlequicksearchbox/QsbContext;Lcom/google/android/googlequicksearchbox/google/genie/GenieSuggestionFactory;Lcom/google/android/googlequicksearchbox/google/genie/GenieAllSource;Lcom/google/android/googlequicksearchbox/util/HttpHelper;)V
    .locals 3
    .parameter "context"
    .parameter "suggestionFactory"
    .parameter "source"
    .parameter "httpHelper"

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/google/genie/GenieLogger;->mContext:Lcom/google/android/googlequicksearchbox/QsbContext;

    .line 56
    iput-object p2, p0, Lcom/google/android/googlequicksearchbox/google/genie/GenieLogger;->mSuggestionFactory:Lcom/google/android/googlequicksearchbox/google/genie/GenieSuggestionFactory;

    .line 57
    iput-object p3, p0, Lcom/google/android/googlequicksearchbox/google/genie/GenieLogger;->mSource:Lcom/google/android/googlequicksearchbox/google/genie/GenieAllSource;

    .line 59
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "GenieLogger"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 60
    .local v0, t:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 61
    new-instance v1, Lcom/google/android/googlequicksearchbox/google/genie/GenieLogger$LoggingHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, p4, v2}, Lcom/google/android/googlequicksearchbox/google/genie/GenieLogger$LoggingHandler;-><init>(Lcom/google/android/googlequicksearchbox/google/genie/GenieLogger;Lcom/google/android/googlequicksearchbox/util/HttpHelper;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/google/android/googlequicksearchbox/google/genie/GenieLogger;->mHandler:Lcom/google/android/googlequicksearchbox/google/genie/GenieLogger$LoggingHandler;

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/googlequicksearchbox/google/genie/GenieLogger;)Lcom/google/android/googlequicksearchbox/QsbContext;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/genie/GenieLogger;->mContext:Lcom/google/android/googlequicksearchbox/QsbContext;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/googlequicksearchbox/google/genie/GenieLogger;)Lcom/google/android/googlequicksearchbox/google/genie/GenieAllSource;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/genie/GenieLogger;->mSource:Lcom/google/android/googlequicksearchbox/google/genie/GenieAllSource;

    return-object v0
.end method


# virtual methods
.method public log(Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;I)V
    .locals 1
    .parameter "logData"
    .parameter "trafficTagFlags"

    .prologue
    .line 69
    if-nez p1, :cond_0

    .line 73
    :goto_0
    return-void

    .line 71
    :cond_0
    invoke-virtual {p1, p2}, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->putTrafficTagFlags(I)V

    .line 72
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/genie/GenieLogger;->mHandler:Lcom/google/android/googlequicksearchbox/google/genie/GenieLogger$LoggingHandler;

    invoke-virtual {v0, p1}, Lcom/google/android/googlequicksearchbox/google/genie/GenieLogger$LoggingHandler;->sendLogMessage(Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;)V

    goto :goto_0
.end method

.method public logClick(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .parameter "extraData"
    .parameter "query"
    .parameter "trafficTagFlags"

    .prologue
    .line 82
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    :goto_0
    return-void

    .line 86
    :cond_0
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/genie/GenieLogger;->mSuggestionFactory:Lcom/google/android/googlequicksearchbox/google/genie/GenieSuggestionFactory;

    invoke-virtual {v1, p1, p2}, Lcom/google/android/googlequicksearchbox/google/genie/GenieSuggestionFactory;->fromExtraData(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;

    move-result-object v0

    .line 87
    .local v0, logData:Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;
    invoke-virtual {p0, v0, p3}, Lcom/google/android/googlequicksearchbox/google/genie/GenieLogger;->log(Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;I)V

    goto :goto_0
.end method
