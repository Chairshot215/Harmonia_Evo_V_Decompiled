.class public Lgnu/kawa/functions/IsEqual;
.super Lgnu/mapping/Procedure2;
.source "IsEqual.java"


# instance fields
.field language:Lgnu/expr/Language;


# direct methods
.method public constructor <init>(Lgnu/expr/Language;Ljava/lang/String;)V
    .locals 0
    .parameter "language"
    .parameter "name"

    .prologue
    .line 13
    invoke-direct {p0}, Lgnu/mapping/Procedure2;-><init>()V

    .line 14
    iput-object p1, p0, Lgnu/kawa/functions/IsEqual;->language:Lgnu/expr/Language;

    .line 15
    invoke-virtual {p0, p2}, Lgnu/kawa/functions/IsEqual;->setName(Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static apply(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 29
    if-ne p0, p1, :cond_0

    .line 30
    const/4 p0, 0x1

    .line 129
    .end local p0
    .end local p1
    :goto_0
    return p0

    .line 31
    .restart local p0
    .restart local p1
    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    .line 32
    :cond_1
    const/4 p0, 0x0

    goto :goto_0

    .line 33
    :cond_2
    instance-of v1, p0, Ljava/lang/Number;

    if-eqz v1, :cond_3

    instance-of v1, p1, Ljava/lang/Number;

    if-eqz v1, :cond_3

    .line 34
    check-cast p0, Ljava/lang/Number;

    .end local p0
    check-cast p1, Ljava/lang/Number;

    .end local p1
    invoke-static {p0, p1}, Lgnu/kawa/functions/IsEqual;->numberEquals(Ljava/lang/Number;Ljava/lang/Number;)Z

    move-result p0

    goto :goto_0

    .line 38
    .restart local p0
    .restart local p1
    :cond_3
    instance-of v1, p0, Ljava/lang/CharSequence;

    if-eqz v1, :cond_8

    .line 40
    instance-of v1, p1, Ljava/lang/CharSequence;

    if-nez v1, :cond_4

    .line 41
    const/4 p0, 0x0

    goto :goto_0

    .line 42
    :cond_4
    move-object v0, p0

    check-cast v0, Ljava/lang/CharSequence;

    move-object v1, v0

    .line 43
    .local v1, seq1:Ljava/lang/CharSequence;
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    move-object v2, v0

    .line 44
    .local v2, seq2:Ljava/lang/CharSequence;
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result p0

    .line 45
    .local p0, len1:I
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result p1

    .line 46
    .local p1, len2:I
    if-eq p0, p1, :cond_5

    .line 47
    const/4 p0, 0x0

    goto :goto_0

    .line 48
    :cond_5
    move p0, p0

    .end local p1           #len2:I
    .local p0, i:I
    :cond_6
    add-int/lit8 p0, p0, -0x1

    if-ltz p0, :cond_7

    .line 50
    invoke-interface {v1, p0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    invoke-interface {v2, p0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-eq p1, v3, :cond_6

    .line 51
    const/4 p0, 0x0

    goto :goto_0

    .line 53
    :cond_7
    const/4 p0, 0x1

    goto :goto_0

    .line 87
    .end local v1           #seq1:Ljava/lang/CharSequence;
    .end local v2           #seq2:Ljava/lang/CharSequence;
    .local p0, arg1:Ljava/lang/Object;
    .local p1, arg2:Ljava/lang/Object;
    :cond_8
    instance-of v1, p0, Lgnu/lists/FVector;

    if-eqz v1, :cond_e

    .line 89
    instance-of v1, p1, Lgnu/lists/FVector;

    if-nez v1, :cond_9

    .line 90
    const/4 p0, 0x0

    goto :goto_0

    .line 91
    :cond_9
    check-cast p0, Lgnu/lists/FVector;

    .line 92
    .local p0, vec1:Lgnu/lists/FVector;
    check-cast p1, Lgnu/lists/FVector;

    .line 93
    .local p1, vec2:Lgnu/lists/FVector;
    iget v1, p0, Lgnu/lists/FVector;->size:I

    .line 94
    .local v1, n:I
    iget-object v2, p1, Lgnu/lists/FVector;->data:[Ljava/lang/Object;

    if-eqz v2, :cond_a

    iget v2, p1, Lgnu/lists/FVector;->size:I

    if-eq v2, v1, :cond_b

    .line 95
    :cond_a
    const/4 p0, 0x0

    goto :goto_0

    .line 96
    :cond_b
    iget-object p0, p0, Lgnu/lists/FVector;->data:[Ljava/lang/Object;

    .line 97
    .local p0, data1:[Ljava/lang/Object;
    iget-object p1, p1, Lgnu/lists/FVector;->data:[Ljava/lang/Object;

    .line 98
    .local p1, data2:[Ljava/lang/Object;
    move v1, v1

    .local v1, i:I
    :cond_c
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_d

    .line 100
    aget-object v2, p0, v1

    aget-object v3, p1, v1

    invoke-static {v2, v3}, Lgnu/kawa/functions/IsEqual;->apply(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 101
    const/4 p0, 0x0

    goto :goto_0

    .line 103
    :cond_d
    const/4 p0, 0x1

    goto :goto_0

    .line 105
    .end local v1           #i:I
    .local p0, arg1:Ljava/lang/Object;
    .local p1, arg2:Ljava/lang/Object;
    :cond_e
    instance-of v1, p0, Lgnu/lists/LList;

    if-eqz v1, :cond_17

    .line 107
    instance-of v1, p0, Lgnu/lists/Pair;

    if-eqz v1, :cond_f

    instance-of v1, p1, Lgnu/lists/Pair;

    if-nez v1, :cond_10

    .line 108
    :cond_f
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 109
    :cond_10
    check-cast p0, Lgnu/lists/Pair;

    .line 110
    .local p0, pair1:Lgnu/lists/Pair;
    check-cast p1, Lgnu/lists/Pair;

    .line 113
    .local p1, pair2:Lgnu/lists/Pair;
    :goto_1
    invoke-virtual {p0}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v1

    .line 114
    .local v1, x1:Ljava/lang/Object;
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v2

    .line 115
    .local v2, x2:Ljava/lang/Object;
    invoke-static {v1, v2}, Lgnu/kawa/functions/IsEqual;->apply(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .end local v1           #x1:Ljava/lang/Object;
    if-nez v1, :cond_11

    .line 116
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 117
    :cond_11
    invoke-virtual {p0}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p0

    .line 118
    .local p0, x1:Ljava/lang/Object;
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p1

    .line 119
    .end local v2           #x2:Ljava/lang/Object;
    .local p1, x2:Ljava/lang/Object;
    if-ne p0, p1, :cond_12

    .line 120
    const/4 p0, 0x1

    goto/16 :goto_0

    .line 121
    :cond_12
    if-eqz p0, :cond_13

    if-nez p1, :cond_14

    .line 122
    :cond_13
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 123
    :cond_14
    instance-of v1, p0, Lgnu/lists/Pair;

    if-eqz v1, :cond_15

    instance-of v1, p1, Lgnu/lists/Pair;

    if-nez v1, :cond_16

    .line 124
    :cond_15
    invoke-static {p0, p1}, Lgnu/kawa/functions/IsEqual;->apply(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    goto/16 :goto_0

    .line 125
    :cond_16
    check-cast p0, Lgnu/lists/Pair;

    .line 126
    .local p0, pair1:Lgnu/lists/Pair;
    check-cast p1, Lgnu/lists/Pair;

    .line 127
    .local p1, pair2:Lgnu/lists/Pair;
    goto :goto_1

    .line 129
    .local p0, arg1:Ljava/lang/Object;
    .local p1, arg2:Ljava/lang/Object;
    :cond_17
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    goto/16 :goto_0
.end method

.method public static numberEquals(Ljava/lang/Number;Ljava/lang/Number;)Z
    .locals 3
    .parameter "num1"
    .parameter "num2"

    .prologue
    .line 20
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->isExact(Ljava/lang/Number;)Z

    move-result v0

    .line 21
    .local v0, exact1:Z
    invoke-static {p1}, Lgnu/kawa/functions/Arithmetic;->isExact(Ljava/lang/Number;)Z

    move-result v1

    .line 22
    .local v1, exact2:Z
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 23
    invoke-static {p0, p1}, Lgnu/kawa/functions/NumberCompare;->$Eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    .line 24
    :goto_0
    return v2

    :cond_0
    if-ne v0, v1, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 134
    iget-object v0, p0, Lgnu/kawa/functions/IsEqual;->language:Lgnu/expr/Language;

    invoke-static {p1, p2}, Lgnu/kawa/functions/IsEqual;->apply(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lgnu/expr/Language;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
