.class Lcom/htc/android/worldclock/RearrangeTimeZone$2;
.super Ljava/lang/Object;
.source "RearrangeTimeZone.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/worldclock/RearrangeTimeZone;->updateRearrangeZone()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/worldclock/RearrangeTimeZone;


# direct methods
.method constructor <init>(Lcom/htc/android/worldclock/RearrangeTimeZone;)V
    .locals 0
    .parameter

    .prologue
    .line 119
    iput-object p1, p0, Lcom/htc/android/worldclock/RearrangeTimeZone$2;->this$0:Lcom/htc/android/worldclock/RearrangeTimeZone;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11
    .parameter "v"

    .prologue
    .line 122
    iget-object v9, p0, Lcom/htc/android/worldclock/RearrangeTimeZone$2;->this$0:Lcom/htc/android/worldclock/RearrangeTimeZone;

    iget-object v9, v9, Lcom/htc/android/worldclock/WorldClock;->myList:Ljava/util/ArrayList;

    if-nez v9, :cond_0

    .line 170
    :goto_0
    return-void

    .line 125
    :cond_0
    iget-object v9, p0, Lcom/htc/android/worldclock/RearrangeTimeZone$2;->this$0:Lcom/htc/android/worldclock/RearrangeTimeZone;

    #calls: Lcom/htc/android/worldclock/RearrangeTimeZone;->checkStorage()V
    invoke-static {v9}, Lcom/htc/android/worldclock/RearrangeTimeZone;->access$100(Lcom/htc/android/worldclock/RearrangeTimeZone;)V

    .line 126
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 127
    .local v3, cachedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/worldclock/CityTime;>;"
    iget-object v9, p0, Lcom/htc/android/worldclock/RearrangeTimeZone$2;->this$0:Lcom/htc/android/worldclock/RearrangeTimeZone;

    iget-object v9, v9, Lcom/htc/android/worldclock/WorldClock;->myList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v3

    .end local v3           #cachedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/worldclock/CityTime;>;"
    check-cast v3, Ljava/util/ArrayList;

    .line 128
    .restart local v3       #cachedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/worldclock/CityTime;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 129
    .local v2, cacheSize:I
    if-lez v2, :cond_2

    .line 131
    new-array v8, v2, [Lcom/htc/util/weather/WeatherLocation;

    .line 132
    .local v8, loc:[Lcom/htc/util/weather/WeatherLocation;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    if-ge v7, v2, :cond_1

    .line 133
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/android/worldclock/CityTime;

    .line 134
    .local v5, ct:Lcom/htc/android/worldclock/CityTime;
    invoke-virtual {v5}, Lcom/htc/android/worldclock/CityTime;->getWeatherLocation()Lcom/htc/util/weather/WeatherLocation;

    move-result-object v9

    aput-object v9, v8, v7

    .line 132
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 137
    .end local v5           #ct:Lcom/htc/android/worldclock/CityTime;
    :cond_1
    :try_start_0
    iget-object v9, p0, Lcom/htc/android/worldclock/RearrangeTimeZone$2;->this$0:Lcom/htc/android/worldclock/RearrangeTimeZone;

    invoke-virtual {v9}, Lcom/htc/android/worldclock/RearrangeTimeZone;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/android/worldclock/RearrangeTimeZone$2;->this$0:Lcom/htc/android/worldclock/RearrangeTimeZone;

    invoke-virtual {v10}, Lcom/htc/android/worldclock/RearrangeTimeZone;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v8}, Lcom/htc/util/weather/WeatherUtility;->saveLocations(Landroid/content/ContentResolver;Ljava/lang/String;[Lcom/htc/util/weather/WeatherLocation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    .end local v7           #i:I
    .end local v8           #loc:[Lcom/htc/util/weather/WeatherLocation;
    :cond_2
    :goto_2
    iget-object v9, p0, Lcom/htc/android/worldclock/RearrangeTimeZone$2;->this$0:Lcom/htc/android/worldclock/RearrangeTimeZone;

    invoke-virtual {v9}, Lcom/htc/android/worldclock/RearrangeTimeZone;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 147
    .local v4, cr:Landroid/content/ContentResolver;
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 149
    .local v1, aCode:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/String;>;"
    iget-object v9, p0, Lcom/htc/android/worldclock/RearrangeTimeZone$2;->this$0:Lcom/htc/android/worldclock/RearrangeTimeZone;

    iget-object v9, v9, Lcom/htc/android/worldclock/RearrangeTimeZone;->mDeletedIndex:[Z

    array-length v9, v9

    add-int/lit8 v7, v9, -0x1

    .restart local v7       #i:I
    :goto_3
    if-ltz v7, :cond_4

    .line 150
    iget-object v9, p0, Lcom/htc/android/worldclock/RearrangeTimeZone$2;->this$0:Lcom/htc/android/worldclock/RearrangeTimeZone;

    iget-object v9, v9, Lcom/htc/android/worldclock/RearrangeTimeZone;->mDeletedIndex:[Z

    aget-boolean v9, v9, v7

    const/4 v10, 0x1

    if-ne v9, v10, :cond_3

    .line 152
    :try_start_1
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/htc/android/worldclock/CityTime;

    invoke-virtual {v9}, Lcom/htc/android/worldclock/CityTime;->getWeatherLocation()Lcom/htc/util/weather/WeatherLocation;

    move-result-object v9

    invoke-virtual {v9}, Lcom/htc/util/weather/WeatherLocation;->getCode()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 149
    :cond_3
    :goto_4
    add-int/lit8 v7, v7, -0x1

    goto :goto_3

    .line 139
    .end local v1           #aCode:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/String;>;"
    .end local v4           #cr:Landroid/content/ContentResolver;
    .restart local v8       #loc:[Lcom/htc/util/weather/WeatherLocation;
    :catch_0
    move-exception v6

    .line 140
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/htc/android/worldclock/htclog/HtcLog;->w(Ljava/lang/String;)V

    .line 141
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 159
    .end local v6           #e:Ljava/lang/Exception;
    .end local v8           #loc:[Lcom/htc/util/weather/WeatherLocation;
    .restart local v1       #aCode:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/String;>;"
    .restart local v4       #cr:Landroid/content/ContentResolver;
    :cond_4
    :try_start_2
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v9

    new-array v0, v9, [Ljava/lang/String;

    .line 160
    .local v0, Code:[Ljava/lang/String;
    const/4 v7, 0x0

    :goto_5
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v9

    if-ge v7, v9, :cond_5

    .line 161
    invoke-virtual {v1, v7}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    aput-object v9, v0, v7

    .line 160
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 163
    :cond_5
    iget-object v9, p0, Lcom/htc/android/worldclock/RearrangeTimeZone$2;->this$0:Lcom/htc/android/worldclock/RearrangeTimeZone;

    invoke-virtual {v9}, Lcom/htc/android/worldclock/RearrangeTimeZone;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9, v0}, Lcom/htc/util/weather/WeatherUtility;->deleteLocation(Landroid/content/ContentResolver;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 168
    .end local v0           #Code:[Ljava/lang/String;
    :goto_6
    iget-object v9, p0, Lcom/htc/android/worldclock/RearrangeTimeZone$2;->this$0:Lcom/htc/android/worldclock/RearrangeTimeZone;

    const/4 v10, -0x1

    invoke-virtual {v9, v10}, Lcom/htc/android/worldclock/RearrangeTimeZone;->setResult(I)V

    .line 169
    iget-object v9, p0, Lcom/htc/android/worldclock/RearrangeTimeZone$2;->this$0:Lcom/htc/android/worldclock/RearrangeTimeZone;

    invoke-virtual {v9}, Lcom/htc/android/worldclock/RearrangeTimeZone;->finish()V

    goto/16 :goto_0

    .line 164
    :catch_1
    move-exception v6

    .line 165
    .restart local v6       #e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/htc/android/worldclock/htclog/HtcLog;->w(Ljava/lang/String;)V

    .line 166
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 153
    .end local v6           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v9

    goto :goto_4
.end method
