.class Lcom/futuredial/atparser/Csam_p520_sms_datetime;
.super Lcom/futuredial/atparser/CProcType;
.source "CProcType.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 414
    invoke-direct {p0}, Lcom/futuredial/atparser/CProcType;-><init>()V

    return-void
.end method


# virtual methods
.method public proc_value(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "val"

    .prologue
    .line 419
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0x13

    if-ge v8, v9, :cond_0

    .line 421
    const-string v8, ""

    .line 440
    :goto_0
    return-object v8

    .line 424
    :cond_0
    new-instance v8, Ljava/lang/Integer;

    const/4 v9, 0x0

    const/4 v10, 0x2

    invoke-virtual {p1, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 425
    .local v6, iYear:I
    const/16 v8, 0x32

    if-ge v6, v8, :cond_1

    .line 426
    add-int/lit16 v6, v6, 0x7d0

    .line 429
    :goto_1
    new-instance v8, Ljava/lang/Integer;

    const/4 v9, 0x3

    const/4 v10, 0x5

    invoke-virtual {p1, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 430
    .local v3, iMonth:I
    new-instance v8, Ljava/lang/Integer;

    const/4 v9, 0x6

    const/16 v10, 0x8

    invoke-virtual {p1, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 431
    .local v0, iDay:I
    new-instance v8, Ljava/lang/Integer;

    const/16 v9, 0x9

    const/16 v10, 0xb

    invoke-virtual {p1, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 432
    .local v1, iHour:I
    new-instance v8, Ljava/lang/Integer;

    const/16 v9, 0xc

    const/16 v10, 0xe

    invoke-virtual {p1, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 433
    .local v2, iMinu:I
    new-instance v8, Ljava/lang/Integer;

    const/16 v9, 0xf

    const/16 v10, 0x11

    invoke-virtual {p1, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 434
    .local v4, iSec:I
    const/16 v8, 0x11

    const/16 v9, 0x12

    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 435
    .local v7, str:Ljava/lang/String;
    new-instance v8, Ljava/lang/Integer;

    const/16 v9, 0x12

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {p1, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 436
    .local v5, iTz:I
    div-int/lit8 v5, v5, 0x4

    .line 439
    const-string v8, "%04d%02d%02dT%02d%02d%02d"

    const/4 v9, 0x6

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    move-object v8, p1

    .line 440
    goto/16 :goto_0

    .line 428
    .end local v0           #iDay:I
    .end local v1           #iHour:I
    .end local v2           #iMinu:I
    .end local v3           #iMonth:I
    .end local v4           #iSec:I
    .end local v5           #iTz:I
    .end local v7           #str:Ljava/lang/String;
    :cond_1
    add-int/lit16 v6, v6, 0x76c

    goto/16 :goto_1
.end method
