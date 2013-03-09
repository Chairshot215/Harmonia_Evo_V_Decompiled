.class Lcom/htc/gson/DefaultTypeAdapters$DefaultDateTypeAdapter;
.super Ljava/lang/Object;
.source "DefaultTypeAdapters.java"

# interfaces
.implements Lcom/htc/gson/JsonSerializer;
.implements Lcom/htc/gson/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/gson/DefaultTypeAdapters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DefaultDateTypeAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/gson/JsonSerializer",
        "<",
        "Ljava/util/Date;",
        ">;",
        "Lcom/htc/gson/JsonDeserializer",
        "<",
        "Ljava/util/Date;",
        ">;"
    }
.end annotation


# instance fields
.field private final format:Ljava/text/DateFormat;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 239
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/gson/DefaultTypeAdapters$DefaultDateTypeAdapter;->format:Ljava/text/DateFormat;

    .line 240
    return-void
.end method

.method constructor <init>(I)V
    .locals 1
    .parameter "style"

    .prologue
    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 247
    invoke-static {p1}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/gson/DefaultTypeAdapters$DefaultDateTypeAdapter;->format:Ljava/text/DateFormat;

    .line 248
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .parameter "dateStyle"
    .parameter "timeStyle"

    .prologue
    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 251
    invoke-static {p1, p2}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/gson/DefaultTypeAdapters$DefaultDateTypeAdapter;->format:Ljava/text/DateFormat;

    .line 252
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "datePattern"

    .prologue
    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/gson/DefaultTypeAdapters$DefaultDateTypeAdapter;->format:Ljava/text/DateFormat;

    .line 244
    return-void
.end method


# virtual methods
.method public bridge synthetic deserialize(Lcom/htc/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/htc/gson/JsonDeserializationContext;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/gson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 235
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/gson/DefaultTypeAdapters$DefaultDateTypeAdapter;->deserialize(Lcom/htc/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/htc/gson/JsonDeserializationContext;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public deserialize(Lcom/htc/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/htc/gson/JsonDeserializationContext;)Ljava/util/Date;
    .locals 4
    .parameter "json"
    .parameter "typeOfT"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/gson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 265
    instance-of v1, p1, Lcom/htc/gson/JsonPrimitive;

    if-nez v1, :cond_0

    .line 266
    new-instance v1, Lcom/htc/gson/JsonParseException;

    const-string v2, "The date should be a string value"

    invoke-direct {v1, v2}, Lcom/htc/gson/JsonParseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 269
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/htc/gson/DefaultTypeAdapters$DefaultDateTypeAdapter;->format:Ljava/text/DateFormat;

    monitor-enter v2
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    :try_start_1
    iget-object v1, p0, Lcom/htc/gson/DefaultTypeAdapters$DefaultDateTypeAdapter;->format:Ljava/text/DateFormat;

    invoke-virtual {p1}, Lcom/htc/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    monitor-exit v2

    return-object v1

    .line 271
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_0

    .line 272
    :catch_0
    move-exception v0

    .line 273
    .local v0, e:Ljava/text/ParseException;
    new-instance v1, Lcom/htc/gson/JsonParseException;

    invoke-direct {v1, v0}, Lcom/htc/gson/JsonParseException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/htc/gson/JsonSerializationContext;)Lcom/htc/gson/JsonElement;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 235
    check-cast p1, Ljava/util/Date;

    .end local p1
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/gson/DefaultTypeAdapters$DefaultDateTypeAdapter;->serialize(Ljava/util/Date;Ljava/lang/reflect/Type;Lcom/htc/gson/JsonSerializationContext;)Lcom/htc/gson/JsonElement;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Ljava/util/Date;Ljava/lang/reflect/Type;Lcom/htc/gson/JsonSerializationContext;)Lcom/htc/gson/JsonElement;
    .locals 3
    .parameter "src"
    .parameter "typeOfSrc"
    .parameter "context"

    .prologue
    .line 257
    iget-object v2, p0, Lcom/htc/gson/DefaultTypeAdapters$DefaultDateTypeAdapter;->format:Ljava/text/DateFormat;

    monitor-enter v2

    .line 258
    :try_start_0
    iget-object v1, p0, Lcom/htc/gson/DefaultTypeAdapters$DefaultDateTypeAdapter;->format:Ljava/text/DateFormat;

    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 259
    .local v0, dateFormatAsString:Ljava/lang/String;
    new-instance v1, Lcom/htc/gson/JsonPrimitive;

    invoke-direct {v1, v0}, Lcom/htc/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    monitor-exit v2

    return-object v1

    .line 260
    .end local v0           #dateFormatAsString:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 280
    .local v0, sb:Ljava/lang/StringBuilder;
    const-class v1, Lcom/htc/gson/DefaultTypeAdapters$DefaultDateTypeAdapter;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/gson/DefaultTypeAdapters$DefaultDateTypeAdapter;->format:Ljava/text/DateFormat;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 282
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
