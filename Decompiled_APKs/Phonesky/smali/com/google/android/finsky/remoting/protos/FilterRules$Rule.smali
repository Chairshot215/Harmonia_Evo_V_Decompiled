.class public final Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "FilterRules.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/FilterRules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Rule"
.end annotation


# instance fields
.field private cachedSize:I

.field private comment_:Ljava/lang/String;

.field private constArg_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private doubleArg_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private hasComment:Z

.field private hasKey:Z

.field private hasNegate:Z

.field private hasOperator:Z

.field private hasResponseCode:Z

.field private key_:I

.field private longArg_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private negate_:Z

.field private operator_:I

.field private responseCode_:I

.field private stringArgHash_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private stringArg_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private subrule_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 10
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->negate_:Z

    .line 79
    iput v1, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->operator_:I

    .line 96
    iput v1, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->key_:I

    .line 112
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->stringArg_:Ljava/util/List;

    .line 145
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->stringArgHash_:Ljava/util/List;

    .line 172
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->longArg_:Ljava/util/List;

    .line 199
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->doubleArg_:Ljava/util/List;

    .line 226
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->constArg_:Ljava/util/List;

    .line 253
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->subrule_:Ljava/util/List;

    .line 287
    iput v1, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->responseCode_:I

    .line 304
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->comment_:Ljava/lang/String;

    .line 380
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->cachedSize:I

    .line 10
    return-void
.end method


# virtual methods
.method public addConstArg(I)Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;
    .locals 2
    .parameter "value"

    .prologue
    .line 240
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->constArg_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->constArg_:Ljava/util/List;

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->constArg_:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    return-object p0
.end method

.method public addDoubleArg(D)Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;
    .locals 2
    .parameter "value"

    .prologue
    .line 213
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->doubleArg_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->doubleArg_:Ljava/util/List;

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->doubleArg_:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    return-object p0
.end method

.method public addLongArg(J)Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;
    .locals 2
    .parameter "value"

    .prologue
    .line 186
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->longArg_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->longArg_:Ljava/util/List;

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->longArg_:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    return-object p0
.end method

