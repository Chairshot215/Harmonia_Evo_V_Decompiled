.class public abstract Lgnu/expr/ModuleBody;
.super Lgnu/mapping/Procedure0;
.source "ModuleBody.java"


# static fields
.field private static exitCounter:I

.field private static mainPrintValues:Z


# instance fields
.field protected runDone:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lgnu/mapping/Procedure0;-><init>()V

    return-void
.end method

.method public static declared-synchronized exitDecrement()V
    .locals 3

    .prologue
    .line 115
    const-class v1, Lgnu/expr/ModuleBody;

    monitor-enter v1

    :try_start_0
    sget v0, Lgnu/expr/ModuleBody;->exitCounter:I

    .line 116
    .local v0, counter:I
    if-lez v0, :cond_0

    .line 118
    add-int/lit8 v0, v0, -0x1

    .line 119
    if-nez v0, :cond_1

    .line 121
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/System;->exit(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    .line 124
    :cond_1
    :try_start_1
    sput v0, Lgnu/expr/ModuleBody;->exitCounter:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 115
    .end local v0           #counter:I
    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method public static declared-synchronized exitIncrement()V
    .locals 2

    .prologue
    .line 103
    const-class v0, Lgnu/expr/ModuleBody;

    monitor-enter v0

    :try_start_0
    sget v1, Lgnu/expr/ModuleBody;->exitCounter:I

    if-nez v1, :cond_0

    .line 104
    sget v1, Lgnu/expr/ModuleBody;->exitCounter:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lgnu/expr/ModuleBody;->exitCounter:I

    .line 105
    :cond_0
    sget v1, Lgnu/expr/ModuleBody;->exitCounter:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lgnu/expr/ModuleBody;->exitCounter:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    monitor-exit v0

    return-void

    .line 103
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getMainPrintValues()Z
    .locals 1

    .prologue
    .line 90
    sget-boolean v0, Lgnu/expr/ModuleBody;->mainPrintValues:Z

    return v0
.end method

.method public static runCleanup(Lgnu/mapping/CallContext;Ljava/lang/Throwable;Lgnu/lists/Consumer;)V
    .locals 2
    .parameter "ctx"
    .parameter "th"
    .parameter "save"

    .prologue
    .line 56
    if-nez p1, :cond_0

    .line 60
    :try_start_0
    invoke-virtual {p0}, Lgnu/mapping/CallContext;->runUntilDone()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :cond_0
    :goto_0
    iput-object p2, p0, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 68
    if-eqz p1, :cond_3

    .line 70
    instance-of v1, p1, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_1

    .line 71
    check-cast p1, Ljava/lang/RuntimeException;

    .end local p1
    throw p1

    .line 62
    .restart local p1
    :catch_0
    move-exception v0

    .line 64
    .local v0, ex:Ljava/lang/Throwable;
    move-object p1, v0

    goto :goto_0

    .line 72
    .end local v0           #ex:Ljava/lang/Throwable;
    :cond_1
    instance-of v1, p1, Ljava/lang/Error;

    if-eqz v1, :cond_2

    .line 73
    check-cast p1, Ljava/lang/Error;

    .end local p1
    throw p1

    .line 74
    .restart local p1
    :cond_2
    new-instance v1, Lgnu/mapping/WrappedException;

    invoke-direct {v1, p1}, Lgnu/mapping/WrappedException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 76
    :cond_3
    return-void
.end method

.method public static setMainPrintValues(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 95
    sput-boolean p0, Lgnu/expr/ModuleBody;->mainPrintValues:Z

    .line 96
    return-void
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 1
    .parameter "ctx"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 14
    iget v0, p1, Lgnu/mapping/CallContext;->pc:I

    if-nez v0, :cond_0

    .line 15
    invoke-virtual {p0, p1}, Lgnu/expr/ModuleBody;->run(Lgnu/mapping/CallContext;)V

    .line 16
    :cond_0
    return-void
.end method

.method public apply0()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 80
    invoke-static {}, Lgnu/mapping/CallContext;->getInstance()Lgnu/mapping/CallContext;

    move-result-object v0

    .line 81
    .local v0, ctx:Lgnu/mapping/CallContext;
    invoke-virtual {p0, v0}, Lgnu/expr/ModuleBody;->match0(Lgnu/mapping/CallContext;)I

    .line 82
    invoke-virtual {v0}, Lgnu/mapping/CallContext;->runUntilValue()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;
    .locals 1
    .parameter "method"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 172
    sget-object v0, Lgnu/mapping/Values;->noArgs:[Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lgnu/expr/ModuleBody;->applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "method"
    .parameter "arg1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 178
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/Object;

    .line 179
    .local v0, args:[Ljava/lang/Object;
    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 180
    invoke-virtual {p0, p1, v0}, Lgnu/expr/ModuleBody;->applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "method"
    .parameter "arg1"
    .parameter "arg2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 186
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/Object;

    .line 187
    .local v0, args:[Ljava/lang/Object;
    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 188
    const/4 v1, 0x1

    aput-object p3, v0, v1

    .line 189
    invoke-virtual {p0, p1, v0}, Lgnu/expr/ModuleBody;->applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public apply3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "method"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 196
    const/4 v1, 0x3

    new-array v0, v1, [Ljava/lang/Object;

    .line 197
    .local v0, args:[Ljava/lang/Object;
    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 198
    const/4 v1, 0x1

    aput-object p3, v0, v1

    .line 199
    const/4 v1, 0x2

    aput-object p4, v0, v1

    .line 200
    invoke-virtual {p0, p1, v0}, Lgnu/expr/ModuleBody;->applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public apply4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "method"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .parameter "arg4"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 207
    const/4 v1, 0x4

    new-array v0, v1, [Ljava/lang/Object;

    .line 208
    .local v0, args:[Ljava/lang/Object;
    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 209
    const/4 v1, 0x1

    aput-object p3, v0, v1

    .line 210
    const/4 v1, 0x2

    aput-object p4, v0, v1

    .line 211
    const/4 v1, 0x3

    aput-object p5, v0, v1

    .line 212
    invoke-virtual {p0, p1, v0}, Lgnu/expr/ModuleBody;->applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .parameter "method"
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 218
    array-length v6, p2

    .line 219
    .local v6, count:I
    invoke-virtual {p1}, Lgnu/expr/ModuleMethod;->numArgs()I

    move-result v7

    .line 220
    .local v7, num:I
    and-int/lit16 v0, v7, 0xfff

    if-lt v6, v0, :cond_1

    if-ltz v7, :cond_0

    shr-int/lit8 v0, v7, 0xc

    if-gt v6, v0, :cond_1

    .line 223
    :cond_0
    packed-switch v6, :pswitch_data_0

    .line 237
    :cond_1
    new-instance v0, Lgnu/mapping/WrongArguments;

    invoke-direct {v0, p1, v6}, Lgnu/mapping/WrongArguments;-><init>(Lgnu/mapping/Procedure;I)V

    throw v0

    .line 226
    :pswitch_0
    invoke-virtual {p0, p1}, Lgnu/expr/ModuleBody;->apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;

    move-result-object v0

    .line 234
    :goto_0
    return-object v0

    .line 228
    :pswitch_1
    aget-object v0, p2, v1

    invoke-virtual {p0, p1, v0}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 230
    :pswitch_2
    aget-object v0, p2, v1

    aget-object v1, p2, v3

    invoke-virtual {p0, p1, v0, v1}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 232
    :pswitch_3
    aget-object v0, p2, v1

    aget-object v1, p2, v3

    aget-object v2, p2, v4

    invoke-virtual {p0, p1, v0, v1, v2}, Lgnu/expr/ModuleBody;->apply3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 234
    :pswitch_4
    aget-object v2, p2, v1

    aget-object v3, p2, v3

    aget-object v4, p2, v4

    const/4 v0, 0x3

    aget-object v5, p2, v0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lgnu/expr/ModuleBody;->apply4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 223
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I
    .locals 3
    .parameter "proc"
    .parameter "ctx"

    .prologue
    const/4 v2, 0x0

    .line 242
    invoke-virtual {p1}, Lgnu/expr/ModuleMethod;->numArgs()I

    move-result v1

    .line 243
    .local v1, num:I
    and-int/lit16 v0, v1, 0xfff

    .line 244
    .local v0, min:I
    if-lez v0, :cond_0

    .line 245
    const/high16 v2, -0xf

    or-int/2addr v2, v0

    .line 252
    :goto_0
    return v2

    .line 246
    :cond_0
    if-gez v1, :cond_1

    .line 247
    sget-object v2, Lgnu/mapping/ProcedureN;->noArgs:[Ljava/lang/Object;

    invoke-virtual {p0, p1, v2, p2}, Lgnu/expr/ModuleBody;->matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v2

    goto :goto_0

    .line 248
    :cond_1
    iput v2, p2, Lgnu/mapping/CallContext;->count:I

    .line 249
    iput v2, p2, Lgnu/mapping/CallContext;->where:I

    .line 250
    iput v2, p2, Lgnu/mapping/CallContext;->next:I

    .line 251
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    goto :goto_0
.end method

.method public match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 6
    .parameter "proc"
    .parameter "arg1"
    .parameter "ctx"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 257
    invoke-virtual {p1}, Lgnu/expr/ModuleMethod;->numArgs()I

    move-result v3

    .line 258
    .local v3, num:I
    and-int/lit16 v2, v3, 0xfff

    .line 259
    .local v2, min:I
    if-le v2, v4, :cond_0

    .line 260
    const/high16 v4, -0xf

    or-int/2addr v4, v2

    .line 275
    :goto_0
    return v4

    .line 261
    :cond_0
    if-ltz v3, :cond_2

    .line 263
    shr-int/lit8 v1, v3, 0xc

    .line 264
    .local v1, max:I
    if-ge v1, v4, :cond_1

    .line 265
    const/high16 v4, -0xe

    or-int/2addr v4, v1

    goto :goto_0

    .line 266
    :cond_1
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    .line 267
    iput v4, p3, Lgnu/mapping/CallContext;->count:I

    .line 268
    iput v4, p3, Lgnu/mapping/CallContext;->where:I

    .line 269
    iput v5, p3, Lgnu/mapping/CallContext;->next:I

    .line 270
    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move v4, v5

    .line 272
    goto :goto_0

    .line 274
    .end local v1           #max:I
    :cond_2
    new-array v0, v4, [Ljava/lang/Object;

    aput-object p2, v0, v5

    .line 275
    .local v0, args:[Ljava/lang/Object;
    invoke-virtual {p0, p1, v0, p3}, Lgnu/expr/ModuleBody;->matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v4

    goto :goto_0
.end method

.method public match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 6
    .parameter "proc"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "ctx"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    .line 281
    invoke-virtual {p1}, Lgnu/expr/ModuleMethod;->numArgs()I

    move-result v3

    .line 282
    .local v3, num:I
    and-int/lit16 v2, v3, 0xfff

    .line 283
    .local v2, min:I
    if-le v2, v4, :cond_0

    .line 284
    const/high16 v4, -0xf

    or-int/2addr v4, v2

    .line 300
    :goto_0
    return v4

    .line 285
    :cond_0
    if-ltz v3, :cond_2

    .line 287
    shr-int/lit8 v1, v3, 0xc

    .line 288
    .local v1, max:I
    if-ge v1, v4, :cond_1

    .line 289
    const/high16 v4, -0xe

    or-int/2addr v4, v1

    goto :goto_0

    .line 290
    :cond_1
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    .line 291
    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    .line 292
    iput v4, p4, Lgnu/mapping/CallContext;->count:I

    .line 293
    const/16 v4, 0x21

    iput v4, p4, Lgnu/mapping/CallContext;->where:I

    .line 295
    iput v5, p4, Lgnu/mapping/CallContext;->next:I

    .line 296
    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move v4, v5

    .line 297
    goto :goto_0

    .line 299
    .end local v1           #max:I
    :cond_2
    new-array v0, v4, [Ljava/lang/Object;

    aput-object p2, v0, v5

    const/4 v4, 0x1

    aput-object p3, v0, v4

    .line 300
    .local v0, args:[Ljava/lang/Object;
    invoke-virtual {p0, p1, v0, p4}, Lgnu/expr/ModuleBody;->matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v4

    goto :goto_0
.end method

.method public match3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 6
    .parameter "proc"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .parameter "ctx"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x3

    .line 306
    invoke-virtual {p1}, Lgnu/expr/ModuleMethod;->numArgs()I

    move-result v3

    .line 307
    .local v3, num:I
    and-int/lit16 v2, v3, 0xfff

    .line 308
    .local v2, min:I
    if-le v2, v4, :cond_0

    .line 309
    const/high16 v4, -0xf

    or-int/2addr v4, v2

    .line 328
    :goto_0
    return v4

    .line 310
    :cond_0
    if-ltz v3, :cond_2

    .line 312
    shr-int/lit8 v1, v3, 0xc

    .line 313
    .local v1, max:I
    if-ge v1, v4, :cond_1

    .line 314
    const/high16 v4, -0xe

    or-int/2addr v4, v1

    goto :goto_0

    .line 315
    :cond_1
    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    .line 316
    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    .line 317
    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    .line 318
    iput v4, p5, Lgnu/mapping/CallContext;->count:I

    .line 319
    const/16 v4, 0x321

    iput v4, p5, Lgnu/mapping/CallContext;->where:I

    .line 322
    iput v5, p5, Lgnu/mapping/CallContext;->next:I

    .line 323
    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move v4, v5

    .line 325
    goto :goto_0

    .line 327
    .end local v1           #max:I
    :cond_2
    new-array v0, v4, [Ljava/lang/Object;

    aput-object p2, v0, v5

    const/4 v4, 0x1

    aput-object p3, v0, v4

    const/4 v4, 0x2

    aput-object p4, v0, v4

    .line 328
    .local v0, args:[Ljava/lang/Object;
    invoke-virtual {p0, p1, v0, p5}, Lgnu/expr/ModuleBody;->matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v4

    goto :goto_0
.end method

.method public match4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 6
    .parameter "proc"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .parameter "arg4"
    .parameter "ctx"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x4

    .line 334
    invoke-virtual {p1}, Lgnu/expr/ModuleMethod;->numArgs()I

    move-result v3

    .line 335
    .local v3, num:I
    and-int/lit16 v2, v3, 0xfff

    .line 336
    .local v2, min:I
    if-le v2, v4, :cond_0

    .line 337
    const/high16 v4, -0xf

    or-int/2addr v4, v2

    .line 358
    :goto_0
    return v4

    .line 338
    :cond_0
    if-ltz v3, :cond_2

    .line 340
    shr-int/lit8 v1, v3, 0xc

    .line 341
    .local v1, max:I
    if-ge v1, v4, :cond_1

    .line 342
    const/high16 v4, -0xe

    or-int/2addr v4, v1

    goto :goto_0

    .line 343
    :cond_1
    iput-object p2, p6, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    .line 344
    iput-object p3, p6, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    .line 345
    iput-object p4, p6, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    .line 346
    iput-object p5, p6, Lgnu/mapping/CallContext;->value4:Ljava/lang/Object;

    .line 347
    iput v4, p6, Lgnu/mapping/CallContext;->count:I

    .line 348
    const/16 v4, 0x4321

    iput v4, p6, Lgnu/mapping/CallContext;->where:I

    .line 352
    iput v5, p6, Lgnu/mapping/CallContext;->next:I

    .line 353
    iput-object p1, p6, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move v4, v5

    .line 355
    goto :goto_0

    .line 357
    .end local v1           #max:I
    :cond_2
    new-array v0, v4, [Ljava/lang/Object;

    aput-object p2, v0, v5

    const/4 v4, 0x1

    aput-object p3, v0, v4

    const/4 v4, 0x2

    aput-object p4, v0, v4

    const/4 v4, 0x3

    aput-object p5, v0, v4

    .line 358
    .local v0, args:[Ljava/lang/Object;
    invoke-virtual {p0, p1, v0, p6}, Lgnu/expr/ModuleBody;->matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v4

    goto :goto_0
.end method

.method public matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 10
    .parameter "proc"
    .parameter "args"
    .parameter "ctx"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 363
    invoke-virtual {p1}, Lgnu/expr/ModuleMethod;->numArgs()I

    move-result v9

    .line 364
    .local v9, num:I
    and-int/lit16 v8, v9, 0xfff

    .line 365
    .local v8, min:I
    array-length v0, p2

    if-ge v0, v8, :cond_0

    .line 366
    const/high16 v0, -0xf

    or-int/2addr v0, v8

    .line 394
    :goto_0
    return v0

    .line 367
    :cond_0
    if-ltz v9, :cond_1

    .line 369
    array-length v0, p2

    packed-switch v0, :pswitch_data_0

    .line 382
    shr-int/lit8 v7, v9, 0xc

    .line 383
    .local v7, max:I
    array-length v0, p2

    if-le v0, v7, :cond_1

    .line 384
    const/high16 v0, -0xe

    or-int/2addr v0, v7

    goto :goto_0

    .line 372
    .end local v7           #max:I
    :pswitch_0
    invoke-virtual {p0, p1, p3}, Lgnu/expr/ModuleBody;->match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I

    move-result v0

    goto :goto_0

    .line 374
    :pswitch_1
    aget-object v0, p2, v1

    invoke-virtual {p0, p1, v0, p3}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    goto :goto_0

    .line 376
    :pswitch_2
    aget-object v0, p2, v1

    aget-object v1, p2, v3

    invoke-virtual {p0, p1, v0, v1, p3}, Lgnu/expr/ModuleBody;->match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    goto :goto_0

    .line 378
    :pswitch_3
    aget-object v2, p2, v1

    aget-object v3, p2, v3

    aget-object v4, p2, v4

    move-object v0, p0

    move-object v1, p1

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lgnu/expr/ModuleBody;->match3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    goto :goto_0

    .line 380
    :pswitch_4
    aget-object v2, p2, v1

    aget-object v3, p2, v3

    aget-object v4, p2, v4

    const/4 v0, 0x3

    aget-object v5, p2, v0

    move-object v0, p0

    move-object v1, p1

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lgnu/expr/ModuleBody;->match4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    goto :goto_0

    .line 387
    :cond_1
    iput-object p2, p3, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    .line 388
    array-length v0, p2

    iput v0, p3, Lgnu/mapping/CallContext;->count:I

    .line 389
    iput v1, p3, Lgnu/mapping/CallContext;->where:I

    .line 390
    iput v1, p3, Lgnu/mapping/CallContext;->next:I

    .line 391
    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move v0, v1

    .line 394
    goto :goto_0

    .line 369
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public run()V
    .locals 1

    .prologue
    .line 26
    monitor-enter p0

    .line 28
    :try_start_0
    iget-boolean v0, p0, Lgnu/expr/ModuleBody;->runDone:Z

    if-eqz v0, :cond_0

    .line 29
    monitor-exit p0

    .line 33
    :goto_0
    return-void

    .line 30
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgnu/expr/ModuleBody;->runDone:Z

    .line 31
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    sget-object v0, Lgnu/lists/VoidConsumer;->instance:Lgnu/lists/VoidConsumer;

    invoke-virtual {p0, v0}, Lgnu/expr/ModuleBody;->run(Lgnu/lists/Consumer;)V

    goto :goto_0

    .line 31
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public run(Lgnu/lists/Consumer;)V
    .locals 4
    .parameter "out"

    .prologue
    .line 38
    invoke-static {}, Lgnu/mapping/CallContext;->getInstance()Lgnu/mapping/CallContext;

    move-result-object v0

    .line 39
    .local v0, ctx:Lgnu/mapping/CallContext;
    iget-object v2, v0, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 40
    .local v2, save:Lgnu/lists/Consumer;
    iput-object p1, v0, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 44
    :try_start_0
    invoke-virtual {p0, v0}, Lgnu/expr/ModuleBody;->run(Lgnu/mapping/CallContext;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    const/4 v3, 0x0

    .line 51
    .local v3, th:Ljava/lang/Throwable;
    :goto_0
    invoke-static {v0, v3, v2}, Lgnu/expr/ModuleBody;->runCleanup(Lgnu/mapping/CallContext;Ljava/lang/Throwable;Lgnu/lists/Consumer;)V

    .line 52
    return-void

    .line 47
    .end local v3           #th:Ljava/lang/Throwable;
    :catch_0
    move-exception v1

    .line 49
    .local v1, ex:Ljava/lang/Throwable;
    move-object v3, v1

    .restart local v3       #th:Ljava/lang/Throwable;
    goto :goto_0
.end method

.method public run(Lgnu/mapping/CallContext;)V
    .locals 0
    .parameter "ctx"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 22
    return-void
.end method

.method public final runAsMain()V
    .locals 4

    .prologue
    .line 131
    sget-object v3, Lgnu/text/WriterManager;->instance:Lgnu/text/WriterManager;

    invoke-virtual {v3}, Lgnu/text/WriterManager;->registerShutdownHook()Z

    .line 134
    :try_start_0
    invoke-static {}, Lgnu/mapping/CallContext;->getInstance()Lgnu/mapping/CallContext;

    move-result-object v0

    .line 135
    .local v0, ctx:Lgnu/mapping/CallContext;
    invoke-static {}, Lgnu/expr/ModuleBody;->getMainPrintValues()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 137
    invoke-static {}, Lgnu/mapping/OutPort;->outDefault()Lgnu/mapping/OutPort;

    move-result-object v2

    .line 138
    .local v2, out:Lgnu/mapping/OutPort;
    invoke-static {v2}, Lkawa/Shell;->getOutputConsumer(Lgnu/mapping/OutPort;)Lgnu/lists/Consumer;

    move-result-object v3

    iput-object v3, v0, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 139
    invoke-virtual {p0, v0}, Lgnu/expr/ModuleBody;->run(Lgnu/mapping/CallContext;)V

    .line 140
    invoke-virtual {v0}, Lgnu/mapping/CallContext;->runUntilDone()V

    .line 141
    invoke-virtual {v2}, Lgnu/mapping/OutPort;->freshLine()V

    .line 149
    .end local v2           #out:Lgnu/mapping/OutPort;
    :goto_0
    invoke-static {}, Lgnu/mapping/OutPort;->runCleanups()V

    .line 150
    invoke-static {}, Lgnu/expr/ModuleBody;->exitDecrement()V

    .line 158
    .end local v0           #ctx:Lgnu/mapping/CallContext;
    :goto_1
    return-void

    .line 145
    .restart local v0       #ctx:Lgnu/mapping/CallContext;
    :cond_0
    invoke-virtual {p0}, Lgnu/expr/ModuleBody;->run()V

    .line 146
    invoke-virtual {v0}, Lgnu/mapping/CallContext;->runUntilDone()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 152
    .end local v0           #ctx:Lgnu/mapping/CallContext;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 154
    .local v1, ex:Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 155
    invoke-static {}, Lgnu/mapping/OutPort;->runCleanups()V

    .line 156
    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    goto :goto_1
.end method
