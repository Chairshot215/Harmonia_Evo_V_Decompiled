.class public Lcom/google/android/googlequicksearchbox/QsbNotificationsSource;
.super Lcom/google/android/googlequicksearchbox/QsbInternalSource;
.source "QsbNotificationsSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/googlequicksearchbox/QsbNotificationsSource$NotificationState;,
        Lcom/google/android/googlequicksearchbox/QsbNotificationsSource$NotificationListener;
    }
.end annotation


# instance fields
.field private final mClock:Lcom/google/android/googlequicksearchbox/Clock;

.field private final mContext:Landroid/content/Context;

.field private final mExpiredKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/googlequicksearchbox/QsbNotificationsSource$NotificationListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mSettings:Lcom/google/android/googlequicksearchbox/SearchSettings;

.field private final mStates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/googlequicksearchbox/QsbNotificationsSource$NotificationState;",
            ">;"
        }
    .end annotation
.end field

.field private final mSuggestions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/googlequicksearchbox/Suggestion;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/googlequicksearchbox/IconLoader;ILcom/google/android/googlequicksearchbox/SearchSettings;Lcom/google/android/googlequicksearchbox/Clock;)V
    .locals 1
    .parameter "context"
    .parameter "iconLoader"
    .parameter "versionCode"
    .parameter "settings"
    .parameter "clock"

    .prologue
    .line 70
    invoke-direct {p0, p2, p3}, Lcom/google/android/googlequicksearchbox/QsbInternalSource;-><init>(Lcom/google/android/googlequicksearchbox/IconLoader;I)V

    .line 71
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/QsbNotificationsSource;->mContext:Landroid/content/Context;

    .line 72
    iput-object p4, p0, Lcom/google/android/googlequicksearchbox/QsbNotificationsSource;->mSettings:Lcom/google/android/googlequicksearchbox/SearchSettings;

    .line 73
    iput-object p5, p0, Lcom/google/android/googlequicksearchbox/QsbNotificationsSource;->mClock:Lcom/google/android/googlequicksearchbox/Clock;

    .line 75
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbNotificationsSource;->mStates:Ljava/util/Map;

    .line 76
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbNotificationsSource;->mSuggestions:Ljava/util/Map;

    .line 77
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbNotificationsSource;->mListeners:Ljava/util/Map;

    .line 78
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbNotificationsSource;->mExpiredKeys:Ljava/util/List;

    .line 79
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/QsbNotificationsSource;->loadNotificationsState()V

    .line 80
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/googlequicksearchbox/QsbNotificationsSource;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbNotificationsSource;->mStates:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/googlequicksearchbox/QsbNotificationsSource;)Lcom/google/android/googlequicksearchbox/Clock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbNotificationsSource;->mClock:Lcom/google/android/googlequicksearchbox/Clock;

    return-object v0
.end method

