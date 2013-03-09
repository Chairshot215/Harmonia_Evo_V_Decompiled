.class public Lkawa/lib/srfi95$frame0;
.super Lgnu/expr/ModuleBody;
.source "srfi95.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkawa/lib/srfi95;->$PcSortList(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame0"
.end annotation


# instance fields
.field keyer:Ljava/lang/Object;

.field less$Qu:Ljava/lang/Object;

.field seq:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    return-void
.end method


# virtual methods
.method public lambda2step(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14
    .parameter "n"

    .prologue
    const/4 v13, 0x1

    .line 126
    sget-object v8, Lkawa/standard/Scheme;->numGrt:Lgnu/kawa/functions/NumberCompare;

    sget-object v9, Lkawa/lib/srfi95;->Lit1:Lgnu/math/IntNum;

    invoke-virtual {v8, p1, v9}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v8, v9, :cond_0

    sget-object v8, Lgnu/kawa/functions/DivideOp;->quotient:Lgnu/kawa/functions/DivideOp;

    sget-object v9, Lkawa/lib/srfi95;->Lit1:Lgnu/math/IntNum;

    invoke-virtual {v8, p1, v9}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 128
    .local v3, j:Ljava/lang/Object;
    invoke-virtual {p0, v3}, Lkawa/lib/srfi95$frame0;->lambda2step(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 127
    .local v1, a:Ljava/lang/Object;
    sget-object v8, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    invoke-virtual {v8, p1, v3}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .local v4, k:Ljava/lang/Object;
    invoke-virtual {p0, v4}, Lkawa/lib/srfi95$frame0;->lambda2step(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 131
    .local v2, b:Ljava/lang/Object;
    iget-object v8, p0, Lkawa/lib/srfi95$frame0;->less$Qu:Ljava/lang/Object;

    iget-object v9, p0, Lkawa/lib/srfi95$frame0;->keyer:Ljava/lang/Object;

    invoke-static {v1, v2, v8, v9}, Lkawa/lib/srfi95;->sort$ClMerge$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 144
    .end local v1           #a:Ljava/lang/Object;
    .end local v2           #b:Ljava/lang/Object;
    .end local v3           #j:Ljava/lang/Object;
    .end local v4           #k:Ljava/lang/Object;
    .end local p0
    :goto_0
    return-object v8

    .line 131
    .restart local p0
    :cond_0
    sget-object v8, Lkawa/standard/Scheme;->numEqu:Lgnu/kawa/functions/NumberCompare;

    .line 132
    sget-object v9, Lkawa/lib/srfi95;->Lit1:Lgnu/math/IntNum;

    invoke-virtual {v8, p1, v9}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v8, v9, :cond_2

    sget-object v8, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    iget-object v9, p0, Lkawa/lib/srfi95$frame0;->seq:Ljava/lang/Object;

    invoke-virtual {v8, v9}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 133
    sget-object v8, Lkawa/lib/lists;->cadr:Lgnu/expr/GenericProc;

    iget-object v9, p0, Lkawa/lib/srfi95$frame0;->seq:Ljava/lang/Object;

    invoke-virtual {v8, v9}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 134
    iget-object v5, p0, Lkawa/lib/srfi95$frame0;->seq:Ljava/lang/Object;

    .line 135
    .local v5, p:Ljava/lang/Object;
    .local v6, x:Ljava/lang/Object;
    .local v7, y:Ljava/lang/Object;
    sget-object v8, Lkawa/lib/lists;->cddr:Lgnu/expr/GenericProc;

    iget-object v9, p0, Lkawa/lib/srfi95$frame0;->seq:Ljava/lang/Object;

    invoke-virtual {v8, v9}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    iput-object v8, p0, Lkawa/lib/srfi95$frame0;->seq:Ljava/lang/Object;

    sget-object v8, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    .line 136
    iget-object v9, p0, Lkawa/lib/srfi95$frame0;->less$Qu:Ljava/lang/Object;

    sget-object v10, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v11, p0, Lkawa/lib/srfi95$frame0;->keyer:Ljava/lang/Object;

    invoke-virtual {v10, v11, v7}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    sget-object v11, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v12, p0, Lkawa/lib/srfi95$frame0;->keyer:Ljava/lang/Object;

    invoke-virtual {v11, v12, v6}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v8, v9, v10, v11}, Lgnu/mapping/Procedure;->apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v8, v9, :cond_1

    .line 137
    :try_start_0
    move-object v0, v5

    check-cast v0, Lgnu/lists/Pair;

    move-object v8, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v8, v7}, Lkawa/lib/lists;->setCar$Ex(Lgnu/lists/Pair;Ljava/lang/Object;)V

    .line 138
    sget-object v8, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    invoke-virtual {v8, v5}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    :try_start_1
    check-cast p0, Lgnu/lists/Pair;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-static {p0, v6}, Lkawa/lib/lists;->setCar$Ex(Lgnu/lists/Pair;Ljava/lang/Object;)V

    .line 139
    :cond_1
    sget-object v8, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    invoke-virtual {v8, v5}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :try_start_2
    check-cast p0, Lgnu/lists/Pair;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    sget-object v8, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static {p0, v8}, Lkawa/lib/lists;->setCdr$Ex(Lgnu/lists/Pair;Ljava/lang/Object;)V

    move-object v8, v5

    .line 140
    goto :goto_0

    .end local v5           #p:Ljava/lang/Object;
    .end local v6           #x:Ljava/lang/Object;
    .end local v7           #y:Ljava/lang/Object;
    .restart local p0
    :cond_2
    sget-object v8, Lkawa/standard/Scheme;->numEqu:Lgnu/kawa/functions/NumberCompare;

    .line 141
    sget-object v9, Lkawa/lib/srfi95;->Lit2:Lgnu/math/IntNum;

    invoke-virtual {v8, p1, v9}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v8, v9, :cond_3

    iget-object v5, p0, Lkawa/lib/srfi95$frame0;->seq:Ljava/lang/Object;

    .line 142
    .restart local v5       #p:Ljava/lang/Object;
    sget-object v8, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    iget-object v9, p0, Lkawa/lib/srfi95$frame0;->seq:Ljava/lang/Object;

    invoke-virtual {v8, v9}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    iput-object v8, p0, Lkawa/lib/srfi95$frame0;->seq:Ljava/lang/Object;

    .line 143
    :try_start_3
    move-object v0, v5

    check-cast v0, Lgnu/lists/Pair;

    move-object v8, v0
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    sget-object v9, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static {v8, v9}, Lkawa/lib/lists;->setCdr$Ex(Lgnu/lists/Pair;Ljava/lang/Object;)V

    move-object v8, v5

    .line 144
    goto/16 :goto_0

    .end local v5           #p:Ljava/lang/Object;
    :cond_3
    sget-object v8, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    goto/16 :goto_0

    .line 137
    .restart local v5       #p:Ljava/lang/Object;
    .restart local v6       #x:Ljava/lang/Object;
    .restart local v7       #y:Ljava/lang/Object;
    :catch_0
    move-exception v8

    new-instance v9, Lgnu/mapping/WrongType;

    const-string v10, "set-car!"

    invoke-direct {v9, v8, v10, v13, v5}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v9

    .line 138
    .end local p0
    :catch_1
    move-exception v8

    new-instance v9, Lgnu/mapping/WrongType;

    const-string v10, "set-car!"

    invoke-direct {v9, v8, v10, v13, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v9

    .line 139
    :catch_2
    move-exception v8

    new-instance v9, Lgnu/mapping/WrongType;

    const-string v10, "set-cdr!"

    invoke-direct {v9, v8, v10, v13, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v9

    .line 143
    .end local v6           #x:Ljava/lang/Object;
    .end local v7           #y:Ljava/lang/Object;
    .restart local p0
    :catch_3
    move-exception v8

    new-instance v9, Lgnu/mapping/WrongType;

    const-string v10, "set-cdr!"

    invoke-direct {v9, v8, v10, v13, v5}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v9
.end method
