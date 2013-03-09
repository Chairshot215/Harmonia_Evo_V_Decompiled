.class public Lgnu/kawa/functions/Map;
.super Lgnu/mapping/ProcedureN;
.source "Map.java"


# instance fields
.field final applyFieldDecl:Lgnu/expr/Declaration;

.field final applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

.field collect:Z

.field final isEq:Lgnu/kawa/functions/IsEq;


# direct methods
.method public constructor <init>(ZLgnu/kawa/functions/ApplyToArgs;Lgnu/expr/Declaration;Lgnu/kawa/functions/IsEq;)V
    .locals 2
    .parameter "collect"
    .parameter "applyToArgs"
    .parameter "applyFieldDecl"
    .parameter "isEq"

    .prologue
    .line 24
    if-eqz p1, :cond_0

    const-string v0, "map"

    :goto_0
    invoke-direct {p0, v0}, Lgnu/mapping/ProcedureN;-><init>(Ljava/lang/String;)V

    .line 25
    iput-boolean p1, p0, Lgnu/kawa/functions/Map;->collect:Z

    .line 26
    iput-object p2, p0, Lgnu/kawa/functions/Map;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    .line 27
    iput-object p3, p0, Lgnu/kawa/functions/Map;->applyFieldDecl:Lgnu/expr/Declaration;

    .line 28
    iput-object p4, p0, Lgnu/kawa/functions/Map;->isEq:Lgnu/kawa/functions/IsEq;

    .line 29
    sget-object v0, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    const-string v1, "gnu.kawa.functions.CompileMisc:validateApplyMap"

    invoke-virtual {p0, v0, v1}, Lgnu/kawa/functions/Map;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 31
    return-void

    .line 24
    :cond_0
    const-string v0, "for-each"

    goto :goto_0
.end method

