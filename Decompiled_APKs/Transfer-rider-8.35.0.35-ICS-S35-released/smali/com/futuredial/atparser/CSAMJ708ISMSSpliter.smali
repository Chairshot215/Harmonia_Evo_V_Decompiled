.class Lcom/futuredial/atparser/CSAMJ708ISMSSpliter;
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
    .line 417
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 418
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/futuredial/atparser/CSAMJ708ISMSSpliter;->param:Ljava/lang/StringBuffer;

    .line 417
    return-void
.end method


# virtual methods
.method public do_split(Ljava/lang/StringBuffer;Ljava/util/ArrayList;)Z
    .locals 12
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
    const/4 v10, 0x0

    .line 432
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 433
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v11

    if-nez v11, :cond_1

    .line 465
    :cond_0
    :goto_0
    return v10

    .line 438
    :cond_1
    const-string v11, "\r\n"

    invoke-virtual {p1, v11}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 439
    .local v1, iIndex:I
    invoke-virtual {p1, v10, v1}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 440
    .local v5, s1:Ljava/lang/String;
    sget-object v11, Lcom/futuredial/atparser/ParserHelper;->SEP_COMMA:Ljava/lang/String;

    invoke-virtual {v5, v11}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    .line 442
    .local v4, lastComma:I
    invoke-static {v5}, Lcom/futuredial/atparser/ParserHelper;->parseByRex(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 443
    .local v9, subStr:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v11, v9

    if-ge v0, v11, :cond_2

    .line 445
    aget-object v11, v9, v0

    invoke-virtual {p2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 443
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 449
    :cond_2
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v11

    invoke-virtual {p1, v1, v11}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 450
    .local v6, s2:Ljava/lang/String;
    const/4 v7, 0x0

    .line 451
    .local v7, strPart1:Ljava/lang/String;
    const/4 v8, 0x0

    .line 452
    .local v8, strPart2:Ljava/lang/String;
    sget-object v11, Lcom/futuredial/atparser/ParserHelper;->SEP_COMMA:Ljava/lang/String;

    invoke-virtual {v6, v11}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 453
    .local v2, index:I
    invoke-virtual {v6, v10, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 455
    sget-object v11, Lcom/futuredial/atparser/ParserHelper;->SEP_COMMA:Ljava/lang/String;

    invoke-virtual {v6, v11}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 456
    .local v3, ipos:I
    invoke-virtual {v6, v10, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 457
    add-int/lit8 v10, v3, 0x1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v6, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 458
    const-string v10, "\r\n"

    const-string v11, ""

    invoke-virtual {v7, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 459
    const-string v10, "\r\n"

    const-string v11, ""

    invoke-virtual {v8, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 460
    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 461
    invoke-virtual {p2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 463
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/16 v11, 0xd

    if-ge v10, v11, :cond_3

    .line 464
    const/4 v10, 0x3

    const-string v11, "\"***\""

    invoke-virtual {p2, v10, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 465
    :cond_3
    const/4 v10, 0x1

    goto :goto_0
.end method

.method public set_para(Ljava/lang/StringBuffer;)V
    .locals 1
    .parameter "para"

    .prologue
    .line 423
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 425
    iput-object p1, p0, Lcom/futuredial/atparser/CSAMJ708ISMSSpliter;->param:Ljava/lang/StringBuffer;

    .line 427
    :cond_0
    return-void
.end method
