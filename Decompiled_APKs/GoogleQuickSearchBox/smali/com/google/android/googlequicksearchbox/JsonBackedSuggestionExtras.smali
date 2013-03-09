.class public Lcom/google/android/googlequicksearchbox/JsonBackedSuggestionExtras;
.super Ljava/lang/Object;
.source "JsonBackedSuggestionExtras.java"

# interfaces
.implements Lcom/google/android/googlequicksearchbox/SuggestionExtras;


# instance fields
.field private final mColumns:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mExtras:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lcom/google/android/googlequicksearchbox/SuggestionExtras;)V
    .locals 4
    .parameter "extras"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    iput-object v3, p0, Lcom/google/android/googlequicksearchbox/JsonBackedSuggestionExtras;->mExtras:Lorg/json/JSONObject;

    .line 48
    invoke-interface {p1}, Lcom/google/android/googlequicksearchbox/SuggestionExtras;->getExtraColumnNames()Ljava/util/Collection;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/googlequicksearchbox/JsonBackedSuggestionExtras;->mColumns:Ljava/util/Collection;

    .line 49
    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/JsonBackedSuggestionExtras;->mColumns:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 50
    .local v0, column:Ljava/lang/String;
    invoke-interface {p1, v0}, Lcom/google/android/googlequicksearchbox/SuggestionExtras;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 51
    .local v2, value:Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/JsonBackedSuggestionExtras;->mExtras:Lorg/json/JSONObject;

    if-nez v2, :cond_0

    sget-object v2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    .end local v2           #value:Ljava/lang/String;
    :cond_0
    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 53
    .end local v0           #column:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/android/googlequicksearchbox/JsonBackedSuggestionExtras;->mExtras:Lorg/json/JSONObject;

    .line 38
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/JsonBackedSuggestionExtras;->mExtras:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/googlequicksearchbox/JsonBackedSuggestionExtras;->mColumns:Ljava/util/Collection;

    .line 40
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/JsonBackedSuggestionExtras;->mExtras:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 41
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 42
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/JsonBackedSuggestionExtras;->mColumns:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 44
    :cond_0
    return-void
.end method


# virtual methods
.method public getExtra(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "columnName"

    .prologue
    const/4 v1, 0x0

    .line 57
    :try_start_0
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/JsonBackedSuggestionExtras;->mExtras:Lorg/json/JSONObject;

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 64
    :goto_0
    return-object v1

    .line 60
    :cond_0
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/JsonBackedSuggestionExtras;->mExtras:Lorg/json/JSONObject;

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, e:Lorg/json/JSONException;
    const-string v2, "QSB.JsonBackedSuggestionExtras"

    const-string v3, "Could not extract JSON extra"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getExtraColumnNames()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/JsonBackedSuggestionExtras;->mColumns:Ljava/util/Collection;

    return-object v0
.end method

.method public toJsonString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/JsonBackedSuggestionExtras;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/JsonBackedSuggestionExtras;->mExtras:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
