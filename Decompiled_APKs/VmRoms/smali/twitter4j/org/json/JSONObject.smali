.class public Ltwitter4j/org/json/JSONObject;
.super Ljava/lang/Object;
.source "JSONObject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltwitter4j/org/json/JSONObject$1;,
        Ltwitter4j/org/json/JSONObject$Null;
    }
.end annotation


# static fields
.field public static final NULL:Ljava/lang/Object;

.field static class$java$lang$Boolean:Ljava/lang/Class;

.field static class$java$lang$Byte:Ljava/lang/Class;

.field static class$java$lang$Character:Ljava/lang/Class;

.field static class$java$lang$Double:Ljava/lang/Class;

.field static class$java$lang$Float:Ljava/lang/Class;

.field static class$java$lang$Integer:Ljava/lang/Class;

.field static class$java$lang$Long:Ljava/lang/Class;

.field static class$java$lang$Short:Ljava/lang/Class;

.field static class$java$lang$String:Ljava/lang/Class;


# instance fields
.field private map:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 140
    new-instance v0, Ltwitter4j/org/json/JSONObject$Null;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ltwitter4j/org/json/JSONObject$Null;-><init>(Ltwitter4j/org/json/JSONObject$1;)V

    sput-object v0, Ltwitter4j/org/json/JSONObject;->NULL:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ltwitter4j/org/json/JSONObject;->map:Ljava/util/Map;

    .line 148
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .parameter "bean"

    .prologue
    .line 277
    invoke-direct {p0}, Ltwitter4j/org/json/JSONObject;-><init>()V

    .line 278
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ltwitter4j/org/json/JSONObject;->populateInternalMap(Ljava/lang/Object;Z)V

    .line 279
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Z)V
    .locals 0
    .parameter "bean"
    .parameter "includeSuperClass"

    .prologue
    .line 293
    invoke-direct {p0}, Ltwitter4j/org/json/JSONObject;-><init>()V

    .line 294
    invoke-direct {p0, p1, p2}, Ltwitter4j/org/json/JSONObject;->populateInternalMap(Ljava/lang/Object;Z)V

    .line 295
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;[Ljava/lang/String;)V
    .locals 4
    .parameter "object"
    .parameter "names"

    .prologue
    .line 379
    invoke-direct {p0}, Ltwitter4j/org/json/JSONObject;-><init>()V

    .line 380
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 381
    .local v0, c:Ljava/lang/Class;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, p2

    if-ge v1, v3, :cond_0

    .line 382
    aget-object v2, p2, v1

    .line 384
    .local v2, name:Ljava/lang/String;
    :try_start_0
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Ltwitter4j/org/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/org/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 381
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 389
    .end local v2           #name:Ljava/lang/String;
    :cond_0
    return-void

    .line 385
    .restart local v2       #name:Ljava/lang/String;
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "source"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 402
    new-instance v0, Ltwitter4j/org/json/JSONTokener;

    invoke-direct {v0, p1}, Ltwitter4j/org/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Ltwitter4j/org/json/JSONObject;-><init>(Ltwitter4j/org/json/JSONTokener;)V

    .line 403
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .parameter "map"

    .prologue
    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 235
    if-nez p1, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :goto_0
    iput-object v0, p0, Ltwitter4j/org/json/JSONObject;->map:Ljava/util/Map;

    .line 236
    return-void

    :cond_0
    move-object v0, p1

    .line 235
    goto :goto_0
.end method

