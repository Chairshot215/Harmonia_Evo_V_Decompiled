.class Lcom/futuredial/pim/G2Phonebook$ReadPhoneBook;
.super Ljava/lang/Object;
.source "G2Phonebook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/futuredial/pim/G2Phonebook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReadPhoneBook"
.end annotation


# instance fields
.field private bNoRecord:Z

.field private cursor:Landroid/database/Cursor;

.field private jsonArray_StructuredName:Lorg/json/JSONArray;

.field private jsonArray_email:Lorg/json/JSONArray;

.field private jsonArray_event:Lorg/json/JSONArray;

.field private jsonArray_im:Lorg/json/JSONArray;

.field private jsonArray_number:Lorg/json/JSONArray;

.field private jsonArray_organization:Lorg/json/JSONArray;

.field private jsonArray_sipaddress:Lorg/json/JSONArray;

.field private jsonArray_structuredPostal:Lorg/json/JSONArray;

.field private jsonArray_website:Lorg/json/JSONArray;

.field private jsonObject_item:Lorg/json/JSONObject;

.field final synthetic this$0:Lcom/futuredial/pim/G2Phonebook;


# direct methods
.method private constructor <init>(Lcom/futuredial/pim/G2Phonebook;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 2083
    iput-object p1, p0, Lcom/futuredial/pim/G2Phonebook$ReadPhoneBook;->this$0:Lcom/futuredial/pim/G2Phonebook;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2084
    iput-object v0, p0, Lcom/futuredial/pim/G2Phonebook$ReadPhoneBook;->jsonArray_StructuredName:Lorg/json/JSONArray;

    .line 2085
    iput-object v0, p0, Lcom/futuredial/pim/G2Phonebook$ReadPhoneBook;->jsonArray_email:Lorg/json/JSONArray;

    .line 2086
    iput-object v0, p0, Lcom/futuredial/pim/G2Phonebook$ReadPhoneBook;->jsonArray_number:Lorg/json/JSONArray;

    .line 2087
    iput-object v0, p0, Lcom/futuredial/pim/G2Phonebook$ReadPhoneBook;->jsonArray_im:Lorg/json/JSONArray;

    .line 2088
    iput-object v0, p0, Lcom/futuredial/pim/G2Phonebook$ReadPhoneBook;->jsonArray_website:Lorg/json/JSONArray;

    .line 2089
    iput-object v0, p0, Lcom/futuredial/pim/G2Phonebook$ReadPhoneBook;->jsonArray_organization:Lorg/json/JSONArray;

    .line 2090
    iput-object v0, p0, Lcom/futuredial/pim/G2Phonebook$ReadPhoneBook;->jsonArray_structuredPostal:Lorg/json/JSONArray;

    .line 2091
    iput-object v0, p0, Lcom/futuredial/pim/G2Phonebook$ReadPhoneBook;->jsonArray_event:Lorg/json/JSONArray;

    .line 2092
    iput-object v0, p0, Lcom/futuredial/pim/G2Phonebook$ReadPhoneBook;->jsonArray_sipaddress:Lorg/json/JSONArray;

    .line 2093
    iput-object v0, p0, Lcom/futuredial/pim/G2Phonebook$ReadPhoneBook;->jsonObject_item:Lorg/json/JSONObject;

    .line 2094
    iput-object v0, p0, Lcom/futuredial/pim/G2Phonebook$ReadPhoneBook;->cursor:Landroid/database/Cursor;

    .line 2095
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/futuredial/pim/G2Phonebook$ReadPhoneBook;->bNoRecord:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/futuredial/pim/G2Phonebook;Lcom/futuredial/pim/G2Phonebook$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2083
    invoke-direct {p0, p1}, Lcom/futuredial/pim/G2Phonebook$ReadPhoneBook;-><init>(Lcom/futuredial/pim/G2Phonebook;)V

    return-void
.end method

.method private ParseCursor(Landroid/database/Cursor;)I
    .locals 7
    .parameter "cursor"

    .prologue
    .line 2256
    const/4 v1, 0x0

    .line 2257
    .local v1, nRet:I
    const-string v3, "default"

    .line 2258
    .local v3, strMimeType:Ljava/lang/String;
    if-nez p1, :cond_0

    move v2, v1

    .line 2291
    .end local v1           #nRet:I
    .local v2, nRet:I
    :goto_0
    return v2

    .line 2261
    .end local v2           #nRet:I
    .restart local v1       #nRet:I
    :cond_0
    :try_start_0
    const-string v4, "mimetype"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2262
    const-string v4, "vnd.android.cursor.item/name"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2263
    invoke-direct {p0, p1}, Lcom/futuredial/pim/G2Phonebook$ReadPhoneBook;->ParseStructuredName(Landroid/database/Cursor;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2290
    :cond_1
    :goto_1
    const-string v4, "G2Phonebook"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Out ParseCursor(),strMimeType:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 2291
    .end local v1           #nRet:I
    .restart local v2       #nRet:I
    goto :goto_0

    .line 2264
    .end local v2           #nRet:I
    .restart local v1       #nRet:I
    :cond_2
    :try_start_1
    const-string v4, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2265
    invoke-direct {p0, p1}, Lcom/futuredial/pim/G2Phonebook$ReadPhoneBook;->ParseStructuredPostal(Landroid/database/Cursor;)I

    move-result v1

    goto :goto_1

    .line 2266
    :cond_3
    const-string v4, "vnd.android.cursor.item/nickname"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2267
    invoke-direct {p0, p1}, Lcom/futuredial/pim/G2Phonebook$ReadPhoneBook;->ParseNickname(Landroid/database/Cursor;)I

    move-result v1

    goto :goto_1

    .line 2268
    :cond_4
    const-string v4, "vnd.android.cursor.item/note"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2269
    invoke-direct {p0, p1}, Lcom/futuredial/pim/G2Phonebook$ReadPhoneBook;->ParseNote(Landroid/database/Cursor;)I

    move-result v1

    goto :goto_1

    .line 2270
    :cond_5
    const-string v4, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2271
    invoke-direct {p0, p1}, Lcom/futuredial/pim/G2Phonebook$ReadPhoneBook;->ParseEmail(Landroid/database/Cursor;)I

    move-result v1

    goto :goto_1

    .line 2272
    :cond_6
    const-string v4, "vnd.android.cursor.item/website"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2273
    invoke-direct {p0, p1}, Lcom/futuredial/pim/G2Phonebook$ReadPhoneBook;->ParseWebsite(Landroid/database/Cursor;)I

    move-result v1

    goto :goto_1

    .line 2274
    :cond_7
    const-string v4, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 2275
    invoke-direct {p0, p1}, Lcom/futuredial/pim/G2Phonebook$ReadPhoneBook;->ParseNumber(Landroid/database/Cursor;)I

    move-result v1

    goto :goto_1

    .line 2276
    :cond_8
    const-string v4, "vnd.android.cursor.item/im"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 2277
    invoke-direct {p0, p1}, Lcom/futuredial/pim/G2Phonebook$ReadPhoneBook;->ParseIM(Landroid/database/Cursor;)I

    move-result v1

    goto :goto_1

    .line 2278
    :cond_9
    const-string v4, "vnd.android.cursor.item/organization"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 2279
    invoke-direct {p0, p1}, Lcom/futuredial/pim/G2Phonebook$ReadPhoneBook;->ParseOrganization(Landroid/database/Cursor;)I

    move-result v1

    goto/16 :goto_1

    .line 2280
    :cond_a
    const-string v4, "vnd.android.cursor.item/contact_event"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 2281
    invoke-direct {p0, p1}, Lcom/futuredial/pim/G2Phonebook$ReadPhoneBook;->ParseEvent(Landroid/database/Cursor;)I

    move-result v1

    goto/16 :goto_1

    .line 2282
    :cond_b
    const-string v4, "vnd.android.cursor.item/photo"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 2283
    invoke-direct {p0, p1}, Lcom/futuredial/pim/G2Phonebook$ReadPhoneBook;->ParsePhoto(Landroid/database/Cursor;)I

    move-result v1

    goto/16 :goto_1

    .line 2284
    :cond_c
    const-string v4, "vnd.android.cursor.item/sip_address"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2285
    invoke-direct {p0, p1}, Lcom/futuredial/pim/G2Phonebook$ReadPhoneBook;->ParseSipAddress(Landroid/database/Cursor;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    goto/16 :goto_1

    .line 2287
    :catch_0
    move-exception v0

    .line 2288
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1
.end method

.method private ParseEmail(Landroid/database/Cursor;)I
    .locals 8
    .parameter "cursor"

    .prologue
    .line 2363
    const/4 v2, 0x0

    .line 2365
    .local v2, nRet:I
    :try_start_0
    const-string v6, "data2"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 2366
    .local v3, nType:I
    const-string v6, "data1"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2367
    .local v5, strValue:Ljava/lang/String;
    const-string v6, "data3"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2368
    .local v1, label:Ljava/lang/String;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 2369
    .local v4, object:Lorg/json/JSONObject;
    const-string v6, "data2"

    invoke-virtual {v4, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2370
    const-string v6, "data1"

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2371
    const-string v6, "data3"

    invoke-virtual {v4, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2372
    iget-object v6, p0, Lcom/futuredial/pim/G2Phonebook$ReadPhoneBook;->jsonArray_email:Lorg/json/JSONArray;

    invoke-virtual {v6, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2377
    .end local v1           #label:Ljava/lang/String;
    .end local v3           #nType:I
    .end local v4           #object:Lorg/json/JSONObject;
    .end local v5           #strValue:Ljava/lang/String;
    :goto_0
    const-string v6, "G2Phonebook"

    const-string v7, "Out ParseEmail()"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2378
    return v2

    .line 2373
    :catch_0
    move-exception v0

    .line 2374
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2375
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private ParseEvent(Landroid/database/Cursor;)I
    .locals 8
    .parameter "cursor"

    .prologue
    .line 2493
    const/4 v2, 0x0

    .line 2496
    .local v2, nRet:I
    :try_start_0
    const-string v6, "data2"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 2497
    .local v3, nType:I
    const-string v6, "data1"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2498
    .local v5, start_date:Ljava/lang/String;
    const-string v6, "data3"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2499
    .local v1, label:Ljava/lang/String;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 2500
    .local v4, object:Lorg/json/JSONObject;
    const-string v6, "data2"

    invoke-virtual {v4, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2501
    const-string v6, "data1"

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2502
    const-string v6, "data3"

    invoke-virtual {v4, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2503
    iget-object v6, p0, Lcom/futuredial/pim/G2Phonebook$ReadPhoneBook;->jsonArray_event:Lorg/json/JSONArray;

    invoke-virtual {v6, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2510
    .end local v1           #label:Ljava/lang/String;
    .end local v3           #nType:I
    .end local v4           #object:Lorg/json/JSONObject;
    .end local v5           #start_date:Ljava/lang/String;
    :goto_0
    const-string v6, "G2Phonebook"

    const-string v7, "Out ParseEvent()"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2511
    return v2

    .line 2505
    :catch_0
    move-exception v0

    .line 2506
    .local v0, e:Ljava/lang/Exception;
    const-string v6, "G2Phonebook"

    const-string v7, "ParseEvent(), Exception"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2507
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2508
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private ParseIM(Landroid/database/Cursor;)I
    .locals 10
    .parameter "cursor"

    .prologue
    .line 2382
    const/4 v3, 0x0

    .line 2385
    .local v3, nRet:I
    :try_start_0
    const-string v8, "data5"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 2386
    .local v4, nType:I
    const-string v8, "data1"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 2387
    .local v6, strValue:Ljava/lang/String;
    const-string v8, "data2"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 2388
    .local v7, type:I
    const-string v8, "data3"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2389
    .local v2, label:Ljava/lang/String;
    const-string v8, "data6"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2390
    .local v0, custom_protocol:Ljava/lang/String;
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 2391
    .local v5, object:Lorg/json/JSONObject;
    const-string v8, "data5"

    invoke-virtual {v5, v8, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2392
    const-string v8, "data1"

    invoke-virtual {v5, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2393
    const-string v8, "data2"

    invoke-virtual {v5, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2394
    const-string v8, "data3"

    invoke-virtual {v5, v8, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2395
    const-string v8, "data6"

    invoke-virtual {v5, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2396
    iget-object v8, p0, Lcom/futuredial/pim/G2Phonebook$ReadPhoneBook;->jsonArray_im:Lorg/json/JSONArray;

    invoke-virtual {v8, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2401
    .end local v0           #custom_protocol:Ljava/lang/String;
    .end local v2           #label:Ljava/lang/String;
    .end local v4           #nType:I
    .end local v5           #object:Lorg/json/JSONObject;
    .end local v6           #strValue:Ljava/lang/String;
    .end local v7           #type:I
    :goto_0
    const-string v8, "G2Phonebook"

    const-string v9, "Out ParseIM()"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2402
    return v3

    .line 2397
    :catch_0
    move-exception v1

    .line 2398
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2399
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private ParseNickname(Landroid/database/Cursor;)I
    .locals 7
    .parameter "cursor"

    .prologue
    .line 2326
    const/4 v2, 0x0

    .line 2328
    .local v2, nRet:I
    :try_start_0
    const-string v5, "data1"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2329
    .local v3, name:Ljava/lang/String;
    const-string v5, "data2"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 2330
    .local v4, type:I
    const-string v5, "data3"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2331
    .local v1, label:Ljava/lang/String;
    iget-object v5, p0, Lcom/futuredial/pim/G2Phonebook$ReadPhoneBook;->jsonObject_item:Lorg/json/JSONObject;

    const-string v6, "data1"

    invoke-virtual {v5, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2332
    iget-object v5, p0, Lcom/futuredial/pim/G2Phonebook$ReadPhoneBook;->jsonObject_item:Lorg/json/JSONObject;

    const-string v6, "data2"

    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2333
    iget-object v5, p0, Lcom/futuredial/pim/G2Phonebook$ReadPhoneBook;->jsonObject_item:Lorg/json/JSONObject;

    const-string v6, "data3"

    invoke-virtual {v5, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2338
    .end local v1           #label:Ljava/lang/String;
    .end local v3           #name:Ljava/lang/String;
    .end local v4           #type:I
    :goto_0
    const-string v5, "G2Phonebook"

    const-string v6, "Out ParseNickname()"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2339
    return v2

    .line 2334
    :catch_0
    move-exception v0

    .line 2335
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2336
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private ParseNote(Landroid/database/Cursor;)I
    .locals 5
    .parameter "cursor"

    .prologue
    .line 2550
    const/4 v1, 0x0

    .line 2553
    .local v1, nRet:I
    :try_start_0
    const-string v3, "data1"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2554
    .local v2, strValue:Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 2555
    iget-object v3, p0, Lcom/futuredial/pim/G2Phonebook$ReadPhoneBook;->jsonObject_item:Lorg/json/JSONObject;

    const-string v4, "data1"

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2561
    .end local v2           #strValue:Ljava/lang/String;
    :cond_0
    :goto_0
    const-string v3, "G2Phonebook"

    const-string v4, "Out ParseNote()"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2562
    return v1

    .line 2557
    :catch_0
    move-exception v0

    .line 2558
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2559
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private ParseNumber(Landroid/database/Cursor;)I
    .locals 8
    .parameter "cursor"

    .prologue
    .line 2343
    const/4 v2, 0x0

    .line 2346
    .local v2, nRet:I
    :try_start_0
    const-string v6, "data2"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 2347
    .local v3, nType:I
    const-string v6, "data1"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2348
    .local v5, strValue:Ljava/lang/String;
    const-string v6, "data3"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2349
    .local v1, label:Ljava/lang/String;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 2350
    .local v4, object:Lorg/json/JSONObject;
    const-string v6, "data2"

    invoke-virtual {v4, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2351
    const-string v6, "data1"

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2352
    const-string v6, "data3"

    invoke-virtual {v4, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2353
    iget-object v6, p0, Lcom/futuredial/pim/G2Phonebook$ReadPhoneBook;->jsonArray_number:Lorg/json/JSONArray;

    invoke-virtual {v6, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2358
    .end local v1           #label:Ljava/lang/String;
    .end local v3           #nType:I
    .end local v4           #object:Lorg/json/JSONObject;
    .end local v5           #strValue:Ljava/lang/String;
    :goto_0
    const-string v6, "G2Phonebook"

    const-string v7, "Out ParseNumber()"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2359
    return v2

    .line 2354
    :catch_0
    move-exception v0

    .line 2355
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2356
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private ParseOrganization(Landroid/database/Cursor;)I
    .locals 16
    .parameter "cursor"

    .prologue
    .line 2426
    const/4 v3, 0x0

    .line 2428
    .local v3, nRet:I
    :try_start_0
    const-string v14, "data1"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2430
    .local v1, company:Ljava/lang/String;
    const-string v14, "data2"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 2431
    .local v4, nType:I
    const-string v14, "data3"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 2432
    .local v8, strOrg_label:Ljava/lang/String;
    const-string v14, "data4"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 2433
    .local v13, strOrg_title:Ljava/lang/String;
    const-string v14, "data5"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 2434
    .local v6, strOrg_department:Ljava/lang/String;
    const-string v14, "data6"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 2435
    .local v7, strOrg_job_description:Ljava/lang/String;
    const-string v14, "data7"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 2436
    .local v12, strOrg_symbol:Ljava/lang/String;
    const-string v14, "data8"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 2437
    .local v10, strOrg_phonetic_name:Ljava/lang/String;
    const-string v14, "data9"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 2438
    .local v9, strOrg_office_location:Ljava/lang/String;
    const-string v14, "data10"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 2439
    .local v11, strOrg_phonetic_name_style:Ljava/lang/String;
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 2440
    .local v5, object:Lorg/json/JSONObject;
    const-string v14, "data1"

    invoke-virtual {v5, v14, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2441
    const-string v14, "data2"

    invoke-virtual {v5, v14, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2442
    const-string v14, "data3"

    invoke-virtual {v5, v14, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2443
    const-string v14, "data4"

    invoke-virtual {v5, v14, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2444
    const-string v14, "data5"

    invoke-virtual {v5, v14, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2445
    const-string v14, "data6"

    invoke-virtual {v5, v14, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2446
    const-string v14, "data7"

    invoke-virtual {v5, v14, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2447
    const-string v14, "data8"

    invoke-virtual {v5, v14, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2448
    const-string v14, "data9"

    invoke-virtual {v5, v14, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2449
    const-string v14, "data10"

    invoke-virtual {v5, v14, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2450
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/futuredial/pim/G2Phonebook$ReadPhoneBook;->jsonArray_organization:Lorg/json/JSONArray;

    invoke-virtual {v14, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2455
    .end local v1           #company:Ljava/lang/String;
    .end local v4           #nType:I
    .end local v5           #object:Lorg/json/JSONObject;
    .end local v6           #strOrg_department:Ljava/lang/String;
    .end local v7           #strOrg_job_description:Ljava/lang/String;
    .end local v8           #strOrg_label:Ljava/lang/String;
    .end local v9           #strOrg_office_location:Ljava/lang/String;
    .end local v10           #strOrg_phonetic_name:Ljava/lang/String;
    .end local v11           #strOrg_phonetic_name_style:Ljava/lang/String;
    .end local v12           #strOrg_symbol:Ljava/lang/String;
    .end local v13           #strOrg_title:Ljava/lang/String;
    :goto_0
    const-string v14, "G2Phonebook"

    const-string v15, "Out ParseOrganization()"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2456
    return v3

    .line 2451
    :catch_0
    move-exception v2

    .line 2452
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 2453
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private ParsePhoto(Landroid/database/Cursor;)I
    .locals 6
    .parameter "cursor"

    .prologue
    .line 2515
    const/4 v1, 0x0

    .line 2518
    .local v1, nRet:I
    :try_start_0
    const-string v3, "data15"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    .line 2519
    .local v2, value:[B
    if-eqz v2, :cond_0

    array-length v3, v2

    if-lez v3, :cond_0

    .line 2520
    iget-object v3, p0, Lcom/futuredial/pim/G2Phonebook$ReadPhoneBook;->jsonObject_item:Lorg/json/JSONObject;

    const-string v4, "data15"

    const/4 v5, 0x0

    invoke-static {v2, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2527
    .end local v2           #value:[B
    :cond_0
    :goto_0
    return v1

    .line 2522
    :catch_0
    move-exception v0

    .line 2523
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x1

    .line 2524
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2525
    const-string v3, "G2Phonebook"

    const-string v4, "ParsePhoto(), Exception"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private ParseRingtone(Ljava/lang/String;)I
    .locals 10
    .parameter "id"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 2231
    const/4 v9, 0x0

    .line 2232
    .local v9, nRet:I
    const-string v7, ""

    .line 2233
    .local v7, custom_ringtone:Ljava/lang/String;
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 2234
    .local v1, uri:Landroid/net/Uri;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "custom_ringtone"

    aput-object v0, v2, v5

    .line 2235
    .local v2, projection:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2236
    .local v3, selection:Ljava/lang/String;
    iget-object v0, p0, Lcom/futuredial/pim/G2Phonebook$ReadPhoneBook;->this$0:Lcom/futuredial/pim/G2Phonebook;

    iget-object v0, v0, Lcom/futuredial/pim/G2Phonebook;->cr:Landroid/content/ContentResolver;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2238
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2239
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 2240
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2248
    :cond_0
    :goto_0
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 2249
    const-string v0, "G2Phonebook"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ParseRingtone(),custom_ringtone,"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2252
    :cond_1
    return v9

    .line 2242
    :catch_0
    move-exception v8

    .line 2243
    .local v8, e:Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 2244
    const-string v0, "G2Phonebook"

    const-string v4, "ParseRingtone(),Exception"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2245
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2246
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private ParseSipAddress(Landroid/database/Cursor;)I
    .locals 8
    .parameter "cursor"

    .prologue
    .line 2531
    const/4 v2, 0x0

    .line 2533
    .local v2, nRet:I
    :try_start_0
    const-string v6, "data2"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 2534
    .local v5, type:I
    const-string v6, "data3"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2535
    .local v1, label:Ljava/lang/String;
    const-string v6, "data1"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2536
    .local v4, sipaddress:Ljava/lang/String;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 2537
    .local v3, object:Lorg/json/JSONObject;
    const-string v6, "data2"

    invoke-virtual {v3, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2538
    const-string v6, "data3"

    invoke-virtual {v3, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2539
    const-string v6, "data1"

    invoke-virtual {v3, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2540
    iget-object v6, p0, Lcom/futuredial/pim/G2Phonebook$ReadPhoneBook;->jsonArray_sipaddress:Lorg/json/JSONArray;

    invoke-virtual {v6, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2546
    .end local v1           #label:Ljava/lang/String;
    .end local v3           #object:Lorg/json/JSONObject;
    .end local v4           #sipaddress:Ljava/lang/String;
    .end local v5           #type:I
    :goto_0
    return v2

    .line 2541
    :catch_0
    move-exception v0

    .line 2542
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x1

    .line 2543
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2544
    const-string v6, "G2Phonebook"

    const-string v7, "ParsePhoto(), Exception"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private ParseStructuredName(Landroid/database/Cursor;)I
    .locals 14
    .parameter "cursor"

    .prologue
    .line 2295
    const/4 v5, 0x0

    .line 2297
    .local v5, nRet:I
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 2298
    .local v6, object:Lorg/json/JSONObject;
    const-string v12, "data1"

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2299
    .local v0, displayName:Ljava/lang/String;
    const-string v12, "data1"

    invoke-virtual {v6, v12, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2300
    const-string v12, "data2"

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2301
    .local v3, givenName:Ljava/lang/String;
    const-string v12, "data2"

    invoke-virtual {v6, v12, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2302
    const-string v12, "data3"

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2303
    .local v2, familyName:Ljava/lang/String;
    const-string v12, "data3"

    invoke-virtual {v6, v12, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2304
    const-string v12, "data4"

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 2305
    .local v10, prefix:Ljava/lang/String;
    const-string v12, "data4"

    invoke-virtual {v6, v12, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2306
    const-string v12, "data5"

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2307
    .local v4, middleName:Ljava/lang/String;
    const-string v12, "data5"

    invoke-virtual {v6, v12, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2308
    const-string v12, "data6"

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 2309
    .local v11, suffix:Ljava/lang/String;
    const-string v12, "data6"

    invoke-virtual {v6, v12, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2310
    const-string v12, "data7"

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 2311
    .local v8, phoneticGivenName:Ljava/lang/String;
    const-string v12, "data7"

    invoke-virtual {v6, v12, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2312
    const-string v12, "data8"

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 2313
    .local v9, phoneticMiddleName:Ljava/lang/String;
    const-string v12, "data8"

    invoke-virtual {v6, v12, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2314
    const-string v12, "data9"

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 2315
    .local v7, phoneticFamilyName:Ljava/lang/String;
    const-string v12, "data9"

    invoke-virtual {v6, v12, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2316
    iget-object v12, p0, Lcom/futuredial/pim/G2Phonebook$ReadPhoneBook;->jsonArray_StructuredName:Lorg/json/JSONArray;

    invoke-virtual {v12, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2321
    .end local v0           #displayName:Ljava/lang/String;
    .end local v2           #familyName:Ljava/lang/String;
    .end local v3           #givenName:Ljava/lang/String;
    .end local v4           #middleName:Ljava/lang/String;
    .end local v6           #object:Lorg/json/JSONObject;
    .end local v7           #phoneticFamilyName:Ljava/lang/String;
    .end local v8           #phoneticGivenName:Ljava/lang/String;
    .end local v9           #phoneticMiddleName:Ljava/lang/String;
    .end local v10           #prefix:Ljava/lang/String;
    .end local v11           #suffix:Ljava/lang/String;
    :goto_0
    const-string v12, "G2Phonebook"

    const-string v13, "Out ParseStructuredName()"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2322
    return v5

    .line 2317
    :catch_0
    move-exception v1

    .line 2318
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2319
    const/4 v5, 0x1

    goto :goto_0
.end method

.method private ParseStructuredPostal(Landroid/database/Cursor;)I
    .locals 14
    .parameter "cursor"

    .prologue
    .line 2460
    const/4 v1, 0x0

    .line 2463
    .local v1, nRet:I
    :try_start_0
    const-string v12, "data2"

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 2464
    .local v2, nType:I
    const-string v12, "data3"

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 2465
    .local v6, strAddress_label:Ljava/lang/String;
    const-string v12, "data4"

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 2466
    .local v11, strAddress_street:Ljava/lang/String;
    const-string v12, "data5"

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 2467
    .local v8, strAddress_pobox:Ljava/lang/String;
    const-string v12, "data6"

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 2468
    .local v7, strAddress_neighborhood:Ljava/lang/String;
    const-string v12, "data7"

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2469
    .local v4, strAddress_city:Ljava/lang/String;
    const-string v12, "data8"

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 2470
    .local v10, strAddress_region:Ljava/lang/String;
    const-string v12, "data9"

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 2471
    .local v9, strAddress_postcode:Ljava/lang/String;
    const-string v12, "data10"

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2472
    .local v5, strAddress_country:Ljava/lang/String;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 2473
    .local v3, object:Lorg/json/JSONObject;
    const-string v12, "data2"

    invoke-virtual {v3, v12, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2474
    const-string v12, "data3"

    invoke-virtual {v3, v12, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2475
    const-string v12, "data4"

    invoke-virtual {v3, v12, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2476
    const-string v12, "data5"

    invoke-virtual {v3, v12, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2477
    const-string v12, "data6"

    invoke-virtual {v3, v12, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2478
    const-string v12, "data7"

    invoke-virtual {v3, v12, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2479
    const-string v12, "data8"

    invoke-virtual {v3, v12, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2480
    const-string v12, "data9"

    invoke-virtual {v3, v12, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2481
    const-string v12, "data10"

    invoke-virtual {v3, v12, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2482
    iget-object v12, p0, Lcom/futuredial/pim/G2Phonebook$ReadPhoneBook;->jsonArray_structuredPostal:Lorg/json/JSONArray;

    invoke-virtual {v12, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2488
    .end local v2           #nType:I
    .end local v3           #object:Lorg/json/JSONObject;
    .end local v4           #strAddress_city:Ljava/lang/String;
    .end local v5           #strAddress_country:Ljava/lang/String;
    .end local v6           #strAddress_label:Ljava/lang/String;
    .end local v7           #strAddress_neighborhood:Ljava/lang/String;
    .end local v8           #strAddress_pobox:Ljava/lang/String;
    .end local v9           #strAddress_postcode:Ljava/lang/String;
    .end local v10           #strAddress_region:Ljava/lang/String;
    .end local v11           #strAddress_street:Ljava/lang/String;
    :goto_0
    const-string v12, "G2Phonebook"

    const-string v13, "Out ParseAddress()"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2489
    return v1

    .line 2484
    :catch_0
    move-exception v0

    .line 2485
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2486
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private ParseWebsite(Landroid/database/Cursor;)I
    .locals 8
    .parameter "cursor"

    .prologue
    .line 2406
    const/4 v2, 0x0

    .line 2409
    .local v2, nRet:I
    :try_start_0
    const-string v6, "data2"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 2410
    .local v3, nType:I
    const-string v6, "data1"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2411
    .local v5, strValue:Ljava/lang/String;
    const-string v6, "data3"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2412
    .local v1, label:Ljava/lang/String;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 2413
    .local v4, object:Lorg/json/JSONObject;
    const-string v6, "data2"

    invoke-virtual {v4, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2414
    const-string v6, "data1"

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2415
    const-string v6, "data3"

    invoke-virtual {v4, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2416
    iget-object v6, p0, Lcom/futuredial/pim/G2Phonebook$ReadPhoneBook;->jsonArray_website:Lorg/json/JSONArray;

    invoke-virtual {v6, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2421
    .end local v1           #label:Ljava/lang/String;
    .end local v3           #nType:I
    .end local v4           #object:Lorg/json/JSONObject;
    .end local v5           #strValue:Ljava/lang/String;
    :goto_0
    const-string v6, "G2Phonebook"

    const-string v7, "Out ParseWebsite()"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2422
    return v2

    .line 2417
    :catch_0
    move-exception v0

    .line 2418
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2419
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private ReadOneContact(Lorg/json/JSONObject;)I
    .locals 7
    .parameter "_item"

    .prologue
    const/4 v6, 0x1

    .line 2128
    const/4 v2, 0x0

    .line 2130
    .local v2, nRet:I
    :try_start_0
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    iput-object v4, p0, Lcom/futuredial/pim/G2Phonebook$ReadPhoneBook;->jsonArray_StructuredName:Lorg/json/JSONArray;

    .line 2131
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    iput-object v4, p0, Lcom/futuredial/pim/G2Phonebook$ReadPhoneBook;->jsonArray_email:Lorg/json/JSONArray;

    .line 2132
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    iput-object v4, p0, Lcom/futuredial/pim/G2Phonebook$ReadPhoneBook;->jsonArray_number:Lorg/json/JSONArray;

    .line 2133
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    iput-object v4, p0, Lcom/futuredial/pim/G2Phonebook$ReadPhoneBook;->jsonArray_im:Lorg/json/JSONArray;

    .line 2134
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    iput-object v4, p0, Lcom/futuredial/pim/G2Phonebook$ReadPhoneBook;->jsonArray_website:Lorg/json/JSONArray;

    .line 2135
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    iput-object v4, p0, Lcom/futuredial/pim/G2Phonebook$ReadPhoneBook;->jsonArray_organization:Lorg/json/JSONArray;

    .line 2136
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    iput-object v4, p0, Lcom/futuredial/pim/G2Phonebook$ReadPhoneBook;->jsonArray_structuredPostal:Lorg/json/JSONArray;

    .line 2137
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    iput-object v4, p0, Lcom/futuredial/pim/G2Phonebook$ReadPhoneBook;->jsonArray_event:Lorg/json/JSONArray;

    .line 2138
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    iput-object v4, p0, Lcom/futuredial/pim/G2Phonebook$ReadPhoneBook;->jsonArray_sipaddress:Lorg/json/JSONArray;

    .line 2140
    iput-object p1, p0, Lcom/futuredial/pim/G2Phonebook$ReadPhoneBook;->jsonObject_item:Lorg/json/JSONObject;

    .line 2141
    iget-boolean v4, p0, Lcom/futuredial/pim/G2Phonebook$ReadPhoneBook;->bNoRecord:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_1

    .line 2142
    const/4 v4, 0x0

    .line 2164
    iget-object v5, p0, Lcom/futuredial/pim/G2Phonebook$ReadPhoneBook;->cursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2165
    iput-boolean v6, p0, Lcom/futuredial/pim/G2Phonebook$ReadPhoneBook;->bNoRecord:Z

    .line 2168
    :cond_0
    :goto_0
    return v4

    .line 2145
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/futuredial/pim/G2Phonebook$ReadPhoneBook;->cursor:Landroid/database/Cursor;

    const-string v5, "_id"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 2147
    .local v1, nColumnID:I
    iget-object v4, p0, Lcom/futuredial/pim/G2Phonebook$ReadPhoneBook;->cursor:Landroid/database/Cursor;

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2149
    .local v3, strID:Ljava/lang/String;
    const-string v4, "read current Contact ID : "

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2151
    if-eqz v3, :cond_2

    .line 2153
    iget-object v4, p0, Lcom/futuredial/pim/G2Phonebook$ReadPhoneBook;->jsonObject_item:Lorg/json/JSONObject;

    const-string v5, "id"

    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2155
    invoke-direct {p0, v3}, Lcom/futuredial/pim/G2Phonebook$ReadPhoneBook;->ReadPhoneData(Ljava/lang/String;)I

    .line 2157
    invoke-direct {p0, v3}, Lcom/futuredial/pim/G2Phonebook$ReadPhoneBook;->ParseRingtone(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2164
    :cond_2
    iget-object v4, p0, Lcom/futuredial/pim/G2Phonebook$ReadPhoneBook;->cursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_3

    .line 2165
    iput-boolean v6, p0, Lcom/futuredial/pim/G2Phonebook$ReadPhoneBook;->bNoRecord:Z

    .line 2167
    .end local v1           #nColumnID:I
    .end local v3           #strID:Ljava/lang/String;
    :cond_3
    :goto_1
    const-string v4, "G2Phonebook"

    const-string v5, "Out ReadOneContact()"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v2

    .line 2168
    goto :goto_0

    .line 2160
    :catch_0
    move-exception v0

    .line 2161
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2162
    const/4 v2, 0x1

    .line 2164
    iget-object v4, p0, Lcom/futuredial/pim/G2Phonebook$ReadPhoneBook;->cursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_3

    .line 2165
    iput-boolean v6, p0, Lcom/futuredial/pim/G2Phonebook$ReadPhoneBook;->bNoRecord:Z

    goto :goto_1

    .line 2164
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lcom/futuredial/pim/G2Phonebook$ReadPhoneBook;->cursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_4

    .line 2165
    iput-boolean v6, p0, Lcom/futuredial/pim/G2Phonebook$ReadPhoneBook;->bNoRecord:Z

    :cond_4
    throw v4
.end method

.method private ReadPhoneData(Ljava/lang/String;)I
    .locals 9
    .parameter "strUid"

    .prologue
    .line 2172
    const/4 v8, 0x0

    .line 2173
    .local v8, nRet:I
    const/4 v6, 0x0

    .line 2175
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 2176
    .local v1, dataUri:Landroid/net/Uri;
    const/4 v3, 0x0

    .line 2177
    .local v3, selection:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "raw_contact_id = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2178
    iget-object v0, p0, Lcom/futuredial/pim/G2Phonebook$ReadPhoneBook;->this$0:Lcom/futuredial/pim/G2Phonebook;

    iget-object v0, v0, Lcom/futuredial/pim/G2Phonebook;->cr:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2179
    if-eqz v6, :cond_2

    .line 2180
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2182
    :cond_0
    invoke-direct {p0, v6}, Lcom/futuredial/pim/G2Phonebook$ReadPhoneBook;->ParseCursor(Landroid/database/Cursor;)I

    .line 2183
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2185
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2188
    :cond_2
    iget-object v0, p0, Lcom/futuredial/pim/G2Phonebook$ReadPhoneBook;->jsonArray_StructuredName:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 2189
    iget-object v0, p0, Lcom/futuredial/pim/G2Phonebook$ReadPhoneBook;->jsonObject_item:Lorg/json/JSONObject;

    const-string v2, "structuredname"

    iget-object v4, p0, Lcom/futuredial/pim/G2Phonebook$ReadPhoneBook;->jsonArray_StructuredName:Lorg/json/JSONArray;

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2191
    :cond_3
    iget-object v0, p0, Lcom/futuredial/pim/G2Phonebook$ReadPhoneBook;->jsonArray_number:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 2192
    iget-object v0, p0, Lcom/futuredial/pim/G2Phonebook$ReadPhoneBook;->jsonObject_item:Lorg/json/JSONObject;

    const-string v2, "number"

    iget-object v4, p0, Lcom/futuredial/pim/G2Phonebook$ReadPhoneBook;->jsonArray_number:Lorg/json/JSONArray;

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2195
    :cond_4
    iget-object v0, p0, Lcom/futuredial/pim/G2Phonebook$ReadPhoneBook;->jsonArray_structuredPostal:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_5

    .line 2196
    iget-object v0, p0, Lcom/futuredial/pim/G2Phonebook$ReadPhoneBook;->jsonObject_item:Lorg/json/JSONObject;

    const-string v2, "structuredpostal"

    iget-object v4, p0, Lcom/futuredial/pim/G2Phonebook$ReadPhoneBook;->jsonArray_structuredPostal:Lorg/json/JSONArray;

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2200
    :cond_5
    iget-object v0, p0, Lcom/futuredial/pim/G2Phonebook$ReadPhoneBook;->jsonArray_email:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_6

    .line 2201
    iget-object v0, p0, Lcom/futuredial/pim/G2Phonebook$ReadPhoneBook;->jsonObject_item:Lorg/json/JSONObject;

    const-string v2, "email"

    iget-object v4, p0, Lcom/futuredial/pim/G2Phonebook$ReadPhoneBook;->jsonArray_email:Lorg/json/JSONArray;

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2203
    :cond_6
    iget-object v0, p0, Lcom/futuredial/pim/G2Phonebook$ReadPhoneBook;->jsonArray_website:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_7

    .line 2204
    iget-object v0, p0, Lcom/futuredial/pim/G2Phonebook$ReadPhoneBook;->jsonObject_item:Lorg/json/JSONObject;

    const-string v2, "website"

    iget-object v4, p0, Lcom/futuredial/pim/G2Phonebook$ReadPhoneBook;->jsonArray_website:Lorg/json/JSONArray;

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2206
    :cond_7
    iget-object v0, p0, Lcom/futuredial/pim/G2Phonebook$ReadPhoneBook;->jsonArray_im:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_8

    .line 2207
    iget-object v0, p0, Lcom/futuredial/pim/G2Phonebook$ReadPhoneBook;->jsonObject_item:Lorg/json/JSONObject;

    const-string v2, "im"

    iget-object v4, p0, Lcom/futuredial/pim/G2Phonebook$ReadPhoneBook;->jsonArray_im:Lorg/json/JSONArray;

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2209
    :cond_8
    iget-object v0, p0, Lcom/futuredial/pim/G2Phonebook$ReadPhoneBook;->jsonArray_organization:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_9

    .line 2210
    iget-object v0, p0, Lcom/futuredial/pim/G2Phonebook$ReadPhoneBook;->jsonObject_item:Lorg/json/JSONObject;

    const-string v2, "organization"

    iget-object v4, p0, Lcom/futuredial/pim/G2Phonebook$ReadPhoneBook;->jsonArray_organization:Lorg/json/JSONArray;

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2212
    :cond_9
    iget-object v0, p0, Lcom/futuredial/pim/G2Phonebook$ReadPhoneBook;->jsonArray_event:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_a

    .line 2213
    iget-object v0, p0, Lcom/futuredial/pim/G2Phonebook$ReadPhoneBook;->jsonObject_item:Lorg/json/JSONObject;

    const-string v2, "event"

    iget-object v4, p0, Lcom/futuredial/pim/G2Phonebook$ReadPhoneBook;->jsonArray_event:Lorg/json/JSONArray;

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2216
    :cond_a
    iget-object v0, p0, Lcom/futuredial/pim/G2Phonebook$ReadPhoneBook;->jsonArray_sipaddress:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_b

    .line 2217
    iget-object v0, p0, Lcom/futuredial/pim/G2Phonebook$ReadPhoneBook;->jsonObject_item:Lorg/json/JSONObject;

    const-string v2, "sipaddress"

    iget-object v4, p0, Lcom/futuredial/pim/G2Phonebook$ReadPhoneBook;->jsonArray_sipaddress:Lorg/json/JSONArray;

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2226
    .end local v1           #dataUri:Landroid/net/Uri;
    .end local v3           #selection:Ljava/lang/String;
    :cond_b
    :goto_0
    const-string v0, "G2Phonebook"

    const-string v2, "Out ReadPhoneData()"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2227
    return v8

    .line 2218
    :catch_0
    move-exception v7

    .line 2219
    .local v7, e:Ljava/lang/Exception;
    if-eqz v6, :cond_c

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_c

    .line 2220
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2222
    :cond_c
    const-string v0, "read contact"

    const-string v2, " read contact  ReadPhoneData exception !"

    invoke-static {v0, v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2224
    const/4 v8, 0x1

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/futuredial/pim/G2Phonebook$ReadPhoneBook;Lorg/json/JSONObject;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2083
    invoke-direct {p0, p1}, Lcom/futuredial/pim/G2Phonebook$ReadPhoneBook;->ReadOneContact(Lorg/json/JSONObject;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public InitRead()I
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 2098
    const/4 v7, 0x0

    .line 2099
    .local v7, nRet:I
    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    .line 2101
    .local v1, contactUri:Landroid/net/Uri;
    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    .line 2103
    .local v2, projection:[Ljava/lang/String;
    iget-object v0, p0, Lcom/futuredial/pim/G2Phonebook$ReadPhoneBook;->this$0:Lcom/futuredial/pim/G2Phonebook;

    iget-object v0, v0, Lcom/futuredial/pim/G2Phonebook;->cr:Landroid/content/ContentResolver;

    const-string v3, "account_type = \'com.htc.android.pcsc\'"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/futuredial/pim/G2Phonebook$ReadPhoneBook;->cursor:Landroid/database/Cursor;

    .line 2104
    iget-object v0, p0, Lcom/futuredial/pim/G2Phonebook$ReadPhoneBook;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    .line 2105
    const/4 v7, 0x0

    .line 2115
    .end local v2           #projection:[Ljava/lang/String;
    :cond_0
    :goto_0
    return v7

    .line 2106
    :catch_0
    move-exception v6

    .line 2107
    .local v6, e:Ljava/lang/Exception;
    const-string v0, "G2Phonebook"

    const-string v3, "readContact(),Exception"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2108
    const/4 v7, 0x1

    .line 2109
    iget-object v0, p0, Lcom/futuredial/pim/G2Phonebook$ReadPhoneBook;->cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/futuredial/pim/G2Phonebook$ReadPhoneBook;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2110
    iget-object v0, p0, Lcom/futuredial/pim/G2Phonebook$ReadPhoneBook;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2111
    iput-object v8, p0, Lcom/futuredial/pim/G2Phonebook$ReadPhoneBook;->cursor:Landroid/database/Cursor;

    .line 2113
    :cond_1
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public UnInitRead()I
    .locals 2

    .prologue
    .line 2119
    const/4 v0, 0x0

    .line 2120
    .local v0, nRet:I
    iget-object v1, p0, Lcom/futuredial/pim/G2Phonebook$ReadPhoneBook;->cursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/futuredial/pim/G2Phonebook$ReadPhoneBook;->cursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2121
    iget-object v1, p0, Lcom/futuredial/pim/G2Phonebook$ReadPhoneBook;->cursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2122
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/futuredial/pim/G2Phonebook$ReadPhoneBook;->cursor:Landroid/database/Cursor;

    .line 2124
    :cond_0
    return v0
.end method
