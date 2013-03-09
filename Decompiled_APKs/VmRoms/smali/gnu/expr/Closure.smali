.class Lgnu/expr/Closure;
.super Lgnu/mapping/MethodProc;
.source "LambdaExp.java"


# instance fields
.field evalFrames:[[Ljava/lang/Object;

.field lambda:Lgnu/expr/LambdaExp;


# direct methods
.method public constructor <init>(Lgnu/expr/LambdaExp;Lgnu/mapping/CallContext;)V
    .locals 4
    .parameter "lexp"
    .parameter "ctx"

    .prologue
    const/4 v3, 0x0

    .line 1973
    invoke-direct {p0}, Lgnu/mapping/MethodProc;-><init>()V

    .line 1974
    iput-object p1, p0, Lgnu/expr/Closure;->lambda:Lgnu/expr/LambdaExp;

    .line 1976
    iget-object v1, p2, Lgnu/mapping/CallContext;->evalFrames:[[Ljava/lang/Object;

    .line 1977
    .local v1, oldFrames:[[Ljava/lang/Object;
    if-eqz v1, :cond_1

    .line 1979
    array-length v0, v1

    .line 1980
    .local v0, n:I
    :goto_0
    if-lez v0, :cond_0

    const/4 v2, 0x1

    sub-int v2, v0, v2

    aget-object v2, v1, v2

    if-nez v2, :cond_0

    .line 1981
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1983
    :cond_0
    new-array v2, v0, [[Ljava/lang/Object;

    iput-object v2, p0, Lgnu/expr/Closure;->evalFrames:[[Ljava/lang/Object;

    .line 1984
    iget-object v2, p0, Lgnu/expr/Closure;->evalFrames:[[Ljava/lang/Object;

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1986
    .end local v0           #n:I
    :cond_1
    iget-object v2, p0, Lgnu/expr/Closure;->lambda:Lgnu/expr/LambdaExp;

    invoke-virtual {v2}, Lgnu/expr/LambdaExp;->getSymbol()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lgnu/expr/Closure;->setSymbol(Ljava/lang/Object;)V

    .line 1987
    return-void
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 11
    .parameter "ctx"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 2120
    iget-object v8, p0, Lgnu/expr/Closure;->lambda:Lgnu/expr/LambdaExp;

    invoke-static {v8}, Lgnu/expr/ScopeExp;->nesting(Lgnu/expr/ScopeExp;)I

    move-result v1

    .line 2121
    .local v1, level:I
    iget-object v0, p1, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    .line 2122
    .local v0, evalFrame:[Ljava/lang/Object;
    iget-object v6, p1, Lgnu/mapping/CallContext;->evalFrames:[[Ljava/lang/Object;

    .line 2124
    .local v6, saveFrames:[[Ljava/lang/Object;
    iget-object v8, p0, Lgnu/expr/Closure;->evalFrames:[[Ljava/lang/Object;

    if-nez v8, :cond_4

    move v5, v10

    .line 2125
    .local v5, numFrames:I
    :goto_0
    if-lt v1, v5, :cond_0

    .line 2126
    move v5, v1

    .line 2127
    :cond_0
    add-int/lit8 v5, v5, 0xa

    .line 2128
    new-array v4, v5, [[Ljava/lang/Object;

    .line 2129
    .local v4, newFrames:[[Ljava/lang/Object;
    iget-object v8, p0, Lgnu/expr/Closure;->evalFrames:[[Ljava/lang/Object;

    if-eqz v8, :cond_1

    .line 2130
    iget-object v8, p0, Lgnu/expr/Closure;->evalFrames:[[Ljava/lang/Object;

    iget-object v9, p0, Lgnu/expr/Closure;->evalFrames:[[Ljava/lang/Object;

    array-length v9, v9

    invoke-static {v8, v10, v4, v10, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2131
    :cond_1
    aput-object v0, v4, v1

    .line 2132
    iput-object v4, p1, Lgnu/mapping/CallContext;->evalFrames:[[Ljava/lang/Object;

    .line 2136
    :try_start_0
    iget-object v8, p0, Lgnu/expr/Closure;->lambda:Lgnu/expr/LambdaExp;

    iget-object v8, v8, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    if-nez v8, :cond_5

    .line 2140
    new-instance v7, Ljava/lang/StringBuffer;

    const-string v8, "procedure "

    invoke-direct {v7, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 2141
    .local v7, sbuf:Ljava/lang/StringBuffer;
    iget-object v8, p0, Lgnu/expr/Closure;->lambda:Lgnu/expr/LambdaExp;

    invoke-virtual {v8}, Lgnu/expr/LambdaExp;->getName()Ljava/lang/String;

    move-result-object v3

    .line 2142
    .local v3, name:Ljava/lang/String;
    if-nez v3, :cond_2

    .line 2143
    const-string v3, "<anonymous>"

    .line 2144
    :cond_2
    invoke-virtual {v7, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2145
    iget-object v8, p0, Lgnu/expr/Closure;->lambda:Lgnu/expr/LambdaExp;

    invoke-virtual {v8}, Lgnu/expr/LambdaExp;->getLineNumber()I

    move-result v2

    .line 2146
    .local v2, line:I
    if-lez v2, :cond_3

    .line 2148
    const-string v8, " at line "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2149
    invoke-virtual {v7, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 2151
    :cond_3
    const-string v8, " was called before it was expanded"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2152
    new-instance v8, Ljava/lang/RuntimeException;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2158
    .end local v2           #line:I
    .end local v3           #name:Ljava/lang/String;
    .end local v7           #sbuf:Ljava/lang/StringBuffer;
    :catchall_0
    move-exception v8

    iput-object v6, p1, Lgnu/mapping/CallContext;->evalFrames:[[Ljava/lang/Object;

    throw v8

    .line 2124
    .end local v4           #newFrames:[[Ljava/lang/Object;
    .end local v5           #numFrames:I
    :cond_4
    iget-object v8, p0, Lgnu/expr/Closure;->evalFrames:[[Ljava/lang/Object;

    array-length v8, v8

    move v5, v8

    goto :goto_0

    .line 2154
    .restart local v4       #newFrames:[[Ljava/lang/Object;
    .restart local v5       #numFrames:I
    :cond_5
    :try_start_1
    iget-object v8, p0, Lgnu/expr/Closure;->lambda:Lgnu/expr/LambdaExp;

    iget-object v8, v8, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    invoke-virtual {v8, p1}, Lgnu/expr/Expression;->apply(Lgnu/mapping/CallContext;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2158
    iput-object v6, p1, Lgnu/mapping/CallContext;->evalFrames:[[Ljava/lang/Object;

    .line 2160
    return-void
.end method

.method public getProperty(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 2164
    invoke-super {p0, p1, p2}, Lgnu/mapping/MethodProc;->getProperty(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2165
    .local v0, value:Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 2166
    iget-object v1, p0, Lgnu/expr/Closure;->lambda:Lgnu/expr/LambdaExp;

    invoke-virtual {v1, p1, p2}, Lgnu/expr/LambdaExp;->getProperty(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2167
    :cond_0
    return-object v0
.end method

.method public match0(Lgnu/mapping/CallContext;)I
    .locals 1
    .parameter "ctx"

    .prologue
    .line 1991
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0, p1}, Lgnu/expr/Closure;->matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    return v0
.end method

.method public match1(Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 2
    .parameter "arg1"
    .parameter "ctx"

    .prologue
    .line 1996
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0, p2}, Lgnu/expr/Closure;->matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    return v0
.end method

.method public match2(Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 2
    .parameter "arg1"
    .parameter "arg2"
    .parameter "ctx"

    .prologue
    .line 2001
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-virtual {p0, v0, p3}, Lgnu/expr/Closure;->matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    return v0
.end method

.method public match3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 2
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .parameter "ctx"

    .prologue
    .line 2006
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    invoke-virtual {p0, v0, p4}, Lgnu/expr/Closure;->matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    return v0
.end method

.method public match4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 2
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .parameter "arg4"
    .parameter "ctx"

    .prologue
    .line 2012
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const/4 v1, 0x3

    aput-object p4, v0, v1

    invoke-virtual {p0, v0, p5}, Lgnu/expr/Closure;->matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    return v0
.end method

.method public matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 32
    .parameter "args"
    .parameter "ctx"

    .prologue
    .line 2017
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/Closure;->numArgs()I

    move-result v24

    .line 2018
    .local v24, num:I
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v23, v0

    .line 2019
    .local v23, nargs:I
    move/from16 v0, v24

    and-int/lit16 v0, v0, 0xfff

    move/from16 v21, v0

    .line 2020
    .local v21, min:I
    move/from16 v0, v23

    move/from16 v1, v21

    if-ge v0, v1, :cond_0

    .line 2021
    const/high16 v30, -0xf

    or-int v30, v30, v21

    .line 2115
    :goto_0
    return v30

    .line 2022
    :cond_0
    shr-int/lit8 v20, v24, 0xc

    .line 2023
    .local v20, max:I
    move/from16 v0, v23

    move/from16 v1, v20

    if-le v0, v1, :cond_1

    if-ltz v20, :cond_1

    .line 2024
    const/high16 v30, -0xe

    or-int v30, v30, v20

    goto :goto_0

    .line 2026
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Closure;->lambda:Lgnu/expr/LambdaExp;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lgnu/expr/LambdaExp;->frameSize:I

    move/from16 v30, v0

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object v9, v0

    .line 2027
    .local v9, evalFrame:[Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Closure;->lambda:Lgnu/expr/LambdaExp;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lgnu/expr/LambdaExp;->keywords:[Lgnu/expr/Keyword;

    move-object/from16 v30, v0

    if-nez v30, :cond_4

    const/16 v30, 0x0

    move/from16 v14, v30

    .line 2028
    .local v14, key_args:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Closure;->lambda:Lgnu/expr/LambdaExp;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lgnu/expr/LambdaExp;->defaultArgs:[Lgnu/expr/Expression;

    move-object/from16 v30, v0

    if-nez v30, :cond_5

    const/16 v30, 0x0

    move/from16 v25, v30

    .line 2030
    .local v25, opt_args:I
    :goto_2
    const/4 v11, 0x0

    .line 2031
    .local v11, i:I
    const/16 v26, 0x0

    .line 2032
    .local v26, opt_i:I
    const/4 v15, 0x0

    .line 2033
    .local v15, key_i:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Closure;->lambda:Lgnu/expr/LambdaExp;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lgnu/expr/LambdaExp;->min_args:I

    move/from16 v22, v0

    .line 2034
    .local v22, min_args:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Closure;->lambda:Lgnu/expr/LambdaExp;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v5

    .local v5, decl:Lgnu/expr/Declaration;
    move/from16 v16, v15

    .end local v15           #key_i:I
    .local v16, key_i:I
    move v12, v11

    .end local v11           #i:I
    .local v12, i:I
    :goto_3
    if-eqz v5, :cond_e

    .line 2038
    move v0, v12

    move/from16 v1, v22

    if-ge v0, v1, :cond_6

    .line 2039
    add-int/lit8 v11, v12, 0x1

    .end local v12           #i:I
    .restart local v11       #i:I
    aget-object v29, p1, v12

    .local v29, value:Ljava/lang/Object;
    move-object/from16 v30, v29

    move/from16 v15, v16

    .line 2092
    .end local v16           #key_i:I
    .end local v29           #value:Ljava/lang/Object;
    .restart local v15       #key_i:I
    :goto_4
    move-object v0, v5

    iget-object v0, v0, Lgnu/expr/Declaration;->type:Lgnu/bytecode/Type;

    move-object/from16 v31, v0

    if-eqz v31, :cond_2

    .line 2096
    :try_start_0
    move-object v0, v5

    iget-object v0, v0, Lgnu/expr/Declaration;->type:Lgnu/bytecode/Type;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lgnu/bytecode/Type;->coerceFromObject(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v29

    .restart local v29       #value:Ljava/lang/Object;
    move-object/from16 v30, v29

    .line 2103
    .end local v29           #value:Ljava/lang/Object;
    :cond_2
    invoke-virtual {v5}, Lgnu/expr/Declaration;->isIndirectBinding()Z

    move-result v31

    if-eqz v31, :cond_3

    .line 2105
    invoke-virtual {v5}, Lgnu/expr/Declaration;->makeIndirectLocationFor()Lgnu/mapping/Location;

    move-result-object v19

    .line 2106
    .local v19, loc:Lgnu/mapping/Location;
    move-object/from16 v0, v19

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lgnu/mapping/Location;->set(Ljava/lang/Object;)V

    .line 2107
    move-object/from16 v29, v19

    .local v29, value:Lgnu/mapping/Location;
    move-object/from16 v30, v29

    .line 2109
    .end local v19           #loc:Lgnu/mapping/Location;
    .end local v29           #value:Lgnu/mapping/Location;
    :cond_3
    move-object v0, v5

    iget v0, v0, Lgnu/expr/Declaration;->evalIndex:I

    move/from16 v31, v0

    aput-object v30, v9, v31

    .line 2035
    invoke-virtual {v5}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v5

    move/from16 v16, v15

    .end local v15           #key_i:I
    .restart local v16       #key_i:I
    move v12, v11

    .end local v11           #i:I
    .restart local v12       #i:I
    goto :goto_3

    .line 2027
    .end local v5           #decl:Lgnu/expr/Declaration;
    .end local v12           #i:I
    .end local v14           #key_args:I
    .end local v16           #key_i:I
    .end local v22           #min_args:I
    .end local v25           #opt_args:I
    .end local v26           #opt_i:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Closure;->lambda:Lgnu/expr/LambdaExp;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lgnu/expr/LambdaExp;->keywords:[Lgnu/expr/Keyword;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v30, v0

    move/from16 v14, v30

    goto/16 :goto_1

    .line 2028
    .restart local v14       #key_args:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Closure;->lambda:Lgnu/expr/LambdaExp;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lgnu/expr/LambdaExp;->defaultArgs:[Lgnu/expr/Expression;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v30, v0

    sub-int v30, v30, v14

    move/from16 v25, v30

    goto/16 :goto_2

    .line 2040
    .restart local v5       #decl:Lgnu/expr/Declaration;
    .restart local v12       #i:I
    .restart local v16       #key_i:I
    .restart local v22       #min_args:I
    .restart local v25       #opt_args:I
    .restart local v26       #opt_i:I
    :cond_6
    add-int v30, v22, v25

    move v0, v12

    move/from16 v1, v30

    if-ge v0, v1, :cond_8

    .line 2042
    move v0, v12

    move/from16 v1, v23

    if-ge v0, v1, :cond_7

    .line 2043
    add-int/lit8 v11, v12, 0x1

    .end local v12           #i:I
    .restart local v11       #i:I
    aget-object v29, p1, v12

    .line 2046
    .local v29, value:Ljava/lang/Object;
    :goto_5
    add-int/lit8 v26, v26, 0x1

    move-object/from16 v30, v29

    move/from16 v15, v16

    .end local v16           #key_i:I
    .restart local v15       #key_i:I
    goto :goto_4

    .line 2045
    .end local v11           #i:I
    .end local v15           #key_i:I
    .end local v29           #value:Ljava/lang/Object;
    .restart local v12       #i:I
    .restart local v16       #key_i:I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Closure;->lambda:Lgnu/expr/LambdaExp;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v26

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lgnu/expr/LambdaExp;->evalDefaultArg(ILgnu/mapping/CallContext;)Ljava/lang/Object;

    move-result-object v29

    .restart local v29       #value:Ljava/lang/Object;
    move v11, v12

    .end local v12           #i:I
    .restart local v11       #i:I
    goto :goto_5

    .line 2048
    .end local v11           #i:I
    .end local v29           #value:Ljava/lang/Object;
    .restart local v12       #i:I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Closure;->lambda:Lgnu/expr/LambdaExp;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lgnu/expr/LambdaExp;->max_args:I

    move/from16 v30, v0

    if-gez v30, :cond_c

    add-int v30, v22, v25

    move v0, v12

    move/from16 v1, v30

    if-ne v0, v1, :cond_c

    .line 2050
    move-object v0, v5

    iget-object v0, v0, Lgnu/expr/Declaration;->type:Lgnu/bytecode/Type;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    instance-of v0, v0, Lgnu/bytecode/ArrayType;

    move/from16 v30, v0

    if-eqz v30, :cond_b

    .line 2052
    sub-int v27, v23, v12

    .line 2053
    .local v27, rem:I
    iget-object v6, v5, Lgnu/expr/Declaration;->type:Lgnu/bytecode/Type;

    check-cast v6, Lgnu/bytecode/ArrayType;

    invoke-virtual {v6}, Lgnu/bytecode/ArrayType;->getComponentType()Lgnu/bytecode/Type;

    move-result-object v8

    .line 2054
    .local v8, elementType:Lgnu/bytecode/Type;
    sget-object v30, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    move-object v0, v8

    move-object/from16 v1, v30

    if-ne v0, v1, :cond_a

    .line 2056
    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    .line 2057
    .local v28, rest:[Ljava/lang/Object;
    const/16 v30, 0x0

    move-object/from16 v0, p1

    move v1, v12

    move-object/from16 v2, v28

    move/from16 v3, v30

    move/from16 v4, v27

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2058
    move-object/from16 v29, v28

    .end local v28           #rest:[Ljava/lang/Object;
    :cond_9
    move-object/from16 v30, v29

    move/from16 v15, v16

    .end local v16           #key_i:I
    .restart local v15       #key_i:I
    move v11, v12

    .line 2079
    .end local v12           #i:I
    .restart local v11       #i:I
    goto/16 :goto_4

    .line 2062
    .end local v11           #i:I
    .end local v15           #key_i:I
    .restart local v12       #i:I
    .restart local v16       #key_i:I
    :cond_a
    invoke-virtual {v8}, Lgnu/bytecode/Type;->getReflectClass()Ljava/lang/Class;

    move-result-object v7

    .line 2063
    .local v7, elementClass:Ljava/lang/Class;
    move-object v0, v7

    move/from16 v1, v27

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v29

    .line 2065
    .restart local v29       #value:Ljava/lang/Object;
    const/4 v13, 0x0

    .local v13, j:I
    :goto_6
    move v0, v13

    move/from16 v1, v27

    if-ge v0, v1, :cond_9

    .line 2070
    add-int v30, v12, v13

    :try_start_1
    aget-object v30, p1, v30

    move-object v0, v8

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lgnu/bytecode/Type;->coerceFromObject(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    .line 2076
    .local v6, el:Ljava/lang/Object;
    move-object/from16 v0, v29

    move v1, v13

    move-object v2, v6

    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 2065
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    .line 2072
    .end local v6           #el:Ljava/lang/Object;
    :catch_0
    move-exception v30

    move-object/from16 v10, v30

    .line 2074
    .local v10, ex:Ljava/lang/ClassCastException;
    const/high16 v30, -0xc

    add-int v31, v12, v13

    or-int v30, v30, v31

    goto/16 :goto_0

    .line 2081
    .end local v7           #elementClass:Ljava/lang/Class;
    .end local v8           #elementType:Lgnu/bytecode/Type;
    .end local v10           #ex:Ljava/lang/ClassCastException;
    .end local v13           #j:I
    .end local v27           #rem:I
    .end local v29           #value:Ljava/lang/Object;
    :cond_b
    move-object/from16 v0, p1

    move v1, v12

    invoke-static {v0, v1}, Lgnu/lists/LList;->makeList([Ljava/lang/Object;I)Lgnu/lists/LList;

    move-result-object v29

    .local v29, value:Lgnu/lists/LList;
    move-object/from16 v30, v29

    move/from16 v15, v16

    .end local v16           #key_i:I
    .restart local v15       #key_i:I
    move v11, v12

    .end local v12           #i:I
    .restart local v11       #i:I
    goto/16 :goto_4

    .line 2085
    .end local v11           #i:I
    .end local v15           #key_i:I
    .end local v29           #value:Lgnu/lists/LList;
    .restart local v12       #i:I
    .restart local v16       #key_i:I
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Closure;->lambda:Lgnu/expr/LambdaExp;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lgnu/expr/LambdaExp;->keywords:[Lgnu/expr/Keyword;

    move-object/from16 v30, v0

    add-int/lit8 v15, v16, 0x1

    .end local v16           #key_i:I
    .restart local v15       #key_i:I
    aget-object v18, v30, v16

    .line 2086
    .local v18, keyword:Lgnu/expr/Keyword;
    add-int v17, v22, v25

    .line 2087
    .local v17, key_offset:I
    move-object/from16 v0, p1

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lgnu/expr/Keyword;->searchForKeyword([Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    .line 2088
    .local v29, value:Ljava/lang/Object;
    sget-object v30, Lgnu/expr/Special;->dfault:Lgnu/expr/Special;

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    if-ne v0, v1, :cond_d

    .line 2089
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Closure;->lambda:Lgnu/expr/LambdaExp;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v26

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lgnu/expr/LambdaExp;->evalDefaultArg(ILgnu/mapping/CallContext;)Ljava/lang/Object;

    move-result-object v29

    .line 2090
    :cond_d
    add-int/lit8 v26, v26, 0x1

    move-object/from16 v30, v29

    move v11, v12

    .end local v12           #i:I
    .restart local v11       #i:I
    goto/16 :goto_4

    .line 2098
    .end local v17           #key_offset:I
    .end local v18           #keyword:Lgnu/expr/Keyword;
    .end local v29           #value:Ljava/lang/Object;
    :catch_1
    move-exception v30

    move-object/from16 v10, v30

    .line 2100
    .restart local v10       #ex:Ljava/lang/ClassCastException;
    const/high16 v30, -0xc

    or-int v30, v30, v11

    goto/16 :goto_0

    .line 2111
    .end local v10           #ex:Ljava/lang/ClassCastException;
    .end local v11           #i:I
    .end local v15           #key_i:I
    .restart local v12       #i:I
    .restart local v16       #key_i:I
    :cond_e
    move-object v0, v9

    move-object/from16 v1, p2

    iput-object v0, v1, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    .line 2112
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p2

    iput v0, v1, Lgnu/mapping/CallContext;->where:I

    .line 2113
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p2

    iput v0, v1, Lgnu/mapping/CallContext;->next:I

    .line 2114
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iput-object v0, v1, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    .line 2115
    const/16 v30, 0x0

    goto/16 :goto_0
.end method

.method public numArgs()I
    .locals 2

    .prologue
    .line 1970
    iget-object v0, p0, Lgnu/expr/Closure;->lambda:Lgnu/expr/LambdaExp;

    iget v0, v0, Lgnu/expr/LambdaExp;->min_args:I

    iget-object v1, p0, Lgnu/expr/Closure;->lambda:Lgnu/expr/LambdaExp;

    iget v1, v1, Lgnu/expr/LambdaExp;->max_args:I

    shl-int/lit8 v1, v1, 0xc

    or-int/2addr v0, v1

    return v0
.end method
