.class public Lcom/google/appinventor/components/runtime/util/YailList;
.super Lgnu/lists/Pair;


# direct methods
.method public constructor <init>()V
    .locals 2

    sget-object v0, Lcom/google/appinventor/components/runtime/util/YailConstants;->YAIL_HEADER:Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-direct {p0, v0, v1}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lcom/google/appinventor/components/runtime/util/YailConstants;->YAIL_HEADER:Lgnu/mapping/SimpleSymbol;

    invoke-direct {p0, v0, p1}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static makeList(Ljava/util/Collection;)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 2

    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lgnu/lists/Pair;->makeList([Ljava/lang/Object;I)Lgnu/lists/LList;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-direct {v1, v0}, Lcom/google/appinventor/components/runtime/util/YailList;-><init>(Ljava/lang/Object;)V

    return-object v1
.end method

.method public static makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 2

    invoke-static {p0}, Lgnu/lists/Pair;->makeList(Ljava/util/List;)Lgnu/lists/LList;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-direct {v1, v0}, Lcom/google/appinventor/components/runtime/util/YailList;-><init>(Ljava/lang/Object;)V

    return-object v1
.end method

.method public static makeList([Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lgnu/lists/Pair;->makeList([Ljava/lang/Object;I)Lgnu/lists/LList;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-direct {v1, v0}, Lcom/google/appinventor/components/runtime/util/YailList;-><init>(Ljava/lang/Object;)V

    return-object v1
.end method


# virtual methods
.method public getObject(I)Ljava/lang/Object;
    .locals 1

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/util/YailList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/util/YailList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public size()I
    .locals 2

    invoke-super {p0}, Lgnu/lists/Pair;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/YailList;->cdr:Ljava/lang/Object;

    instance-of v0, v0, Lgnu/lists/Pair;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/util/YailList;->cdr:Ljava/lang/Object;

    check-cast p0, Lgnu/lists/Pair;

    invoke-virtual {p0}, Lgnu/lists/Pair;->toArray()[Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/YailList;->cdr:Ljava/lang/Object;

    instance-of v0, v0, Lgnu/lists/LList;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/util/YailList;->cdr:Ljava/lang/Object;

    check-cast p0, Lgnu/lists/LList;

    invoke-virtual {p0}, Lgnu/lists/LList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    const-string v1, "YailList cannot be represented as an array"

    const-string v2, "YailList Error."

    invoke-direct {v0, v1, v2}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method public toJSONString()Ljava/lang/String;
    .locals 6

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    const/16 v2, 0x5b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v2

    const/4 v3, 0x1

    move v5, v3

    move-object v3, v1

    move v1, v5

    :goto_0
    if-gt v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/util/YailList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getJsonRepresentation(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    const-string v1, "List failed to convert to JSON."

    const-string v2, "JSON Creation Error."

    invoke-direct {v0, v1, v2}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/YailList;->cdr:Ljava/lang/Object;

    instance-of v0, v0, Lgnu/lists/Pair;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/util/YailList;->cdr:Ljava/lang/Object;

    check-cast p0, Lgnu/lists/Pair;

    invoke-virtual {p0}, Lgnu/lists/Pair;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/YailList;->cdr:Ljava/lang/Object;

    instance-of v0, v0, Lgnu/lists/LList;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/util/YailList;->cdr:Ljava/lang/Object;

    check-cast p0, Lgnu/lists/LList;

    invoke-virtual {p0}, Lgnu/lists/LList;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "YailList cannot be represented as a String"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toStringArray()[Ljava/lang/String;
    .locals 6

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v0

    new-array v1, v0, [Ljava/lang/String;

    move v2, v5

    :goto_0
    if-gt v2, v0, :cond_0

    sub-int v3, v2, v5

    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/util/YailList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method
