.class public Lcom/google/android/gm/persistence/GmailBackupData;
.super Ljava/lang/Object;
.source "GmailBackupData.java"


# instance fields
.field private final sharedPreferences:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gm/SharedPreference;",
            ">;"
        }
    .end annotation
.end field

.field private final syncSettings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/Gmail$Settings;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/Gmail$Settings;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gm/SharedPreference;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p1, syncSettings:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/gm/provider/Gmail$Settings;>;"
    .local p2, sharedPreferences:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/gm/SharedPreference;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/google/android/gm/persistence/GmailBackupData;->syncSettings:Ljava/util/Map;

    .line 35
    iput-object p2, p0, Lcom/google/android/gm/persistence/GmailBackupData;->sharedPreferences:Ljava/util/List;

    .line 36
    return-void
.end method

.method public static fromJson(Lorg/json/JSONObject;)Lcom/google/android/gm/persistence/GmailBackupData;
    .locals 9
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 65
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v7

    .line 66
    .local v7, syncSettings:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/gm/provider/Gmail$Settings;>;"
    const-string v8, "sync_settings"

    invoke-virtual {p0, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 67
    .local v5, object:Lorg/json/JSONObject;
    invoke-virtual {v5}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 68
    .local v1, accounts:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 69
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 70
    .local v0, account:Ljava/lang/String;
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/gm/provider/Gmail$Settings;->fromJson(Lorg/json/JSONObject;)Lcom/google/android/gm/provider/Gmail$Settings;

    move-result-object v8

    invoke-interface {v7, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 73
    .end local v0           #account:Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v6

    .line 74
    .local v6, sharedPreferences:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/gm/SharedPreference;>;"
    const-string v8, "shared_preferences"

    invoke-virtual {p0, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 75
    .local v2, array:Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, i:I
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    .local v4, len:I
    :goto_1
    if-ge v3, v4, :cond_1

    .line 76
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/gm/SharedPreference;->fromJson(Lorg/json/JSONObject;)Lcom/google/android/gm/SharedPreference;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 78
    :cond_1
    new-instance v8, Lcom/google/android/gm/persistence/GmailBackupData;

    invoke-direct {v8, v7, v6}, Lcom/google/android/gm/persistence/GmailBackupData;-><init>(Ljava/util/Map;Ljava/util/List;)V

    return-object v8
.end method


# virtual methods
.method public getSharedPreferences()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gm/SharedPreference;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/gm/persistence/GmailBackupData;->sharedPreferences:Ljava/util/List;

    return-object v0
.end method

.method public getSyncSettings()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/Gmail$Settings;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/gm/persistence/GmailBackupData;->syncSettings:Ljava/util/Map;

    return-object v0
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 47
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 49
    .local v3, json:Lorg/json/JSONObject;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 50
    .local v4, object:Lorg/json/JSONObject;
    const-string v6, "sync_settings"

    invoke-virtual {v3, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 51
    iget-object v6, p0, Lcom/google/android/gm/persistence/GmailBackupData;->syncSettings:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 52
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/android/gm/provider/Gmail$Settings;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gm/provider/Gmail$Settings;

    invoke-virtual {v7}, Lcom/google/android/gm/provider/Gmail$Settings;->toJson()Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 55
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/android/gm/provider/Gmail$Settings;>;"
    :cond_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 56
    .local v0, array:Lorg/json/JSONArray;
    const-string v6, "shared_preferences"

    invoke-virtual {v3, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 57
    iget-object v6, p0, Lcom/google/android/gm/persistence/GmailBackupData;->sharedPreferences:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gm/SharedPreference;

    .line 58
    .local v5, sharedPreference:Lcom/google/android/gm/SharedPreference;
    invoke-virtual {v5}, Lcom/google/android/gm/SharedPreference;->toJson()Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 61
    .end local v5           #sharedPreference:Lcom/google/android/gm/SharedPreference;
    :cond_1
    return-object v3
.end method