.method public constructor <init>(Ljava/util/Map;Z)V
    .locals 6
    .parameter "map"
    .parameter "includeSuperClass"

    .prologue
    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 247
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Ltwitter4j/org/json/JSONObject;->map:Ljava/util/Map;

    .line 248
    if-eqz p1, :cond_0

    .line 249
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 250
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 251
    .local v0, e:Ljava/util/Map$Entry;
    iget-object v2, p0, Ltwitter4j/org/json/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    new-instance v4, Ltwitter4j/org/json/JSONObject;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v4, v5, p2}, Ltwitter4j/org/json/JSONObject;-><init>(Ljava/lang/Object;Z)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 254
    .end local v0           #e:Ljava/util/Map$Entry;
    .end local v1           #i:Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public constructor <init>(Ltwitter4j/org/json/JSONObject;[Ljava/lang/String;)V
    .locals 3
    .parameter "jo"
    .parameter "names"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 160
    invoke-direct {p0}, Ltwitter4j/org/json/JSONObject;-><init>()V

    .line 161
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 162
    aget-object v1, p2, v0

    aget-object v2, p2, v0

    invoke-virtual {p1, v2}, Ltwitter4j/org/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ltwitter4j/org/json/JSONObject;->putOnce(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/org/json/JSONObject;

    .line 161
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 164
    :cond_0
    return-void
.end method

.method public constructor <init>(Ltwitter4j/org/json/JSONTokener;)V
    .locals 4
    .parameter "x"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 174
    invoke-direct {p0}, Ltwitter4j/org/json/JSONObject;-><init>()V

    .line 178
    invoke-virtual {p1}, Ltwitter4j/org/json/JSONTokener;->nextClean()C

    move-result v2

    const/16 v3, 0x7b

    if-eq v2, v3, :cond_1

    .line 179
    const-string v2, "A JSONObject text must begin with \'{\'"

    invoke-virtual {p1, v2}, Ltwitter4j/org/json/JSONTokener;->syntaxError(Ljava/lang/String;)Ltwitter4j/org/json/JSONException;

    move-result-object v2

    throw v2

    .line 217
    .local v0, c:C
    .local v1, key:Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Ltwitter4j/org/json/JSONTokener;->back()V

    .line 182
    .end local v0           #c:C
    .end local v1           #key:Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Ltwitter4j/org/json/JSONTokener;->nextClean()C

    move-result v0

    .line 183
    .restart local v0       #c:C
    sparse-switch v0, :sswitch_data_0

    .line 189
    invoke-virtual {p1}, Ltwitter4j/org/json/JSONTokener;->back()V

    .line 190
    invoke-virtual {p1}, Ltwitter4j/org/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 197
    .restart local v1       #key:Ljava/lang/String;
    invoke-virtual {p1}, Ltwitter4j/org/json/JSONTokener;->nextClean()C

    move-result v0

    .line 198
    const/16 v2, 0x3d

    if-ne v0, v2, :cond_3

    .line 199
    invoke-virtual {p1}, Ltwitter4j/org/json/JSONTokener;->next()C

    move-result v2

    const/16 v3, 0x3e

    if-eq v2, v3, :cond_2

    .line 200
    invoke-virtual {p1}, Ltwitter4j/org/json/JSONTokener;->back()V

    .line 205
    :cond_2
    invoke-virtual {p1}, Ltwitter4j/org/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ltwitter4j/org/json/JSONObject;->putOnce(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/org/json/JSONObject;

    .line 211
    invoke-virtual {p1}, Ltwitter4j/org/json/JSONTokener;->nextClean()C

    move-result v2

    sparse-switch v2, :sswitch_data_1

    .line 222
    const-string v2, "Expected a \',\' or \'}\'"

    invoke-virtual {p1, v2}, Ltwitter4j/org/json/JSONTokener;->syntaxError(Ljava/lang/String;)Ltwitter4j/org/json/JSONException;

    move-result-object v2

    throw v2

    .line 185
    .end local v1           #key:Ljava/lang/String;
    :sswitch_0
    const-string v2, "A JSONObject text must end with \'}\'"

    invoke-virtual {p1, v2}, Ltwitter4j/org/json/JSONTokener;->syntaxError(Ljava/lang/String;)Ltwitter4j/org/json/JSONException;

    move-result-object v2

    throw v2

    .line 202
    .restart local v1       #key:Ljava/lang/String;
    :cond_3
    const/16 v2, 0x3a

    if-eq v0, v2, :cond_2

    .line 203
    const-string v2, "Expected a \':\' after a key"

    invoke-virtual {p1, v2}, Ltwitter4j/org/json/JSONTokener;->syntaxError(Ljava/lang/String;)Ltwitter4j/org/json/JSONException;

    move-result-object v2

    throw v2

    .line 214
    :sswitch_1
    invoke-virtual {p1}, Ltwitter4j/org/json/JSONTokener;->nextClean()C

    move-result v2

    const/16 v3, 0x7d

    if-ne v2, v3, :cond_0

    .line 220
    .end local v1           #key:Ljava/lang/String;
    :sswitch_2
    return-void

    .line 183
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x7d -> :sswitch_2
    .end sparse-switch

    .line 211
    :sswitch_data_1
    .sparse-switch
        0x2c -> :sswitch_1
        0x3b -> :sswitch_1
        0x7d -> :sswitch_2
    .end sparse-switch
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .parameter "x0"

    .prologue
    .line 356
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    .local v0, x1:Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    throw v1
.end method

.method public static doubleToString(D)Ljava/lang/String;
    .locals 4
    .parameter "d"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 469
    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 470
    :cond_0
    const-string v1, "null"

    .line 484
    :goto_0
    return-object v1

    .line 475
    :cond_1
    invoke-static {p0, p1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    .line 476
    .local v0, s:Ljava/lang/String;
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_3

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_3

    const/16 v1, 0x45

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_3

    .line 477
    :goto_1
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 478
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 480
    :cond_2
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 481
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_3
    move-object v1, v0

    .line 484
    goto :goto_0
.end method

.method public static getNames(Ljava/lang/Object;)[Ljava/lang/String;
    .locals 6
    .parameter "object"

    .prologue
    const/4 v5, 0x0

    .line 644
    if-nez p0, :cond_1

    .line 657
    :cond_0
    :goto_0
    return-object v5

    .line 647
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 648
    .local v2, klass:Ljava/lang/Class;
    invoke-virtual {v2}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 649
    .local v0, fields:[Ljava/lang/reflect/Field;
    array-length v3, v0

    .line 650
    .local v3, length:I
    if-eqz v3, :cond_0

    .line 653
    new-array v4, v3, [Ljava/lang/String;

    .line 654
    .local v4, names:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v3, :cond_2

    .line 655
    aget-object v5, v0, v1

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    .line 654
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move-object v5, v4

    .line 657
    goto :goto_0
.end method

.method public static getNames(Ltwitter4j/org/json/JSONObject;)[Ljava/lang/String;
    .locals 5
    .parameter "jo"

    .prologue
    .line 623
    invoke-virtual {p0}, Ltwitter4j/org/json/JSONObject;->length()I

    move-result v2

    .line 624
    .local v2, length:I
    if-nez v2, :cond_0

    .line 625
    const/4 v4, 0x0

    .line 634
    .end local p0
    :goto_0
    return-object v4

    .line 627
    .restart local p0
    :cond_0
    invoke-virtual {p0}, Ltwitter4j/org/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 628
    .local v0, i:Ljava/util/Iterator;
    new-array v3, v2, [Ljava/lang/String;

    .line 629
    .local v3, names:[Ljava/lang/String;
    const/4 v1, 0x0

    .line 630
    .end local p0
    .local v1, j:I
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 631
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    aput-object p0, v3, v1

    .line 632
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move-object v4, v3

    .line 634
    goto :goto_0
.end method

.method private isStandardProperty(Ljava/lang/Class;)Z
    .locals 1
    .parameter "clazz"

    .prologue
    .line 355
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ltwitter4j/org/json/JSONObject;->class$java$lang$Byte:Ljava/lang/Class;

    if-nez v0, :cond_1

    const-string v0, "java.lang.Byte"

    invoke-static {v0}, Ltwitter4j/org/json/JSONObject;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ltwitter4j/org/json/JSONObject;->class$java$lang$Byte:Ljava/lang/Class;

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ltwitter4j/org/json/JSONObject;->class$java$lang$Short:Ljava/lang/Class;

    if-nez v0, :cond_2

    const-string v0, "java.lang.Short"

    invoke-static {v0}, Ltwitter4j/org/json/JSONObject;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ltwitter4j/org/json/JSONObject;->class$java$lang$Short:Ljava/lang/Class;

    :goto_1
    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ltwitter4j/org/json/JSONObject;->class$java$lang$Integer:Ljava/lang/Class;

    if-nez v0, :cond_3

    const-string v0, "java.lang.Integer"

    invoke-static {v0}, Ltwitter4j/org/json/JSONObject;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ltwitter4j/org/json/JSONObject;->class$java$lang$Integer:Ljava/lang/Class;

    :goto_2
    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ltwitter4j/org/json/JSONObject;->class$java$lang$Long:Ljava/lang/Class;

    if-nez v0, :cond_4

    const-string v0, "java.lang.Long"

    invoke-static {v0}, Ltwitter4j/org/json/JSONObject;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ltwitter4j/org/json/JSONObject;->class$java$lang$Long:Ljava/lang/Class;

    :goto_3
    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ltwitter4j/org/json/JSONObject;->class$java$lang$Float:Ljava/lang/Class;

    if-nez v0, :cond_5

    const-string v0, "java.lang.Float"

    invoke-static {v0}, Ltwitter4j/org/json/JSONObject;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ltwitter4j/org/json/JSONObject;->class$java$lang$Float:Ljava/lang/Class;

    :goto_4
    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ltwitter4j/org/json/JSONObject;->class$java$lang$Double:Ljava/lang/Class;

    if-nez v0, :cond_6

    const-string v0, "java.lang.Double"

    invoke-static {v0}, Ltwitter4j/org/json/JSONObject;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ltwitter4j/org/json/JSONObject;->class$java$lang$Double:Ljava/lang/Class;

    :goto_5
    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ltwitter4j/org/json/JSONObject;->class$java$lang$Character:Ljava/lang/Class;

    if-nez v0, :cond_7

    const-string v0, "java.lang.Character"

    invoke-static {v0}, Ltwitter4j/org/json/JSONObject;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ltwitter4j/org/json/JSONObject;->class$java$lang$Character:Ljava/lang/Class;

    :goto_6
    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ltwitter4j/org/json/JSONObject;->class$java$lang$String:Ljava/lang/Class;

    if-nez v0, :cond_8

    const-string v0, "java.lang.String"

    invoke-static {v0}, Ltwitter4j/org/json/JSONObject;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ltwitter4j/org/json/JSONObject;->class$java$lang$String:Ljava/lang/Class;

    :goto_7
    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ltwitter4j/org/json/JSONObject;->class$java$lang$Boolean:Ljava/lang/Class;

    if-nez v0, :cond_9

    const-string v0, "java.lang.Boolean"

    invoke-static {v0}, Ltwitter4j/org/json/JSONObject;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ltwitter4j/org/json/JSONObject;->class$java$lang$Boolean:Ljava/lang/Class;

    :goto_8
    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_0
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_1
    sget-object v0, Ltwitter4j/org/json/JSONObject;->class$java$lang$Byte:Ljava/lang/Class;

    goto/16 :goto_0

    :cond_2
    sget-object v0, Ltwitter4j/org/json/JSONObject;->class$java$lang$Short:Ljava/lang/Class;

    goto/16 :goto_1

    :cond_3
    sget-object v0, Ltwitter4j/org/json/JSONObject;->class$java$lang$Integer:Ljava/lang/Class;

    goto :goto_2

    :cond_4
    sget-object v0, Ltwitter4j/org/json/JSONObject;->class$java$lang$Long:Ljava/lang/Class;

    goto :goto_3

    :cond_5
    sget-object v0, Ltwitter4j/org/json/JSONObject;->class$java$lang$Float:Ljava/lang/Class;

    goto :goto_4

    :cond_6
    sget-object v0, Ltwitter4j/org/json/JSONObject;->class$java$lang$Double:Ljava/lang/Class;

    goto :goto_5

    :cond_7
    sget-object v0, Ltwitter4j/org/json/JSONObject;->class$java$lang$Character:Ljava/lang/Class;

    goto :goto_6

    :cond_8
    sget-object v0, Ltwitter4j/org/json/JSONObject;->class$java$lang$String:Ljava/lang/Class;

    goto :goto_7

    :cond_9
    sget-object v0, Ltwitter4j/org/json/JSONObject;->class$java$lang$Boolean:Ljava/lang/Class;

    goto :goto_8

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static numberToString(Ljava/lang/Number;)Ljava/lang/String;
    .locals 4
    .parameter "n"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/org/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 738
    if-nez p0, :cond_0

    .line 739
    new-instance v1, Ltwitter4j/org/json/JSONException;

    const-string v2, "Null pointer"

    invoke-direct {v1, v2}, Ltwitter4j/org/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 741
    :cond_0
    invoke-static {p0}, Ltwitter4j/org/json/JSONObject;->testValidity(Ljava/lang/Object;)V

    .line 745
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 746
    .local v0, s:Ljava/lang/String;
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_2

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_2

    const/16 v1, 0x45

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_2

    .line 747
    :goto_0
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 748
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 750
    :cond_1
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 751
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 754
    :cond_2
    return-object v0
.end method

.method private populateInternalMap(Ljava/lang/Object;Z)V
    .locals 12
    .parameter "bean"
    .parameter "includeSuperClass"

    .prologue
    const/4 v11, 0x1

    .line 298
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 302
    .local v3, klass:Ljava/lang/Class;
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    if-nez v8, :cond_0

    .line 303
    const/4 p2, 0x0

    .line 306
    :cond_0
    if-eqz p2, :cond_4

    invoke-virtual {v3}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v8

    move-object v5, v8

    .line 308
    .local v5, methods:[Ljava/lang/reflect/Method;
    :goto_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v8, v5

    if-ge v1, v8, :cond_e

    .line 310
    :try_start_0
    aget-object v4, v5, v1

    .line 311
    .local v4, method:Ljava/lang/reflect/Method;
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    .line 312
    .local v6, name:Ljava/lang/String;
    const-string v2, ""

    .line 313
    .local v2, key:Ljava/lang/String;
    const-string v8, "get"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 314
    const/4 v8, 0x3

    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 318
    :cond_1
    :goto_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_3

    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v8

    array-length v8, v8

    if-nez v8, :cond_3

    .line 321
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    if-ne v8, v11, :cond_6

    .line 322
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 328
    :cond_2
    :goto_3
    const/4 v8, 0x0

    check-cast v8, [Ljava/lang/Object;

    invoke-virtual {v4, p1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 329
    .local v7, result:Ljava/lang/Object;
    if-nez v7, :cond_7

    .line 330
    iget-object v8, p0, Ltwitter4j/org/json/JSONObject;->map:Ljava/util/Map;

    sget-object v9, Ltwitter4j/org/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-interface {v8, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    .end local v7           #result:Ljava/lang/Object;
    :cond_3
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 306
    .end local v1           #i:I
    .end local v2           #key:Ljava/lang/String;
    .end local v4           #method:Ljava/lang/reflect/Method;
    .end local v5           #methods:[Ljava/lang/reflect/Method;
    .end local v6           #name:Ljava/lang/String;
    :cond_4
    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v8

    move-object v5, v8

    goto :goto_0

    .line 315
    .restart local v1       #i:I
    .restart local v2       #key:Ljava/lang/String;
    .restart local v4       #method:Ljava/lang/reflect/Method;
    .restart local v5       #methods:[Ljava/lang/reflect/Method;
    .restart local v6       #name:Ljava/lang/String;
    :cond_5
    :try_start_1
    const-string v8, "is"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 316
    const/4 v8, 0x2

    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 323
    :cond_6
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v8

    if-nez v8, :cond_2

    .line 324
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual {v2, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 331
    .restart local v7       #result:Ljava/lang/Object;
    :cond_7
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->isArray()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 332
    iget-object v8, p0, Ltwitter4j/org/json/JSONObject;->map:Ljava/util/Map;

    new-instance v9, Ltwitter4j/org/json/JSONArray;

    invoke-direct {v9, v7, p2}, Ltwitter4j/org/json/JSONArray;-><init>(Ljava/lang/Object;Z)V

    invoke-interface {v8, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 348
    .end local v2           #key:Ljava/lang/String;
    .end local v4           #method:Ljava/lang/reflect/Method;
    .end local v6           #name:Ljava/lang/String;
    .end local v7           #result:Ljava/lang/Object;
    :catch_0
    move-exception v8

    move-object v0, v8

    .line 349
    .local v0, e:Ljava/lang/Exception;
    new-instance v8, Ljava/lang/RuntimeException;

    invoke-direct {v8, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v8

    .line 333
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v2       #key:Ljava/lang/String;
    .restart local v4       #method:Ljava/lang/reflect/Method;
    .restart local v6       #name:Ljava/lang/String;
    .restart local v7       #result:Ljava/lang/Object;
    :cond_8
    :try_start_2
    instance-of v8, v7, Ljava/util/Collection;

    if-eqz v8, :cond_9

    .line 334
    iget-object v8, p0, Ltwitter4j/org/json/JSONObject;->map:Ljava/util/Map;

    new-instance v9, Ltwitter4j/org/json/JSONArray;

    check-cast v7, Ljava/util/Collection;

    .end local v7           #result:Ljava/lang/Object;
    invoke-direct {v9, v7, p2}, Ltwitter4j/org/json/JSONArray;-><init>(Ljava/util/Collection;Z)V

    invoke-interface {v8, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 335
    .restart local v7       #result:Ljava/lang/Object;
    :cond_9
    instance-of v8, v7, Ljava/util/Map;

    if-eqz v8, :cond_a

    .line 336
    iget-object v8, p0, Ltwitter4j/org/json/JSONObject;->map:Ljava/util/Map;

    new-instance v9, Ltwitter4j/org/json/JSONObject;

    check-cast v7, Ljava/util/Map;

    .end local v7           #result:Ljava/lang/Object;
    invoke-direct {v9, v7, p2}, Ltwitter4j/org/json/JSONObject;-><init>(Ljava/util/Map;Z)V

    invoke-interface {v8, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 337
    .restart local v7       #result:Ljava/lang/Object;
    :cond_a
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-direct {p0, v8}, Ltwitter4j/org/json/JSONObject;->isStandardProperty(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 338
    iget-object v8, p0, Ltwitter4j/org/json/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v8, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 340
    :cond_b
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "java"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_c

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    if-nez v8, :cond_d

    .line 342
    :cond_c
    iget-object v8, p0, Ltwitter4j/org/json/JSONObject;->map:Ljava/util/Map;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 344
    :cond_d
    iget-object v8, p0, Ltwitter4j/org/json/JSONObject;->map:Ljava/util/Map;

    new-instance v9, Ltwitter4j/org/json/JSONObject;

    invoke-direct {v9, v7, p2}, Ltwitter4j/org/json/JSONObject;-><init>(Ljava/lang/Object;Z)V

    invoke-interface {v8, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_4

    .line 352
    .end local v2           #key:Ljava/lang/String;
    .end local v4           #method:Ljava/lang/reflect/Method;
    .end local v6           #name:Ljava/lang/String;
    .end local v7           #result:Ljava/lang/Object;
    :cond_e
    return-void
.end method

.method public static quote(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "string"

    .prologue
    const/16 v10, 0x5c

    const/16 v9, 0x22

    .line 1111
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    .line 1112
    :cond_0
    const-string v6, "\"\""

    .line 1164
    :goto_0
    return-object v6

    .line 1116
    :cond_1
    const/4 v1, 0x0

    .line 1118
    .local v1, c:C
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 1119
    .local v3, len:I
    new-instance v4, Ljava/lang/StringBuffer;

    add-int/lit8 v6, v3, 0x4

    invoke-direct {v4, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1122
    .local v4, sb:Ljava/lang/StringBuffer;
    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1123
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_6

    .line 1124
    move v0, v1

    .line 1125
    .local v0, b:C
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1126
    sparse-switch v1, :sswitch_data_0

    .line 1154
    const/16 v6, 0x20

    if-lt v1, v6, :cond_3

    const/16 v6, 0x80

    if-lt v1, v6, :cond_2

    const/16 v6, 0xa0

    if-lt v1, v6, :cond_3

    :cond_2
    const/16 v6, 0x2000

    if-lt v1, v6, :cond_5

    const/16 v6, 0x2100

    if-ge v1, v6, :cond_5

    .line 1156
    :cond_3
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "000"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1157
    .local v5, t:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "\\u"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x4

    sub-int/2addr v7, v8

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1123
    .end local v5           #t:Ljava/lang/String;
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1129
    :sswitch_0
    invoke-virtual {v4, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1130
    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 1133
    :sswitch_1
    const/16 v6, 0x3c

    if-ne v0, v6, :cond_4

    .line 1134
    invoke-virtual {v4, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1136
    :cond_4
    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 1139
    :sswitch_2
    const-string v6, "\\b"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 1142
    :sswitch_3
    const-string v6, "\\t"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 1145
    :sswitch_4
    const-string v6, "\\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 1148
    :sswitch_5
    const-string v6, "\\f"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 1151
    :sswitch_6
    const-string v6, "\\r"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 1159
    :cond_5
    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 1163
    .end local v0           #b:C
    :cond_6
    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1164
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 1126
    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_2
        0x9 -> :sswitch_3
        0xa -> :sswitch_4
        0xc -> :sswitch_5
        0xd -> :sswitch_6
        0x22 -> :sswitch_0
        0x2f -> :sswitch_1
        0x5c -> :sswitch_0
    .end sparse-switch
.end method

.method public static stringToValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 7
    .parameter "s"

    .prologue
    const/16 v6, 0x30

    const/4 v4, 0x2

    const/4 v5, 0x1

    .line 1194
    const-string v3, ""

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, p0

    .line 1248
    :goto_0
    return-object v3

    .line 1197
    :cond_0
    const-string v3, "true"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1198
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    .line 1200
    :cond_1
    const-string v3, "false"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1201
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 1203
    :cond_2
    const-string v3, "null"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1204
    sget-object v3, Ltwitter4j/org/json/JSONObject;->NULL:Ljava/lang/Object;

    goto :goto_0

    .line 1215
    :cond_3
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1216
    .local v0, b:C
    if-lt v0, v6, :cond_4

    const/16 v3, 0x39

    if-le v0, v3, :cond_5

    :cond_4
    const/16 v3, 0x2e

    if-eq v0, v3, :cond_5

    const/16 v3, 0x2d

    if-eq v0, v3, :cond_5

    const/16 v3, 0x2b

    if-ne v0, v3, :cond_8

    .line 1217
    :cond_5
    if-ne v0, v6, :cond_7

    .line 1218
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v4, :cond_9

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x78

    if-eq v3, v4, :cond_6

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x58

    if-ne v3, v4, :cond_9

    .line 1221
    :cond_6
    :try_start_0
    new-instance v3, Ljava/lang/Integer;

    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1223
    :catch_0
    move-exception v3

    .line 1235
    :cond_7
    :goto_1
    :try_start_1
    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p0}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1236
    :catch_1
    move-exception v3

    move-object v1, v3

    .line 1238
    .local v1, e:Ljava/lang/Exception;
    :try_start_2
    new-instance v3, Ljava/lang/Long;

    invoke-direct {v3, p0}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 1239
    :catch_2
    move-exception v3

    move-object v2, v3

    .line 1241
    .local v2, f:Ljava/lang/Exception;
    :try_start_3
    new-instance v3, Ljava/lang/Double;

    invoke-direct {v3, p0}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    .line 1242
    :catch_3
    move-exception v3

    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #f:Ljava/lang/Exception;
    :cond_8
    move-object v3, p0

    .line 1248
    goto :goto_0

    .line 1228
    :cond_9
    :try_start_4
    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x8

    invoke-static {p0, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_0

    .line 1229
    :catch_4
    move-exception v3

    goto :goto_1
.end method

.method static testValidity(Ljava/lang/Object;)V
    .locals 3
    .parameter "o"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1258
    if-eqz p0, :cond_3

    .line 1259
    instance-of v1, p0, Ljava/lang/Double;

    if-eqz v1, :cond_1

    .line 1260
    move-object v0, p0

    check-cast v0, Ljava/lang/Double;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Double;->isInfinite()Z

    move-result v1

    if-nez v1, :cond_0

    check-cast p0, Ljava/lang/Double;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/Double;->isNaN()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1261
    :cond_0
    new-instance v1, Ltwitter4j/org/json/JSONException;

    const-string v2, "JSON does not allow non-finite numbers."

    invoke-direct {v1, v2}, Ltwitter4j/org/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1264
    .restart local p0
    :cond_1
    instance-of v1, p0, Ljava/lang/Float;

    if-eqz v1, :cond_3

    .line 1265
    move-object v0, p0

    check-cast v0, Ljava/lang/Float;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Float;->isInfinite()Z

    move-result v1

    if-nez v1, :cond_2

    check-cast p0, Ljava/lang/Float;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/Float;->isNaN()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1266
    :cond_2
    new-instance v1, Ltwitter4j/org/json/JSONException;

    const-string v2, "JSON does not allow non-finite numbers."

    invoke-direct {v1, v2}, Ltwitter4j/org/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1271
    :cond_3
    return-void
.end method

.method static valueToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 5
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1423
    if-eqz p0, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1424
    :cond_0
    const-string v2, "null"

    .line 1454
    .end local p0
    :goto_0
    return-object v2

    .line 1426
    .restart local p0
    :cond_1
    instance-of v2, p0, Ltwitter4j/org/json/JSONString;

    if-eqz v2, :cond_3

    .line 1429
    :try_start_0
    check-cast p0, Ltwitter4j/org/json/JSONString;

    .end local p0
    invoke-interface {p0}, Ltwitter4j/org/json/JSONString;->toJSONString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1433
    .local v1, o:Ljava/lang/String;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 1434
    check-cast v1, Ljava/lang/String;

    .end local v1           #o:Ljava/lang/String;
    move-object v2, v1

    goto :goto_0

    .line 1430
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 1431
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Ltwitter4j/org/json/JSONException;

    invoke-direct {v2, v0}, Ltwitter4j/org/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 1436
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #o:Ljava/lang/String;
    :cond_2
    new-instance v2, Ltwitter4j/org/json/JSONException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Bad value from toJSONString: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ltwitter4j/org/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1438
    .end local v1           #o:Ljava/lang/String;
    .restart local p0
    :cond_3
    instance-of v2, p0, Ljava/lang/Number;

    if-eqz v2, :cond_4

    .line 1439
    check-cast p0, Ljava/lang/Number;

    .end local p0
    invoke-static {p0}, Ltwitter4j/org/json/JSONObject;->numberToString(Ljava/lang/Number;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1441
    .restart local p0
    :cond_4
    instance-of v2, p0, Ljava/lang/Boolean;

    if-nez v2, :cond_5

    instance-of v2, p0, Ltwitter4j/org/json/JSONObject;

    if-nez v2, :cond_5

    instance-of v2, p0, Ltwitter4j/org/json/JSONArray;

    if-eqz v2, :cond_6

    .line 1443
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1445
    :cond_6
    instance-of v2, p0, Ljava/util/Map;

    if-eqz v2, :cond_7

    .line 1446
    new-instance v2, Ltwitter4j/org/json/JSONObject;

    check-cast p0, Ljava/util/Map;

    .end local p0
    invoke-direct {v2, p0}, Ltwitter4j/org/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v2}, Ltwitter4j/org/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1448
    .restart local p0
    :cond_7
    instance-of v2, p0, Ljava/util/Collection;

    if-eqz v2, :cond_8

    .line 1449
    new-instance v2, Ltwitter4j/org/json/JSONArray;

    check-cast p0, Ljava/util/Collection;

    .end local p0
    invoke-direct {v2, p0}, Ltwitter4j/org/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ltwitter4j/org/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1451
    .restart local p0
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1452
    new-instance v2, Ltwitter4j/org/json/JSONArray;

    invoke-direct {v2, p0}, Ltwitter4j/org/json/JSONArray;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ltwitter4j/org/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 1454
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ltwitter4j/org/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0
.end method

.method static valueToString(Ljava/lang/Object;II)Ljava/lang/String;
    .locals 3
    .parameter "value"
    .parameter "indentFactor"
    .parameter "indent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1474
    if-eqz p0, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1475
    :cond_0
    const-string v2, "null"

    .line 1508
    .end local p0
    :goto_0
    return-object v2

    .line 1478
    .restart local p0
    :cond_1
    :try_start_0
    instance-of v2, p0, Ltwitter4j/org/json/JSONString;

    if-eqz v2, :cond_2

    .line 1479
    move-object v0, p0

    check-cast v0, Ltwitter4j/org/json/JSONString;

    move-object v2, v0

    invoke-interface {v2}, Ltwitter4j/org/json/JSONString;->toJSONString()Ljava/lang/String;

    move-result-object v1

    .line 1480
    .local v1, o:Ljava/lang/String;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 1481
    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #o:Ljava/lang/String;
    move-object v2, v1

    goto :goto_0

    .line 1484
    :catch_0
    move-exception v2

    .line 1487
    :cond_2
    instance-of v2, p0, Ljava/lang/Number;

    if-eqz v2, :cond_3

    .line 1488
    check-cast p0, Ljava/lang/Number;

    .end local p0
    invoke-static {p0}, Ltwitter4j/org/json/JSONObject;->numberToString(Ljava/lang/Number;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1490
    .restart local p0
    :cond_3
    instance-of v2, p0, Ljava/lang/Boolean;

    if-eqz v2, :cond_4

    .line 1491
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1493
    :cond_4
    instance-of v2, p0, Ltwitter4j/org/json/JSONObject;

    if-eqz v2, :cond_5

    .line 1494
    check-cast p0, Ltwitter4j/org/json/JSONObject;

    .end local p0
    invoke-virtual {p0, p1, p2}, Ltwitter4j/org/json/JSONObject;->toString(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1496
    .restart local p0
    :cond_5
    instance-of v2, p0, Ltwitter4j/org/json/JSONArray;

    if-eqz v2, :cond_6

    .line 1497
    check-cast p0, Ltwitter4j/org/json/JSONArray;

    .end local p0
    invoke-virtual {p0, p1, p2}, Ltwitter4j/org/json/JSONArray;->toString(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1499
    .restart local p0
    :cond_6
    instance-of v2, p0, Ljava/util/Map;

    if-eqz v2, :cond_7

    .line 1500
    new-instance v2, Ltwitter4j/org/json/JSONObject;

    check-cast p0, Ljava/util/Map;

    .end local p0
    invoke-direct {v2, p0}, Ltwitter4j/org/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v2, p1, p2}, Ltwitter4j/org/json/JSONObject;->toString(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1502
    .restart local p0
    :cond_7
    instance-of v2, p0, Ljava/util/Collection;

    if-eqz v2, :cond_8

    .line 1503
    new-instance v2, Ltwitter4j/org/json/JSONArray;

    check-cast p0, Ljava/util/Collection;

    .end local p0
    invoke-direct {v2, p0}, Ltwitter4j/org/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, p1, p2}, Ltwitter4j/org/json/JSONArray;->toString(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1505
    .restart local p0
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1506
    new-instance v2, Ltwitter4j/org/json/JSONArray;

    invoke-direct {v2, p0}, Ltwitter4j/org/json/JSONArray;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, p1, p2}, Ltwitter4j/org/json/JSONArray;->toString(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1508
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ltwitter4j/org/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method public accumulate(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/org/json/JSONObject;
    .locals 2
    .parameter "key"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 420
    invoke-static {p2}, Ltwitter4j/org/json/JSONObject;->testValidity(Ljava/lang/Object;)V

    .line 421
    invoke-virtual {p0, p1}, Ltwitter4j/org/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 422
    .local v0, o:Ljava/lang/Object;
    if-nez v0, :cond_1

    .line 423
    instance-of v1, p2, Ltwitter4j/org/json/JSONArray;

    if-eqz v1, :cond_0

    new-instance v1, Ltwitter4j/org/json/JSONArray;

    invoke-direct {v1}, Ltwitter4j/org/json/JSONArray;-><init>()V

    invoke-virtual {v1, p2}, Ltwitter4j/org/json/JSONArray;->put(Ljava/lang/Object;)Ltwitter4j/org/json/JSONArray;

    move-result-object v1

    :goto_0
    invoke-virtual {p0, p1, v1}, Ltwitter4j/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/org/json/JSONObject;

    .line 431
    .end local v0           #o:Ljava/lang/Object;
    :goto_1
    return-object p0

    .restart local v0       #o:Ljava/lang/Object;
    :cond_0
    move-object v1, p2

    .line 423
    goto :goto_0

    .line 426
    :cond_1
    instance-of v1, v0, Ltwitter4j/org/json/JSONArray;

    if-eqz v1, :cond_2

    .line 427
    check-cast v0, Ltwitter4j/org/json/JSONArray;

    .end local v0           #o:Ljava/lang/Object;
    invoke-virtual {v0, p2}, Ltwitter4j/org/json/JSONArray;->put(Ljava/lang/Object;)Ltwitter4j/org/json/JSONArray;

    goto :goto_1

    .line 429
    .restart local v0       #o:Ljava/lang/Object;
    :cond_2
    new-instance v1, Ltwitter4j/org/json/JSONArray;

    invoke-direct {v1}, Ltwitter4j/org/json/JSONArray;-><init>()V

    invoke-virtual {v1, v0}, Ltwitter4j/org/json/JSONArray;->put(Ljava/lang/Object;)Ltwitter4j/org/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Ltwitter4j/org/json/JSONArray;->put(Ljava/lang/Object;)Ltwitter4j/org/json/JSONArray;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Ltwitter4j/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/org/json/JSONObject;

    goto :goto_1
.end method

.method public append(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/org/json/JSONObject;
    .locals 4
    .parameter "key"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 448
    invoke-static {p2}, Ltwitter4j/org/json/JSONObject;->testValidity(Ljava/lang/Object;)V

    .line 449
    invoke-virtual {p0, p1}, Ltwitter4j/org/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 450
    .local v0, o:Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 451
    new-instance v1, Ltwitter4j/org/json/JSONArray;

    invoke-direct {v1}, Ltwitter4j/org/json/JSONArray;-><init>()V

    invoke-virtual {v1, p2}, Ltwitter4j/org/json/JSONArray;->put(Ljava/lang/Object;)Ltwitter4j/org/json/JSONArray;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Ltwitter4j/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/org/json/JSONObject;

    .line 458
    .end local v0           #o:Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 452
    .restart local v0       #o:Ljava/lang/Object;
    :cond_0
    instance-of v1, v0, Ltwitter4j/org/json/JSONArray;

    if-eqz v1, :cond_1

    .line 453
    check-cast v0, Ltwitter4j/org/json/JSONArray;

    .end local v0           #o:Ljava/lang/Object;
    invoke-virtual {v0, p2}, Ltwitter4j/org/json/JSONArray;->put(Ljava/lang/Object;)Ltwitter4j/org/json/JSONArray;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Ltwitter4j/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/org/json/JSONObject;

    goto :goto_0

    .line 455
    .restart local v0       #o:Ljava/lang/Object;
    :cond_1
    new-instance v1, Ltwitter4j/org/json/JSONException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "JSONObject["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "] is not a JSONArray."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ltwitter4j/org/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 496
    invoke-virtual {p0, p1}, Ltwitter4j/org/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 497
    .local v0, o:Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 498
    new-instance v1, Ltwitter4j/org/json/JSONException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "JSONObject["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {p1}, Ltwitter4j/org/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "] not found."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ltwitter4j/org/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 501
    :cond_0
    return-object v0
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 5
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 514
    invoke-virtual {p0, p1}, Ltwitter4j/org/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 515
    .local v1, o:Ljava/lang/Object;
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    const-string v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 518
    :cond_0
    const/4 v2, 0x0

    .line 522
    .end local v1           #o:Ljava/lang/Object;
    :goto_0
    return v2

    .line 519
    .restart local v1       #o:Ljava/lang/Object;
    :cond_1
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_3

    check-cast v1, Ljava/lang/String;

    .end local v1           #o:Ljava/lang/Object;
    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 522
    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    .line 524
    :cond_3
    new-instance v2, Ltwitter4j/org/json/JSONException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "JSONObject["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-static {p1}, Ltwitter4j/org/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "] is not a Boolean."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ltwitter4j/org/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getDouble(Ljava/lang/String;)D
    .locals 5
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 537
    invoke-virtual {p0, p1}, Ltwitter4j/org/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 539
    .local v1, o:Ljava/lang/Object;
    :try_start_0
    instance-of v2, v1, Ljava/lang/Number;

    if-eqz v2, :cond_0

    check-cast v1, Ljava/lang/Number;

    .end local v1           #o:Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    :goto_0
    return-wide v2

    .restart local v1       #o:Ljava/lang/Object;
    :cond_0
    check-cast v1, Ljava/lang/String;

    .end local v1           #o:Ljava/lang/Object;
    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    goto :goto_0

    .line 542
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 543
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Ltwitter4j/org/json/JSONException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "JSONObject["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-static {p1}, Ltwitter4j/org/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "] is not a number."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ltwitter4j/org/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 3
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 559
    invoke-virtual {p0, p1}, Ltwitter4j/org/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 560
    .local v0, o:Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Number;

    .end local v0           #o:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v1

    :goto_0
    return v1

    .restart local v0       #o:Ljava/lang/Object;
    :cond_0
    invoke-virtual {p0, p1}, Ltwitter4j/org/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    double-to-int v1, v1

    goto :goto_0
.end method

.method public getJSONArray(Ljava/lang/String;)Ltwitter4j/org/json/JSONArray;
    .locals 4
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 574
    invoke-virtual {p0, p1}, Ltwitter4j/org/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 575
    .local v0, o:Ljava/lang/Object;
    instance-of v1, v0, Ltwitter4j/org/json/JSONArray;

    if-eqz v1, :cond_0

    .line 576
    check-cast v0, Ltwitter4j/org/json/JSONArray;

    .end local v0           #o:Ljava/lang/Object;
    return-object v0

    .line 578
    .restart local v0       #o:Ljava/lang/Object;
    :cond_0
    new-instance v1, Ltwitter4j/org/json/JSONException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "JSONObject["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {p1}, Ltwitter4j/org/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "] is not a JSONArray."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ltwitter4j/org/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getJSONObject(Ljava/lang/String;)Ltwitter4j/org/json/JSONObject;
    .locals 4
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 592
    invoke-virtual {p0, p1}, Ltwitter4j/org/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 593
    .local v0, o:Ljava/lang/Object;
    instance-of v1, v0, Ltwitter4j/org/json/JSONObject;

    if-eqz v1, :cond_0

    .line 594
    check-cast v0, Ltwitter4j/org/json/JSONObject;

    .end local v0           #o:Ljava/lang/Object;
    return-object v0

    .line 596
    .restart local v0       #o:Ljava/lang/Object;
    :cond_0
    new-instance v1, Ltwitter4j/org/json/JSONException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "JSONObject["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {p1}, Ltwitter4j/org/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "] is not a JSONObject."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ltwitter4j/org/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 3
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 611
    invoke-virtual {p0, p1}, Ltwitter4j/org/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 612
    .local v0, o:Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Number;

    .end local v0           #o:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    :goto_0
    return-wide v1

    .restart local v0       #o:Ljava/lang/Object;
    :cond_0
    invoke-virtual {p0, p1}, Ltwitter4j/org/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    double-to-long v1, v1

    goto :goto_0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 669
    invoke-virtual {p0, p1}, Ltwitter4j/org/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public has(Ljava/lang/String;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 679
    iget-object v0, p0, Ltwitter4j/org/json/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isNull(Ljava/lang/String;)Z
    .locals 2
    .parameter "key"

    .prologue
    .line 691
    sget-object v0, Ltwitter4j/org/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Ltwitter4j/org/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public keys()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 701
    iget-object v0, p0, Ltwitter4j/org/json/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 711
    iget-object v0, p0, Ltwitter4j/org/json/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public names()Ltwitter4j/org/json/JSONArray;
    .locals 3

    .prologue
    .line 722
    new-instance v0, Ltwitter4j/org/json/JSONArray;

    invoke-direct {v0}, Ltwitter4j/org/json/JSONArray;-><init>()V

    .line 723
    .local v0, ja:Ltwitter4j/org/json/JSONArray;
    invoke-virtual {p0}, Ltwitter4j/org/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 724
    .local v1, keys:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 725
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ltwitter4j/org/json/JSONArray;->put(Ljava/lang/Object;)Ltwitter4j/org/json/JSONArray;

    goto :goto_0

    .line 727
    :cond_0
    invoke-virtual {v0}, Ltwitter4j/org/json/JSONArray;->length()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    :goto_1
    return-object v2

    :cond_1
    move-object v2, v0

    goto :goto_1
.end method

.method public opt(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "key"

    .prologue
    .line 764
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ltwitter4j/org/json/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public optBoolean(Ljava/lang/String;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 777
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ltwitter4j/org/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public optBoolean(Ljava/lang/String;Z)Z
    .locals 2
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 792
    :try_start_0
    invoke-virtual {p0, p1}, Ltwitter4j/org/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 794
    :goto_0
    return v1

    .line 793
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    move v1, p2

    .line 794
    goto :goto_0
.end method

.method public optDouble(Ljava/lang/String;)D
    .locals 2
    .parameter "key"

    .prologue
    .line 823
    const-wide/high16 v0, 0x7ff8

    invoke-virtual {p0, p1, v0, v1}, Ltwitter4j/org/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public optDouble(Ljava/lang/String;D)D
    .locals 4
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 839
    :try_start_0
    invoke-virtual {p0, p1}, Ltwitter4j/org/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 840
    .local v1, o:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Number;

    if-eqz v2, :cond_0

    check-cast v1, Ljava/lang/Number;

    .end local v1           #o:Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    .line 843
    :goto_0
    return-wide v2

    .line 840
    .restart local v1       #o:Ljava/lang/Object;
    :cond_0
    new-instance v2, Ljava/lang/Double;

    check-cast v1, Ljava/lang/String;

    .end local v1           #o:Ljava/lang/Object;
    invoke-direct {v2, v1}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    goto :goto_0

    .line 842
    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, e:Ljava/lang/Exception;
    move-wide v2, p2

    .line 843
    goto :goto_0
.end method

.method public optInt(Ljava/lang/String;)I
    .locals 1
    .parameter "key"

    .prologue
    .line 858
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ltwitter4j/org/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public optInt(Ljava/lang/String;I)I
    .locals 2
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 874
    :try_start_0
    invoke-virtual {p0, p1}, Ltwitter4j/org/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 876
    :goto_0
    return v1

    .line 875
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    move v1, p2

    .line 876
    goto :goto_0
.end method

.method public optJSONArray(Ljava/lang/String;)Ltwitter4j/org/json/JSONArray;
    .locals 2
    .parameter "key"

    .prologue
    .line 890
    invoke-virtual {p0, p1}, Ltwitter4j/org/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 891
    .local v0, o:Ljava/lang/Object;
    instance-of v1, v0, Ltwitter4j/org/json/JSONArray;

    if-eqz v1, :cond_0

    check-cast v0, Ltwitter4j/org/json/JSONArray;

    .end local v0           #o:Ljava/lang/Object;
    move-object v1, v0

    :goto_0
    return-object v1

    .restart local v0       #o:Ljava/lang/Object;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public optJSONObject(Ljava/lang/String;)Ltwitter4j/org/json/JSONObject;
    .locals 2
    .parameter "key"

    .prologue
    .line 904
    invoke-virtual {p0, p1}, Ltwitter4j/org/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 905
    .local v0, o:Ljava/lang/Object;
    instance-of v1, v0, Ltwitter4j/org/json/JSONObject;

    if-eqz v1, :cond_0

    check-cast v0, Ltwitter4j/org/json/JSONObject;

    .end local v0           #o:Ljava/lang/Object;
    move-object v1, v0

    :goto_0
    return-object v1

    .restart local v0       #o:Ljava/lang/Object;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public optLong(Ljava/lang/String;)J
    .locals 2
    .parameter "key"

    .prologue
    .line 919
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Ltwitter4j/org/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public optLong(Ljava/lang/String;J)J
    .locals 3
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 935
    :try_start_0
    invoke-virtual {p0, p1}, Ltwitter4j/org/json/JSONObject;->getLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 937
    :goto_0
    return-wide v1

    .line 936
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    move-wide v1, p2

    .line 937
    goto :goto_0
.end method

.method public optString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "key"

    .prologue
    .line 951
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Ltwitter4j/org/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 964
    invoke-virtual {p0, p1}, Ltwitter4j/org/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 965
    .local v0, o:Ljava/lang/Object;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    move-object v1, p2

    goto :goto_0
.end method

.method public put(Ljava/lang/String;D)Ltwitter4j/org/json/JSONObject;
    .locals 1
    .parameter "key"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 992
    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, p2, p3}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {p0, p1, v0}, Ltwitter4j/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/org/json/JSONObject;

    .line 993
    return-object p0
.end method

.method public put(Ljava/lang/String;I)Ltwitter4j/org/json/JSONObject;
    .locals 1
    .parameter "key"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1006
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Ltwitter4j/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/org/json/JSONObject;

    .line 1007
    return-object p0
.end method

.method public put(Ljava/lang/String;J)Ltwitter4j/org/json/JSONObject;
    .locals 1
    .parameter "key"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1020
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p2, p3}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {p0, p1, v0}, Ltwitter4j/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/org/json/JSONObject;

    .line 1021
    return-object p0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/org/json/JSONObject;
    .locals 2
    .parameter "key"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1051
    if-nez p1, :cond_0

    .line 1052
    new-instance v0, Ltwitter4j/org/json/JSONException;

    const-string v1, "Null key."

    invoke-direct {v0, v1}, Ltwitter4j/org/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1054
    :cond_0
    if-eqz p2, :cond_1

    .line 1055
    invoke-static {p2}, Ltwitter4j/org/json/JSONObject;->testValidity(Ljava/lang/Object;)V

    .line 1056
    iget-object v0, p0, Ltwitter4j/org/json/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1060
    :goto_0
    return-object p0

    .line 1058
    :cond_1
    invoke-virtual {p0, p1}, Ltwitter4j/org/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public put(Ljava/lang/String;Ljava/util/Collection;)Ltwitter4j/org/json/JSONObject;
    .locals 1
    .parameter "key"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 808
    new-instance v0, Ltwitter4j/org/json/JSONArray;

    invoke-direct {v0, p2}, Ltwitter4j/org/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, p1, v0}, Ltwitter4j/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/org/json/JSONObject;

    .line 809
    return-object p0
.end method

.method public put(Ljava/lang/String;Ljava/util/Map;)Ltwitter4j/org/json/JSONObject;
    .locals 1
    .parameter "key"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1034
    new-instance v0, Ltwitter4j/org/json/JSONObject;

    invoke-direct {v0, p2}, Ltwitter4j/org/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {p0, p1, v0}, Ltwitter4j/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/org/json/JSONObject;

    .line 1035
    return-object p0
.end method

.method public put(Ljava/lang/String;Z)Ltwitter4j/org/json/JSONObject;
    .locals 1
    .parameter "key"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 978
    if-eqz p2, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    invoke-virtual {p0, p1, v0}, Ltwitter4j/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/org/json/JSONObject;

    .line 979
    return-object p0

    .line 978
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public putOnce(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/org/json/JSONObject;
    .locals 3
    .parameter "key"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1074
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 1075
    invoke-virtual {p0, p1}, Ltwitter4j/org/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1076
    new-instance v0, Ltwitter4j/org/json/JSONException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Duplicate key \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ltwitter4j/org/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1078
    :cond_0
    invoke-virtual {p0, p1, p2}, Ltwitter4j/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/org/json/JSONObject;

    .line 1080
    :cond_1
    return-object p0
.end method

.method public putOpt(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/org/json/JSONObject;
    .locals 0
    .parameter "key"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1095
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1096
    invoke-virtual {p0, p1, p2}, Ltwitter4j/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/org/json/JSONObject;

    .line 1098
    :cond_0
    return-object p0
.end method

.method public remove(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "key"

    .prologue
    .line 1174
    iget-object v0, p0, Ltwitter4j/org/json/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public sortedKeys()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 1184
    new-instance v0, Ljava/util/TreeSet;

    iget-object v1, p0, Ltwitter4j/org/json/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public toJSONArray(Ltwitter4j/org/json/JSONArray;)Ltwitter4j/org/json/JSONArray;
    .locals 3
    .parameter "names"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1283
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ltwitter4j/org/json/JSONArray;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 1284
    :cond_0
    const/4 v2, 0x0

    .line 1290
    :goto_0
    return-object v2

    .line 1286
    :cond_1
    new-instance v1, Ltwitter4j/org/json/JSONArray;

    invoke-direct {v1}, Ltwitter4j/org/json/JSONArray;-><init>()V

    .line 1287
    .local v1, ja:Ltwitter4j/org/json/JSONArray;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {p1}, Ltwitter4j/org/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 1288
    invoke-virtual {p1, v0}, Ltwitter4j/org/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ltwitter4j/org/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ltwitter4j/org/json/JSONArray;->put(Ljava/lang/Object;)Ltwitter4j/org/json/JSONArray;

    .line 1287
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v2, v1

    .line 1290
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1307
    :try_start_0
    invoke-virtual {p0}, Ltwitter4j/org/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 1308
    .local v1, keys:Ljava/util/Iterator;
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "{"

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1310
    .local v3, sb:Ljava/lang/StringBuffer;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1311
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_0

    .line 1312
    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1314
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1315
    .local v2, o:Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ltwitter4j/org/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1316
    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1317
    iget-object v4, p0, Ltwitter4j/org/json/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ltwitter4j/org/json/JSONObject;->valueToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 1321
    .end local v1           #keys:Ljava/util/Iterator;
    .end local v2           #o:Ljava/lang/Object;
    .end local v3           #sb:Ljava/lang/StringBuffer;
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 1322
    .local v0, e:Ljava/lang/Exception;
    const/4 v4, 0x0

    .end local v0           #e:Ljava/lang/Exception;
    :goto_1
    return-object v4

    .line 1319
    .restart local v1       #keys:Ljava/util/Iterator;
    .restart local v3       #sb:Ljava/lang/StringBuffer;
    :cond_1
    const/16 v4, 0x7d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1320
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_1
.end method

.method public toString(I)Ljava/lang/String;
    .locals 1
    .parameter "indentFactor"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1340
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ltwitter4j/org/json/JSONObject;->toString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method toString(II)Ljava/lang/String;
    .locals 10
    .parameter "indentFactor"
    .parameter "indent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/org/json/JSONException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x20

    const/16 v8, 0xa

    const/4 v7, 0x1

    .line 1359
    invoke-virtual {p0}, Ltwitter4j/org/json/JSONObject;->length()I

    move-result v2

    .line 1360
    .local v2, n:I
    if-nez v2, :cond_0

    .line 1361
    const-string v6, "{}"

    .line 1397
    :goto_0
    return-object v6

    .line 1363
    :cond_0
    invoke-virtual {p0}, Ltwitter4j/org/json/JSONObject;->sortedKeys()Ljava/util/Iterator;

    move-result-object v1

    .line 1364
    .local v1, keys:Ljava/util/Iterator;
    new-instance v5, Ljava/lang/StringBuffer;

    const-string v6, "{"

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1365
    .local v5, sb:Ljava/lang/StringBuffer;
    add-int v3, p2, p1

    .line 1367
    .local v3, newindent:I
    if-ne v2, v7, :cond_3

    .line 1368
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 1369
    .local v4, o:Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ltwitter4j/org/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1370
    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1371
    iget-object v6, p0, Ltwitter4j/org/json/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6, p1, p2}, Ltwitter4j/org/json/JSONObject;->valueToString(Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1396
    .end local v4           #o:Ljava/lang/Object;
    :cond_1
    const/16 v6, 0x7d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1397
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 1384
    .local v0, j:I
    .restart local v4       #o:Ljava/lang/Object;
    :cond_2
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ltwitter4j/org/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1385
    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1386
    iget-object v6, p0, Ltwitter4j/org/json/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6, p1, v3}, Ltwitter4j/org/json/JSONObject;->valueToString(Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1374
    .end local v0           #j:I
    .end local v4           #o:Ljava/lang/Object;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1375
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 1376
    .restart local v4       #o:Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    if-le v6, v7, :cond_4

    .line 1377
    const-string v6, ",\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1381
    :goto_1
    const/4 v0, 0x0

    .restart local v0       #j:I
    :goto_2
    if-ge v0, v3, :cond_2

    .line 1382
    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1381
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1379
    .end local v0           #j:I
    :cond_4
    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 1389
    .end local v4           #o:Ljava/lang/Object;
    :cond_5
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    if-le v6, v7, :cond_1

    .line 1390
    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1391
    const/4 v0, 0x0

    .restart local v0       #j:I
    :goto_3
    if-ge v0, p2, :cond_1

    .line 1392
    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1391
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method public write(Ljava/io/Writer;)Ljava/io/Writer;
    .locals 6
    .parameter "writer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1523
    const/4 v0, 0x0

    .line 1524
    .local v0, b:Z
    :try_start_0
    invoke-virtual {p0}, Ltwitter4j/org/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 1525
    .local v3, keys:Ljava/util/Iterator;
    const/16 v5, 0x7b

    invoke-virtual {p1, v5}, Ljava/io/Writer;->write(I)V

    .line 1527
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1528
    if-eqz v0, :cond_0

    .line 1529
    const/16 v5, 0x2c

    invoke-virtual {p1, v5}, Ljava/io/Writer;->write(I)V

    .line 1531
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1532
    .local v2, k:Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ltwitter4j/org/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1533
    const/16 v5, 0x3a

    invoke-virtual {p1, v5}, Ljava/io/Writer;->write(I)V

    .line 1534
    iget-object v5, p0, Ltwitter4j/org/json/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 1535
    .local v4, v:Ljava/lang/Object;
    instance-of v5, v4, Ltwitter4j/org/json/JSONObject;

    if-eqz v5, :cond_1

    .line 1536
    check-cast v4, Ltwitter4j/org/json/JSONObject;

    .end local v4           #v:Ljava/lang/Object;
    invoke-virtual {v4, p1}, Ltwitter4j/org/json/JSONObject;->write(Ljava/io/Writer;)Ljava/io/Writer;

    .line 1542
    :goto_1
    const/4 v0, 0x1

    .line 1543
    goto :goto_0

    .line 1537
    .restart local v4       #v:Ljava/lang/Object;
    :cond_1
    instance-of v5, v4, Ltwitter4j/org/json/JSONArray;

    if-eqz v5, :cond_2

    .line 1538
    check-cast v4, Ltwitter4j/org/json/JSONArray;

    .end local v4           #v:Ljava/lang/Object;
    invoke-virtual {v4, p1}, Ltwitter4j/org/json/JSONArray;->write(Ljava/io/Writer;)Ljava/io/Writer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1546
    .end local v2           #k:Ljava/lang/Object;
    .end local v3           #keys:Ljava/util/Iterator;
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 1547
    .local v1, e:Ljava/io/IOException;
    new-instance v5, Ltwitter4j/org/json/JSONException;

    invoke-direct {v5, v1}, Ltwitter4j/org/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 1540
    .end local v1           #e:Ljava/io/IOException;
    .restart local v2       #k:Ljava/lang/Object;
    .restart local v3       #keys:Ljava/util/Iterator;
    .restart local v4       #v:Ljava/lang/Object;
    :cond_2
    :try_start_1
    invoke-static {v4}, Ltwitter4j/org/json/JSONObject;->valueToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 1544
    .end local v2           #k:Ljava/lang/Object;
    .end local v4           #v:Ljava/lang/Object;
    :cond_3
    const/16 v5, 0x7d

    invoke-virtual {p1, v5}, Ljava/io/Writer;->write(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1545
    return-object p1
.end method
