.class Lcom/futuredial/atparser/CSAMP520SMSSpliter;
.super Ljava/lang/Object;
.source "CISpliter.java"

# interfaces
.implements Lcom/futuredial/atparser/CISpliter;


# instance fields
.field private param:Ljava/lang/StringBuffer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 319
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/futuredial/atparser/CSAMP520SMSSpliter;->param:Ljava/lang/StringBuffer;

    .line 318
    return-void
.end method

.method private doLinearSpliter3RN(Ljava/lang/String;ILjava/util/ArrayList;)V
    .locals 12
    .parameter "content"
    .parameter "iContentLen"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 388
    .local p3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    const-string v9, "\r\n"

    const-string v10, ""

    invoke-virtual {p1, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "\r\n"

    const-string v11, ""

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 389
    const-string v9, "UTF-8"

    invoke-virtual {p1, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 390
    .local v1, cArray:[B
    new-array v0, p2, [B

    .line 391
    .local v0, body:[B
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v1, v9, v0, v10, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 393
    new-instance v2, Ljava/lang/String;

    const-string v9, "UTF-8"

    invoke-direct {v2, v0, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 394
    .local v2, cBody:Ljava/lang/String;
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 396
    array-length v9, v1

    sub-int/2addr v9, p2

    add-int/lit8 v5, v9, -0x1

    .line 397
    .local v5, len:I
    new-array v6, v5, [B

    .line 399
    .local v6, part:[B
    add-int/lit8 v9, p2, 0x1

    const/4 v10, 0x0

    invoke-static {v1, v9, v6, v10, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 400
    new-instance v7, Ljava/lang/String;

    const-string v9, "UTF-8"

    invoke-direct {v7, v6, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 402
    .local v7, sPart:Ljava/lang/String;
    sget-object v9, Lcom/futuredial/atparser/ParserHelper;->SEP_COMMA:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 403
    .local v8, sPartArray:[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    array-length v9, v8

    if-ge v4, v9, :cond_0

    .line 405
    aget-object v9, v8, v4

    invoke-virtual {p3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 403
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 408
    .end local v0           #body:[B
    .end local v1           #cArray:[B
    .end local v2           #cBody:Ljava/lang/String;
    .end local v4           #i:I
    .end local v5           #len:I
    .end local v6           #part:[B
    .end local v7           #sPart:Ljava/lang/String;
    .end local v8           #sPartArray:[Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 410
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 412
    .end local v3           #e:Ljava/lang/Exception;
    :cond_0
    return-void
.end method


# virtual methods
.method public do_split(Ljava/lang/StringBuffer;Ljava/util/ArrayList;)Z
    .locals 13
    .parameter "data"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuffer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, saveto:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v12, 0x5

    const/4 v9, 0x0

    .line 333
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 334
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v10

    if-nez v10, :cond_1

    .line 375
    :cond_0
    :goto_0
    return v9

    .line 339
    :cond_1
    const-string v10, "\r\n"

    invoke-virtual {p1, v10}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 340
    .local v2, iIndex:I
    invoke-virtual {p1, v9, v2}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 341
    .local v4, s1:Ljava/lang/String;
    sget-object v10, Lcom/futuredial/atparser/ParserHelper;->SEP_COMMA:Ljava/lang/String;

    invoke-virtual {v4, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 342
    .local v3, lastComma:I
    invoke-virtual {v4, v9, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/futuredial/atparser/ParserHelper;->parseByRex(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 343
    .local v7, subStr:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v10, v7

    if-ge v0, v10, :cond_2

    .line 345
    aget-object v10, v7, v0

    invoke-virtual {p2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 348
    :cond_2
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 349
    .local v8, tempList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v10

    invoke-virtual {p1, v2, v10}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 351
    .local v5, s2:Ljava/lang/String;
    add-int/lit8 v10, v3, 0x1

    invoke-virtual {p1, v10, v2}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 352
    .local v6, strLen:Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 353
    .local v1, iContentLen:I
    invoke-direct {p0, v5, v1, v8}, Lcom/futuredial/atparser/CSAMP520SMSSpliter;->doLinearSpliter3RN(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 359
    invoke-virtual {p2, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 365
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/16 v11, 0xa

    if-le v10, v11, :cond_0

    .line 370
    invoke-virtual {p2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    const/16 v10, 0x14

    if-ge v9, v10, :cond_3

    .line 372
    const/16 v9, 0x9

    invoke-virtual {p2, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 373
    const-string v9, "\"LOSTTIME\""

    invoke-virtual {p2, v12, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 375
    :cond_3
    const/4 v9, 0x1

    goto :goto_0
.end method

.method public set_para(Ljava/lang/StringBuffer;)V
    .locals 1
    .parameter "para"

    .prologue
    .line 324
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    iput-object p1, p0, Lcom/futuredial/atparser/CSAMP520SMSSpliter;->param:Ljava/lang/StringBuffer;

    .line 328
    :cond_0
    return-void
.end method