.method private loadNotificationsState()V
    .locals 6

    .prologue
    .line 178
    iget-object v4, p0, Lcom/google/android/googlequicksearchbox/QsbNotificationsSource;->mSettings:Lcom/google/android/googlequicksearchbox/SearchSettings;

    invoke-interface {v4}, Lcom/google/android/googlequicksearchbox/SearchSettings;->getNotificationsState()Ljava/lang/String;

    move-result-object v3

    .line 179
    .local v3, json:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 181
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 182
    .local v0, arr:Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 183
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/google/android/googlequicksearchbox/QsbNotificationsSource;->loadStateFromJson(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 185
    .end local v0           #arr:Lorg/json/JSONArray;
    .end local v2           #i:I
    :catch_0
    move-exception v1

    .line 187
    .local v1, e:Lorg/json/JSONException;
    iget-object v4, p0, Lcom/google/android/googlequicksearchbox/QsbNotificationsSource;->mSettings:Lcom/google/android/googlequicksearchbox/SearchSettings;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lcom/google/android/googlequicksearchbox/SearchSettings;->setNotificationsState(Ljava/lang/String;)V

    .line 190
    .end local v1           #e:Lorg/json/JSONException;
    :cond_0
    return-void
.end method

.method private loadStateFromJson(Lorg/json/JSONObject;)V
    .locals 6
    .parameter "obj"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 206
    const-string v1, "key"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 207
    .local v2, key:Ljava/lang/String;
    new-instance v0, Lcom/google/android/googlequicksearchbox/QsbNotificationsSource$NotificationState;

    const-string v1, "showcount"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v1, "expiry"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/googlequicksearchbox/QsbNotificationsSource$NotificationState;-><init>(Lcom/google/android/googlequicksearchbox/QsbNotificationsSource;Ljava/lang/String;IJ)V

    .line 209
    .local v0, state:Lcom/google/android/googlequicksearchbox/QsbNotificationsSource$NotificationState;
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/QsbNotificationsSource;->mStates:Ljava/util/Map;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    return-void
.end method

.method static stateToJson(Ljava/lang/String;IJ)Lorg/json/JSONObject;
    .locals 2
    .parameter "key"
    .parameter "remainingShowCount"
    .parameter "expiry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 215
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 216
    .local v0, obj:Lorg/json/JSONObject;
    const-string v1, "key"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 217
    const-string v1, "showcount"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 218
    const-string v1, "expiry"

    invoke-virtual {v0, v1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 219
    return-object v0
.end method

.method private declared-synchronized storeNotificationsState()V
    .locals 5

    .prologue
    .line 195
    monitor-enter p0

    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 196
    .local v0, arr:Lorg/json/JSONArray;
    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/QsbNotificationsSource;->mStates:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/googlequicksearchbox/QsbNotificationsSource$NotificationState;

    .line 197
    .local v2, state:Lcom/google/android/googlequicksearchbox/QsbNotificationsSource$NotificationState;
    invoke-virtual {v2}, Lcom/google/android/googlequicksearchbox/QsbNotificationsSource$NotificationState;->toJson()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 200
    .end local v0           #arr:Lorg/json/JSONArray;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #state:Lcom/google/android/googlequicksearchbox/QsbNotificationsSource$NotificationState;
    :catch_0
    move-exception v3

    .line 203
    :goto_1
    monitor-exit p0

    return-void

    .line 199
    .restart local v0       #arr:Lorg/json/JSONArray;
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/QsbNotificationsSource;->mSettings:Lcom/google/android/googlequicksearchbox/SearchSettings;

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/google/android/googlequicksearchbox/SearchSettings;->setNotificationsState(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 195
    .end local v0           #arr:Lorg/json/JSONArray;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method


# virtual methods
.method public addNotification(Ljava/lang/String;Lcom/google/android/googlequicksearchbox/Suggestion;IILcom/google/android/googlequicksearchbox/QsbNotificationsSource$NotificationListener;)V
    .locals 7
    .parameter "key"
    .parameter "suggestion"
    .parameter "showCount"
    .parameter "expiresInSeconds"
    .parameter "listener"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbNotificationsSource;->mStates:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbNotificationsSource;->mClock:Lcom/google/android/googlequicksearchbox/Clock;

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/Clock;->currentTimeMillis()J

    move-result-wide v0

    mul-int/lit16 v2, p4, 0x3e8

    int-to-long v2, v2

    add-long v4, v0, v2

    .line 99
    .local v4, expiry:J
    iget-object v6, p0, Lcom/google/android/googlequicksearchbox/QsbNotificationsSource;->mStates:Ljava/util/Map;

    new-instance v0, Lcom/google/android/googlequicksearchbox/QsbNotificationsSource$NotificationState;

    move-object v1, p0

    move-object v2, p1

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/googlequicksearchbox/QsbNotificationsSource$NotificationState;-><init>(Lcom/google/android/googlequicksearchbox/QsbNotificationsSource;Ljava/lang/String;IJ)V

    invoke-interface {v6, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/QsbNotificationsSource;->storeNotificationsState()V

    .line 103
    .end local v4           #expiry:J
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbNotificationsSource;->mSuggestions:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbNotificationsSource;->mListeners:Ljava/util/Map;

    invoke-interface {v0, p1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    return-void
.end method

.method public clearSuggestion(Ljava/lang/String;)V
    .locals 1
    .parameter "key"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbNotificationsSource;->mStates:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbNotificationsSource;->mSuggestions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbNotificationsSource;->mListeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    return-void
.end method

.method public getQueryThreshold()I
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x0

    return v0
.end method

.method public getSourceIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbNotificationsSource;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f03

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getSourceIconUri()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbNotificationsSource;->mContext:Landroid/content/Context;

    const/high16 v1, 0x7f03

    invoke-static {v0, v1}, Lcom/google/android/googlequicksearchbox/util/Util;->getResourceUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getSuggestions(Ljava/lang/String;I)Lcom/google/android/googlequicksearchbox/SuggestionList;
    .locals 7
    .parameter "query"
    .parameter "queryLimit"

    .prologue
    .line 119
    new-instance v2, Lcom/google/android/googlequicksearchbox/LatencyTracker;

    iget-object v6, p0, Lcom/google/android/googlequicksearchbox/QsbNotificationsSource;->mClock:Lcom/google/android/googlequicksearchbox/Clock;

    invoke-direct {v2, v6}, Lcom/google/android/googlequicksearchbox/LatencyTracker;-><init>(Lcom/google/android/googlequicksearchbox/Clock;)V

    .line 120
    .local v2, latency:Lcom/google/android/googlequicksearchbox/LatencyTracker;
    iget-object v6, p0, Lcom/google/android/googlequicksearchbox/QsbNotificationsSource;->mExpiredKeys:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 121
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 122
    new-instance v3, Lcom/google/android/googlequicksearchbox/MutableSuggestionListImpl;

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbNotificationsSource;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6, p1}, Lcom/google/android/googlequicksearchbox/MutableSuggestionListImpl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .local v3, list:Lcom/google/android/googlequicksearchbox/MutableSuggestionList;
    iget-object v6, p0, Lcom/google/android/googlequicksearchbox/QsbNotificationsSource;->mSuggestions:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 125
    .local v1, key:Ljava/lang/String;
    iget-object v6, p0, Lcom/google/android/googlequicksearchbox/QsbNotificationsSource;->mStates:Ljava/util/Map;

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/googlequicksearchbox/QsbNotificationsSource$NotificationState;

    .line 126
    .local v5, state:Lcom/google/android/googlequicksearchbox/QsbNotificationsSource$NotificationState;
    invoke-virtual {v5}, Lcom/google/android/googlequicksearchbox/QsbNotificationsSource$NotificationState;->shouldShow()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 127
    invoke-virtual {v5}, Lcom/google/android/googlequicksearchbox/QsbNotificationsSource$NotificationState;->showing()V

    .line 128
    iget-object v6, p0, Lcom/google/android/googlequicksearchbox/QsbNotificationsSource;->mSuggestions:Ljava/util/Map;

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/googlequicksearchbox/Suggestion;

    invoke-interface {v3, v6}, Lcom/google/android/googlequicksearchbox/MutableSuggestionList;->add(Lcom/google/android/googlequicksearchbox/Suggestion;)Z

    goto :goto_0

    .line 130
    :cond_0
    iget-object v6, p0, Lcom/google/android/googlequicksearchbox/QsbNotificationsSource;->mExpiredKeys:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 133
    .end local v1           #key:Ljava/lang/String;
    .end local v5           #state:Lcom/google/android/googlequicksearchbox/QsbNotificationsSource$NotificationState;
    :cond_1
    iget-object v6, p0, Lcom/google/android/googlequicksearchbox/QsbNotificationsSource;->mExpiredKeys:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 134
    .restart local v1       #key:Ljava/lang/String;
    iget-object v6, p0, Lcom/google/android/googlequicksearchbox/QsbNotificationsSource;->mListeners:Ljava/util/Map;

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/googlequicksearchbox/QsbNotificationsSource$NotificationListener;

    .line 135
    .local v4, listener:Lcom/google/android/googlequicksearchbox/QsbNotificationsSource$NotificationListener;
    if-eqz v4, :cond_2

    .line 136
    invoke-interface {v4, v1}, Lcom/google/android/googlequicksearchbox/QsbNotificationsSource$NotificationListener;->notificationExpired(Ljava/lang/String;)V

    .line 138
    :cond_2
    invoke-virtual {p0, v1}, Lcom/google/android/googlequicksearchbox/QsbNotificationsSource;->clearSuggestion(Ljava/lang/String;)V

    goto :goto_1

    .line 140
    .end local v1           #key:Ljava/lang/String;
    .end local v4           #listener:Lcom/google/android/googlequicksearchbox/QsbNotificationsSource$NotificationListener;
    :cond_3
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/QsbNotificationsSource;->storeNotificationsState()V

    .line 141
    invoke-virtual {v2}, Lcom/google/android/googlequicksearchbox/LatencyTracker;->getLatency()I

    move-result v6

    invoke-interface {v3, v6}, Lcom/google/android/googlequicksearchbox/MutableSuggestionList;->setLatency(I)V

    .line 147
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v3           #list:Lcom/google/android/googlequicksearchbox/MutableSuggestionList;
    :goto_2
    return-object v3

    .line 144
    :cond_4
    new-instance v3, Lcom/google/android/googlequicksearchbox/SuggestionListImpl;

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbNotificationsSource;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6, p1}, Lcom/google/android/googlequicksearchbox/SuggestionListImpl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    .local v3, list:Lcom/google/android/googlequicksearchbox/SuggestionListImpl;
    invoke-virtual {v2}, Lcom/google/android/googlequicksearchbox/LatencyTracker;->getLatency()I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/google/android/googlequicksearchbox/SuggestionListImpl;->setLatency(I)V

    .line 146
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/google/android/googlequicksearchbox/SuggestionListImpl;->setRequestMade(Z)V

    goto :goto_2
.end method

.method public isVersionCodeCompatible(I)Z
    .locals 1
    .parameter "version"

    .prologue
    .line 153
    const/4 v0, 0x1

    return v0
.end method

.method public queryAfterZeroResults()Z
    .locals 1

    .prologue
    .line 173
    const/4 v0, 0x0

    return v0
.end method
