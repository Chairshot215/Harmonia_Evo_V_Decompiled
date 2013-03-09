.class public Lcom/google/android/gm/SharedPreference;
.super Ljava/lang/Object;
.source "SharedPreference.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final serialVersionUID:J = 0x1L


# instance fields
.field private mAccount:Ljava/lang/String;

.field private mKey:Ljava/lang/String;

.field private mValue:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .parameter "key"
    .parameter "account"
    .parameter "value"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/google/android/gm/SharedPreference;->mKey:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/google/android/gm/SharedPreference;->mAccount:Ljava/lang/String;

    .line 34
    iput-object p3, p0, Lcom/google/android/gm/SharedPreference;->mValue:Ljava/lang/Object;

    .line 35
    return-void
.end method

.method public static fromJson(Lorg/json/JSONObject;)Lcom/google/android/gm/SharedPreference;
    .locals 8
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 71
    const-string v6, "value"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 72
    .local v5, value:Ljava/lang/Object;
    instance-of v6, v5, Lorg/json/JSONArray;

    if-eqz v6, :cond_1

    .line 73
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v4

    .local v4, list:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Object;>;"
    move-object v1, v5

    .line 74
    check-cast v1, Lorg/json/JSONArray;

    .line 75
    .local v1, array:Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, i:I
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    .local v3, len:I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 76
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 75
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 78
    :cond_0
    move-object v5, v4

    .line 80
    .end local v1           #array:Lorg/json/JSONArray;
    .end local v2           #i:I
    .end local v3           #len:I
    .end local v4           #list:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Object;>;"
    .end local v5           #value:Ljava/lang/Object;
    :cond_1
    const-string v6, "account"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "account"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, account:Ljava/lang/String;
    :goto_1
    new-instance v6, Lcom/google/android/gm/SharedPreference;

    const-string v7, "key"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v0, v5}, Lcom/google/android/gm/SharedPreference;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v6

    .line 80
    .end local v0           #account:Ljava/lang/String;
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public getAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/gm/SharedPreference;->mAccount:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/gm/SharedPreference;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/gm/SharedPreference;->mValue:Ljava/lang/Object;

    return-object v0
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 54
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 55
    .local v2, json:Lorg/json/JSONObject;
    const-string v5, "account"

    iget-object v6, p0, Lcom/google/android/gm/SharedPreference;->mAccount:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 56
    const-string v5, "key"

    iget-object v6, p0, Lcom/google/android/gm/SharedPreference;->mKey:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 57
    iget-object v5, p0, Lcom/google/android/gm/SharedPreference;->mValue:Ljava/lang/Object;

    instance-of v5, v5, Ljava/util/Set;

    if-eqz v5, :cond_1

    .line 58
    iget-object v4, p0, Lcom/google/android/gm/SharedPreference;->mValue:Ljava/lang/Object;

    check-cast v4, Ljava/util/Set;

    .line 59
    .local v4, set:Ljava/util/Set;
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 60
    .local v0, array:Lorg/json/JSONArray;
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 61
    .local v3, o:Ljava/lang/Object;
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 63
    .end local v3           #o:Ljava/lang/Object;
    :cond_0
    const-string v5, "value"

    invoke-virtual {v2, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 67
    .end local v0           #array:Lorg/json/JSONArray;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v4           #set:Ljava/util/Set;
    :goto_1
    return-object v2

    .line 65
    :cond_1
    const-string v5, "value"

    iget-object v6, p0, Lcom/google/android/gm/SharedPreference;->mValue:Ljava/lang/Object;

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BackupPreference{mAccount=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/SharedPreference;->mAccount:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mKey=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/SharedPreference;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/SharedPreference;->mValue:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
