.class public Lcom/htc/Weather/AddCity$SmartSearchingModule;
.super Ljava/lang/Object;
.source "AddCity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/Weather/AddCity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SmartSearchingModule"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/Weather/AddCity$SmartSearchingModule$WorkerHandler;
    }
.end annotation


# static fields
.field static final MSG_DESTROY:I = 0x5

.field static final MSG_FIRST_SEARCH_COMPLETE:I = 0x4

.field static final MSG_ONRESUME:I = 0x6

.field static final MSG_SEARCH:I = 0x1

.field static final MSG_SEARCH_COMPLETE:I = 0x3

.field static final MSG_SECOND_SEARCH:I = 0x2


# instance fields
.field mContext:Landroid/content/Context;

.field mLastSearchLevel:I

.field mLastValidLevel:I

.field mThreadId:J

.field mWorkerHandler:Landroid/os/Handler;

.field mWorkerThread:Landroid/os/HandlerThread;

.field ownerHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/htc/Weather/AddCity;


# direct methods
.method public constructor <init>(Lcom/htc/Weather/AddCity;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3
    .parameter
    .parameter "context"
    .parameter "handler"

    .prologue
    .line 681
    iput-object p1, p0, Lcom/htc/Weather/AddCity$SmartSearchingModule;->this$0:Lcom/htc/Weather/AddCity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 682
    iput-object p2, p0, Lcom/htc/Weather/AddCity$SmartSearchingModule;->mContext:Landroid/content/Context;

    .line 683
    iput-object p3, p0, Lcom/htc/Weather/AddCity$SmartSearchingModule;->ownerHandler:Landroid/os/Handler;

    .line 686
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SmartSearchingThread"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/htc/Weather/AddCity$SmartSearchingModule;->mWorkerThread:Landroid/os/HandlerThread;

    .line 689
    iget-object v0, p0, Lcom/htc/Weather/AddCity$SmartSearchingModule;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 691
    new-instance v0, Lcom/htc/Weather/AddCity$SmartSearchingModule$WorkerHandler;

    iget-object v1, p0, Lcom/htc/Weather/AddCity$SmartSearchingModule;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/Weather/AddCity$SmartSearchingModule$WorkerHandler;-><init>(Lcom/htc/Weather/AddCity$SmartSearchingModule;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/htc/Weather/AddCity$SmartSearchingModule;->mWorkerHandler:Landroid/os/Handler;

    .line 694
    iget-object v0, p0, Lcom/htc/Weather/AddCity$SmartSearchingModule;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/Weather/AddCity$SmartSearchingModule;->mThreadId:J

    .line 695
    return-void
.end method

.method static synthetic access$1000(Lcom/htc/Weather/AddCity$SmartSearchingModule;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 661
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/Weather/AddCity$SmartSearchingModule;->coreSearch(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private coreSearch(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;)Landroid/database/Cursor;
    .locals 5
    .parameter "level"
    .parameter "keyMapIndex"
    .parameter "isSecondSearch"

    .prologue
    .line 834
    const/4 v0, 0x0

    .line 835
    .local v0, cursor:Landroid/database/Cursor;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 836
    .local v1, iLevel:I
    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 843
    .local v2, sLevel:Ljava/lang/String;
    if-nez v1, :cond_3

    .line 844
    const/4 v3, 0x0

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v1, v3, v4}, Lcom/htc/Weather/AddCity$SmartSearchingModule;->queryNthLevelTable(ILjava/lang/String;I)Landroid/database/Cursor;

    move-result-object v0

    .line 857
    :goto_0
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-gtz v3, :cond_1

    :cond_0
    if-nez v1, :cond_2

    .line 858
    :cond_1
    iput v1, p0, Lcom/htc/Weather/AddCity$SmartSearchingModule;->mLastValidLevel:I

    .line 861
    :cond_2
    iput v1, p0, Lcom/htc/Weather/AddCity$SmartSearchingModule;->mLastSearchLevel:I

    .line 863
    return-object v0

    .line 853
    :cond_3
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v1, p2, v3}, Lcom/htc/Weather/AddCity$SmartSearchingModule;->queryNthLevelTable(ILjava/lang/String;I)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 698
    iget-object v1, p0, Lcom/htc/Weather/AddCity$SmartSearchingModule;->mWorkerHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 699
    iget-object v1, p0, Lcom/htc/Weather/AddCity$SmartSearchingModule;->mWorkerHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 700
    .local v0, looper:Landroid/os/Looper;
    if-eqz v0, :cond_0

    .line 701
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 705
    .end local v0           #looper:Landroid/os/Looper;
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/Weather/AddCity$SmartSearchingModule;->mWorkerHandler:Landroid/os/Handler;

    .line 706
    return-void
.end method

.method queryNthLevelTable(ILjava/lang/String;I)Landroid/database/Cursor;
    .locals 6
    .parameter "level"
    .parameter "keyMapIndex"
    .parameter "isSecondSearch"

    .prologue
    .line 873
    const/4 v1, 0x0

    .line 875
    .local v1, cursor:Landroid/database/Cursor;
    const/4 v0, 0x0

    .line 876
    .local v0, args:[Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 877
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    .end local v0           #args:[Ljava/lang/String;
    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "*"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 881
    .restart local v0       #args:[Ljava/lang/String;
    :cond_0
    if-nez p1, :cond_2

    .line 882
    iget-object v2, p0, Lcom/htc/Weather/AddCity$SmartSearchingModule;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/Weather/AddCity$SmartSearchingModule;->this$0:Lcom/htc/Weather/AddCity;

    #calls: Lcom/htc/Weather/AddCity;->getSortOrder()Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/Weather/AddCity;->access$1100(Lcom/htc/Weather/AddCity;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/htc/util/weather/WeatherUtility$SEARCH_COLUMN;->CITY_STATE_AND_COUNTRY:Lcom/htc/util/weather/WeatherUtility$SEARCH_COLUMN;

    sget-object v5, Lcom/htc/util/weather/WeatherUtility$SEARCH_TYPE;->START_WITH:Lcom/htc/util/weather/WeatherUtility$SEARCH_TYPE;

    invoke-static {v2, v3, p2, v4, v5}, Lcom/htc/util/weather/WeatherUtility;->getLocaitonList(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Lcom/htc/util/weather/WeatherUtility$SEARCH_COLUMN;Lcom/htc/util/weather/WeatherUtility$SEARCH_TYPE;)Landroid/database/Cursor;

    move-result-object v1

    .line 888
    if-eqz v1, :cond_1

    .line 909
    :cond_1
    :goto_0
    return-object v1

    .line 894
    :cond_2
    iget-object v2, p0, Lcom/htc/Weather/AddCity$SmartSearchingModule;->this$0:Lcom/htc/Weather/AddCity;

    invoke-virtual {v2}, Lcom/htc/Weather/AddCity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/htc/consts/WeatherConsts$LOCATION_LIST_COLUMN_NAME;->name:Lcom/htc/consts/WeatherConsts$LOCATION_LIST_COLUMN_NAME;

    invoke-virtual {v3}, Lcom/htc/consts/WeatherConsts$LOCATION_LIST_COLUMN_NAME;->name()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, p2, v3}, Lcom/htc/util/weather/WeatherUtility;->searchLocationListInEnglishAndLocaleLanguage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 903
    if-eqz v1, :cond_1

    .line 904
    const-string v2, "AddCity_ListActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Return cursor count of doing search from smart search(n level) : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public search(Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 5
    .parameter "n"
    .parameter "patternIndex"

    .prologue
    const/4 v4, 0x1

    .line 711
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gtz v2, :cond_0

    .line 712
    iget-object v2, p0, Lcom/htc/Weather/AddCity$SmartSearchingModule;->this$0:Lcom/htc/Weather/AddCity;

    #setter for: Lcom/htc/Weather/AddCity;->mBoolStopQuery:Z
    invoke-static {v2, v4}, Lcom/htc/Weather/AddCity;->access$802(Lcom/htc/Weather/AddCity;Z)Z

    .line 713
    iget-object v2, p0, Lcom/htc/Weather/AddCity$SmartSearchingModule;->this$0:Lcom/htc/Weather/AddCity;

    const/4 v3, 0x0

    #calls: Lcom/htc/Weather/AddCity;->resetList(Z)V
    invoke-static {v2, v3}, Lcom/htc/Weather/AddCity;->access$900(Lcom/htc/Weather/AddCity;Z)V

    .line 733
    :goto_0
    return-void

    .line 718
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 720
    .local v0, map:Ljava/util/HashMap;
    const-string v2, "pattern"

    invoke-virtual {v0, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 721
    const-string v2, "level"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 724
    iget-object v2, p0, Lcom/htc/Weather/AddCity$SmartSearchingModule;->this$0:Lcom/htc/Weather/AddCity;

    iget v3, v2, Lcom/htc/Weather/AddCity;->mPendingSearch:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/htc/Weather/AddCity;->mPendingSearch:I

    .line 727
    iget-object v2, p0, Lcom/htc/Weather/AddCity$SmartSearchingModule;->mWorkerHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 730
    iget-object v2, p0, Lcom/htc/Weather/AddCity$SmartSearchingModule;->mWorkerHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 731
    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/htc/Weather/AddCity$SmartSearchingModule;->mWorkerHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