.method public static forEach1(Lgnu/mapping/Procedure;Ljava/lang/Object;)V
    .locals 3
    .parameter "proc"
    .parameter "list"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 55
    :goto_0
    sget-object v2, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq p1, v2, :cond_0

    .line 57
    move-object v0, p1

    check-cast v0, Lgnu/lists/Pair;

    move-object v1, v0

    .line 58
    .local v1, pair:Lgnu/lists/Pair;
    invoke-virtual {v1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    invoke-virtual {v1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p1

    .line 60
    goto :goto_0

    .line 61
    .end local v1           #pair:Lgnu/lists/Pair;
    :cond_0
    return-void
.end method

.method public static map1(Lgnu/mapping/Procedure;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .parameter "proc"
    .parameter "list"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 36
    sget-object v4, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    .line 37
    .local v4, result:Lgnu/lists/LList;
    const/4 v1, 0x0

    .local v1, last:Lgnu/lists/Pair;
    move-object v5, v4

    .line 38
    .end local v4           #result:Lgnu/lists/LList;
    :goto_0
    sget-object v6, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq p1, v6, :cond_1

    .line 40
    move-object v0, p1

    check-cast v0, Lgnu/lists/Pair;

    move-object v3, v0

    .line 41
    .local v3, pair:Lgnu/lists/Pair;
    new-instance v2, Lgnu/lists/Pair;

    invoke-virtual {v3}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0, v6}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    sget-object v7, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-direct {v2, v6, v7}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 42
    .local v2, new_pair:Lgnu/lists/Pair;
    if-nez v1, :cond_0

    .line 43
    move-object v4, v2

    .local v4, result:Lgnu/lists/Pair;
    move-object v5, v4

    .line 46
    .end local v4           #result:Lgnu/lists/Pair;
    :goto_1
    move-object v1, v2

    .line 47
    invoke-virtual {v3}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p1

    .line 48
    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {v1, v2}, Lgnu/lists/Pair;->setCdr(Ljava/lang/Object;)V

    goto :goto_1

    .line 49
    .end local v2           #new_pair:Lgnu/lists/Pair;
    .end local v3           #pair:Lgnu/lists/Pair;
    :cond_1
    return-object v5
.end method


# virtual methods
.method public apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter "arg1"
    .parameter "arg2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 65
    instance-of v2, p1, Lgnu/mapping/Procedure;

    if-eqz v2, :cond_1

    .line 67
    move-object v0, p1

    check-cast v0, Lgnu/mapping/Procedure;

    move-object v1, v0

    .line 68
    .local v1, proc:Lgnu/mapping/Procedure;
    iget-boolean v2, p0, Lgnu/kawa/functions/Map;->collect:Z

    if-eqz v2, :cond_0

    .line 69
    invoke-static {v1, p2}, Lgnu/kawa/functions/Map;->map1(Lgnu/mapping/Procedure;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 73
    .end local v1           #proc:Lgnu/mapping/Procedure;
    :goto_0
    return-object v2

    .line 70
    .restart local v1       #proc:Lgnu/mapping/Procedure;
    :cond_0
    invoke-static {v1, p2}, Lgnu/kawa/functions/Map;->forEach1(Lgnu/mapping/Procedure;Ljava/lang/Object;)V

    .line 71
    sget-object v2, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_0

    .line 73
    .end local v1           #proc:Lgnu/mapping/Procedure;
    :cond_1
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {p0, v2}, Lgnu/kawa/functions/Map;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0
.end method

.method public applyN([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 78
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v17, v0

    const/16 v18, 0x1

    sub-int v5, v17, v18

    .line 79
    .local v5, arity:I
    const/16 v17, 0x1

    move v0, v5

    move/from16 v1, v17

    if-ne v0, v1, :cond_2

    const/16 v17, 0x0

    aget-object v17, p1, v17

    move-object/from16 v0, v17

    instance-of v0, v0, Lgnu/mapping/Procedure;

    move/from16 v17, v0

    if-eqz v17, :cond_2

    .line 81
    const/16 v17, 0x0

    aget-object v5, p1, v17

    .end local v5           #arity:I
    check-cast v5, Lgnu/mapping/Procedure;

    move-object v0, v5

    check-cast v0, Lgnu/mapping/Procedure;

    move-object v13, v0

    .line 82
    .local v13, proc:Lgnu/mapping/Procedure;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lgnu/kawa/functions/Map;->collect:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1

    .line 83
    const/16 v17, 0x1

    aget-object v17, p1, v17

    move-object v0, v13

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lgnu/kawa/functions/Map;->map1(Lgnu/mapping/Procedure;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    .line 117
    :cond_0
    :goto_0
    return-object v17

    .line 84
    :cond_1
    const/16 v17, 0x1

    aget-object v17, p1, v17

    move-object v0, v13

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lgnu/kawa/functions/Map;->forEach1(Lgnu/mapping/Procedure;Ljava/lang/Object;)V

    .line 85
    sget-object v17, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_0

    .line 88
    .end local v13           #proc:Lgnu/mapping/Procedure;
    .restart local v5       #arity:I
    :cond_2
    const/4 v8, 0x0

    .line 89
    .local v8, last:Lgnu/lists/Pair;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lgnu/kawa/functions/Map;->collect:Z

    move/from16 v17, v0

    if-eqz v17, :cond_4

    .line 90
    sget-object v15, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    .line 93
    :goto_1
    new-array v14, v5, [Ljava/lang/Object;

    .line 94
    .local v14, rest:[Ljava/lang/Object;
    const/16 v17, 0x1

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move-object v2, v14

    move/from16 v3, v18

    move v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 98
    const/16 v17, 0x0

    aget-object v17, p1, v17

    move-object/from16 v0, v17

    instance-of v0, v0, Lgnu/mapping/Procedure;

    move/from16 v17, v0

    if-eqz v17, :cond_5

    .line 100
    const/4 v10, 0x0

    .line 101
    .local v10, need_apply:I
    new-array v6, v5, [Ljava/lang/Object;

    .line 102
    .local v6, each_args:[Ljava/lang/Object;
    const/16 v17, 0x0

    aget-object v13, p1, v17

    check-cast v13, Lgnu/mapping/Procedure;

    .restart local v13       #proc:Lgnu/mapping/Procedure;
    move-object/from16 v17, v15

    .line 113
    :cond_3
    :goto_2
    const/4 v7, 0x0

    .local v7, i:I
    :goto_3
    if-ge v7, v5, :cond_6

    .line 115
    aget-object v9, v14, v7

    .line 116
    .local v9, list:Ljava/lang/Object;
    sget-object v18, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object v0, v9

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_0

    .line 118
    move-object v0, v9

    check-cast v0, Lgnu/lists/Pair;

    move-object v12, v0

    .line 119
    .local v12, pair:Lgnu/lists/Pair;
    add-int v18, v10, v7

    invoke-virtual {v12}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v19

    aput-object v19, v6, v18

    .line 120
    invoke-virtual {v12}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v18

    aput-object v18, v14, v7

    .line 113
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 92
    .end local v6           #each_args:[Ljava/lang/Object;
    .end local v7           #i:I
    .end local v9           #list:Ljava/lang/Object;
    .end local v10           #need_apply:I
    .end local v12           #pair:Lgnu/lists/Pair;
    .end local v13           #proc:Lgnu/mapping/Procedure;
    .end local v14           #rest:[Ljava/lang/Object;
    :cond_4
    sget-object v15, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    .local v15, result:Lgnu/mapping/Values;
    goto :goto_1

    .line 106
    .end local v15           #result:Lgnu/mapping/Values;
    .restart local v14       #rest:[Ljava/lang/Object;
    :cond_5
    const/4 v10, 0x1

    .line 107
    .restart local v10       #need_apply:I
    add-int/lit8 v17, v5, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object v6, v0

    .line 108
    .restart local v6       #each_args:[Ljava/lang/Object;
    const/16 v17, 0x0

    const/16 v18, 0x0

    aget-object v18, p1, v18

    aput-object v18, v6, v17

    .line 109
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/kawa/functions/Map;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    move-object v13, v0

    .restart local v13       #proc:Lgnu/mapping/Procedure;
    move-object/from16 v17, v15

    goto :goto_2

    .line 122
    .restart local v7       #i:I
    :cond_6
    invoke-virtual {v13, v6}, Lgnu/mapping/Procedure;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    .line 123
    .local v16, value:Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lgnu/kawa/functions/Map;->collect:Z

    move/from16 v18, v0

    if-eqz v18, :cond_3

    .line 125
    new-instance v11, Lgnu/lists/Pair;

    sget-object v18, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object v0, v11

    move-object/from16 v1, v16

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 126
    .local v11, new_pair:Lgnu/lists/Pair;
    if-nez v8, :cond_7

    .line 127
    move-object v15, v11

    .local v15, result:Lgnu/lists/Pair;
    move-object/from16 v17, v15

    .line 130
    .end local v15           #result:Lgnu/lists/Pair;
    :goto_4
    move-object v8, v11

    goto :goto_2

    .line 129
    :cond_7
    invoke-virtual {v8, v11}, Lgnu/lists/Pair;->setCdr(Ljava/lang/Object;)V

    goto :goto_4
.end method
