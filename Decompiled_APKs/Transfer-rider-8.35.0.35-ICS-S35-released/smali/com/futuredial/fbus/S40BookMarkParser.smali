.class public Lcom/futuredial/fbus/S40BookMarkParser;
.super Ljava/lang/Object;
.source "S40BookMarkParser.java"

# interfaces
.implements Lcom/futuredial/IParser;


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "S40BookMarkParser"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method


# virtual methods
.method public CombineMultiFields(Lcom/futuredial/publicobj/ItemArray;)V
    .locals 0
    .parameter "iaUnCompleted"

    .prologue
    .line 24
    return-void
.end method

.method public initModule(Landroid/content/Context;ILjava/lang/String;)I
    .locals 1
    .parameter "application"
    .parameter "contentType"
    .parameter "parsePolicy"

    .prologue
    .line 30
    const/4 v0, 0x0

    return v0
.end method

.method public parse(ILjava/lang/String;Lcom/futuredial/publicobj/ItemArray;Lcom/futuredial/publicobj/ItemArray;)I
    .locals 1
    .parameter "contentType"
    .parameter "content"
    .parameter "iaComplete"
    .parameter "iaUnCompleted"

    .prologue
    .line 92
    const/4 v0, 0x1

    return v0
.end method

.method public parse(I[BILcom/futuredial/publicobj/ItemArray;Lcom/futuredial/publicobj/ItemArray;)I
    .locals 9
    .parameter "contentType"
    .parameter "result"
    .parameter "reslength"
    .parameter "iaComplete"
    .parameter "iaUnCompleted"

    .prologue
    const/16 v6, 0x2712

    .line 38
    const/4 v1, 0x0

    .line 41
    .local v1, iRet:I
    const/16 v3, 0xc

    .line 42
    .local v3, start:I
    const/16 v0, 0xc

    .line 43
    .local v0, end:I
    array-length v7, p2

    if-lt v0, v7, :cond_0

    .line 45
    const-string v7, "S40BookMarkParser"

    const-string v8, "bookmark data is not whole"

    invoke-static {v7, v8}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v6

    .line 85
    .end local v1           #iRet:I
    :goto_0
    return v1

    .line 49
    .restart local v1       #iRet:I
    :cond_0
    const-string v4, ""

    .line 50
    .local v4, strTitle:Ljava/lang/String;
    :goto_1
    array-length v7, p2

    if-ge v0, v7, :cond_1

    aget-byte v7, p2, v0

    if-eqz v7, :cond_1

    .line 52
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 54
    :cond_1
    if-le v0, v3, :cond_2

    .line 56
    new-instance v4, Ljava/lang/String;

    .end local v4           #strTitle:Ljava/lang/String;
    sub-int v7, v0, v3

    invoke-direct {v4, p2, v3, v7}, Ljava/lang/String;-><init>([BII)V

    .line 60
    .restart local v4       #strTitle:Ljava/lang/String;
    :cond_2
    add-int/lit8 v3, v0, 0x6

    .line 61
    move v0, v3

    .line 62
    array-length v7, p2

    if-lt v0, v7, :cond_3

    .line 64
    const-string v7, "S40BookMarkParser"

    const-string v8, "bookmark data is not whole"

    invoke-static {v7, v8}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v6

    .line 65
    goto :goto_0

    .line 69
    :cond_3
    const-string v5, ""

    .line 70
    .local v5, strUrl:Ljava/lang/String;
    :goto_2
    array-length v6, p2

    if-ge v0, v6, :cond_4

    aget-byte v6, p2, v0

    if-eqz v6, :cond_4

    .line 72
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 74
    :cond_4
    if-le v0, v3, :cond_5

    .line 76
    new-instance v5, Ljava/lang/String;

    .end local v5           #strUrl:Ljava/lang/String;
    sub-int v6, v0, v3

    invoke-direct {v5, p2, v3, v6}, Ljava/lang/String;-><init>([BII)V

    .line 79
    .restart local v5       #strUrl:Ljava/lang/String;
    :cond_5
    new-instance v2, Lcom/futuredial/publicobj/Item;

    invoke-direct {v2}, Lcom/futuredial/publicobj/Item;-><init>()V

    .line 80
    .local v2, item:Lcom/futuredial/publicobj/Item;
    const/4 v6, 0x1

    invoke-virtual {v2, v6, v4}, Lcom/futuredial/publicobj/Item;->AddFieldString(ILjava/lang/String;)Z

    .line 81
    const/4 v6, 0x2

    invoke-virtual {v2, v6, v5}, Lcom/futuredial/publicobj/Item;->AddFieldString(ILjava/lang/String;)Z

    .line 83
    invoke-virtual {p4, v2}, Lcom/futuredial/publicobj/ItemArray;->AddItem(Lcom/futuredial/publicobj/Item;)Z

    goto :goto_0
.end method
