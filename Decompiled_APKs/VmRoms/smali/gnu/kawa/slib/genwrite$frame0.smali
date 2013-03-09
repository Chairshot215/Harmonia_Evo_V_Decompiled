.class public Lgnu/kawa/slib/genwrite$frame0;
.super Lgnu/expr/ModuleBody;
.source "genwrite.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/genwrite;->genericWrite(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame0"
.end annotation


# instance fields
.field pp$MnAND:Lgnu/mapping/Procedure;

.field pp$MnBEGIN:Lgnu/mapping/Procedure;

.field pp$MnCASE:Lgnu/mapping/Procedure;

.field pp$MnCOND:Lgnu/mapping/Procedure;

.field pp$MnDO:Lgnu/mapping/Procedure;

.field pp$MnIF:Lgnu/mapping/Procedure;

.field pp$MnLAMBDA:Lgnu/mapping/Procedure;

.field pp$MnLET:Lgnu/mapping/Procedure;

.field pp$Mnexpr:Lgnu/mapping/Procedure;

.field pp$Mnexpr$Mnlist:Lgnu/mapping/Procedure;

.field staticLink:Lgnu/kawa/slib/genwrite$frame;


# direct methods
.method public constructor <init>()V
    .locals 4

    const/16 v3, 0x3003

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v1, 0x2

    sget-object v2, Lgnu/kawa/slib/genwrite;->Lit20:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, p0, v1, v2, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lgnu/kawa/slib/genwrite$frame0;->pp$Mnexpr:Lgnu/mapping/Procedure;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v1, 0x3

    sget-object v2, Lgnu/kawa/slib/genwrite;->Lit21:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, p0, v1, v2, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lgnu/kawa/slib/genwrite$frame0;->pp$Mnexpr$Mnlist:Lgnu/mapping/Procedure;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v1, 0x4

    sget-object v2, Lgnu/kawa/slib/genwrite;->Lit22:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, p0, v1, v2, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lgnu/kawa/slib/genwrite$frame0;->pp$MnLAMBDA:Lgnu/mapping/Procedure;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v1, 0x5

    sget-object v2, Lgnu/kawa/slib/genwrite;->Lit23:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, p0, v1, v2, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lgnu/kawa/slib/genwrite$frame0;->pp$MnIF:Lgnu/mapping/Procedure;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v1, 0x6

    sget-object v2, Lgnu/kawa/slib/genwrite;->Lit24:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, p0, v1, v2, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lgnu/kawa/slib/genwrite$frame0;->pp$MnCOND:Lgnu/mapping/Procedure;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v1, 0x7

    sget-object v2, Lgnu/kawa/slib/genwrite;->Lit25:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, p0, v1, v2, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lgnu/kawa/slib/genwrite$frame0;->pp$MnCASE:Lgnu/mapping/Procedure;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x8

    sget-object v2, Lgnu/kawa/slib/genwrite;->Lit26:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, p0, v1, v2, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lgnu/kawa/slib/genwrite$frame0;->pp$MnAND:Lgnu/mapping/Procedure;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x9

    sget-object v2, Lgnu/kawa/slib/genwrite;->Lit27:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, p0, v1, v2, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lgnu/kawa/slib/genwrite$frame0;->pp$MnLET:Lgnu/mapping/Procedure;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0xa

    sget-object v2, Lgnu/kawa/slib/genwrite;->Lit28:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, p0, v1, v2, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lgnu/kawa/slib/genwrite$frame0;->pp$MnBEGIN:Lgnu/mapping/Procedure;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0xb

    sget-object v2, Lgnu/kawa/slib/genwrite;->Lit29:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, p0, v1, v2, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lgnu/kawa/slib/genwrite$frame0;->pp$MnDO:Lgnu/mapping/Procedure;

    return-void
.end method


