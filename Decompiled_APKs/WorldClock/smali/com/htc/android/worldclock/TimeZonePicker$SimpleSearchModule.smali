.class public Lcom/htc/android/worldclock/TimeZonePicker$SimpleSearchModule;
.super Ljava/lang/Object;
.source "TimeZonePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/worldclock/TimeZonePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SimpleSearchModule"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/worldclock/TimeZonePicker$SimpleSearchModule$SearchHandler;
    }
.end annotation


# static fields
.field static final MSG_DESTROY:I = 0x3

.field static final MSG_ONRESUME:I = 0x4

.field static final MSG_SEARCH:I = 0x1

.field static final MSG_SEARCH_COMPLETE:I = 0x2


# instance fields
.field mSearchHandler:Landroid/os/Handler;

.field mSearchThread:Landroid/os/HandlerThread;

.field final synthetic this$0:Lcom/htc/android/worldclock/TimeZonePicker;


# direct methods
.method public constructor <init>(Lcom/htc/android/worldclock/TimeZonePicker;)V
    .locals 3
    .parameter

    .prologue
    .line 545
    iput-object p1, p0, Lcom/htc/android/worldclock/TimeZonePicker$SimpleSearchModule;->this$0:Lcom/htc/android/worldclock/TimeZonePicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 546
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 548
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SimpleSearchThread"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/htc/android/worldclock/TimeZonePicker$SimpleSearchModule;->mSearchThread:Landroid/os/HandlerThread;

    .line 549
    iget-object v0, p0, Lcom/htc/android/worldclock/TimeZonePicker$SimpleSearchModule;->mSearchThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 550
    new-instance v0, Lcom/htc/android/worldclock/TimeZonePicker$SimpleSearchModule$SearchHandler;

    iget-object v1, p0, Lcom/htc/android/worldclock/TimeZonePicker$SimpleSearchModule;->mSearchThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/android/worldclock/TimeZonePicker$SimpleSearchModule$SearchHandler;-><init>(Lcom/htc/android/worldclock/TimeZonePicker$SimpleSearchModule;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/htc/android/worldclock/TimeZonePicker$SimpleSearchModule;->mSearchHandler:Landroid/os/Handler;

    .line 551
    return-void
.end method

.method static synthetic access$1100(Lcom/htc/android/worldclock/TimeZonePicker$SimpleSearchModule;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 536
    invoke-direct {p0, p1}, Lcom/htc/android/worldclock/TimeZonePicker$SimpleSearchModule;->coreSearch(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private coreSearch(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2
    .parameter "pattern"

    .prologue
    .line 599
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 600
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/htc/android/worldclock/TimeZonePicker$SimpleSearchModule;->this$0:Lcom/htc/android/worldclock/TimeZonePicker;

    invoke-virtual {v0}, Lcom/htc/android/worldclock/TimeZonePicker;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/htc/consts/WeatherConsts$LOCATION_LIST_COLUMN_NAME;->name:Lcom/htc/consts/WeatherConsts$LOCATION_LIST_COLUMN_NAME;

    invoke-virtual {v1}, Lcom/htc/consts/WeatherConsts$LOCATION_LIST_COLUMN_NAME;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/htc/util/weather/WeatherUtility;->searchLocationListInEnglishAndLocaleLanguage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 554
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 555
    iget-object v0, p0, Lcom/htc/android/worldclock/TimeZonePicker$SimpleSearchModule;->mSearchHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 556
    return-void
.end method

.method public doSearch(Ljava/lang/String;)V
    .locals 4
    .parameter "pattern"

    .prologue
    const/4 v3, 0x1

    .line 559
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 560
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    move-object v0, p1

    .line 561
    .local v0, searchPattern:Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/htc/android/worldclock/TimeZonePicker$SimpleSearchModule;->this$0:Lcom/htc/android/worldclock/TimeZonePicker;

    #calls: Lcom/htc/android/worldclock/TimeZonePicker;->getInputText()Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/android/worldclock/TimeZonePicker;->access$700(Lcom/htc/android/worldclock/TimeZonePicker;)Ljava/lang/String;

    move-result-object v1

    .line 562
    .local v1, textString:Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 563
    iget-object v2, p0, Lcom/htc/android/worldclock/TimeZonePicker$SimpleSearchModule;->mSearchHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 564
    iget-object v2, p0, Lcom/htc/android/worldclock/TimeZonePicker$SimpleSearchModule;->mSearchHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 566
    :cond_0
    return-void

    .line 560
    .end local v0           #searchPattern:Ljava/lang/String;
    .end local v1           #textString:Ljava/lang/String;
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method
