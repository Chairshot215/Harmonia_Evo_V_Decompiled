.class public Lgnu/xml/TextUtils;
.super Ljava/lang/Object;
.source "TextUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .parameter "node"

    .prologue
    .line 12
    sget-object v1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-eq p0, v1, :cond_0

    if-nez p0, :cond_1

    .line 13
    :cond_0
    const-string v1, ""

    .line 18
    :goto_0
    return-object v1

    .line 14
    :cond_1
    instance-of v1, p0, Lgnu/mapping/Values;

    if-eqz v1, :cond_2

    .line 15
    new-instance v1, Ljava/lang/ClassCastException;

    invoke-direct {v1}, Ljava/lang/ClassCastException;-><init>()V

    throw v1

    .line 16
    :cond_2
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 17
    .local v0, sbuf:Ljava/lang/StringBuffer;
    invoke-static {p0, v0}, Lgnu/xml/TextUtils;->stringValue(Ljava/lang/Object;Ljava/lang/StringBuffer;)V

    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static replaceWhitespace(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 14
    .parameter "str"
    .parameter "collapse"

    .prologue
    const/16 v13, 0x20

    const/4 v12, 0x0

    const/4 v11, 0x2

    const/4 v10, 0x1

    .line 98
    const/4 v8, 0x0

    .line 102
    .local v8, sbuf:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    .line 105
    .local v6, len:I
    if-eqz p1, :cond_2

    move v7, v10

    .line 106
    .local v7, prevSpace:I
    :goto_0
    const/4 v1, 0x0

    .local v1, i:I
    move v2, v1

    .end local v1           #i:I
    .local v2, i:I
    :goto_1
    if-ge v2, v6, :cond_10

    .line 108
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 109
    .local v0, ch:C
    if-ne v0, v13, :cond_3

    move v3, v10

    .line 111
    .local v3, isSpace:I
    :goto_2
    if-nez v8, :cond_8

    if-eq v3, v11, :cond_1

    if-ne v3, v10, :cond_0

    if-lez v7, :cond_0

    if-nez p1, :cond_1

    :cond_0
    if-ne v3, v10, :cond_8

    if-ne v1, v6, :cond_8

    if-eqz p1, :cond_8

    .line 117
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    .end local v8           #sbuf:Ljava/lang/StringBuilder;
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    .restart local v8       #sbuf:Ljava/lang/StringBuilder;
    if-lez v7, :cond_6

    sub-int v9, v1, v11

    move v5, v9

    .line 122
    .local v5, k:I
    :goto_3
    const/4 v4, 0x0

    .local v4, j:I
    :goto_4
    if-ge v4, v5, :cond_7

    .line 123
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 122
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .end local v0           #ch:C
    .end local v1           #i:I
    .end local v3           #isSpace:I
    .end local v4           #j:I
    .end local v5           #k:I
    .end local v7           #prevSpace:I
    :cond_2
    move v7, v12

    .line 105
    goto :goto_0

    .line 109
    .restart local v0       #ch:C
    .restart local v1       #i:I
    .restart local v7       #prevSpace:I
    :cond_3
    const/16 v9, 0x9

    if-eq v0, v9, :cond_4

    const/16 v9, 0xd

    if-eq v0, v9, :cond_4

    const/16 v9, 0xa

    if-ne v0, v9, :cond_5

    :cond_4
    move v3, v11

    goto :goto_2

    :cond_5
    move v3, v12

    goto :goto_2

    .line 121
    .restart local v3       #isSpace:I
    :cond_6
    sub-int v9, v1, v10

    move v5, v9

    goto :goto_3

    .line 124
    .restart local v4       #j:I
    .restart local v5       #k:I
    :cond_7
    const/16 v0, 0x20

    .line 126
    .end local v4           #j:I
    .end local v5           #k:I
    :cond_8
    if-eqz p1, :cond_e

    .line 128
    if-lez v7, :cond_a

    if-nez v3, :cond_a

    .line 130
    if-eqz v8, :cond_9

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-lez v9, :cond_9

    .line 131
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 132
    :cond_9
    const/4 v7, 0x0

    .line 140
    :goto_5
    if-lez v7, :cond_e

    move v2, v1

    .line 141
    .end local v1           #i:I
    .restart local v2       #i:I
    goto :goto_1

    .line 134
    .end local v2           #i:I
    .restart local v1       #i:I
    :cond_a
    if-eq v3, v11, :cond_b

    if-ne v3, v10, :cond_c

    if-lez v7, :cond_c

    .line 135
    :cond_b
    const/4 v7, 0x2

    goto :goto_5

    .line 136
    :cond_c
    if-lez v3, :cond_d

    .line 137
    const/4 v7, 0x1

    goto :goto_5

    .line 139
    :cond_d
    const/4 v7, 0x0

    goto :goto_5

    .line 143
    :cond_e
    if-eqz v8, :cond_f

    .line 144
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_f
    move v2, v1

    .line 145
    .end local v1           #i:I
    .restart local v2       #i:I
    goto :goto_1

    .line 146
    .end local v0           #ch:C
    .end local v3           #isSpace:I
    :cond_10
    if-eqz v8, :cond_11

    .line 147
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 149
    :goto_6
    return-object v9

    :cond_11
    move-object v9, p0

    goto :goto_6
.end method

.method public static stringValue(Ljava/lang/Object;)Ljava/lang/String;
    .locals 6
    .parameter "node"

    .prologue
    .line 23
    new-instance v3, Ljava/lang/StringBuffer;

    const/16 v5, 0x64

    invoke-direct {v3, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 24
    .local v3, sbuf:Ljava/lang/StringBuffer;
    instance-of v5, p0, Lgnu/mapping/Values;

    if-eqz v5, :cond_2

    .line 26
    move-object v0, p0

    check-cast v0, Lgnu/lists/TreeList;

    move-object v4, v0

    .line 27
    .local v4, tlist:Lgnu/lists/TreeList;
    const/4 v1, 0x0

    .line 30
    .local v1, index:I
    :goto_0
    invoke-virtual {v4, v1}, Lgnu/lists/TreeList;->getNextKind(I)I

    move-result v2

    .line 31
    .local v2, kind:I
    if-nez v2, :cond_0

    .line 42
    .end local v1           #index:I
    .end local v2           #kind:I
    .end local v4           #tlist:Lgnu/lists/TreeList;
    :goto_1
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 33
    .restart local v1       #index:I
    .restart local v2       #kind:I
    .restart local v4       #tlist:Lgnu/lists/TreeList;
    :cond_0
    const/16 v5, 0x20

    if-ne v2, v5, :cond_1

    .line 34
    invoke-virtual {v4, v1}, Lgnu/lists/TreeList;->getPosNext(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v3}, Lgnu/xml/TextUtils;->stringValue(Ljava/lang/Object;Ljava/lang/StringBuffer;)V

    .line 37
    :goto_2
    invoke-virtual {v4, v1}, Lgnu/lists/TreeList;->nextPos(I)I

    move-result v1

    .line 38
    goto :goto_0

    .line 36
    :cond_1
    invoke-virtual {v4, v1}, Lgnu/lists/TreeList;->posToDataIndex(I)I

    move-result v5

    invoke-virtual {v4, v5, v3}, Lgnu/lists/TreeList;->stringValue(ILjava/lang/StringBuffer;)I

    goto :goto_2

    .line 41
    .end local v1           #index:I
    .end local v2           #kind:I
    .end local v4           #tlist:Lgnu/lists/TreeList;
    :cond_2
    invoke-static {p0, v3}, Lgnu/xml/TextUtils;->stringValue(Ljava/lang/Object;Ljava/lang/StringBuffer;)V

    goto :goto_1
.end method

.method public static stringValue(Ljava/lang/Object;Ljava/lang/StringBuffer;)V
    .locals 5
    .parameter "node"
    .parameter "sbuf"

    .prologue
    .line 47
    instance-of v3, p0, Lgnu/kawa/xml/KNode;

    if-eqz v3, :cond_1

    .line 49
    move-object v0, p0

    check-cast v0, Lgnu/kawa/xml/KNode;

    move-object v1, v0

    .line 50
    .local v1, pos:Lgnu/kawa/xml/KNode;
    iget-object v2, v1, Lgnu/kawa/xml/KNode;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v2, Lgnu/xml/NodeTree;

    .line 51
    .local v2, tlist:Lgnu/xml/NodeTree;
    iget v3, v1, Lgnu/kawa/xml/KNode;->ipos:I

    invoke-virtual {v2, v3}, Lgnu/xml/NodeTree;->posToDataIndex(I)I

    move-result v3

    invoke-virtual {v2, v3, p1}, Lgnu/xml/NodeTree;->stringValue(ILjava/lang/StringBuffer;)I

    .line 62
    .end local v1           #pos:Lgnu/kawa/xml/KNode;
    .end local v2           #tlist:Lgnu/xml/NodeTree;
    .end local p0
    :cond_0
    :goto_0
    return-void

    .line 54
    .restart local p0
    :cond_1
    instance-of v3, p0, Ljava/math/BigDecimal;

    if-eqz v3, :cond_3

    .line 55
    check-cast p0, Ljava/math/BigDecimal;

    .end local p0
    invoke-static {p0}, Lgnu/xml/XMLPrinter;->formatDecimal(Ljava/math/BigDecimal;)Ljava/lang/String;

    move-result-object p0

    .line 60
    :cond_2
    :goto_1
    if-eqz p0, :cond_0

    sget-object v3, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-eq p0, v3, :cond_0

    .line 61
    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 56
    .restart local p0
    :cond_3
    instance-of v3, p0, Ljava/lang/Double;

    if-nez v3, :cond_4

    instance-of v3, p0, Lgnu/math/DFloNum;

    if-eqz v3, :cond_5

    .line 57
    :cond_4
    check-cast p0, Ljava/lang/Number;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Lgnu/xml/XMLPrinter;->formatDouble(D)Ljava/lang/String;

    move-result-object p0

    .local p0, node:Ljava/lang/String;
    goto :goto_1

    .line 58
    .local p0, node:Ljava/lang/Object;
    :cond_5
    instance-of v3, p0, Ljava/lang/Float;

    if-eqz v3, :cond_2

    .line 59
    check-cast p0, Ljava/lang/Number;

    .end local p0           #node:Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result v3

    invoke-static {v3}, Lgnu/xml/XMLPrinter;->formatFloat(F)Ljava/lang/String;

    move-result-object p0

    .local p0, node:Ljava/lang/String;
    goto :goto_1
.end method

.method public static textValue(Ljava/lang/Object;Lgnu/lists/Consumer;)V
    .locals 6
    .parameter "arg"
    .parameter "out"

    .prologue
    .line 66
    if-eqz p0, :cond_0

    instance-of v5, p0, Lgnu/mapping/Values;

    if-eqz v5, :cond_1

    move-object v0, p0

    check-cast v0, Lgnu/mapping/Values;

    move-object v5, v0

    invoke-virtual {v5}, Lgnu/mapping/Values;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 89
    .end local p0
    :cond_0
    :goto_0
    return-void

    .line 69
    .restart local p0
    :cond_1
    instance-of v5, p0, Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 70
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    .line 88
    .end local p0
    .local v3, str:Ljava/lang/String;
    :goto_1
    invoke-interface {p1, v3}, Lgnu/lists/Consumer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 73
    .end local v3           #str:Ljava/lang/String;
    .restart local p0
    :cond_2
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 74
    .local v2, sbuf:Ljava/lang/StringBuffer;
    instance-of v5, p0, Lgnu/mapping/Values;

    if-eqz v5, :cond_4

    .line 76
    check-cast p0, Lgnu/mapping/Values;

    .end local p0
    invoke-virtual {p0}, Lgnu/mapping/Values;->getValues()[Ljava/lang/Object;

    move-result-object v4

    .line 77
    .local v4, vals:[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    array-length v5, v4

    if-ge v1, v5, :cond_5

    .line 79
    if-lez v1, :cond_3

    .line 80
    const/16 v5, 0x20

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 81
    :cond_3
    aget-object v5, v4, v1

    invoke-static {v5, v2}, Lgnu/xml/TextUtils;->stringValue(Ljava/lang/Object;Ljava/lang/StringBuffer;)V

    .line 77
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 85
    .end local v1           #i:I
    .end local v4           #vals:[Ljava/lang/Object;
    .restart local p0
    :cond_4
    invoke-static {p0, v2}, Lgnu/xml/TextUtils;->stringValue(Ljava/lang/Object;Ljava/lang/StringBuffer;)V

    .line 86
    .end local p0
    :cond_5
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3       #str:Ljava/lang/String;
    goto :goto_1
.end method
