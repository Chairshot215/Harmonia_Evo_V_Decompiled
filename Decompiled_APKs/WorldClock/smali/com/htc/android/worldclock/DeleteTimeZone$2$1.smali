.class Lcom/htc/android/worldclock/DeleteTimeZone$2$1;
.super Ljava/lang/Thread;
.source "DeleteTimeZone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/worldclock/DeleteTimeZone$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/android/worldclock/DeleteTimeZone$2;


# direct methods
.method constructor <init>(Lcom/htc/android/worldclock/DeleteTimeZone$2;)V
    .locals 0
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/htc/android/worldclock/DeleteTimeZone$2$1;->this$1:Lcom/htc/android/worldclock/DeleteTimeZone$2;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 113
    iget-object v6, p0, Lcom/htc/android/worldclock/DeleteTimeZone$2$1;->this$1:Lcom/htc/android/worldclock/DeleteTimeZone$2;

    iget-object v6, v6, Lcom/htc/android/worldclock/DeleteTimeZone$2;->this$0:Lcom/htc/android/worldclock/DeleteTimeZone;

    invoke-virtual {v6}, Lcom/htc/android/worldclock/DeleteTimeZone;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 114
    .local v3, cr:Landroid/content/ContentResolver;
    iget-object v6, p0, Lcom/htc/android/worldclock/DeleteTimeZone$2$1;->this$1:Lcom/htc/android/worldclock/DeleteTimeZone$2;

    iget-object v6, v6, Lcom/htc/android/worldclock/DeleteTimeZone$2;->this$0:Lcom/htc/android/worldclock/DeleteTimeZone;

    iget-object v6, v6, Lcom/htc/android/worldclock/WorldClock;->myList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 115
    .local v2, cityList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/worldclock/CityTime;>;"
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 117
    .local v1, aCode:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/htc/android/worldclock/DeleteTimeZone$2$1;->this$1:Lcom/htc/android/worldclock/DeleteTimeZone$2;

    iget-object v6, v6, Lcom/htc/android/worldclock/DeleteTimeZone$2;->this$0:Lcom/htc/android/worldclock/DeleteTimeZone;

    iget-object v6, v6, Lcom/htc/android/worldclock/DeleteTimeZone;->mDeletedIndex:[Z

    array-length v6, v6

    add-int/lit8 v5, v6, -0x1

    .local v5, i:I
    :goto_0
    if-ltz v5, :cond_1

    .line 118
    iget-object v6, p0, Lcom/htc/android/worldclock/DeleteTimeZone$2$1;->this$1:Lcom/htc/android/worldclock/DeleteTimeZone$2;

    iget-object v6, v6, Lcom/htc/android/worldclock/DeleteTimeZone$2;->this$0:Lcom/htc/android/worldclock/DeleteTimeZone;

    iget-object v6, v6, Lcom/htc/android/worldclock/DeleteTimeZone;->mDeletedIndex:[Z

    aget-boolean v6, v6, v5

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 120
    :try_start_0
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/android/worldclock/CityTime;

    invoke-virtual {v6}, Lcom/htc/android/worldclock/CityTime;->getWeatherLocation()Lcom/htc/util/weather/WeatherLocation;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/util/weather/WeatherLocation;->getCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 121
    :catch_0
    move-exception v4

    .line 122
    .local v4, e:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/htc/android/worldclock/htclog/HtcLog;->w(Ljava/lang/String;)V

    goto :goto_1

    .line 128
    .end local v4           #e:Ljava/lang/Exception;
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v6

    new-array v0, v6, [Ljava/lang/String;

    .line 129
    .local v0, Code:[Ljava/lang/String;
    const/4 v5, 0x0

    :goto_2
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 130
    invoke-virtual {v1, v5}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aput-object v6, v0, v5

    .line 129
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 132
    :cond_2
    iget-object v6, p0, Lcom/htc/android/worldclock/DeleteTimeZone$2$1;->this$1:Lcom/htc/android/worldclock/DeleteTimeZone$2;

    iget-object v6, v6, Lcom/htc/android/worldclock/DeleteTimeZone$2;->this$0:Lcom/htc/android/worldclock/DeleteTimeZone;

    invoke-virtual {v6}, Lcom/htc/android/worldclock/DeleteTimeZone;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6, v0}, Lcom/htc/util/weather/WeatherUtility;->deleteLocation(Landroid/content/ContentResolver;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 136
    .end local v0           #Code:[Ljava/lang/String;
    :goto_3
    return-void

    .line 133
    :catch_1
    move-exception v4

    .line 134
    .restart local v4       #e:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/htc/android/worldclock/htclog/HtcLog;->w(Ljava/lang/String;)V

    goto :goto_3
.end method
