.class public Lcom/futuredial/atengine/CATParser;
.super Ljava/lang/Object;
.source "CATParser.java"

# interfaces
.implements Lcom/futuredial/IParser;


# instance fields
.field TAG:Ljava/lang/String;

.field m_parser:Lcom/futuredial/atengine/CATEngine;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string v0, "at parser"

    iput-object v0, p0, Lcom/futuredial/atengine/CATParser;->TAG:Ljava/lang/String;

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/futuredial/atengine/CATParser;->m_parser:Lcom/futuredial/atengine/CATEngine;

    .line 14
    return-void
.end method


# virtual methods
.method public CombineMultiFields(Lcom/futuredial/publicobj/ItemArray;)V
    .locals 1
    .parameter "iaUnCompleted"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/futuredial/atengine/CATParser;->m_parser:Lcom/futuredial/atengine/CATEngine;

    invoke-virtual {v0, p1}, Lcom/futuredial/atengine/CATEngine;->CombineMultiFields(Lcom/futuredial/publicobj/ItemArray;)V

    .line 49
    return-void
.end method

.method public initModule(Landroid/content/Context;ILjava/lang/String;)I
    .locals 6
    .parameter "application"
    .parameter "contentType"
    .parameter "parsePolicy"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 17
    iget-object v3, p0, Lcom/futuredial/atengine/CATParser;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parse policy:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    iget-object v3, p0, Lcom/futuredial/atengine/CATParser;->TAG:Ljava/lang/String;

    const-string v4, "initModule()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, v2}, Ljava/lang/Boolean;-><init>(Z)V

    .line 21
    .local v0, result:Ljava/lang/Boolean;
    new-instance v3, Lcom/futuredial/atengine/CATEngine;

    invoke-direct {v3, p1}, Lcom/futuredial/atengine/CATEngine;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/futuredial/atengine/CATParser;->m_parser:Lcom/futuredial/atengine/CATEngine;

    .line 23
    iget-object v3, p0, Lcom/futuredial/atengine/CATParser;->m_parser:Lcom/futuredial/atengine/CATEngine;

    invoke-virtual {v3, p3}, Lcom/futuredial/atengine/CATEngine;->get_policy_xml(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 24
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    .line 30
    :cond_0
    :goto_0
    return v1

    .line 26
    :cond_1
    iget-object v3, p0, Lcom/futuredial/atengine/CATParser;->m_parser:Lcom/futuredial/atengine/CATEngine;

    invoke-virtual {v3}, Lcom/futuredial/atengine/CATEngine;->pre_proc()Ljava/lang/Boolean;

    move-result-object v0

    .line 27
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 29
    iget-object v1, p0, Lcom/futuredial/atengine/CATParser;->TAG:Ljava/lang/String;

    const-string v3, "initModule()...finish"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 30
    goto :goto_0
.end method

.method public parse(ILjava/lang/String;Lcom/futuredial/publicobj/ItemArray;Lcom/futuredial/publicobj/ItemArray;)I
    .locals 7
    .parameter "contentType"
    .parameter "content"
    .parameter "iaCompleteItem"
    .parameter "iaUnCompletedItem"

    .prologue
    .line 42
    const/4 v6, 0x0

    .line 43
    .local v6, isReset:Z
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    move-object v0, p0

    move v1, p1

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/futuredial/atengine/CATParser;->parse(I[BILcom/futuredial/publicobj/ItemArray;Lcom/futuredial/publicobj/ItemArray;)I

    move-result v0

    return v0
.end method

.method public parse(I[BILcom/futuredial/publicobj/ItemArray;Lcom/futuredial/publicobj/ItemArray;)I
    .locals 6
    .parameter "contentType"
    .parameter "result"
    .parameter "reslength"
    .parameter "iaCompleteItem"
    .parameter "iaUnCompletedItem"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/futuredial/atengine/CATParser;->m_parser:Lcom/futuredial/atengine/CATEngine;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/futuredial/atengine/CATEngine;->proc_at_data(I[BLjava/lang/Integer;Lcom/futuredial/publicobj/ItemArray;Lcom/futuredial/publicobj/ItemArray;)Ljava/lang/Boolean;

    .line 37
    const/4 v0, 0x0

    return v0
.end method
