.class public Lcom/htc/cscore/restapi/utility/RestServicesUtilities;
.super Ljava/lang/Object;
.source "RestServicesUtilities.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/restapi/utility/RestServicesUtilities$2;,
        Lcom/htc/cscore/restapi/utility/RestServicesUtilities$ArrayListTypeAdapter;,
        Lcom/htc/cscore/restapi/utility/RestServicesUtilities$DateTypeAdapter;,
        Lcom/htc/cscore/restapi/utility/RestServicesUtilities$EnumAsIntegerTypeAdapter;,
        Lcom/htc/cscore/restapi/utility/RestServicesUtilities$ClientVersionNumbers;
    }
.end annotation


# static fields
.field private static serverTimeOffset:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 711
    return-void
.end method

.method public static GetDeepMessage(Ljava/lang/Exception;)Ljava/lang/String;
    .locals 1
    .parameter "e"

    .prologue
    .line 383
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->_GetDeepMessage(Ljava/lang/Exception;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static _GetDeepMessage(Ljava/lang/Exception;I)Ljava/lang/String;
    .locals 4
    .parameter "e"
    .parameter "depth"

    .prologue
    .line 366
    if-nez p0, :cond_0

    .line 367
    const-string v1, ""

    .line 378
    :goto_0
    return-object v1

    .line 368
    :cond_0
    const/16 v1, 0xa

    if-le p1, v1, :cond_1

    .line 369
    const-string v1, "GetDeepMessage DEPTH EXCEEDED"

    goto :goto_0

    .line 373
    :cond_1
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") ~~~ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/lang/Exception;

    add-int/lit8 v3, p1, 0x1

    invoke-static {v1, v3}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->_GetDeepMessage(Ljava/lang/Exception;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 376
    :catch_0
    move-exception v0

    .line 378
    .local v0, x:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "XXX"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "XXX"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static _TranslateException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Boolean;)Ljava/lang/Exception;
    .locals 4
    .parameter "message"
    .parameter "e"
    .parameter "usingDeviceToken"

    .prologue
    .line 305
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/htc/cscore/restapi/exceptions/WebException;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v1, p1

    .line 307
    check-cast v1, Lcom/htc/cscore/restapi/exceptions/WebException;

    .line 309
    .local v1, we:Lcom/htc/cscore/restapi/exceptions/WebException;
    invoke-virtual {v1}, Lcom/htc/cscore/restapi/exceptions/WebException;->getCustomErrorMessage()Lcom/htc/cscore/restapi/exceptions/CustomErrorMessage;

    move-result-object v0

    .line 311
    .local v0, cem:Lcom/htc/cscore/restapi/exceptions/CustomErrorMessage;
    if-eqz v0, :cond_0

    .line 312
    sget-object v2, Lcom/htc/cscore/restapi/utility/RestServicesUtilities$2;->$SwitchMap$com$htc$cscore$restapi$exceptions$ErrorCode:[I

    iget-object v3, v0, Lcom/htc/cscore/restapi/exceptions/CustomErrorMessage;->code:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    invoke-virtual {v3}, Lcom/htc/cscore/restapi/exceptions/ErrorCode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 345
    :cond_0
    invoke-virtual {v1}, Lcom/htc/cscore/restapi/exceptions/WebException;->getHttpStatusCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 362
    .end local v0           #cem:Lcom/htc/cscore/restapi/exceptions/CustomErrorMessage;
    .end local v1           #we:Lcom/htc/cscore/restapi/exceptions/WebException;
    .end local p1
    :cond_1
    :goto_0
    return-object p1

    .line 314
    .restart local v0       #cem:Lcom/htc/cscore/restapi/exceptions/CustomErrorMessage;
    .restart local v1       #we:Lcom/htc/cscore/restapi/exceptions/WebException;
    .restart local p1
    :pswitch_0
    new-instance v2, Lcom/htc/cscore/restapi/exceptions/ClientInvalidCredentialsException;

    invoke-direct {v2, p0, p1}, Lcom/htc/cscore/restapi/exceptions/ClientInvalidCredentialsException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    move-object p1, v2

    goto :goto_0

    .line 317
    :pswitch_1
    new-instance v2, Lcom/htc/cscore/restapi/exceptions/GeneralServerErrorException;

    invoke-direct {v2, p0, p1}, Lcom/htc/cscore/restapi/exceptions/GeneralServerErrorException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    move-object p1, v2

    goto :goto_0

    .line 320
    :pswitch_2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 321
    new-instance v2, Lcom/htc/cscore/restapi/exceptions/ClientNotAuthorizedException;

    invoke-direct {v2, p0, p1}, Lcom/htc/cscore/restapi/exceptions/ClientNotAuthorizedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    move-object p1, v2

    goto :goto_0

    .line 323
    :cond_2
    new-instance v2, Lcom/htc/cscore/restapi/exceptions/ClientInvalidCredentialsException;

    invoke-direct {v2, p0, p1}, Lcom/htc/cscore/restapi/exceptions/ClientInvalidCredentialsException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    move-object p1, v2

    goto :goto_0

    .line 326
    :pswitch_3
    new-instance v2, Lcom/htc/cscore/restapi/exceptions/UserIdInUseException;

    invoke-direct {v2, p0, p1}, Lcom/htc/cscore/restapi/exceptions/UserIdInUseException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    move-object p1, v2

    goto :goto_0

    .line 329
    :pswitch_4
    new-instance v2, Lcom/htc/cscore/restapi/exceptions/NotFoundException;

    invoke-direct {v2, p0, p1}, Lcom/htc/cscore/restapi/exceptions/NotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    move-object p1, v2

    goto :goto_0

    .line 332
    :pswitch_5
    new-instance v2, Lcom/htc/cscore/restapi/exceptions/IncompatibleClientVersionException;

    invoke-direct {v2, p0, p1}, Lcom/htc/cscore/restapi/exceptions/IncompatibleClientVersionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    move-object p1, v2

    goto :goto_0

    .line 334
    :pswitch_6
    new-instance v2, Lcom/htc/cscore/restapi/exceptions/MissingDeviceException;

    invoke-direct {v2, p0, p1}, Lcom/htc/cscore/restapi/exceptions/MissingDeviceException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    move-object p1, v2

    goto :goto_0

    .line 336
    :pswitch_7
    new-instance v2, Lcom/htc/cscore/restapi/exceptions/WrongDataCenterException;

    invoke-direct {v2, p0, p1}, Lcom/htc/cscore/restapi/exceptions/WrongDataCenterException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    move-object p1, v2

    goto :goto_0

    .line 348
    :sswitch_0
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 349
    new-instance v2, Lcom/htc/cscore/restapi/exceptions/ClientNotAuthorizedException;

    invoke-direct {v2, p0, p1}, Lcom/htc/cscore/restapi/exceptions/ClientNotAuthorizedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    move-object p1, v2

    goto :goto_0

    .line 351
    :cond_3
    new-instance v2, Lcom/htc/cscore/restapi/exceptions/ClientInvalidCredentialsException;

    invoke-direct {v2, p0, p1}, Lcom/htc/cscore/restapi/exceptions/ClientInvalidCredentialsException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    move-object p1, v2

    goto :goto_0

    .line 354
    :sswitch_1
    new-instance v2, Lcom/htc/cscore/restapi/exceptions/NotFoundException;

    invoke-direct {v2, p0, p1}, Lcom/htc/cscore/restapi/exceptions/NotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    move-object p1, v2

    goto :goto_0

    .line 357
    :sswitch_2
    new-instance v2, Lcom/htc/cscore/restapi/exceptions/ConflictException;

    invoke-direct {v2, p0, p1}, Lcom/htc/cscore/restapi/exceptions/ConflictException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    move-object p1, v2

    goto :goto_0

    .line 312
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 345
    :sswitch_data_0
    .sparse-switch
        0x191 -> :sswitch_0
        0x194 -> :sswitch_1
        0x199 -> :sswitch_2
    .end sparse-switch
.end method

.method public static allocGson()Lcom/htc/gson/Gson;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 703
    new-instance v0, Lcom/htc/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/htc/gson/GsonBuilder;-><init>()V

    const-class v1, Ljava/lang/Enum;

    new-instance v2, Lcom/htc/cscore/restapi/utility/RestServicesUtilities$EnumAsIntegerTypeAdapter;

    invoke-direct {v2, v3}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities$EnumAsIntegerTypeAdapter;-><init>(Lcom/htc/cscore/restapi/utility/RestServicesUtilities$1;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/htc/gson/GsonBuilder;

    move-result-object v0

    const-class v1, Ljava/util/Date;

    new-instance v2, Lcom/htc/cscore/restapi/utility/RestServicesUtilities$DateTypeAdapter;

    invoke-direct {v2, v3}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities$DateTypeAdapter;-><init>(Lcom/htc/cscore/restapi/utility/RestServicesUtilities$1;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/htc/gson/GsonBuilder;

    move-result-object v0

    const-class v1, Ljava/util/ArrayList;

    new-instance v2, Lcom/htc/cscore/restapi/utility/RestServicesUtilities$ArrayListTypeAdapter;

    invoke-direct {v2, v3}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities$ArrayListTypeAdapter;-><init>(Lcom/htc/cscore/restapi/utility/RestServicesUtilities$1;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/htc/gson/GsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/gson/GsonBuilder;->create()Lcom/htc/gson/Gson;

    move-result-object v0

    return-object v0
.end method

.method private static allocateObject(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/Class",
            "<*>;TE;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p0, obj:Ljava/lang/Object;,"TT;"
    .local p1, parentClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .local p2, elementType:Ljava/lang/Object;,"TE;"
    const/4 v5, 0x0

    .line 424
    invoke-virtual {p1}, Ljava/lang/Class;->getClasses()[Ljava/lang/Class;

    move-result-object v0

    .line 425
    .local v0, classes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 427
    aget-object v3, v0, v2

    if-ne v3, p2, :cond_0

    .line 430
    aget-object v3, v0, v2

    new-array v4, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 431
    .local v1, ctor:Ljava/lang/reflect/Constructor;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 432
    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 435
    .end local v1           #ctor:Ljava/lang/reflect/Constructor;
    :goto_1
    return-object v3

    .line 425
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 435
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static fromJson(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter "json"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            "TE;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 405
    .local p0, obj:Ljava/lang/Object;,"TT;"
    .local p2, elementType:Ljava/lang/Object;,"TE;"
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 406
    .local v1, retObj:Ljava/lang/Object;,"TT;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 412
    .local v0, classOfT:Ljava/lang/Class;
    invoke-static {p0, p1, p2}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->fromJson2(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 413
    return-object v1
.end method

.method public static fromJson(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter "json"
    .parameter
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            "TE;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 419
    .local p0, obj:Ljava/lang/Object;,"TT;"
    .local p2, elementType:Ljava/lang/Object;,"TE;"
    invoke-static {}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->allocGson()Lcom/htc/gson/Gson;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Lcom/htc/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static fromJson2(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .parameter
    .parameter "json"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            "TE;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 442
    .local p0, obj:Ljava/lang/Object;,"TT;"
    .local p2, elementType:Ljava/lang/Object;,"TE;"
    invoke-static {}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->allocGson()Lcom/htc/gson/Gson;

    move-result-object v3

    .line 443
    .local v3, gson:Lcom/htc/gson/Gson;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 444
    .local v1, classOfT:Ljava/lang/Class;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-class v8, Lcom/htc/cscore/restapi/json/SearchResults;

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 445
    new-instance v6, Lcom/htc/cscore/restapi/json/SearchResults;

    invoke-direct {v6}, Lcom/htc/cscore/restapi/json/SearchResults;-><init>()V

    .line 446
    .local v6, results:Lcom/htc/cscore/restapi/json/SearchResults;,"Lcom/htc/cscore/restapi/json/SearchResults<TT;>;"
    invoke-static {p1}, Lcom/htc/cscore/restapi/request/JSONCloudRequest;->deserializeJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 448
    .local v5, jsonObj:Lorg/json/JSONObject;
    const-string v7, "Results"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 450
    .local v0, array:Lorg/json/JSONArray;
    const-string v7, "Count"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 451
    const-string v7, "Count"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/htc/cscore/restapi/json/SearchResults;->Count:I

    .line 457
    :goto_0
    const/4 v2, 0x0

    .line 461
    .local v2, element:Ljava/lang/Object;,"TT;"
    const-class v7, Lcom/htc/cscore/restapi/proxy/WebClasses;

    invoke-static {p0, v7, p2}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->allocateObject(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 466
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v4, v7, :cond_2

    .line 468
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7, p2}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->fromJson2(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 470
    invoke-virtual {v6, v2}, Lcom/htc/cscore/restapi/json/SearchResults;->add(Ljava/lang/Object;)V

    .line 466
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 455
    .end local v2           #element:Ljava/lang/Object;,"TT;"
    .end local v4           #i:I
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v7

    iput v7, v6, Lcom/htc/cscore/restapi/json/SearchResults;->Count:I

    goto :goto_0

    .line 525
    .end local v0           #array:Lorg/json/JSONArray;
    .end local v5           #jsonObj:Lorg/json/JSONObject;
    .end local v6           #results:Lcom/htc/cscore/restapi/json/SearchResults;,"Lcom/htc/cscore/restapi/json/SearchResults<TT;>;"
    :cond_1
    invoke-virtual {v3, p1, v1}, Lcom/htc/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    :cond_2
    return-object v6
.end method

.method public static getAuthTicket(Ljava/lang/String;J)Ljava/lang/String;
    .locals 9
    .parameter "password"
    .parameter "date"

    .prologue
    .line 85
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 86
    .local v0, currentDate:Ljava/util/Date;
    move-wide v2, p1

    .line 87
    .local v2, rawDate:J
    invoke-static {p0}, Lcom/htc/cscore/restapi/utility/Whirlpool;->WhirlPoolHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, hashedPassword:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/cscore/restapi/utility/Whirlpool;->WhirlPoolHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 89
    .local v4, token:Ljava/lang/String;
    const-string v5, "%s.%s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v4, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static getClientVersionString(Ljava/lang/String;Landroid/content/pm/PackageManager;)Ljava/lang/String;
    .locals 3
    .parameter "packageName"
    .parameter "pm"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 107
    new-instance v0, Lcom/htc/cscore/restapi/utility/RestServicesUtilities$ClientVersionNumbers;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities$ClientVersionNumbers;-><init>(Lcom/htc/cscore/restapi/utility/RestServicesUtilities$1;)V

    .line 108
    .local v0, cvn:Lcom/htc/cscore/restapi/utility/RestServicesUtilities$ClientVersionNumbers;
    const-string v2, "DevBuild"

    iput-object v2, v0, Lcom/htc/cscore/restapi/utility/RestServicesUtilities$ClientVersionNumbers;->handsetLibVer:Ljava/lang/String;

    .line 111
    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 114
    :try_start_0
    iput-object p0, v0, Lcom/htc/cscore/restapi/utility/RestServicesUtilities$ClientVersionNumbers;->packageName:Ljava/lang/String;

    .line 115
    const/16 v2, 0x80

    invoke-virtual {p1, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/htc/cscore/restapi/utility/RestServicesUtilities$ClientVersionNumbers;->packageVersionCode:Ljava/lang/String;

    .line 116
    const/16 v2, 0x80

    invoke-virtual {p1, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/htc/cscore/restapi/utility/RestServicesUtilities$ClientVersionNumbers;->packageVersionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :cond_0
    :goto_0
    invoke-static {v0}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->toJson(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 117
    :catch_0
    move-exception v1

    .line 119
    .local v1, e1:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static removeTrailingSeparator(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "s"

    .prologue
    .line 772
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 773
    .end local p0
    :cond_0
    return-object p0
.end method

.method public static setServerTimeOffset(J)V
    .locals 0
    .parameter "offsetMilliseconds"

    .prologue
    .line 81
    sput-wide p0, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->serverTimeOffset:J

    .line 82
    return-void
.end method

.method public static toJson(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter "obj"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 189
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Ljava/lang/String;

    if-eq v2, v3, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Ljava/lang/Integer;

    if-eq v2, v3, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Ljava/lang/Boolean;

    if-ne v2, v3, :cond_1

    .line 204
    .end local p0
    .local v0, gson:Lcom/htc/gson/Gson;
    .local v1, json:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 195
    .end local v0           #gson:Lcom/htc/gson/Gson;
    .end local v1           #json:Ljava/lang/String;
    .restart local p0
    :cond_1
    invoke-static {}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->allocGson()Lcom/htc/gson/Gson;

    move-result-object v0

    .line 196
    .restart local v0       #gson:Lcom/htc/gson/Gson;
    invoke-virtual {v0, p0}, Lcom/htc/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 203
    .restart local v1       #json:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Ljava/util/ArrayList;

    if-ne v2, v3, :cond_2

    new-instance p0, Lorg/json/JSONArray;

    .end local p0
    invoke-direct {p0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 204
    .restart local p0
    :cond_2
    new-instance p0, Lorg/json/JSONObject;

    .end local p0
    invoke-direct {p0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static toJson2(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19
    .parameter "obj"

    .prologue
    .line 212
    new-instance v10, Ljava/lang/Object;

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 214
    .local v10, retval:Ljava/lang/Object;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->isEnum()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 215
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v4

    .line 216
    .local v4, aryObj:[Ljava/lang/Object;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    array-length v12, v4

    if-ge v7, v12, :cond_0

    .line 217
    aget-object v12, v4, v7

    move-object/from16 v0, p0

    if-ne v12, v0, :cond_1

    .line 219
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 297
    .end local v4           #aryObj:[Ljava/lang/Object;
    .end local v7           #i:I
    .end local p0
    :cond_0
    :goto_1
    return-object v10

    .line 216
    .restart local v4       #aryObj:[Ljava/lang/Object;
    .restart local v7       #i:I
    .restart local p0
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 223
    .end local v4           #aryObj:[Ljava/lang/Object;
    .end local v7           #i:I
    :cond_2
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    sget-object v13, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq v12, v13, :cond_3

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    const-class v13, Ljava/lang/String;

    if-eq v12, v13, :cond_3

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    sget-object v13, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v12, v13, :cond_3

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    sget-object v13, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v12, v13, :cond_3

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    sget-object v13, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq v12, v13, :cond_3

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v12, v13, :cond_3

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    sget-object v13, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq v12, v13, :cond_3

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    sget-object v13, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq v12, v13, :cond_3

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    sget-object v13, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v12, v13, :cond_4

    .line 232
    :cond_3
    move-object/from16 v10, p0

    goto :goto_1

    .line 233
    :cond_4
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    const-class v13, Ljava/util/UUID;

    if-ne v12, v13, :cond_6

    .line 234
    if-eqz p0, :cond_5

    move-object/from16 v10, p0

    .end local p0
    :goto_2
    goto :goto_1

    .restart local p0
    :cond_5
    new-instance p0, Ljava/util/UUID;

    .end local p0
    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v14, v15}, Ljava/util/UUID;-><init>(JJ)V

    move-object/from16 v10, p0

    goto :goto_2

    .line 236
    .restart local p0
    :cond_6
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v12

    array-length v12, v12

    if-lez v12, :cond_14

    .line 237
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 238
    .local v11, subObj:Lorg/json/JSONObject;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .local v2, arr$:[Ljava/lang/reflect/Field;
    array-length v9, v2

    .local v9, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    :goto_3
    if-ge v8, v9, :cond_13

    aget-object v6, v2, v8

    .line 242
    .local v6, field:Ljava/lang/reflect/Field;
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v12

    sget-object v13, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq v12, v13, :cond_7

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v12

    const-class v13, Ljava/lang/String;

    if-eq v12, v13, :cond_7

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v12

    sget-object v13, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v12, v13, :cond_7

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v12

    sget-object v13, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v12, v13, :cond_7

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v12

    sget-object v13, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq v12, v13, :cond_7

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v12

    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v12, v13, :cond_7

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v12

    sget-object v13, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq v12, v13, :cond_7

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v12

    sget-object v13, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq v12, v13, :cond_7

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v12

    sget-object v13, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v12, v13, :cond_9

    .line 251
    :cond_7
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_8

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    :goto_4
    invoke-virtual {v11, v13, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 238
    :goto_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 251
    :cond_8
    sget-object v12, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    goto :goto_4

    .line 254
    :cond_9
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v12

    const-class v13, Ljava/util/UUID;

    if-ne v12, v13, :cond_b

    .line 255
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_a

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    :goto_6
    invoke-virtual {v11, v13, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_5

    .line 288
    .end local v2           #arr$:[Ljava/lang/reflect/Field;
    .end local v6           #field:Ljava/lang/reflect/Field;
    .end local v8           #i$:I
    .end local v9           #len$:I
    .end local v11           #subObj:Lorg/json/JSONObject;
    .end local p0
    :catch_0
    move-exception v5

    .line 289
    .local v5, e:Lorg/json/JSONException;
    invoke-virtual {v5}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_1

    .line 255
    .end local v5           #e:Lorg/json/JSONException;
    .restart local v2       #arr$:[Ljava/lang/reflect/Field;
    .restart local v6       #field:Ljava/lang/reflect/Field;
    .restart local v8       #i$:I
    .restart local v9       #len$:I
    .restart local v11       #subObj:Lorg/json/JSONObject;
    .restart local p0
    :cond_a
    :try_start_1
    new-instance v12, Ljava/util/UUID;

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-direct {v12, v14, v15, v0, v1}, Ljava/util/UUID;-><init>(JJ)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_6

    .line 290
    .end local v2           #arr$:[Ljava/lang/reflect/Field;
    .end local v6           #field:Ljava/lang/reflect/Field;
    .end local v8           #i$:I
    .end local v9           #len$:I
    .end local v11           #subObj:Lorg/json/JSONObject;
    .end local p0
    :catch_1
    move-exception v5

    .line 292
    .local v5, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v5}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto/16 :goto_1

    .line 258
    .end local v5           #e:Ljava/lang/IllegalArgumentException;
    .restart local v2       #arr$:[Ljava/lang/reflect/Field;
    .restart local v6       #field:Ljava/lang/reflect/Field;
    .restart local v8       #i$:I
    .restart local v9       #len$:I
    .restart local v11       #subObj:Lorg/json/JSONObject;
    .restart local p0
    :cond_b
    :try_start_2
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "class java.util.ArrayList"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f

    .line 260
    if-eqz p0, :cond_c

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    if-nez v12, :cond_d

    .line 261
    :cond_c
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v12

    sget-object v13, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v11, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    .line 293
    .end local v2           #arr$:[Ljava/lang/reflect/Field;
    .end local v6           #field:Ljava/lang/reflect/Field;
    .end local v8           #i$:I
    .end local v9           #len$:I
    .end local v11           #subObj:Lorg/json/JSONObject;
    .end local p0
    :catch_2
    move-exception v5

    .line 295
    .local v5, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v5}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto/16 :goto_1

    .line 263
    .end local v5           #e:Ljava/lang/IllegalAccessException;
    .restart local v2       #arr$:[Ljava/lang/reflect/Field;
    .restart local v6       #field:Ljava/lang/reflect/Field;
    .restart local v8       #i$:I
    .restart local v9       #len$:I
    .restart local v11       #subObj:Lorg/json/JSONObject;
    .restart local p0
    :cond_d
    :try_start_3
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 264
    .local v3, aryJson:Lorg/json/JSONArray;
    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 265
    .local v4, aryObj:Ljava/util/ArrayList;
    const/4 v7, 0x0

    .restart local v7       #i:I
    :goto_7
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v7, v12, :cond_e

    .line 266
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-static {v12}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->toJson(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v3, v12}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 265
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 268
    :cond_e
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_5

    .line 270
    .end local v3           #aryJson:Lorg/json/JSONArray;
    .end local v4           #aryObj:Ljava/util/ArrayList;
    .end local v7           #i:I
    :cond_f
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v12

    const-class v13, Ljava/util/Date;

    if-ne v12, v13, :cond_11

    .line 272
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_10

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "\\/Date("

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Date;

    invoke-virtual {v12}, Ljava/util/Date;->getTime()J

    move-result-wide v15

    const-wide/16 v17, 0x3e8

    div-long v15, v15, v17

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, ")\\/"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v12

    :goto_8
    invoke-virtual {v11, v13, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_5

    :cond_10
    sget-object v12, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    goto :goto_8

    .line 277
    :cond_11
    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    if-nez v12, :cond_12

    .line 278
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v12

    sget-object v13, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v11, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_5

    .line 280
    :cond_12
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-static {v13}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->toJson(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_5

    .line 283
    .end local v6           #field:Ljava/lang/reflect/Field;
    :cond_13
    move-object v10, v11

    .line 284
    .local v10, retval:Lorg/json/JSONObject;
    goto/16 :goto_1

    .line 285
    .end local v2           #arr$:[Ljava/lang/reflect/Field;
    .end local v8           #i$:I
    .end local v9           #len$:I
    .end local v11           #subObj:Lorg/json/JSONObject;
    .local v10, retval:Ljava/lang/Object;
    :cond_14
    move-object/from16 v10, p0

    goto/16 :goto_1
.end method

.method public static trustAllHosts()V
    .locals 5

    .prologue
    .line 133
    const/4 v3, 0x1

    new-array v2, v3, [Ljavax/net/ssl/TrustManager;

    const/4 v3, 0x0

    new-instance v4, Lcom/htc/cscore/restapi/utility/RestServicesUtilities$1;

    invoke-direct {v4}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities$1;-><init>()V

    aput-object v4, v2, v3

    .line 147
    .local v2, trustEveryone:[Ljavax/net/ssl/TrustManager;
    :try_start_0
    const-string v3, "TLS"

    invoke-static {v3}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    .line 148
    .local v1, sc:Ljavax/net/ssl/SSLContext;
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v2, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 149
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v3

    invoke-static {v3}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    .end local v1           #sc:Ljavax/net/ssl/SSLContext;
    :goto_0
    return-void

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static validateCorrectCredentials(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "emailAddress"
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/ClientInvalidCredentialsException;
        }
    .end annotation

    .prologue
    .line 165
    if-nez p0, :cond_0

    .line 166
    new-instance v0, Lcom/htc/cscore/restapi/exceptions/ClientInvalidCredentialsException;

    const-string v1, "Null email address"

    invoke-direct {v0, v1}, Lcom/htc/cscore/restapi/exceptions/ClientInvalidCredentialsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_0
    if-nez p1, :cond_1

    .line 170
    new-instance v0, Lcom/htc/cscore/restapi/exceptions/ClientInvalidCredentialsException;

    const-string v1, "Null password"

    invoke-direct {v0, v1}, Lcom/htc/cscore/restapi/exceptions/ClientInvalidCredentialsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_1
    return-void
.end method
