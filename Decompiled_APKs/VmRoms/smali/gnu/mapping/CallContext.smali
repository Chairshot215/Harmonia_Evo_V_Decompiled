.class public Lgnu/mapping/CallContext;
.super Ljava/lang/Object;
.source "CallContext.java"


# static fields
.field public static final ARG_IN_IVALUE1:I = 0x5

.field public static final ARG_IN_IVALUE2:I = 0x6

.field public static final ARG_IN_VALUE1:I = 0x1

.field public static final ARG_IN_VALUE2:I = 0x2

.field public static final ARG_IN_VALUE3:I = 0x3

.field public static final ARG_IN_VALUE4:I = 0x4

.field public static final ARG_IN_VALUES_ARRAY:I

.field static currentContext:Ljava/lang/ThreadLocal;


# instance fields
.field public consumer:Lgnu/lists/Consumer;

.field public count:I

.field public evalFrames:[[Ljava/lang/Object;

.field public ivalue1:I

.field public ivalue2:I

.field public next:I

.field public pc:I

.field public proc:Lgnu/mapping/Procedure;

.field public value1:Ljava/lang/Object;

.field public value2:Ljava/lang/Object;

.field public value3:Ljava/lang/Object;

.field public value4:Ljava/lang/Object;

.field public values:[Ljava/lang/Object;

.field public vstack:Lgnu/mapping/ValueStack;

.field public where:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lgnu/mapping/CallContext;->currentContext:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Lgnu/mapping/ValueStack;

    invoke-direct {v0}, Lgnu/mapping/ValueStack;-><init>()V

    iput-object v0, p0, Lgnu/mapping/CallContext;->vstack:Lgnu/mapping/ValueStack;

    .line 72
    iget-object v0, p0, Lgnu/mapping/CallContext;->vstack:Lgnu/mapping/ValueStack;

    iput-object v0, p0, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    return-void
.end method

.method public static getInstance()Lgnu/mapping/CallContext;
    .locals 1

    .prologue
    .line 48
    invoke-static {}, Lgnu/mapping/CallContext;->getOnlyInstance()Lgnu/mapping/CallContext;

    move-result-object v0

    .line 49
    .local v0, ctx:Lgnu/mapping/CallContext;
    if-nez v0, :cond_0

    .line 51
    new-instance v0, Lgnu/mapping/CallContext;

    .end local v0           #ctx:Lgnu/mapping/CallContext;
    invoke-direct {v0}, Lgnu/mapping/CallContext;-><init>()V

    .line 52
    .restart local v0       #ctx:Lgnu/mapping/CallContext;
    invoke-static {v0}, Lgnu/mapping/CallContext;->setInstance(Lgnu/mapping/CallContext;)V

    .line 54
    :cond_0
    return-object v0
.end method

.method public static getOnlyInstance()Lgnu/mapping/CallContext;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lgnu/mapping/CallContext;->currentContext:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/CallContext;

    return-object v0
.end method

.method public static setInstance(Lgnu/mapping/CallContext;)V
    .locals 2
    .parameter "ctx"

    .prologue
    .line 21
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 23
    .local v0, thread:Ljava/lang/Thread;
    sget-object v1, Lgnu/mapping/CallContext;->currentContext:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 30
    return-void
.end method


# virtual methods
.method public final cleanupFromContext(I)V
    .locals 6
    .parameter "oldIndex"

    .prologue
    .line 279
    iget-object v2, p0, Lgnu/mapping/CallContext;->vstack:Lgnu/mapping/ValueStack;

    .line 280
    .local v2, vst:Lgnu/mapping/ValueStack;
    iget-object v0, v2, Lgnu/mapping/ValueStack;->data:[C

    .line 281
    .local v0, data:[C
    const/4 v3, 0x2

    sub-int v3, p1, v3

    aget-char v3, v0, v3

    shl-int/lit8 v3, v3, 0x10

    const/4 v4, 0x1

    sub-int v4, p1, v4

    aget-char v4, v0, v4

    const v5, 0xffff

    and-int/2addr v4, v5

    or-int v1, v3, v4

    .line 282
    .local v1, oindex:I
    iget-object v3, v2, Lgnu/mapping/ValueStack;->objects:[Ljava/lang/Object;

    aget-object v3, v3, v1

    check-cast v3, Lgnu/lists/Consumer;

    iput-object v3, p0, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 283
    iget-object v3, v2, Lgnu/mapping/ValueStack;->objects:[Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v4, v3, v1

    .line 284
    iput v1, v2, Lgnu/mapping/ValueStack;->oindex:I

    .line 285
    const/4 v3, 0x3

    sub-int v3, p1, v3

    iput v3, v2, Lgnu/mapping/ValueStack;->gapStart:I

    .line 286
    return-void
.end method

.method getArgAsObject(I)Ljava/lang/Object;
    .locals 2
    .parameter "i"

    .prologue
    .line 105
    const/16 v0, 0x8

    if-ge p1, v0, :cond_0

    .line 107
    iget v0, p0, Lgnu/mapping/CallContext;->where:I

    mul-int/lit8 v1, p1, 0x4

    shr-int/2addr v0, v1

    and-int/lit8 v0, v0, 0xf

    packed-switch v0, :pswitch_data_0

    .line 117
    :cond_0
    iget-object v0, p0, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    aget-object v0, v0, p1

    :goto_0
    return-object v0

    .line 109
    :pswitch_0
    iget-object v0, p0, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    goto :goto_0

    .line 110
    :pswitch_1
    iget-object v0, p0, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    goto :goto_0

    .line 111
    :pswitch_2
    iget-object v0, p0, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    goto :goto_0

    .line 112
    :pswitch_3
    iget-object v0, p0, Lgnu/mapping/CallContext;->value4:Ljava/lang/Object;

    goto :goto_0

    .line 113
    :pswitch_4
    iget v0, p0, Lgnu/mapping/CallContext;->ivalue1:I

    invoke-static {v0}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v0

    goto :goto_0

    .line 114
    :pswitch_5
    iget v0, p0, Lgnu/mapping/CallContext;->ivalue2:I

    invoke-static {v0}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v0

    goto :goto_0

    .line 107
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public getArgCount()I
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lgnu/mapping/CallContext;->count:I

    return v0
.end method

.method public getArgs()[Ljava/lang/Object;
    .locals 4

    .prologue
    .line 203
    iget v3, p0, Lgnu/mapping/CallContext;->where:I

    if-nez v3, :cond_0

    .line 204
    iget-object v3, p0, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    .line 212
    :goto_0
    return-object v3

    .line 207
    :cond_0
    iget v2, p0, Lgnu/mapping/CallContext;->count:I

    .line 208
    .local v2, n:I
    const/4 v3, 0x0

    iput v3, p0, Lgnu/mapping/CallContext;->next:I

    .line 209
    new-array v0, v2, [Ljava/lang/Object;

    .line 210
    .local v0, args:[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 211
    invoke-virtual {p0}, Lgnu/mapping/CallContext;->getNextArg()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v1

    .line 210
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move-object v3, v0

    .line 212
    goto :goto_0
.end method

.method public final getFromContext(I)Ljava/lang/Object;
    .locals 3
    .parameter "oldIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 263
    invoke-virtual {p0}, Lgnu/mapping/CallContext;->runUntilDone()V

    .line 264
    iget-object v1, p0, Lgnu/mapping/CallContext;->vstack:Lgnu/mapping/ValueStack;

    .line 265
    .local v1, vst:Lgnu/mapping/ValueStack;
    iget v2, v1, Lgnu/mapping/ValueStack;->gapStart:I

    invoke-static {v1, p1, v2}, Lgnu/mapping/Values;->make(Lgnu/lists/TreeList;II)Ljava/lang/Object;

    move-result-object v0

    .line 266
    .local v0, result:Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lgnu/mapping/CallContext;->cleanupFromContext(I)V

    .line 267
    return-object v0
.end method

.method public getNextArg()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 130
    iget v0, p0, Lgnu/mapping/CallContext;->next:I

    iget v1, p0, Lgnu/mapping/CallContext;->count:I

    if-lt v0, v1, :cond_0

    .line 131
    new-instance v0, Lgnu/mapping/WrongArguments;

    const/4 v1, 0x0

    iget v2, p0, Lgnu/mapping/CallContext;->count:I

    invoke-direct {v0, v1, v2}, Lgnu/mapping/WrongArguments;-><init>(Lgnu/mapping/Procedure;I)V

    throw v0

    .line 132
    :cond_0
    iget v0, p0, Lgnu/mapping/CallContext;->next:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lgnu/mapping/CallContext;->next:I

    invoke-virtual {p0, v0}, Lgnu/mapping/CallContext;->getArgAsObject(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getNextArg(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "defaultValue"

    .prologue
    .line 148
    iget v0, p0, Lgnu/mapping/CallContext;->next:I

    iget v1, p0, Lgnu/mapping/CallContext;->count:I

    if-lt v0, v1, :cond_0

    move-object v0, p1

    .line 150
    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lgnu/mapping/CallContext;->next:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lgnu/mapping/CallContext;->next:I

    invoke-virtual {p0, v0}, Lgnu/mapping/CallContext;->getArgAsObject(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getNextIntArg()I
    .locals 4

    .prologue
    .line 137
    iget v1, p0, Lgnu/mapping/CallContext;->next:I

    iget v2, p0, Lgnu/mapping/CallContext;->count:I

    if-lt v1, v2, :cond_0

    .line 138
    new-instance v1, Lgnu/mapping/WrongArguments;

    const/4 v2, 0x0

    iget v3, p0, Lgnu/mapping/CallContext;->count:I

    invoke-direct {v1, v2, v3}, Lgnu/mapping/WrongArguments;-><init>(Lgnu/mapping/Procedure;I)V

    throw v1

    .line 139
    :cond_0
    iget v1, p0, Lgnu/mapping/CallContext;->next:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgnu/mapping/CallContext;->next:I

    invoke-virtual {p0, v1}, Lgnu/mapping/CallContext;->getArgAsObject(I)Ljava/lang/Object;

    move-result-object v0

    .line 140
    .local v0, arg:Ljava/lang/Object;
    check-cast v0, Ljava/lang/Number;

    .end local v0           #arg:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v1

    return v1
.end method

.method public getNextIntArg(I)I
    .locals 2
    .parameter "defaultValue"

    .prologue
    .line 155
    iget v0, p0, Lgnu/mapping/CallContext;->next:I

    iget v1, p0, Lgnu/mapping/CallContext;->count:I

    if-lt v0, v1, :cond_0

    move v0, p1

    .line 157
    .end local p0
    :goto_0
    return v0

    .restart local p0
    :cond_0
    iget v0, p0, Lgnu/mapping/CallContext;->next:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lgnu/mapping/CallContext;->next:I

    invoke-virtual {p0, v0}, Lgnu/mapping/CallContext;->getArgAsObject(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public final getRestArgsArray(I)[Ljava/lang/Object;
    .locals 5
    .parameter "next"

    .prologue
    .line 163
    iget v4, p0, Lgnu/mapping/CallContext;->count:I

    sub-int/2addr v4, p1

    new-array v0, v4, [Ljava/lang/Object;

    .line 164
    .local v0, args:[Ljava/lang/Object;
    const/4 v1, 0x0

    .line 165
    .local v1, i:I
    :goto_0
    iget v4, p0, Lgnu/mapping/CallContext;->count:I

    if-ge p1, v4, :cond_0

    .line 167
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .local v2, i:I
    add-int/lit8 v3, p1, 0x1

    .end local p1
    .local v3, next:I
    invoke-virtual {p0, p1}, Lgnu/mapping/CallContext;->getArgAsObject(I)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v0, v1

    move v1, v2

    .end local v2           #i:I
    .restart local v1       #i:I
    move p1, v3

    .end local v3           #next:I
    .restart local p1
    goto :goto_0

    .line 169
    :cond_0
    return-object v0
.end method

.method public final getRestArgsList(I)Lgnu/lists/LList;
    .locals 6
    .parameter "next"

    .prologue
    .line 176
    sget-object v3, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    .line 177
    .local v3, nil:Lgnu/lists/LList;
    move-object v1, v3

    .line 178
    .local v1, list:Lgnu/lists/LList;
    const/4 v0, 0x0

    .line 179
    .local v0, last:Lgnu/lists/Pair;
    :goto_0
    iget v5, p0, Lgnu/mapping/CallContext;->count:I

    if-ge p1, v5, :cond_1

    .line 181
    new-instance v4, Lgnu/lists/Pair;

    add-int/lit8 v2, p1, 0x1

    .end local p1
    .local v2, next:I
    invoke-virtual {p0, p1}, Lgnu/mapping/CallContext;->getArgAsObject(I)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 182
    .local v4, pair:Lgnu/lists/Pair;
    if-nez v0, :cond_0

    .line 183
    move-object v1, v4

    .line 186
    :goto_1
    move-object v0, v4

    move p1, v2

    .line 187
    .end local v2           #next:I
    .restart local p1
    goto :goto_0

    .line 185
    .end local p1
    .restart local v2       #next:I
    :cond_0
    invoke-virtual {v0, v4}, Lgnu/lists/Pair;->setCdr(Ljava/lang/Object;)V

    goto :goto_1

    .line 188
    .end local v2           #next:I
    .end local v4           #pair:Lgnu/lists/Pair;
    .restart local p1
    :cond_1
    return-object v1
.end method

.method public lastArg()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 196
    iget v0, p0, Lgnu/mapping/CallContext;->next:I

    iget v1, p0, Lgnu/mapping/CallContext;->count:I

    if-ge v0, v1, :cond_0

    .line 197
    new-instance v0, Lgnu/mapping/WrongArguments;

    iget v1, p0, Lgnu/mapping/CallContext;->count:I

    invoke-direct {v0, v2, v1}, Lgnu/mapping/WrongArguments;-><init>(Lgnu/mapping/Procedure;I)V

    throw v0

    .line 198
    :cond_0
    iput-object v2, p0, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    .line 199
    return-void
.end method

.method public runUntilDone()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 220
    :goto_0
    iget-object v0, p0, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    .line 221
    .local v0, proc:Lgnu/mapping/Procedure;
    if-nez v0, :cond_0

    .line 236
    return-void

    .line 233
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    .line 234
    invoke-virtual {v0, p0}, Lgnu/mapping/Procedure;->apply(Lgnu/mapping/CallContext;)V

    goto :goto_0
.end method

.method public final runUntilValue()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 291
    iget-object v0, p0, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 292
    .local v0, consumerSave:Lgnu/lists/Consumer;
    iget-object v3, p0, Lgnu/mapping/CallContext;->vstack:Lgnu/mapping/ValueStack;

    .line 293
    .local v3, vst:Lgnu/mapping/ValueStack;
    iput-object v3, p0, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 294
    iget v1, v3, Lgnu/mapping/ValueStack;->gapStart:I

    .line 295
    .local v1, dindexSave:I
    iget v2, v3, Lgnu/mapping/ValueStack;->oindex:I

    .line 298
    .local v2, oindexSave:I
    :try_start_0
    invoke-virtual {p0}, Lgnu/mapping/CallContext;->runUntilDone()V

    .line 299
    iget v4, v3, Lgnu/mapping/ValueStack;->gapStart:I

    invoke-static {v3, v1, v4}, Lgnu/mapping/Values;->make(Lgnu/lists/TreeList;II)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 303
    iput-object v0, p0, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 304
    iput v1, v3, Lgnu/mapping/ValueStack;->gapStart:I

    .line 305
    iput v2, v3, Lgnu/mapping/ValueStack;->oindex:I

    return-object v4

    .line 303
    :catchall_0
    move-exception v4

    iput-object v0, p0, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 304
    iput v1, v3, Lgnu/mapping/ValueStack;->gapStart:I

    .line 305
    iput v2, v3, Lgnu/mapping/ValueStack;->oindex:I

    throw v4
.end method

.method public final runUntilValue(Lgnu/lists/Consumer;)V
    .locals 2
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 312
    iget-object v0, p0, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 313
    .local v0, consumerSave:Lgnu/lists/Consumer;
    iput-object p1, p0, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 316
    :try_start_0
    invoke-virtual {p0}, Lgnu/mapping/CallContext;->runUntilDone()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 320
    iput-object v0, p0, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 322
    return-void

    .line 320
    :catchall_0
    move-exception v1

    iput-object v0, p0, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    throw v1
.end method

.method public final startFromContext()I
    .locals 6

    .prologue
    .line 247
    iget-object v3, p0, Lgnu/mapping/CallContext;->vstack:Lgnu/mapping/ValueStack;

    .line 248
    .local v3, vst:Lgnu/mapping/ValueStack;
    iget-object v4, p0, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    invoke-virtual {v3, v4}, Lgnu/mapping/ValueStack;->find(Ljava/lang/Object;)I

    move-result v2

    .line 249
    .local v2, oindex:I
    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lgnu/mapping/ValueStack;->ensureSpace(I)V

    .line 250
    iget v0, v3, Lgnu/mapping/ValueStack;->gapStart:I

    .line 251
    .local v0, gapStart:I
    iget-object v4, v3, Lgnu/mapping/ValueStack;->data:[C

    add-int/lit8 v1, v0, 0x1

    .end local v0           #gapStart:I
    .local v1, gapStart:I
    const v5, 0xf102

    aput-char v5, v4, v0

    .line 252
    invoke-virtual {v3, v1, v2}, Lgnu/mapping/ValueStack;->setIntN(II)V

    .line 253
    add-int/lit8 v0, v1, 0x2

    .line 254
    .end local v1           #gapStart:I
    .restart local v0       #gapStart:I
    iput-object v3, p0, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 255
    iput v0, v3, Lgnu/mapping/ValueStack;->gapStart:I

    .line 256
    return v0
.end method

.method public writeValue(Ljava/lang/Object;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 327
    iget-object v0, p0, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    invoke-static {p1, v0}, Lgnu/mapping/Values;->writeValues(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    .line 328
    return-void
.end method
