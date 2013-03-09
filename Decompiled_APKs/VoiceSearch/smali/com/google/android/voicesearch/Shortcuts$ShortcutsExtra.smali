.class Lcom/google/android/voicesearch/Shortcuts$ShortcutsExtra;
.super Ljava/lang/Object;
.source "Shortcuts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/voicesearch/Shortcuts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ShortcutsExtra"
.end annotation


# instance fields
.field private final mBundle:Landroid/os/Bundle;

.field private final mComponentName:Landroid/content/ComponentName;


# direct methods
.method private constructor <init>(Landroid/content/ComponentName;Landroid/os/Bundle;)V
    .locals 0
    .parameter "componentName"
    .parameter "bundle"

    .prologue
    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    iput-object p2, p0, Lcom/google/android/voicesearch/Shortcuts$ShortcutsExtra;->mBundle:Landroid/os/Bundle;

    .line 207
    iput-object p1, p0, Lcom/google/android/voicesearch/Shortcuts$ShortcutsExtra;->mComponentName:Landroid/content/ComponentName;

    .line 208
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/ComponentName;Landroid/os/Bundle;Lcom/google/android/voicesearch/Shortcuts$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 198
    invoke-direct {p0, p1, p2}, Lcom/google/android/voicesearch/Shortcuts$ShortcutsExtra;-><init>(Landroid/content/ComponentName;Landroid/os/Bundle;)V

    return-void
.end method

.method public static bundleFromString(Ljava/lang/String;)Lcom/google/android/voicesearch/Shortcuts$ShortcutsExtra;
    .locals 13
    .parameter "jsonString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 233
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 234
    .local v5, json:Lorg/json/JSONObject;
    const-string v10, "json_component_key"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 235
    .local v2, componentString:Ljava/lang/String;
    const/4 v1, 0x0

    .line 236
    .local v1, componentName:Landroid/content/ComponentName;
    if-eqz v2, :cond_0

    .line 237
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 239
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 240
    .local v0, bundle:Landroid/os/Bundle;
    invoke-virtual {v5}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .local v4, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 241
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 242
    .local v7, key:Ljava/lang/String;
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 243
    .local v8, obj:Ljava/lang/Object;
    instance-of v10, v8, Lorg/json/JSONArray;

    if-eqz v10, :cond_2

    move-object v6, v8

    .line 244
    check-cast v6, Lorg/json/JSONArray;

    .line 245
    .local v6, jsonArray:Lorg/json/JSONArray;
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v10

    new-array v9, v10, [Ljava/lang/String;

    .line 246
    .local v9, stringArray:[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v3, v10, :cond_1

    .line 247
    invoke-virtual {v6, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v3

    .line 246
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 249
    :cond_1
    invoke-virtual {v0, v7, v9}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 250
    .end local v3           #i:I
    .end local v6           #jsonArray:Lorg/json/JSONArray;
    .end local v9           #stringArray:[Ljava/lang/String;
    :cond_2
    instance-of v10, v8, Ljava/lang/String;

    if-eqz v10, :cond_3

    .line 251
    check-cast v8, Ljava/lang/String;

    .end local v8           #obj:Ljava/lang/Object;
    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 253
    .restart local v8       #obj:Ljava/lang/Object;
    :cond_3
    const-string v10, "Shortcuts"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "JSON contains an unexpected value with key:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 256
    .end local v7           #key:Ljava/lang/String;
    .end local v8           #obj:Ljava/lang/Object;
    :cond_4
    new-instance v10, Lcom/google/android/voicesearch/Shortcuts$ShortcutsExtra;

    invoke-direct {v10, v1, v0}, Lcom/google/android/voicesearch/Shortcuts$ShortcutsExtra;-><init>(Landroid/content/ComponentName;Landroid/os/Bundle;)V

    return-object v10
.end method


# virtual methods
.method public convertToString()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 211
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 212
    .local v2, json:Lorg/json/JSONObject;
    iget-object v4, p0, Lcom/google/android/voicesearch/Shortcuts$ShortcutsExtra;->mComponentName:Landroid/content/ComponentName;

    if-eqz v4, :cond_0

    .line 213
    const-string v4, "json_component_key"

    iget-object v5, p0, Lcom/google/android/voicesearch/Shortcuts$ShortcutsExtra;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 215
    :cond_0
    iget-object v4, p0, Lcom/google/android/voicesearch/Shortcuts$ShortcutsExtra;->mBundle:Landroid/os/Bundle;

    if-eqz v4, :cond_3

    .line 216
    iget-object v4, p0, Lcom/google/android/voicesearch/Shortcuts$ShortcutsExtra;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v4}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 217
    .local v3, key:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/android/voicesearch/Shortcuts$ShortcutsExtra;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v4, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 218
    .local v0, data:Ljava/lang/Object;
    instance-of v4, v0, Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 219
    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 220
    :cond_2
    instance-of v4, v0, [Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 221
    new-instance v4, Lorg/json/JSONArray;

    check-cast v0, [Ljava/lang/String;

    .end local v0           #data:Ljava/lang/Object;
    check-cast v0, [Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 228
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #key:Ljava/lang/String;
    :cond_3
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public getBundle()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/google/android/voicesearch/Shortcuts$ShortcutsExtra;->mBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/google/android/voicesearch/Shortcuts$ShortcutsExtra;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method