.method public addStringArg(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;
    .locals 1
    .parameter "value"

    .prologue
    .line 129
    if-nez p1, :cond_0

    .line 130
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->stringArg_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->stringArg_:Ljava/util/List;

    .line 135
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->stringArg_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    return-object p0
.end method

.method public addStringArgHash(J)Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;
    .locals 2
    .parameter "value"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->stringArgHash_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->stringArgHash_:Ljava/util/List;

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->stringArgHash_:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    return-object p0
.end method

.method public addSubrule(Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;)Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;
    .locals 1
    .parameter "value"

    .prologue
    .line 270
    if-nez p1, :cond_0

    .line 271
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->subrule_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 274
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->subrule_:Ljava/util/List;

    .line 276
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->subrule_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 383
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->cachedSize:I

    if-gez v0, :cond_0

    .line 385
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->getSerializedSize()I

    .line 387
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->cachedSize:I

    return v0
.end method

.method public getComment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->comment_:Ljava/lang/String;

    return-object v0
.end method

.method public getConstArgList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 229
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->constArg_:Ljava/util/List;

    return-object v0
.end method

.method public getDoubleArgList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 202
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->doubleArg_:Ljava/util/List;

    return-object v0
.end method

.method public getKey()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->key_:I

    return v0
.end method

.method public getLongArgList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 175
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->longArg_:Ljava/util/List;

    return-object v0
.end method

.method public getNegate()Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->negate_:Z

    return v0
.end method

.method public getOperator()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->operator_:I

    return v0
.end method

.method public getResponseCode()I
    .locals 1

    .prologue
    .line 289
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->responseCode_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    .line 392
    const/4 v4, 0x0

    .line 393
    .local v4, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->hasNegate()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 394
    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->getNegate()Z

    move-result v6

    invoke-static {v5, v6}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v5

    add-int/2addr v4, v5

    .line 397
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->hasOperator()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 398
    const/4 v5, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->getOperator()I

    move-result v6

    invoke-static {v5, v6}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v5

    add-int/2addr v4, v5

    .line 401
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->hasKey()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 402
    const/4 v5, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->getKey()I

    move-result v6

    invoke-static {v5, v6}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v5

    add-int/2addr v4, v5

    .line 406
    :cond_2
    const/4 v0, 0x0

    .line 407
    .local v0, dataSize:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->getStringArgList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 408
    .local v1, element:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v0, v5

    goto :goto_0

    .line 411
    .end local v1           #element:Ljava/lang/String;
    :cond_3
    add-int/2addr v4, v0

    .line 412
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->getStringArgList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    mul-int/lit8 v5, v5, 0x1

    add-int/2addr v4, v5

    .line 415
    const/4 v0, 0x0

    .line 416
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->getLongArgList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 417
    .local v1, element:J
    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64SizeNoTag(J)I

    move-result v5

    add-int/2addr v0, v5

    goto :goto_1

    .line 420
    .end local v1           #element:J
    :cond_4
    add-int/2addr v4, v0

    .line 421
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->getLongArgList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    mul-int/lit8 v5, v5, 0x1

    add-int/2addr v4, v5

    .line 424
    const/4 v0, 0x0

    .line 425
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->getDoubleArgList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    mul-int/lit8 v0, v5, 0x8

    .line 426
    add-int/2addr v4, v0

    .line 427
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->getDoubleArgList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    mul-int/lit8 v5, v5, 0x1

    add-int/2addr v4, v5

    .line 429
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->getSubruleList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;

    .line 430
    .local v1, element:Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;
    const/4 v5, 0x7

    invoke-static {v5, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v5

    add-int/2addr v4, v5

    goto :goto_2

    .line 433
    .end local v1           #element:Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->hasResponseCode()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 434
    const/16 v5, 0x8

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->getResponseCode()I

    move-result v6

    invoke-static {v5, v6}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v5

    add-int/2addr v4, v5

    .line 437
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->hasComment()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 438
    const/16 v5, 0x9

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->getComment()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 442
    :cond_7
    const/4 v0, 0x0

    .line 443
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->getStringArgHashList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    mul-int/lit8 v0, v5, 0x8

    .line 444
    add-int/2addr v4, v0

    .line 445
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->getStringArgHashList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    mul-int/lit8 v5, v5, 0x1

    add-int/2addr v4, v5

    .line 448
    const/4 v0, 0x0

    .line 449
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->getConstArgList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 450
    .local v1, element:Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32SizeNoTag(I)I

    move-result v5

    add-int/2addr v0, v5

    goto :goto_3

    .line 453
    .end local v1           #element:Ljava/lang/Integer;
    :cond_8
    add-int/2addr v4, v0

    .line 454
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->getConstArgList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    mul-int/lit8 v5, v5, 0x1

    add-int/2addr v4, v5

    .line 456
    iput v4, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->cachedSize:I

    .line 457
    return v4
.end method

.method public getStringArgHashList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 148
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->stringArgHash_:Ljava/util/List;

    return-object v0
.end method

.method public getStringArgList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->stringArg_:Ljava/util/List;

    return-object v0
.end method

.method public getSubruleList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;",
            ">;"
        }
    .end annotation

    .prologue
    .line 256
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->subrule_:Ljava/util/List;

    return-object v0
.end method

.method public hasComment()Z
    .locals 1

    .prologue
    .line 306
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->hasComment:Z

    return v0
.end method

.method public hasKey()Z
    .locals 1

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->hasKey:Z

    return v0
.end method

.method public hasNegate()Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->hasNegate:Z

    return v0
.end method

.method public hasOperator()Z
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->hasOperator:Z

    return v0
.end method

.method public hasResponseCode()Z
    .locals 1

    .prologue
    .line 288
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->hasResponseCode:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;
    .locals 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 465
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 466
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 470
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 471
    :sswitch_0
    return-object p0

    .line 476
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->setNegate(Z)Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;

    goto :goto_0

    .line 480
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->setOperator(I)Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;

    goto :goto_0

    .line 484
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->setKey(I)Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;

    goto :goto_0

    .line 488
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->addStringArg(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;

    goto :goto_0

    .line 492
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->addLongArg(J)Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;

    goto :goto_0

    .line 496
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readDouble()D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->addDoubleArg(D)Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;

    goto :goto_0

    .line 500
    :sswitch_7
    new-instance v1, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;-><init>()V

    .line 501
    .local v1, value:Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 502
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->addSubrule(Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;)Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;

    goto :goto_0

    .line 506
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->setResponseCode(I)Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;

    goto :goto_0

    .line 510
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->setComment(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;

    goto :goto_0

    .line 514
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->addStringArgHash(J)Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;

    goto :goto_0

    .line 518
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->addConstArg(I)Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;

    goto :goto_0

    .line 466
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
        0x31 -> :sswitch_6
        0x3a -> :sswitch_7
        0x40 -> :sswitch_8
        0x4a -> :sswitch_9
        0x51 -> :sswitch_a
        0x58 -> :sswitch_b
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/protobuf/micro/MessageMicro;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;

    move-result-object v0

    return-object v0
.end method

.method public setComment(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;
    .locals 1
    .parameter "value"

    .prologue
    .line 308
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->hasComment:Z

    .line 309
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->comment_:Ljava/lang/String;

    .line 310
    return-object p0
.end method

.method public setKey(I)Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;
    .locals 1
    .parameter "value"

    .prologue
    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->hasKey:Z

    .line 101
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->key_:I

    .line 102
    return-object p0
.end method

.method public setNegate(Z)Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;
    .locals 1
    .parameter "value"

    .prologue
    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->hasNegate:Z

    .line 67
    iput-boolean p1, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->negate_:Z

    .line 68
    return-object p0
.end method

.method public setOperator(I)Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;
    .locals 1
    .parameter "value"

    .prologue
    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->hasOperator:Z

    .line 84
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->operator_:I

    .line 85
    return-object p0
.end method

.method public setResponseCode(I)Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;
    .locals 1
    .parameter "value"

    .prologue
    .line 291
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->hasResponseCode:Z

    .line 292
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->responseCode_:I

    .line 293
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 5
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 345
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->hasNegate()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 346
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->getNegate()Z

    move-result v4

    invoke-virtual {p1, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 348
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->hasOperator()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 349
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->getOperator()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 351
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->hasKey()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 352
    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->getKey()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 354
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->getStringArgList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 355
    .local v0, element:Ljava/lang/String;
    const/4 v3, 0x4

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_0

    .line 357
    .end local v0           #element:Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->getLongArgList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 358
    .local v0, element:J
    const/4 v3, 0x5

    invoke-virtual {p1, v3, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    goto :goto_1

    .line 360
    .end local v0           #element:J
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->getDoubleArgList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 361
    .local v0, element:D
    const/4 v3, 0x6

    invoke-virtual {p1, v3, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeDouble(ID)V

    goto :goto_2

    .line 363
    .end local v0           #element:D
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->getSubruleList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;

    .line 364
    .local v0, element:Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;
    const/4 v3, 0x7

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_3

    .line 366
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->hasResponseCode()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 367
    const/16 v3, 0x8

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->getResponseCode()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 369
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->hasComment()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 370
    const/16 v3, 0x9

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->getComment()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 372
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->getStringArgHashList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 373
    .local v0, element:J
    const/16 v3, 0xa

    invoke-virtual {p1, v3, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed64(IJ)V

    goto :goto_4

    .line 375
    .end local v0           #element:J
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->getConstArgList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 376
    .local v0, element:Ljava/lang/Integer;
    const/16 v3, 0xb

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    goto :goto_5

    .line 378
    .end local v0           #element:Ljava/lang/Integer;
    :cond_a
    return-void
.end method
