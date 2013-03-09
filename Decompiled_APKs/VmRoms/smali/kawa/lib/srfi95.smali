.class public Lkawa/lib/srfi95;
.super Lgnu/expr/ModuleBody;
.source "srfi95.scm"


# static fields
.field public static final $Pcsort$Mnlist:Lgnu/expr/ModuleMethod;

.field public static final $Pcsort$Mnvector:Lgnu/expr/ModuleMethod;

.field public static final $Pcvector$Mnsort$Ex:Lgnu/expr/ModuleMethod;

.field public static final $instance:Lkawa/lib/srfi95;

.field static final Lit0:Lgnu/math/IntNum;

.field static final Lit1:Lgnu/math/IntNum;

.field static final Lit10:Lgnu/mapping/SimpleSymbol;

.field static final Lit11:Lgnu/mapping/SimpleSymbol;

.field static final Lit12:Lgnu/mapping/SimpleSymbol;

.field static final Lit2:Lgnu/math/IntNum;

.field static final Lit3:Lgnu/math/IntNum;

.field static final Lit4:Lgnu/mapping/SimpleSymbol;

.field static final Lit5:Lgnu/mapping/SimpleSymbol;

.field static final Lit6:Lgnu/mapping/SimpleSymbol;

.field static final Lit7:Lgnu/mapping/SimpleSymbol;

.field static final Lit8:Lgnu/mapping/SimpleSymbol;

.field static final Lit9:Lgnu/mapping/SimpleSymbol;

.field static final identity:Lgnu/expr/ModuleMethod;

.field public static final merge:Lgnu/expr/ModuleMethod;

.field public static final merge$Ex:Lgnu/expr/ModuleMethod;

.field public static final sort:Lgnu/expr/ModuleMethod;

.field public static final sort$Ex:Lgnu/expr/ModuleMethod;

.field public static final sorted$Qu:Lgnu/expr/ModuleMethod;