# virtual methods
.method public apply3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v0, :pswitch_data_0

    .line 189
    invoke-super {p0, p1, p2, p3, p4}, Lgnu/expr/ModuleBody;->apply3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    .line 83
    :pswitch_0
    invoke-virtual {p0, p2, p3, p4}, Lgnu/kawa/slib/genwrite$frame0;->lambda8ppExpr(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 163
    :pswitch_1
    invoke-virtual {p0, p2, p3, p4}, Lgnu/kawa/slib/genwrite$frame0;->lambda13ppExprList(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 166
    :pswitch_2
    invoke-virtual {p0, p2, p3, p4}, Lgnu/kawa/slib/genwrite$frame0;->lambda14pp$MnLAMBDA(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 169
    :pswitch_3
    invoke-virtual {p0, p2, p3, p4}, Lgnu/kawa/slib/genwrite$frame0;->lambda15pp$MnIF(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 172
    :pswitch_4
    invoke-virtual {p0, p2, p3, p4}, Lgnu/kawa/slib/genwrite$frame0;->lambda16pp$MnCOND(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 175
    :pswitch_5
    invoke-virtual {p0, p2, p3, p4}, Lgnu/kawa/slib/genwrite$frame0;->lambda17pp$MnCASE(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 178
    :pswitch_6
    invoke-virtual {p0, p2, p3, p4}, Lgnu/kawa/slib/genwrite$frame0;->lambda18pp$MnAND(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 181
    :pswitch_7
    invoke-virtual {p0, p2, p3, p4}, Lgnu/kawa/slib/genwrite$frame0;->lambda19pp$MnLET(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 186
    :pswitch_8
    invoke-virtual {p0, p2, p3, p4}, Lgnu/kawa/slib/genwrite$frame0;->lambda20pp$MnBEGIN(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 189
    :pswitch_9
    invoke-virtual {p0, p2, p3, p4}, Lgnu/kawa/slib/genwrite$frame0;->lambda21pp$MnDO(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line -1
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public lambda10ppList(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .parameter "l"
    .parameter "col"
    .parameter "extra"
    .parameter "pp$Mnitem"

    .prologue
    .line 111
    iget-object v0, p0, Lgnu/kawa/slib/genwrite$frame0;->staticLink:Lgnu/kawa/slib/genwrite$frame;

    const-string v1, "("

    invoke-virtual {v0, v1, p2}, Lgnu/kawa/slib/genwrite$frame;->lambda4out(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 113
    invoke-virtual/range {v0 .. v5}, Lgnu/kawa/slib/genwrite$frame0;->lambda11ppDown(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public lambda11ppDown(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .parameter "l"
    .parameter "col1"
    .parameter "col2"
    .parameter "extra"
    .parameter "pp$Mnitem"

    .prologue
    .line 115
    move-object v4, p2

    .end local p4
    :goto_0
    move-object v0, p0

    .line 117
    .local v0, closureEnv:Lgnu/kawa/slib/genwrite$frame0;
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v4, v5, :cond_2

    invoke-static {p1}, Lkawa/lib/lists;->isPair(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 119
    sget-object v5, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    invoke-virtual {v5, p1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 120
    .local v3, rest:Ljava/lang/Object;
    invoke-static {v3}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    sget-object v6, Lgnu/kawa/slib/genwrite;->Lit17:Lgnu/math/IntNum;

    invoke-virtual {v5, p4, v6}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v2, v5

    .line 122
    .local v2, extra:Ljava/lang/Object;
    :goto_1
    sget-object v5, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    invoke-virtual {v5, p1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, p3, v4}, Lgnu/kawa/slib/genwrite$frame0;->lambda6indent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v5, v4, v2, p5}, Lgnu/kawa/slib/genwrite$frame0;->lambda7pr(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .local v1, col:Ljava/lang/Object;
    move-object p1, v3

    move-object v4, v1

    goto :goto_0

    .line 120
    .end local v1           #col:Ljava/lang/Object;
    .end local v2           #extra:Ljava/lang/Object;
    :cond_0
    sget-object v5, Lgnu/kawa/slib/genwrite;->Lit1:Lgnu/math/IntNum;

    move-object v2, v5

    goto :goto_1

    .line 122
    .end local v3           #rest:Ljava/lang/Object;
    :cond_1
    invoke-static {p1}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 124
    iget-object v5, p0, Lgnu/kawa/slib/genwrite$frame0;->staticLink:Lgnu/kawa/slib/genwrite$frame;

    const-string v6, ")"

    invoke-virtual {v5, v6, v4}, Lgnu/kawa/slib/genwrite$frame;->lambda4out(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 117
    :cond_2
    :goto_2
    return-object v4

    .line 126
    :cond_3
    iget-object v5, p0, Lgnu/kawa/slib/genwrite$frame0;->staticLink:Lgnu/kawa/slib/genwrite$frame;

    const-string v6, ")"

    iget-object v7, p0, Lgnu/kawa/slib/genwrite$frame0;->staticLink:Lgnu/kawa/slib/genwrite$frame;

    const-string v8, "."

    invoke-virtual {p0, p3, v4}, Lgnu/kawa/slib/genwrite$frame0;->lambda6indent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v7, v8, v4}, Lgnu/kawa/slib/genwrite$frame;->lambda4out(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, p3, v4}, Lgnu/kawa/slib/genwrite$frame0;->lambda6indent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    sget-object v7, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    .line 129
    sget-object v8, Lgnu/kawa/slib/genwrite;->Lit17:Lgnu/math/IntNum;

    invoke-virtual {v7, p4, v8}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p0, p1, v4, v7, p5}, Lgnu/kawa/slib/genwrite$frame0;->lambda7pr(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Lgnu/kawa/slib/genwrite$frame;->lambda4out(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_2
.end method

.method public lambda12ppGeneral(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20
    .parameter "expr"
    .parameter "col"
    .parameter "extra"
    .parameter "named$Qu"
    .parameter "pp$Mn1"
    .parameter "pp$Mn2"
    .parameter "pp$Mn3"

    .prologue
    .line 132
    sget-object v5, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .line 154
    .local v15, head:Ljava/lang/Object;
    sget-object v5, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    .line 153
    .local v17, rest:Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/kawa/slib/genwrite$frame0;->staticLink:Lgnu/kawa/slib/genwrite$frame;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/kawa/slib/genwrite$frame0;->staticLink:Lgnu/kawa/slib/genwrite$frame;

    move-object v6, v0

    const-string v7, "("

    move-object v0, v6

    move-object v1, v7

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lgnu/kawa/slib/genwrite$frame;->lambda4out(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v15, v6}, Lgnu/kawa/slib/genwrite$frame;->lambda5wr(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 156
    .local v12, col$St:Ljava/lang/Object;
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, p4

    move-object v1, v5

    if-eq v0, v1, :cond_3

    invoke-static/range {v17 .. v17}, Lkawa/lib/lists;->isPair(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 157
    :cond_0
    sget-object v5, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    move-object v0, v5

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    .line 158
    .local v16, name:Ljava/lang/Object;
    sget-object v5, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    move-object v0, v5

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    .line 157
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/kawa/slib/genwrite$frame0;->staticLink:Lgnu/kawa/slib/genwrite$frame;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/kawa/slib/genwrite$frame0;->staticLink:Lgnu/kawa/slib/genwrite$frame;

    move-object v6, v0

    const-string v7, " "

    invoke-virtual {v6, v7, v12}, Lgnu/kawa/slib/genwrite$frame;->lambda4out(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v5

    move-object/from16 v1, v16

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lgnu/kawa/slib/genwrite$frame;->lambda5wr(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 160
    .local v13, col$St$St:Ljava/lang/Object;
    sget-object v5, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    .line 194
    sget-object v6, Lgnu/kawa/slib/genwrite;->Lit19:Lgnu/math/IntNum;

    move-object v0, v5

    move-object/from16 v1, p2

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 160
    sget-object v6, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    sget-object v7, Lgnu/kawa/slib/genwrite;->Lit17:Lgnu/math/IntNum;

    invoke-virtual {v6, v13, v7}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v7, v5

    move-object v5, v6

    move-object v6, v13

    .line 134
    .end local v13           #col$St$St:Ljava/lang/Object;
    .end local v16           #name:Ljava/lang/Object;
    :goto_0
    move-object/from16 v11, p0

    .line 135
    .local v11, closureEnv:Lgnu/kawa/slib/genwrite$frame0;
    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, p5

    move-object v1, v8

    if-eq v0, v1, :cond_5

    invoke-static/range {v17 .. v17}, Lkawa/lib/lists;->isPair(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 136
    :cond_1
    sget-object v8, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    move-object v0, v8

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    .line 137
    .local v18, val1:Ljava/lang/Object;
    sget-object v8, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    move-object v0, v8

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    .line 136
    invoke-static/range {v17 .. v17}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    sget-object v8, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    sget-object v9, Lgnu/kawa/slib/genwrite;->Lit17:Lgnu/math/IntNum;

    move-object v0, v8

    move-object/from16 v1, p3

    move-object v2, v9

    invoke-virtual {v0, v1, v2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v14, v8

    .line 139
    .end local p3
    .local v14, extra:Ljava/lang/Object;
    :goto_1
    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lgnu/kawa/slib/genwrite$frame0;->lambda6indent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object v2, v6

    move-object v3, v14

    move-object/from16 v4, p5

    invoke-virtual {v0, v1, v2, v3, v4}, Lgnu/kawa/slib/genwrite$frame0;->lambda7pr(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v8, v17

    .line 142
    .end local v14           #extra:Ljava/lang/Object;
    .end local v18           #val1:Ljava/lang/Object;
    :goto_2
    move-object/from16 v11, p0

    .line 143
    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, p6

    move-object v1, v9

    if-eq v0, v1, :cond_8

    invoke-static {v8}, Lkawa/lib/lists;->isPair(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 144
    :cond_2
    sget-object v9, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    invoke-virtual {v9, v8}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    .line 145
    .restart local v18       #val1:Ljava/lang/Object;
    sget-object v9, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    invoke-virtual {v9, v8}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    .line 144
    invoke-static/range {v17 .. v17}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    sget-object v8, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    sget-object v9, Lgnu/kawa/slib/genwrite;->Lit17:Lgnu/math/IntNum;

    move-object v0, v8

    move-object/from16 v1, p3

    move-object v2, v9

    invoke-virtual {v0, v1, v2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v14, v8

    .line 147
    .restart local v14       #extra:Ljava/lang/Object;
    :goto_3
    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lgnu/kawa/slib/genwrite$frame0;->lambda6indent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object v2, v5

    move-object v3, v14

    move-object/from16 v4, p6

    invoke-virtual {v0, v1, v2, v3, v4}, Lgnu/kawa/slib/genwrite$frame0;->lambda7pr(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v8, v7

    move-object/from16 v6, v17

    move-object v7, v5

    .line 150
    .end local v14           #extra:Ljava/lang/Object;
    .end local v18           #val1:Ljava/lang/Object;
    :goto_4
    move-object/from16 v11, p0

    move-object/from16 v5, p0

    move-object/from16 v9, p3

    move-object/from16 v10, p7

    .line 151
    invoke-virtual/range {v5 .. v10}, Lgnu/kawa/slib/genwrite$frame0;->lambda11ppDown(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 161
    return-object v5

    .line 156
    .end local v11           #closureEnv:Lgnu/kawa/slib/genwrite$frame0;
    .restart local p3
    :cond_3
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, p4

    move-object v1, v5

    if-ne v0, v1, :cond_0

    .line 161
    :cond_4
    sget-object v5, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    .line 194
    sget-object v6, Lgnu/kawa/slib/genwrite;->Lit19:Lgnu/math/IntNum;

    move-object v0, v5

    move-object/from16 v1, p2

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 161
    sget-object v6, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    sget-object v7, Lgnu/kawa/slib/genwrite;->Lit17:Lgnu/math/IntNum;

    invoke-virtual {v6, v12, v7}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v7, v5

    move-object v5, v6

    move-object v6, v12

    goto/16 :goto_0

    .line 135
    .restart local v11       #closureEnv:Lgnu/kawa/slib/genwrite$frame0;
    :cond_5
    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, p5

    move-object v1, v8

    if-ne v0, v1, :cond_1

    :cond_6
    move-object/from16 v8, v17

    .line 140
    goto :goto_2

    .line 136
    .restart local v18       #val1:Ljava/lang/Object;
    :cond_7
    sget-object v8, Lgnu/kawa/slib/genwrite;->Lit1:Lgnu/math/IntNum;

    move-object v14, v8

    goto/16 :goto_1

    .line 143
    .end local v18           #val1:Ljava/lang/Object;
    .end local p3
    :cond_8
    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, p6

    move-object v1, v9

    if-ne v0, v1, :cond_2

    :cond_9
    move-object/from16 v19, v6

    move-object v6, v8

    move-object v8, v7

    move-object/from16 v7, v19

    .line 148
    goto :goto_4

    .line 144
    .restart local v18       #val1:Ljava/lang/Object;
    :cond_a
    sget-object v8, Lgnu/kawa/slib/genwrite;->Lit1:Lgnu/math/IntNum;

    move-object v14, v8

    goto :goto_3
.end method

.method public lambda13ppExprList(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "l"
    .parameter "col"
    .parameter "extra"

    .prologue
    .line 163
    iget-object v0, p0, Lgnu/kawa/slib/genwrite$frame0;->pp$Mnexpr:Lgnu/mapping/Procedure;

    invoke-virtual {p0, p1, p2, p3, v0}, Lgnu/kawa/slib/genwrite$frame0;->lambda10ppList(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public lambda14pp$MnLAMBDA(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .parameter "expr"
    .parameter "col"
    .parameter "extra"

    .prologue
    .line 166
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v5, p0, Lgnu/kawa/slib/genwrite$frame0;->pp$Mnexpr$Mnlist:Lgnu/mapping/Procedure;

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v7, p0, Lgnu/kawa/slib/genwrite$frame0;->pp$Mnexpr:Lgnu/mapping/Procedure;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v7}, Lgnu/kawa/slib/genwrite$frame0;->lambda12ppGeneral(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public lambda15pp$MnIF(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .parameter "expr"
    .parameter "col"
    .parameter "extra"

    .prologue
    .line 169
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v5, p0, Lgnu/kawa/slib/genwrite$frame0;->pp$Mnexpr:Lgnu/mapping/Procedure;

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v7, p0, Lgnu/kawa/slib/genwrite$frame0;->pp$Mnexpr:Lgnu/mapping/Procedure;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v7}, Lgnu/kawa/slib/genwrite$frame0;->lambda12ppGeneral(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public lambda16pp$MnCOND(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "expr"
    .parameter "col"
    .parameter "extra"

    .prologue
    .line 172
    iget-object v0, p0, Lgnu/kawa/slib/genwrite$frame0;->pp$Mnexpr$Mnlist:Lgnu/mapping/Procedure;

    invoke-virtual {p0, p1, p2, p3, v0}, Lgnu/kawa/slib/genwrite$frame0;->lambda9ppCall(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public lambda17pp$MnCASE(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .parameter "expr"
    .parameter "col"
    .parameter "extra"

    .prologue
    .line 175
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v5, p0, Lgnu/kawa/slib/genwrite$frame0;->pp$Mnexpr:Lgnu/mapping/Procedure;

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v7, p0, Lgnu/kawa/slib/genwrite$frame0;->pp$Mnexpr$Mnlist:Lgnu/mapping/Procedure;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v7}, Lgnu/kawa/slib/genwrite$frame0;->lambda12ppGeneral(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public lambda18pp$MnAND(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "expr"
    .parameter "col"
    .parameter "extra"

    .prologue
    .line 178
    iget-object v0, p0, Lgnu/kawa/slib/genwrite$frame0;->pp$Mnexpr:Lgnu/mapping/Procedure;

    invoke-virtual {p0, p1, p2, p3, v0}, Lgnu/kawa/slib/genwrite$frame0;->lambda9ppCall(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public lambda19pp$MnLET(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
    .parameter "expr"
    .parameter "col"
    .parameter "extra"

    .prologue
    .line 181
    sget-object v0, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    invoke-virtual {v0, p1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 183
    .local v9, rest:Ljava/lang/Object;
    invoke-static {v9}, Lkawa/lib/lists;->isPair(Ljava/lang/Object;)Z

    move-result v10

    .local v10, x:Z
    if-eqz v10, :cond_0

    sget-object v0, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    invoke-virtual {v0, v9}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkawa/lib/misc;->isSymbol(Ljava/lang/Object;)Z

    move-result v0

    move v8, v0

    .line 184
    .local v8, named$Qu:Z
    :goto_0
    if-eqz v8, :cond_1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object v4, v0

    :goto_1
    iget-object v5, p0, Lgnu/kawa/slib/genwrite$frame0;->pp$Mnexpr$Mnlist:Lgnu/mapping/Procedure;

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v7, p0, Lgnu/kawa/slib/genwrite$frame0;->pp$Mnexpr:Lgnu/mapping/Procedure;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v7}, Lgnu/kawa/slib/genwrite$frame0;->lambda12ppGeneral(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .end local v8           #named$Qu:Z
    :cond_0
    move v8, v10

    .line 183
    goto :goto_0

    .line 184
    .restart local v8       #named$Qu:Z
    :cond_1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object v4, v0

    goto :goto_1
.end method

.method public lambda20pp$MnBEGIN(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .parameter "expr"
    .parameter "col"
    .parameter "extra"

    .prologue
    .line 186
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v7, p0, Lgnu/kawa/slib/genwrite$frame0;->pp$Mnexpr:Lgnu/mapping/Procedure;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v7}, Lgnu/kawa/slib/genwrite$frame0;->lambda12ppGeneral(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public lambda21pp$MnDO(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .parameter "expr"
    .parameter "col"
    .parameter "extra"

    .prologue
    .line 189
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v5, p0, Lgnu/kawa/slib/genwrite$frame0;->pp$Mnexpr$Mnlist:Lgnu/mapping/Procedure;

    iget-object v6, p0, Lgnu/kawa/slib/genwrite$frame0;->pp$Mnexpr$Mnlist:Lgnu/mapping/Procedure;

    iget-object v7, p0, Lgnu/kawa/slib/genwrite$frame0;->pp$Mnexpr:Lgnu/mapping/Procedure;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v7}, Lgnu/kawa/slib/genwrite$frame0;->lambda12ppGeneral(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public lambda6indent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .parameter "to"
    .parameter "col"

    .prologue
    .line 61
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq p2, v4, :cond_4

    sget-object v4, Lkawa/standard/Scheme;->numLss:Lgnu/kawa/functions/NumberCompare;

    .line 63
    invoke-virtual {v4, p1, p2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v4, v5, :cond_3

    .line 64
    iget-object v4, p0, Lgnu/kawa/slib/genwrite$frame0;->staticLink:Lgnu/kawa/slib/genwrite$frame;

    const/4 v5, 0x1

    sget-object v6, Lgnu/kawa/slib/genwrite;->Lit0:Lgnu/text/Char;

    invoke-static {v5, v6}, Lkawa/lib/strings;->makeString(ILjava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5, p2}, Lgnu/kawa/slib/genwrite$frame;->lambda4out(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .local v3, x:Ljava/lang/Object;
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v3, v4, :cond_2

    sget-object v4, Lgnu/kawa/slib/genwrite;->Lit1:Lgnu/math/IntNum;

    .line 54
    move-object v2, p1

    .local v2, n:Ljava/lang/Object;
    move-object v5, v4

    move-object v4, v2

    .end local v2           #n:Ljava/lang/Object;
    .end local v3           #x:Ljava/lang/Object;
    :goto_0
    move-object v1, p0

    .line 55
    .local v1, closureEnv:Lgnu/kawa/slib/genwrite$frame0;
    sget-object v6, Lkawa/standard/Scheme;->numGrt:Lgnu/kawa/functions/NumberCompare;

    sget-object v7, Lgnu/kawa/slib/genwrite;->Lit1:Lgnu/math/IntNum;

    invoke-virtual {v6, v4, v7}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v6, v7, :cond_1

    .line 56
    sget-object v6, Lkawa/standard/Scheme;->numGrt:Lgnu/kawa/functions/NumberCompare;

    sget-object v7, Lgnu/kawa/slib/genwrite;->Lit15:Lgnu/math/IntNum;

    invoke-virtual {v6, v4, v7}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v6, v7, :cond_0

    .line 57
    sget-object v6, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    sget-object v7, Lgnu/kawa/slib/genwrite;->Lit16:Lgnu/math/IntNum;

    invoke-virtual {v6, v4, v7}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iget-object v4, p0, Lgnu/kawa/slib/genwrite$frame0;->staticLink:Lgnu/kawa/slib/genwrite$frame;

    const-string v6, "        "

    invoke-virtual {v4, v6, v5}, Lgnu/kawa/slib/genwrite$frame;->lambda4out(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .restart local v2       #n:Ljava/lang/Object;
    move-object v5, p2

    move-object v4, v2

    goto :goto_0

    .line 58
    .end local v2           #n:Ljava/lang/Object;
    :cond_0
    iget-object v6, p0, Lgnu/kawa/slib/genwrite$frame0;->staticLink:Lgnu/kawa/slib/genwrite$frame;

    const-string v7, "        "

    const/4 v8, 0x0

    :try_start_0
    move-object v0, v4

    check-cast v0, Ljava/lang/Number;

    move-object p0, v0

    .end local p0
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    invoke-static {v7, v8, v4}, Lkawa/lib/strings;->substring(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v6, v4, v5}, Lgnu/kawa/slib/genwrite$frame;->lambda4out(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 62
    .end local v1           #closureEnv:Lgnu/kawa/slib/genwrite$frame0;
    :goto_1
    return-object v4

    .restart local v1       #closureEnv:Lgnu/kawa/slib/genwrite$frame0;
    .restart local p0
    :cond_1
    move-object v4, v5

    .line 55
    goto :goto_1

    .end local v1           #closureEnv:Lgnu/kawa/slib/genwrite$frame0;
    .restart local v3       #x:Ljava/lang/Object;
    :cond_2
    move-object v4, v3

    .line 64
    goto :goto_1

    .line 65
    .end local v3           #x:Ljava/lang/Object;
    :cond_3
    sget-object v4, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    invoke-virtual {v4, p1, p2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v5, p2

    goto :goto_0

    :cond_4
    move-object v4, p2

    .line 62
    goto :goto_1

    .line 58
    .end local p0
    .restart local v1       #closureEnv:Lgnu/kawa/slib/genwrite$frame0;
    :catch_0
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    const-string v7, "substring"

    const/4 v8, 0x3

    invoke-direct {v6, v5, v7, v8, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6
.end method

.method public lambda7pr(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .parameter "obj"
    .parameter "col"
    .parameter "extra"
    .parameter "pp$Mnpair"

    .prologue
    const/4 v9, 0x1

    .line 67
    new-instance v1, Lgnu/kawa/slib/genwrite$frame1;

    invoke-direct {v1}, Lgnu/kawa/slib/genwrite$frame1;-><init>()V

    iput-object p0, v1, Lgnu/kawa/slib/genwrite$frame1;->staticLink:Lgnu/kawa/slib/genwrite$frame0;

    .line 68
    invoke-static {p1}, Lkawa/lib/lists;->isPair(Ljava/lang/Object;)Z

    move-result v0

    .local v0, x:Z
    if-eqz v0, :cond_1

    if-eqz v0, :cond_2

    .line 69
    :cond_0
    sget-object v2, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    .line 70
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-object v5, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    sget-object v6, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    sget-object v7, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    iget-object v8, p0, Lgnu/kawa/slib/genwrite$frame0;->staticLink:Lgnu/kawa/slib/genwrite$frame;

    iget-object v8, v8, Lgnu/kawa/slib/genwrite$frame;->width:Ljava/lang/Object;

    invoke-virtual {v7, v8, p2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7, p3}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    sget-object v7, Lgnu/kawa/slib/genwrite;->Lit17:Lgnu/math/IntNum;

    invoke-virtual {v5, v6, v7}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    sget-object v4, Lgnu/kawa/slib/genwrite;->Lit18:Lgnu/math/IntNum;

    aput-object v4, v3, v9

    invoke-static {v3}, Lkawa/lib/numbers;->min([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v1, Lgnu/kawa/slib/genwrite$frame1;->left:Ljava/lang/Object;

    iput-object v2, v1, Lgnu/kawa/slib/genwrite$frame1;->result:Ljava/lang/Object;

    .line 71
    iget-object v2, p0, Lgnu/kawa/slib/genwrite$frame0;->staticLink:Lgnu/kawa/slib/genwrite$frame;

    iget-object v2, v2, Lgnu/kawa/slib/genwrite$frame;->display$Qu:Ljava/lang/Object;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v4, v1, Lgnu/kawa/slib/genwrite$frame1;->lambda$Fn1:Lgnu/expr/ModuleMethod;

    invoke-static {p1, v2, v3, v4}, Lgnu/kawa/slib/genwrite;->genericWrite(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lkawa/standard/Scheme;->numGrt:Lgnu/kawa/functions/NumberCompare;

    .line 76
    iget-object v3, v1, Lgnu/kawa/slib/genwrite$frame1;->left:Ljava/lang/Object;

    sget-object v4, Lgnu/kawa/slib/genwrite;->Lit1:Lgnu/math/IntNum;

    invoke-virtual {v2, v3, v4}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v2, v3, :cond_3

    .line 77
    iget-object v2, p0, Lgnu/kawa/slib/genwrite$frame0;->staticLink:Lgnu/kawa/slib/genwrite$frame;

    iget-object v1, v1, Lgnu/kawa/slib/genwrite$frame1;->result:Ljava/lang/Object;

    invoke-static {v1}, Lgnu/kawa/slib/genwrite;->reverseStringAppend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1, p2}, Lgnu/kawa/slib/genwrite$frame;->lambda4out(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 81
    .end local p1
    :goto_0
    return-object v1

    .line 68
    .restart local p1
    :cond_1
    invoke-static {p1}, Lkawa/lib/vectors;->isVector(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 81
    :cond_2
    iget-object v1, p0, Lgnu/kawa/slib/genwrite$frame0;->staticLink:Lgnu/kawa/slib/genwrite$frame;

    invoke-virtual {v1, p1, p2}, Lgnu/kawa/slib/genwrite$frame;->lambda5wr(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 78
    :cond_3
    invoke-static {p1}, Lkawa/lib/lists;->isPair(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 79
    sget-object v1, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    invoke-virtual {v1, p4, p1, p2, p3}, Lgnu/mapping/Procedure;->apply4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 80
    :cond_4
    :try_start_0
    check-cast p1, Lgnu/lists/FVector;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .end local p1
    invoke-static {p1}, Lkawa/lib/vectors;->vector$To$List(Lgnu/lists/FVector;)Lgnu/lists/LList;

    move-result-object v1

    iget-object v2, p0, Lgnu/kawa/slib/genwrite$frame0;->staticLink:Lgnu/kawa/slib/genwrite$frame;

    const-string v3, "#"

    invoke-virtual {v2, v3, p2}, Lgnu/kawa/slib/genwrite$frame;->lambda4out(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lgnu/kawa/slib/genwrite$frame0;->pp$Mnexpr:Lgnu/mapping/Procedure;

    invoke-virtual {p0, v1, v2, p3, v3}, Lgnu/kawa/slib/genwrite$frame0;->lambda10ppList(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .restart local p1
    :catch_0
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "vector->list"

    invoke-direct {v2, v1, v3, v9, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2
.end method

.method public lambda8ppExpr(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
    .parameter "expr"
    .parameter "col"
    .parameter "extra"

    .prologue
    .line 83
    invoke-static {p1}, Lgnu/kawa/slib/genwrite$frame;->lambda1isReadMacro(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v0, v1, :cond_0

    .line 85
    invoke-static {p1}, Lgnu/kawa/slib/genwrite$frame;->lambda2readMacroBody(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lgnu/kawa/slib/genwrite$frame0;->staticLink:Lgnu/kawa/slib/genwrite$frame;

    invoke-static {p1}, Lgnu/kawa/slib/genwrite$frame;->lambda3readMacroPrefix(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lgnu/kawa/slib/genwrite$frame;->lambda4out(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lgnu/kawa/slib/genwrite$frame0;->pp$Mnexpr:Lgnu/mapping/Procedure;

    invoke-virtual {p0, v0, v1, p3, v2}, Lgnu/kawa/slib/genwrite$frame0;->lambda7pr(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 98
    :goto_0
    return-object v0

    .line 89
    :cond_0
    sget-object v0, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    invoke-virtual {v0, p1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 90
    .local v8, head:Ljava/lang/Object;
    invoke-static {v8}, Lkawa/lib/misc;->isSymbol(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 201
    sget-object v0, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    sget-object v1, Lgnu/kawa/slib/genwrite;->Lit2:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {v0, v8, v1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .local v10, x:Ljava/lang/Object;
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v10, v0, :cond_2

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v10, v0, :cond_3

    .line 202
    :cond_1
    :goto_1
    iget-object v0, p0, Lgnu/kawa/slib/genwrite$frame0;->pp$MnLAMBDA:Lgnu/mapping/Procedure;

    move-object v9, v0

    .line 92
    .local v9, proc:Ljava/lang/Object;
    :goto_2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v9, v0, :cond_11

    .line 93
    sget-object v0, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    invoke-virtual {v0, v9, p1, p2, p3}, Lgnu/mapping/Procedure;->apply4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 201
    .end local v9           #proc:Ljava/lang/Object;
    :cond_2
    sget-object v0, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    sget-object v1, Lgnu/kawa/slib/genwrite;->Lit3:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {v0, v8, v1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v10, v0, :cond_5

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v10, v0, :cond_1

    .line 202
    :cond_3
    sget-object v0, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 201
    sget-object v1, Lgnu/kawa/slib/genwrite;->Lit6:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {v0, v8, v1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v10, v0, :cond_7

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v10, v0, :cond_8

    .line 203
    :cond_4
    iget-object v0, p0, Lgnu/kawa/slib/genwrite$frame0;->pp$MnIF:Lgnu/mapping/Procedure;

    move-object v9, v0

    goto :goto_2

    .line 201
    :cond_5
    sget-object v0, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    sget-object v1, Lgnu/kawa/slib/genwrite;->Lit4:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {v0, v8, v1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v10, v0, :cond_6

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v10, v0, :cond_3

    goto :goto_1

    :cond_6
    sget-object v0, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    sget-object v1, Lgnu/kawa/slib/genwrite;->Lit5:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {v0, v8, v1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v0, v1, :cond_3

    goto :goto_1

    :cond_7
    sget-object v0, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    sget-object v1, Lgnu/kawa/slib/genwrite;->Lit7:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {v0, v8, v1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v0, v1, :cond_4

    .line 203
    :cond_8
    sget-object v0, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 201
    sget-object v1, Lgnu/kawa/slib/genwrite;->Lit8:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {v0, v8, v1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v0, v1, :cond_9

    .line 204
    iget-object v0, p0, Lgnu/kawa/slib/genwrite$frame0;->pp$MnCOND:Lgnu/mapping/Procedure;

    move-object v9, v0

    goto :goto_2

    :cond_9
    sget-object v0, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 201
    sget-object v1, Lgnu/kawa/slib/genwrite;->Lit9:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {v0, v8, v1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v0, v1, :cond_a

    .line 205
    iget-object v0, p0, Lgnu/kawa/slib/genwrite$frame0;->pp$MnCASE:Lgnu/mapping/Procedure;

    move-object v9, v0

    goto :goto_2

    :cond_a
    sget-object v0, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 201
    sget-object v1, Lgnu/kawa/slib/genwrite;->Lit10:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {v0, v8, v1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v10, v0, :cond_c

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v10, v0, :cond_d

    .line 206
    :cond_b
    iget-object v0, p0, Lgnu/kawa/slib/genwrite$frame0;->pp$MnAND:Lgnu/mapping/Procedure;

    move-object v9, v0

    goto/16 :goto_2

    .line 201
    :cond_c
    sget-object v0, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    sget-object v1, Lgnu/kawa/slib/genwrite;->Lit11:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {v0, v8, v1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v0, v1, :cond_b

    .line 206
    :cond_d
    sget-object v0, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 201
    sget-object v1, Lgnu/kawa/slib/genwrite;->Lit12:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {v0, v8, v1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v0, v1, :cond_e

    .line 207
    iget-object v0, p0, Lgnu/kawa/slib/genwrite$frame0;->pp$MnLET:Lgnu/mapping/Procedure;

    move-object v9, v0

    goto/16 :goto_2

    :cond_e
    sget-object v0, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 201
    sget-object v1, Lgnu/kawa/slib/genwrite;->Lit13:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {v0, v8, v1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v0, v1, :cond_f

    .line 208
    iget-object v0, p0, Lgnu/kawa/slib/genwrite$frame0;->pp$MnBEGIN:Lgnu/mapping/Procedure;

    move-object v9, v0

    goto/16 :goto_2

    :cond_f
    sget-object v0, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 201
    sget-object v1, Lgnu/kawa/slib/genwrite;->Lit14:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {v0, v8, v1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v0, v1, :cond_10

    .line 209
    iget-object v0, p0, Lgnu/kawa/slib/genwrite$frame0;->pp$MnDO:Lgnu/mapping/Procedure;

    move-object v9, v0

    goto/16 :goto_2

    :cond_10
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object v9, v0

    goto/16 :goto_2

    .line 94
    .restart local v9       #proc:Ljava/lang/Object;
    :cond_11
    :try_start_0
    check-cast v8, Lgnu/mapping/Symbol;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v8           #head:Ljava/lang/Object;
    invoke-static {v8}, Lkawa/lib/misc;->symbol$To$String(Lgnu/mapping/Symbol;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_12

    .line 96
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v7, p0, Lgnu/kawa/slib/genwrite$frame0;->pp$Mnexpr:Lgnu/mapping/Procedure;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v7}, Lgnu/kawa/slib/genwrite$frame0;->lambda12ppGeneral(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    .line 97
    :cond_12
    iget-object v0, p0, Lgnu/kawa/slib/genwrite$frame0;->pp$Mnexpr:Lgnu/mapping/Procedure;

    invoke-virtual {p0, p1, p2, p3, v0}, Lgnu/kawa/slib/genwrite$frame0;->lambda9ppCall(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    .line 98
    .end local v9           #proc:Ljava/lang/Object;
    .end local v10           #x:Ljava/lang/Object;
    .restart local v8       #head:Ljava/lang/Object;
    :cond_13
    iget-object v0, p0, Lgnu/kawa/slib/genwrite$frame0;->pp$Mnexpr:Lgnu/mapping/Procedure;

    invoke-virtual {p0, p1, p2, p3, v0}, Lgnu/kawa/slib/genwrite$frame0;->lambda10ppList(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    .line 94
    .restart local v9       #proc:Ljava/lang/Object;
    .restart local v10       #x:Ljava/lang/Object;
    :catch_0
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "symbol->string"

    const/4 v3, 0x1

    invoke-direct {v1, v0, v2, v3, v8}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1
.end method

.method public lambda9ppCall(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .parameter "expr"
    .parameter "col"
    .parameter "extra"
    .parameter "pp$Mnitem"

    .prologue
    .line 103
    iget-object v0, p0, Lgnu/kawa/slib/genwrite$frame0;->staticLink:Lgnu/kawa/slib/genwrite$frame;

    sget-object v1, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    invoke-virtual {v1, p1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v3, p0, Lgnu/kawa/slib/genwrite$frame0;->staticLink:Lgnu/kawa/slib/genwrite$frame;

    const-string v4, "("

    invoke-virtual {v3, v4, p2}, Lgnu/kawa/slib/genwrite$frame;->lambda4out(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lgnu/kawa/slib/genwrite$frame;->lambda5wr(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 105
    .local v2, col$St:Ljava/lang/Object;
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq p2, v0, :cond_0

    sget-object v0, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    .line 106
    invoke-virtual {v0, p1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v0, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    sget-object v3, Lgnu/kawa/slib/genwrite;->Lit17:Lgnu/math/IntNum;

    invoke-virtual {v0, v2, v3}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, p0

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lgnu/kawa/slib/genwrite$frame0;->lambda11ppDown(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 105
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p2

    goto :goto_0
.end method

.method public match3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x0

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v0, :pswitch_data_0

    .line 83
    invoke-super/range {p0 .. p5}, Lgnu/expr/ModuleBody;->match3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    .line 189
    :goto_0
    return v0

    :pswitch_0
    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p5, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 186
    :pswitch_1
    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p5, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 181
    :pswitch_2
    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p5, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 178
    :pswitch_3
    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p5, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 175
    :pswitch_4
    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p5, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 172
    :pswitch_5
    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p5, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 169
    :pswitch_6
    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p5, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 166
    :pswitch_7
    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p5, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 163
    :pswitch_8
    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p5, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 83
    :pswitch_9
    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p5, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line -1
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