# direct methods
.method public static $PcSortList(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .parameter "seq"
    .parameter "isLess"
    .parameter "key"

    .prologue
    const/4 v7, 0x1

    .line 124
    new-instance v4, Lkawa/lib/srfi95$frame0;

    invoke-direct {v4}, Lkawa/lib/srfi95$frame0;-><init>()V

    iput-object p0, v4, Lkawa/lib/srfi95$frame0;->seq:Ljava/lang/Object;

    iput-object p1, v4, Lkawa/lib/srfi95$frame0;->less$Qu:Ljava/lang/Object;

    .line 125
    sget-object v3, Lgnu/expr/Special;->undefined:Lgnu/expr/Special;

    .line 126
    iput-object v3, v4, Lkawa/lib/srfi95$frame0;->keyer:Ljava/lang/Object;

    .line 125
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq p2, v3, :cond_0

    sget-object v3, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    :goto_0
    iput-object v3, v4, Lkawa/lib/srfi95$frame0;->keyer:Ljava/lang/Object;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq p2, v3, :cond_3

    .line 155
    iget-object v1, v4, Lkawa/lib/srfi95$frame0;->seq:Ljava/lang/Object;

    .line 147
    .local v1, lst:Ljava/lang/Object;
    :goto_1
    invoke-static {v1}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v2

    .local v2, x:Z
    if-eqz v2, :cond_1

    .line 156
    iget-object p0, v4, Lkawa/lib/srfi95$frame0;->seq:Ljava/lang/Object;

    .end local p0
    :try_start_0
    check-cast p0, Lgnu/lists/LList;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    invoke-static {p0}, Lkawa/lib/lists;->length(Lgnu/lists/LList;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3}, Lkawa/lib/srfi95$frame0;->lambda2step(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v4, Lkawa/lib/srfi95$frame0;->seq:Ljava/lang/Object;

    .line 157
    iget-object v1, v4, Lkawa/lib/srfi95$frame0;->seq:Ljava/lang/Object;

    .line 151
    :goto_2
    invoke-static {v1}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 158
    iget-object v3, v4, Lkawa/lib/srfi95$frame0;->seq:Ljava/lang/Object;

    .line 160
    .end local v1           #lst:Ljava/lang/Object;
    .end local v2           #x:Z
    :goto_3
    return-object v3

    .line 125
    .restart local p0
    :cond_0
    sget-object v3, Lkawa/lib/srfi95;->identity:Lgnu/expr/ModuleMethod;

    goto :goto_0

    .line 148
    .restart local v1       #lst:Ljava/lang/Object;
    .restart local v2       #x:Z
    :cond_1
    :try_start_1
    move-object v0, v1

    check-cast v0, Lgnu/lists/Pair;

    move-object v3, v0
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    sget-object v5, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    sget-object v6, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    invoke-virtual {v6, v1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, p2, v6}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    invoke-virtual {v6, v1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v5

    invoke-static {v3, v5}, Lkawa/lib/lists;->setCar$Ex(Lgnu/lists/Pair;Ljava/lang/Object;)V

    .line 149
    sget-object v3, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    invoke-virtual {v3, v1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    .line 152
    .end local p0
    :cond_2
    :try_start_2
    move-object v0, v1

    check-cast v0, Lgnu/lists/Pair;

    move-object v3, v0
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    sget-object v5, Lkawa/lib/lists;->cdar:Lgnu/expr/GenericProc;

    invoke-virtual {v5, v1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v3, v5}, Lkawa/lib/lists;->setCar$Ex(Lgnu/lists/Pair;Ljava/lang/Object;)V

    .line 153
    sget-object v3, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    invoke-virtual {v3, v1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_2

    .line 160
    .end local v1           #lst:Ljava/lang/Object;
    .end local v2           #x:Z
    .restart local p0
    :cond_3
    iget-object p0, v4, Lkawa/lib/srfi95$frame0;->seq:Ljava/lang/Object;

    .end local p0
    :try_start_3
    check-cast p0, Lgnu/lists/LList;
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    invoke-static {p0}, Lkawa/lib/lists;->length(Lgnu/lists/LList;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3}, Lkawa/lib/srfi95$frame0;->lambda2step(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_3

    .line 148
    .restart local v1       #lst:Ljava/lang/Object;
    .restart local v2       #x:Z
    .restart local p0
    :catch_0
    move-exception v3

    new-instance v4, Lgnu/mapping/WrongType;

    const-string v5, "set-car!"

    invoke-direct {v4, v3, v5, v7, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4

    .line 156
    .end local p0
    :catch_1
    move-exception v3

    new-instance v4, Lgnu/mapping/WrongType;

    const-string v5, "length"

    invoke-direct {v4, v3, v5, v7, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4

    .line 152
    :catch_2
    move-exception v3

    new-instance v4, Lgnu/mapping/WrongType;

    const-string v5, "set-car!"

    invoke-direct {v4, v3, v5, v7, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4

    .line 160
    .end local v1           #lst:Ljava/lang/Object;
    .end local v2           #x:Z
    :catch_3
    move-exception v3

    new-instance v4, Lgnu/mapping/WrongType;

    const-string v5, "length"

    invoke-direct {v4, v3, v5, v7, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4
.end method

.method public static $PcSortVector(Lgnu/lists/Sequence;Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0, p1, v0}, Lkawa/lib/srfi95;->$PcSortVector(Lgnu/lists/Sequence;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static $PcSortVector(Lgnu/lists/Sequence;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 10
    .parameter "seq"
    .parameter "less$Qu"
    .parameter "key"

    .prologue
    .line 196
    invoke-interface {p0}, Lgnu/lists/Sequence;->size()I

    move-result v1

    .line 198
    .local v1, dim:I
    invoke-static {v1}, Lkawa/lib/vectors;->makeVector(I)Lgnu/lists/FVector;

    move-result-object v3

    .line 199
    .local v3, newra:Lgnu/lists/FVector;
    invoke-static {p0}, Lkawa/lib/srfi95;->rank$Mn1Array$To$List(Lgnu/lists/Sequence;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, p1, p2}, Lkawa/lib/srfi95;->$PcSortList(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lkawa/lib/srfi95;->Lit3:Lgnu/math/IntNum;

    .end local p0
    .local v4, sorted:Ljava/lang/Object;
    :goto_0
    invoke-static {v4}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 203
    :try_start_0
    move-object v0, v5

    check-cast v0, Ljava/lang/Number;

    move-object p0, v0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    sget-object v7, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    invoke-virtual {v7, v4}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v3, v6, v7}, Lkawa/lib/vectors;->vectorSet$Ex(Lgnu/lists/FVector;ILjava/lang/Object;)V

    .line 200
    sget-object v6, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    invoke-virtual {v6, v4}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 201
    .end local v4           #sorted:Ljava/lang/Object;
    sget-object v6, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    sget-object v7, Lkawa/lib/srfi95;->Lit2:Lgnu/math/IntNum;

    invoke-virtual {v6, v5, v7}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .local v2, i:Ljava/lang/Object;
    .restart local v4       #sorted:Ljava/lang/Object;
    move-object v5, v2

    goto :goto_0

    .line 203
    .end local v2           #i:Ljava/lang/Object;
    :catch_0
    move-exception v6

    new-instance v7, Lgnu/mapping/WrongType;

    const-string v8, "vector-set!"

    const/4 v9, 0x2

    invoke-direct {v7, v6, v8, v9, v5}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v7

    .line 199
    :cond_0
    return-void
.end method

.method public static $PcVectorSort$Ex(Lgnu/lists/Sequence;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .parameter "seq"
    .parameter "less$Qu"
    .parameter "key"

    .prologue
    .line 189
    invoke-static {p0}, Lkawa/lib/srfi95;->rank$Mn1Array$To$List(Lgnu/lists/Sequence;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, p1, p2}, Lkawa/lib/srfi95;->$PcSortList(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lkawa/lib/srfi95;->Lit3:Lgnu/math/IntNum;

    .local v2, sorted:Ljava/lang/Object;
    move-object v4, v3

    :goto_0
    invoke-static {v2}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 194
    move-object v0, v4

    check-cast v0, Ljava/lang/Number;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    sget-object v5, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    invoke-virtual {v5, v2}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p0, v3, v5}, Lgnu/lists/Sequence;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 191
    sget-object v3, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    invoke-virtual {v3, v2}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 192
    .end local v2           #sorted:Ljava/lang/Object;
    sget-object v3, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    sget-object v5, Lkawa/lib/srfi95;->Lit2:Lgnu/math/IntNum;

    invoke-virtual {v3, v4, v5}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .local v1, i:Ljava/lang/Object;
    .restart local v2       #sorted:Ljava/lang/Object;
    move-object v4, v1

    goto :goto_0

    .line 190
    .end local v1           #i:Ljava/lang/Object;
    :cond_0
    return-object p0
.end method

.method public static constructor <clinit>()V
    .locals 9

    const/16 v8, 0x4003

    const/16 v7, 0x3003

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/16 v4, 0x3002

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "sort"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/srfi95;->Lit12:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "%sort-vector"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/srfi95;->Lit11:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "%vector-sort!"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/srfi95;->Lit10:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "sort!"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/srfi95;->Lit9:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "%sort-list"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/srfi95;->Lit8:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "merge!"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/srfi95;->Lit7:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "merge"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/srfi95;->Lit6:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "sorted?"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/srfi95;->Lit5:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "identity"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/srfi95;->Lit4:Lgnu/mapping/SimpleSymbol;

    const/4 v0, 0x0

    invoke-static {v0}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v0

    sput-object v0, Lkawa/lib/srfi95;->Lit3:Lgnu/math/IntNum;

    invoke-static {v5}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v0

    sput-object v0, Lkawa/lib/srfi95;->Lit2:Lgnu/math/IntNum;

    invoke-static {v6}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v0

    sput-object v0, Lkawa/lib/srfi95;->Lit1:Lgnu/math/IntNum;

    const/4 v0, -0x1

    invoke-static {v0}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v0

    sput-object v0, Lkawa/lib/srfi95;->Lit0:Lgnu/math/IntNum;

    new-instance v0, Lkawa/lib/srfi95;

    invoke-direct {v0}, Lkawa/lib/srfi95;-><init>()V

    sput-object v0, Lkawa/lib/srfi95;->$instance:Lkawa/lib/srfi95;

    new-instance v0, Lgnu/expr/ModuleMethod;

    sget-object v1, Lkawa/lib/srfi95;->$instance:Lkawa/lib/srfi95;

    sget-object v2, Lkawa/lib/srfi95;->Lit4:Lgnu/mapping/SimpleSymbol;

    const/16 v3, 0x1001

    invoke-direct {v0, v1, v5, v2, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/srfi95;->identity:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    sget-object v2, Lkawa/lib/srfi95;->Lit5:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v6, v2, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/srfi95;->sorted$Qu:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v2, 0x4

    sget-object v3, Lkawa/lib/srfi95;->Lit6:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v8}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/srfi95;->merge:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v2, 0x6

    sget-object v3, Lkawa/lib/srfi95;->Lit7:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v8}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/srfi95;->merge$Ex:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x8

    sget-object v3, Lkawa/lib/srfi95;->Lit8:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/srfi95;->$Pcsort$Mnlist:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x9

    sget-object v3, Lkawa/lib/srfi95;->Lit9:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/srfi95;->sort$Ex:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0xb

    sget-object v3, Lkawa/lib/srfi95;->Lit10:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/srfi95;->$Pcvector$Mnsort$Ex:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0xc

    sget-object v3, Lkawa/lib/srfi95;->Lit11:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/srfi95;->$Pcsort$Mnvector:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0xe

    sget-object v3, Lkawa/lib/srfi95;->Lit12:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/srfi95;->sort:Lgnu/expr/ModuleMethod;

    sget-object v0, Lkawa/lib/srfi95;->$instance:Lkawa/lib/srfi95;

    invoke-virtual {v0}, Lgnu/expr/ModuleBody;->run()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    invoke-static {p0}, Lgnu/expr/ModuleInfo;->register(Ljava/lang/Object;)V

    return-void
.end method

.method static identity(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x"

    .prologue
    .line 34
    return-object p0
.end method

.method public static isSorted(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lkawa/lib/srfi95;->identity:Lgnu/expr/ModuleMethod;

    invoke-static {p0, p1, v0}, Lkawa/lib/srfi95;->isSorted(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static isSorted(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18
    .parameter "seq"
    .parameter "less$Qu"
    .parameter "key"

    .prologue
    const/16 v17, 0x0

    const/16 v16, -0x2

    const/4 v15, 0x1

    .line 44
    invoke-static/range {p0 .. p0}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    sget-object v12, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 62
    :goto_0
    return-object v12

    .line 46
    :cond_0
    move-object/from16 v0, p0

    instance-of v0, v0, Lgnu/lists/Sequence;

    move v12, v0

    if-eqz v12, :cond_7

    .line 47
    :try_start_0
    move-object/from16 v0, p0

    check-cast v0, Lgnu/lists/Sequence;

    move-object v5, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .local v5, arr:Lgnu/lists/Sequence;
    invoke-interface {v5}, Lgnu/lists/Sequence;->size()I

    move-result v12

    add-int/lit8 v6, v12, -0x1

    .line 49
    .local v6, dimax:I
    if-gt v6, v15, :cond_1

    move v11, v15

    .local v11, x:Z
    :goto_1
    if-eqz v11, :cond_3

    if-eqz v11, :cond_2

    sget-object v12, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    .end local v11           #x:Z
    :cond_1
    move/from16 v11, v17

    goto :goto_1

    .restart local v11       #x:Z
    :cond_2
    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 50
    :cond_3
    add-int/lit8 v12, v6, -0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 51
    sget-object v12, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    invoke-interface {v5, v6}, Lgnu/lists/Sequence;->get(I)Ljava/lang/Object;

    move-result-object v13

    move-object v0, v12

    move-object/from16 v1, p2

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .local v7, idx:Ljava/lang/Integer;
    move-object v13, v12

    .line 52
    .end local v7           #idx:Ljava/lang/Integer;
    .end local v11           #x:Z
    :goto_2
    :try_start_1
    invoke-static {v7}, Lgnu/kawa/lispexpr/LangObjType;->coerceRealNum(Ljava/lang/Object;)Lgnu/math/RealNum;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v12

    invoke-static {v12}, Lkawa/lib/numbers;->isNegative(Lgnu/math/RealNum;)Z

    move-result v11

    .restart local v11       #x:Z
    if-eqz v11, :cond_5

    if-eqz v11, :cond_4

    sget-object v12, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_4
    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 53
    :cond_5
    sget-object v14, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    :try_start_2
    move-object v0, v7

    check-cast v0, Ljava/lang/Number;

    move-object v12, v0

    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v12

    invoke-interface {v5, v12}, Lgnu/lists/Sequence;->get(I)Ljava/lang/Object;

    move-result-object v12

    move-object v0, v14

    move-object/from16 v1, p2

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 54
    .local v10, nxt:Ljava/lang/Object;
    sget-object v12, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    move-object v0, v12

    move-object/from16 v1, p1

    move-object v2, v10

    move-object v3, v13

    invoke-virtual {v0, v1, v2, v3}, Lgnu/mapping/Procedure;->apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .local v11, x:Ljava/lang/Object;
    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v11, v12, :cond_6

    .line 55
    sget-object v12, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    sget-object v13, Lkawa/lib/srfi95;->Lit0:Lgnu/math/IntNum;

    invoke-virtual {v12, v13, v7}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v8, v10

    .local v7, idx:Ljava/lang/Object;
    .local v8, last:Ljava/lang/Object;
    move-object v13, v8

    goto :goto_2

    .end local v7           #idx:Ljava/lang/Object;
    .end local v8           #last:Ljava/lang/Object;
    :cond_6
    move-object v12, v11

    .line 54
    goto :goto_0

    .end local v5           #arr:Lgnu/lists/Sequence;
    .end local v6           #dimax:I
    .end local v10           #nxt:Ljava/lang/Object;
    .end local v11           #x:Ljava/lang/Object;
    :cond_7
    sget-object v12, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    .line 56
    move-object v0, v12

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-static {v12}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    sget-object v12, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 58
    :cond_8
    sget-object v12, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    sget-object v13, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    move-object v0, v13

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    move-object v0, v12

    move-object/from16 v1, p2

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 59
    sget-object v12, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    move-object v0, v12

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 60
    .restart local v8       #last:Ljava/lang/Object;
    :goto_3
    invoke-static {v12}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v11

    .local v11, x:Z
    if-eqz v11, :cond_a

    if-eqz v11, :cond_9

    sget-object v12, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto/16 :goto_0

    :cond_9
    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 61
    :cond_a
    sget-object v13, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    sget-object v14, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    invoke-virtual {v14, v12}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    move-object v0, v13

    move-object/from16 v1, p2

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 62
    .restart local v10       #nxt:Ljava/lang/Object;
    sget-object v13, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    move-object v0, v13

    move-object/from16 v1, p1

    move-object v2, v10

    move-object v3, v8

    invoke-virtual {v0, v1, v2, v3}, Lgnu/mapping/Procedure;->apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    :try_start_3
    sget-object v14, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    if-eq v13, v14, :cond_b

    move v13, v15

    :goto_4
    add-int/lit8 v13, v13, 0x1

    and-int/lit8 v11, v13, 0x1

    if-eqz v11, :cond_c

    .line 63
    sget-object v13, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    invoke-virtual {v13, v12}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .local v9, next:Ljava/lang/Object;
    move-object v8, v10

    move-object v12, v9

    goto :goto_3

    .end local v9           #next:Ljava/lang/Object;
    :cond_b
    move/from16 v13, v17

    .line 62
    goto :goto_4

    :cond_c
    if-eqz v11, :cond_d

    sget-object v12, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto/16 :goto_0

    :cond_d
    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 47
    .end local v8           #last:Ljava/lang/Object;
    .end local v10           #nxt:Ljava/lang/Object;
    .end local v11           #x:Z
    :catch_0
    move-exception v12

    new-instance v13, Lgnu/mapping/WrongType;

    const-string v14, "arr"

    move-object v0, v13

    move-object v1, v12

    move-object v2, v14

    move/from16 v3, v16

    move-object/from16 v4, p0

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v13

    .line 52
    .restart local v5       #arr:Lgnu/lists/Sequence;
    .restart local v6       #dimax:I
    :catch_1
    move-exception v12

    new-instance v13, Lgnu/mapping/WrongType;

    const-string v14, "negative?"

    invoke-direct {v13, v12, v14, v15, v7}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v13

    .line 53
    .restart local v11       #x:Z
    :catch_2
    move-exception v12

    new-instance v13, Lgnu/mapping/WrongType;

    const-string v14, "gnu.lists.Sequence.get(int)"

    const/4 v15, 0x2

    invoke-direct {v13, v12, v14, v15, v7}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v13

    .line 62
    .end local v5           #arr:Lgnu/lists/Sequence;
    .end local v6           #dimax:I
    .restart local v8       #last:Ljava/lang/Object;
    .restart local v10       #nxt:Ljava/lang/Object;
    :catch_3
    move-exception v12

    new-instance v14, Lgnu/mapping/WrongType;

    const-string v15, "x"

    move-object v0, v14

    move-object v1, v12

    move-object v2, v15

    move/from16 v3, v16

    move-object v4, v13

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v14
.end method

.method public static merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lkawa/lib/srfi95;->identity:Lgnu/expr/ModuleMethod;

    invoke-static {p0, p1, p2, v0}, Lkawa/lib/srfi95;->merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .parameter "a"
    .parameter "b"
    .parameter "isLess"
    .parameter "key"

    .prologue
    .line 71
    new-instance v0, Lkawa/lib/srfi95$frame;

    invoke-direct {v0}, Lkawa/lib/srfi95$frame;-><init>()V

    iput-object p2, v0, Lkawa/lib/srfi95$frame;->less$Qu:Ljava/lang/Object;

    iput-object p3, v0, Lkawa/lib/srfi95$frame;->key:Ljava/lang/Object;

    .line 72
    invoke-static {p0}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 76
    :goto_0
    return-object v0

    .line 72
    :cond_0
    invoke-static {p1}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v0, p0

    .line 73
    goto :goto_0

    .line 75
    :cond_1
    sget-object v1, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    invoke-virtual {v1, p0}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v3, v0, Lkawa/lib/srfi95$frame;->key:Ljava/lang/Object;

    sget-object v4, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    invoke-virtual {v4, p0}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    invoke-virtual {v3, p0}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    .line 76
    invoke-virtual {v4, p1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v6, v0, Lkawa/lib/srfi95$frame;->key:Ljava/lang/Object;

    sget-object v7, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    invoke-virtual {v7, p1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    invoke-virtual {v6, p1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lkawa/lib/srfi95$frame;->lambda1loop(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public static merge$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lkawa/lib/srfi95;->identity:Lgnu/expr/ModuleMethod;

    invoke-static {p0, p1, p2, v0}, Lkawa/lib/srfi95;->merge$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static merge$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "a"
    .parameter "b"
    .parameter "less$Qu"
    .parameter "key"

    .prologue
    .line 121
    invoke-static {p0, p1, p2, p3}, Lkawa/lib/srfi95;->sort$ClMerge$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static rank$Mn1Array$To$List(Lgnu/lists/Sequence;)Ljava/lang/Object;
    .locals 4
    .parameter "seq"

    .prologue
    .line 162
    invoke-interface {p0}, Lgnu/lists/Sequence;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int v0, v2, v3

    sget-object v2, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    .line 165
    .local v0, idx:I
    :goto_0
    if-gez v0, :cond_0

    .line 166
    return-object v2

    :cond_0
    invoke-interface {p0, v0}, Lgnu/lists/Sequence;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v2}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v1

    .local v1, lst:Lgnu/lists/Pair;
    add-int/lit8 v0, v0, -0x1

    move-object v2, v1

    goto :goto_0
.end method

.method public static sort(Lgnu/lists/Sequence;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0, p1, v0}, Lkawa/lib/srfi95;->sort(Lgnu/lists/Sequence;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static sort(Lgnu/lists/Sequence;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter "seq"
    .parameter "less$Qu"
    .parameter "key"

    .prologue
    .line 212
    invoke-static {p0}, Lkawa/lib/lists;->isList(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    aput-object v2, v0, v1

    invoke-static {v0}, Lkawa/standard/append;->append$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lkawa/lib/srfi95;->$PcSortList(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 216
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1, p2}, Lkawa/lib/srfi95;->$PcSortVector(Lgnu/lists/Sequence;Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_0
.end method

.method static sort$ClMerge$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
    .parameter "a"
    .parameter "b"
    .parameter "isLess"
    .parameter "key"

    .prologue
    const/4 v6, 0x1

    .line 88
    new-instance v1, Lkawa/lib/srfi95$frame1;

    invoke-direct {v1}, Lkawa/lib/srfi95$frame1;-><init>()V

    iput-object p2, v1, Lkawa/lib/srfi95$frame1;->less$Qu:Ljava/lang/Object;

    iput-object p3, v1, Lkawa/lib/srfi95$frame1;->key:Ljava/lang/Object;

    .line 89
    invoke-static {p0}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 115
    :goto_0
    return-object v1

    .line 100
    :cond_0
    invoke-static {p1}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v1, p0

    .line 101
    goto :goto_0

    .line 103
    :cond_1
    sget-object v2, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v3, v1, Lkawa/lib/srfi95$frame1;->key:Ljava/lang/Object;

    sget-object v5, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    invoke-virtual {v5, p0}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 104
    sget-object v2, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v3, v1, Lkawa/lib/srfi95$frame1;->key:Ljava/lang/Object;

    sget-object v5, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    invoke-virtual {v5, p1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 105
    .local v4, kcara:Ljava/lang/Object;
    .local v10, kcarb:Ljava/lang/Object;
    sget-object v2, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    .line 106
    iget-object v3, v1, Lkawa/lib/srfi95$frame1;->less$Qu:Ljava/lang/Object;

    invoke-virtual {v2, v3, v10, v4}, Lgnu/mapping/Procedure;->apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v2, v3, :cond_3

    .line 107
    sget-object v2, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    invoke-virtual {v2, p1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 108
    :try_start_0
    move-object v0, p1

    check-cast v0, Lgnu/lists/Pair;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v1, p0}, Lkawa/lib/lists;->setCdr$Ex(Lgnu/lists/Pair;Ljava/lang/Object;)V

    :goto_1
    move-object v1, p1

    .line 110
    goto :goto_0

    .line 109
    :cond_2
    sget-object v2, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    invoke-virtual {v2, p1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v2, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v3, v1, Lkawa/lib/srfi95$frame1;->key:Ljava/lang/Object;

    sget-object v6, Lkawa/lib/lists;->cadr:Lgnu/expr/GenericProc;

    invoke-virtual {v6, p1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v2, p1

    move-object v3, p0

    invoke-virtual/range {v1 .. v6}, Lkawa/lib/srfi95$frame1;->lambda3loop(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 112
    :cond_3
    sget-object v2, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    invoke-virtual {v2, p0}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 113
    :try_start_1
    move-object v0, p0

    check-cast v0, Lgnu/lists/Pair;

    move-object v1, v0
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-static {v1, p1}, Lkawa/lib/lists;->setCdr$Ex(Lgnu/lists/Pair;Ljava/lang/Object;)V

    :goto_2
    move-object v1, p0

    .line 115
    goto :goto_0

    .line 114
    :cond_4
    sget-object v2, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    invoke-virtual {v2, p0}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    sget-object v2, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v3, v1, Lkawa/lib/srfi95$frame1;->key:Ljava/lang/Object;

    sget-object v5, Lkawa/lib/lists;->cadr:Lgnu/expr/GenericProc;

    invoke-virtual {v5, p0}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v5, v1

    move-object v6, p0

    move-object v9, p1

    invoke-virtual/range {v5 .. v10}, Lkawa/lib/srfi95$frame1;->lambda3loop(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 108
    :catch_0
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "set-cdr!"

    invoke-direct {v2, v1, v3, v6, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 113
    :catch_1
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "set-cdr!"

    invoke-direct {v2, v1, v3, v6, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2
.end method

.method public static sort$Ex(Lgnu/lists/Sequence;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0, p1, v0}, Lkawa/lib/srfi95;->sort$Ex(Lgnu/lists/Sequence;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static sort$Ex(Lgnu/lists/Sequence;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .parameter "seq"
    .parameter "less$Qu"
    .parameter "key"

    .prologue
    const/4 v8, 0x1

    .line 175
    invoke-static {p0}, Lkawa/lib/lists;->isList(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 177
    invoke-static {p0, p1, p2}, Lkawa/lib/srfi95;->$PcSortList(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 178
    .local v2, ret:Ljava/lang/Object;
    if-eq v2, p0, :cond_1

    .line 179
    move-object v1, v2

    .local v1, crt:Ljava/lang/Object;
    :goto_0
    sget-object v5, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    .line 180
    invoke-virtual {v5, v1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eq v5, p0, :cond_0

    .line 179
    sget-object v5, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    invoke-virtual {v5, v1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 181
    :cond_0
    :try_start_0
    check-cast v1, Lgnu/lists/Pair;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #crt:Ljava/lang/Object;
    invoke-static {v1, v2}, Lkawa/lib/lists;->setCdr$Ex(Lgnu/lists/Pair;Ljava/lang/Object;)V

    .line 182
    sget-object v5, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    invoke-virtual {v5, p0}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v5, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    invoke-virtual {v5, p0}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 183
    .local v3, scar:Ljava/lang/Object;
    .local v4, scdr:Ljava/lang/Object;
    :try_start_1
    move-object v0, p0

    check-cast v0, Lgnu/lists/Pair;

    move-object v5, v0
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    sget-object v6, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    invoke-virtual {v6, v2}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Lkawa/lib/lists;->setCar$Ex(Lgnu/lists/Pair;Ljava/lang/Object;)V

    :try_start_2
    move-object v0, p0

    check-cast v0, Lgnu/lists/Pair;

    move-object v5, v0
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    sget-object v6, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    invoke-virtual {v6, v2}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Lkawa/lib/lists;->setCdr$Ex(Lgnu/lists/Pair;Ljava/lang/Object;)V

    .line 184
    :try_start_3
    move-object v0, v2

    check-cast v0, Lgnu/lists/Pair;

    move-object v5, v0
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    invoke-static {v5, v3}, Lkawa/lib/lists;->setCar$Ex(Lgnu/lists/Pair;Ljava/lang/Object;)V

    :try_start_4
    check-cast v2, Lgnu/lists/Pair;
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_4

    .end local v2           #ret:Ljava/lang/Object;
    invoke-static {v2, v4}, Lkawa/lib/lists;->setCdr$Ex(Lgnu/lists/Pair;Ljava/lang/Object;)V

    .end local v3           #scar:Ljava/lang/Object;
    .end local v4           #scdr:Ljava/lang/Object;
    :cond_1
    move-object v5, p0

    .line 187
    :goto_1
    return-object v5

    :cond_2
    invoke-static {p0, p1, p2}, Lkawa/lib/srfi95;->$PcVectorSort$Ex(Lgnu/lists/Sequence;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_1

    .line 181
    .restart local v1       #crt:Ljava/lang/Object;
    .restart local v2       #ret:Ljava/lang/Object;
    :catch_0
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    const-string v7, "set-cdr!"

    invoke-direct {v6, v5, v7, v8, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6

    .line 183
    .end local v1           #crt:Ljava/lang/Object;
    .restart local v3       #scar:Ljava/lang/Object;
    .restart local v4       #scdr:Ljava/lang/Object;
    :catch_1
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    const-string v7, "set-car!"

    invoke-direct {v6, v5, v7, v8, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6

    :catch_2
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    const-string v7, "set-cdr!"

    invoke-direct {v6, v5, v7, v8, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6

    .line 184
    :catch_3
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    const-string v7, "set-car!"

    invoke-direct {v6, v5, v7, v8, v2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6

    :catch_4
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    const-string v7, "set-cdr!"

    invoke-direct {v6, v5, v7, v8, v2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6
.end method


# virtual methods
.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter

    .prologue
    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 34
    invoke-static {p2}, Lkawa/lib/srfi95;->identity(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    sparse-switch v0, :sswitch_data_0

    .line 212
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    .line 44
    :sswitch_0
    invoke-static {p2, p3}, Lkawa/lib/srfi95;->isSorted(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 175
    :sswitch_1
    :try_start_0
    check-cast p2, Lgnu/lists/Sequence;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p2, p3}, Lkawa/lib/srfi95;->sort$Ex(Lgnu/lists/Sequence;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 196
    :sswitch_2
    :try_start_1
    check-cast p2, Lgnu/lists/Sequence;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-static {p2, p3}, Lkawa/lib/srfi95;->$PcSortVector(Lgnu/lists/Sequence;Ljava/lang/Object;)V

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_0

    .line 212
    :sswitch_3
    :try_start_2
    check-cast p2, Lgnu/lists/Sequence;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    invoke-static {p2, p3}, Lkawa/lib/srfi95;->sort(Lgnu/lists/Sequence;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 175
    :catch_0
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "sort!"

    invoke-direct {v1, v0, v2, v3, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 196
    :catch_1
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "%sort-vector"

    invoke-direct {v1, v0, v2, v3, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 212
    :catch_2
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "sort"

    invoke-direct {v1, v0, v2, v3, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line -1
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x9 -> :sswitch_1
        0xc -> :sswitch_2
        0xe -> :sswitch_3
    .end sparse-switch
.end method

.method public apply3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v0, :pswitch_data_0

    .line 212
    :pswitch_0
    invoke-super {p0, p1, p2, p3, p4}, Lgnu/expr/ModuleBody;->apply3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    .line 44
    :pswitch_1
    invoke-static {p2, p3, p4}, Lkawa/lib/srfi95;->isSorted(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 71
    :pswitch_2
    invoke-static {p2, p3, p4}, Lkawa/lib/srfi95;->merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 121
    :pswitch_3
    invoke-static {p2, p3, p4}, Lkawa/lib/srfi95;->merge$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 124
    :pswitch_4
    invoke-static {p2, p3, p4}, Lkawa/lib/srfi95;->$PcSortList(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 175
    :pswitch_5
    :try_start_0
    check-cast p2, Lgnu/lists/Sequence;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p2, p3, p4}, Lkawa/lib/srfi95;->sort$Ex(Lgnu/lists/Sequence;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 189
    :pswitch_6
    :try_start_1
    check-cast p2, Lgnu/lists/Sequence;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-static {p2, p3, p4}, Lkawa/lib/srfi95;->$PcVectorSort$Ex(Lgnu/lists/Sequence;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 196
    :pswitch_7
    :try_start_2
    check-cast p2, Lgnu/lists/Sequence;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    invoke-static {p2, p3, p4}, Lkawa/lib/srfi95;->$PcSortVector(Lgnu/lists/Sequence;Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_0

    .line 212
    :pswitch_8
    :try_start_3
    check-cast p2, Lgnu/lists/Sequence;
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    invoke-static {p2, p3, p4}, Lkawa/lib/srfi95;->sort(Lgnu/lists/Sequence;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 175
    :catch_0
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "sort!"

    invoke-direct {v1, v0, v2, v3, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 189
    :catch_1
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "%vector-sort!"

    invoke-direct {v1, v0, v2, v3, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 196
    :catch_2
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "%sort-vector"

    invoke-direct {v1, v0, v2, v3, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 212
    :catch_3
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "sort"

    invoke-direct {v1, v0, v2, v3, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line -1
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method

.method public apply4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v0, :pswitch_data_0

    .line 121
    :pswitch_0
    invoke-super/range {p0 .. p5}, Lgnu/expr/ModuleBody;->apply4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    .line 71
    :pswitch_1
    invoke-static {p2, p3, p4, p5}, Lkawa/lib/srfi95;->merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 121
    :pswitch_2
    invoke-static {p2, p3, p4, p5}, Lkawa/lib/srfi95;->merge$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line -1
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    if-ne v0, v1, :cond_0

    .line 34
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v1, p3, Lgnu/mapping/CallContext;->pc:I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    goto :goto_0
.end method

.method public match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const v3, -0xbffff

    const/4 v2, 0x2

    const/4 v1, 0x0

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    sparse-switch v0, :sswitch_data_0

    .line 44
    invoke-super {p0, p1, p2, p3, p4}, Lgnu/expr/ModuleBody;->match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    .line 212
    :goto_0
    return v0

    :sswitch_0
    instance-of v0, p2, Lgnu/lists/Sequence;

    if-nez v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p4, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 196
    :sswitch_1
    instance-of v0, p2, Lgnu/lists/Sequence;

    if-nez v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p4, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 175
    :sswitch_2
    instance-of v0, p2, Lgnu/lists/Sequence;

    if-nez v0, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p4, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 44
    :sswitch_3
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p4, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line -1
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_3
        0x9 -> :sswitch_2
        0xc -> :sswitch_1
        0xe -> :sswitch_0
    .end sparse-switch
.end method

.method public match3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const v3, -0xbffff

    const/4 v2, 0x3

    const/4 v1, 0x0

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v0, :pswitch_data_0

    .line 44
    :pswitch_0
    invoke-super/range {p0 .. p5}, Lgnu/expr/ModuleBody;->match3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    .line 212
    :goto_0
    return v0

    :pswitch_1
    instance-of v0, p2, Lgnu/lists/Sequence;

    if-nez v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p5, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 196
    :pswitch_2
    instance-of v0, p2, Lgnu/lists/Sequence;

    if-nez v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p5, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 189
    :pswitch_3
    instance-of v0, p2, Lgnu/lists/Sequence;

    if-nez v0, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p5, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 175
    :pswitch_4
    instance-of v0, p2, Lgnu/lists/Sequence;

    if-nez v0, :cond_3

    move v0, v3

    goto :goto_0

    :cond_3
    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p5, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 124
    :pswitch_5
    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p5, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 121
    :pswitch_6
    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p5, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 71
    :pswitch_7
    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p5, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 44
    :pswitch_8
    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p5, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line -1
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public match4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v0, :pswitch_data_0

    .line 71
    :pswitch_0
    invoke-super/range {p0 .. p6}, Lgnu/expr/ModuleBody;->match4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    .line 121
    :goto_0
    return v0

    :pswitch_1
    iput-object p2, p6, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p6, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p6, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p5, p6, Lgnu/mapping/CallContext;->value4:Ljava/lang/Object;

    iput-object p1, p6, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p6, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 71
    :pswitch_2
    iput-object p2, p6, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p6, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p6, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p5, p6, Lgnu/mapping/CallContext;->value4:Ljava/lang/Object;

    iput-object p1, p6, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p6, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line -1
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final run(Lgnu/mapping/CallContext;)V
    .locals 1
    .parameter "$ctx"

    .prologue
    .line 21
    iget-object v0, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 34
    .local v0, $result:Lgnu/lists/Consumer;
    return-void
.end method
