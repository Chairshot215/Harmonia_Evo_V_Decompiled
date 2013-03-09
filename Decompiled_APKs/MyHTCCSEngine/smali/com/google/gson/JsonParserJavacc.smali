.class final Lcom/google/gson/JsonParserJavacc;
.super Ljava/lang/Object;
.source "JsonParserJavacc.java"

# interfaces
.implements Lcom/google/gson/JsonParserJavaccConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gson/JsonParserJavacc$1;,
        Lcom/google/gson/JsonParserJavacc$JJCalls;,
        Lcom/google/gson/JsonParserJavacc$LookaheadSuccess;
    }
.end annotation


# static fields
.field private static jj_la1_0:[I

.field private static jj_la1_1:[I


# instance fields
.field private final jj_2_rtns:[Lcom/google/gson/JsonParserJavacc$JJCalls;

.field private jj_endpos:I

.field private jj_expentries:Ljava/util/List;

.field private jj_expentry:[I

.field private jj_gc:I

.field private jj_gen:I

.field jj_input_stream:Lcom/google/gson/SimpleCharStream;

.field private jj_kind:I

.field private jj_la:I

.field private final jj_la1:[I

.field private jj_lastpos:Lcom/google/gson/Token;

.field private jj_lasttokens:[I

.field private final jj_ls:Lcom/google/gson/JsonParserJavacc$LookaheadSuccess;

.field public jj_nt:Lcom/google/gson/Token;

.field private jj_ntk:I

.field private jj_rescan:Z

.field private jj_scanpos:Lcom/google/gson/Token;

.field public token:Lcom/google/gson/Token;

.field public token_source:Lcom/google/gson/JsonParserJavaccTokenManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 481
    invoke-static {}, Lcom/google/gson/JsonParserJavacc;->jj_la1_init_0()V

    .line 482
    invoke-static {}, Lcom/google/gson/JsonParserJavacc;->jj_la1_init_1()V

    .line 483
    return-void
.end method

.method public constructor <init>(Lcom/google/gson/JsonParserJavaccTokenManager;)V
    .locals 6
    .parameter "tm"

    .prologue
    const/16 v5, 0x12

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 547
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 477
    new-array v1, v5, [I

    iput-object v1, p0, Lcom/google/gson/JsonParserJavacc;->jj_la1:[I

    .line 490
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/gson/JsonParserJavacc$JJCalls;

    iput-object v1, p0, Lcom/google/gson/JsonParserJavacc;->jj_2_rtns:[Lcom/google/gson/JsonParserJavacc$JJCalls;

    .line 491
    iput-boolean v4, p0, Lcom/google/gson/JsonParserJavacc;->jj_rescan:Z

    .line 492
    iput v4, p0, Lcom/google/gson/JsonParserJavacc;->jj_gc:I

    .line 591
    new-instance v1, Lcom/google/gson/JsonParserJavacc$LookaheadSuccess;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/gson/JsonParserJavacc$LookaheadSuccess;-><init>(Lcom/google/gson/JsonParserJavacc$1;)V

    iput-object v1, p0, Lcom/google/gson/JsonParserJavacc;->jj_ls:Lcom/google/gson/JsonParserJavacc$LookaheadSuccess;

    .line 640
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/gson/JsonParserJavacc;->jj_expentries:Ljava/util/List;

    .line 642
    iput v3, p0, Lcom/google/gson/JsonParserJavacc;->jj_kind:I

    .line 643
    const/16 v1, 0x64

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/google/gson/JsonParserJavacc;->jj_lasttokens:[I

    .line 548
    iput-object p1, p0, Lcom/google/gson/JsonParserJavacc;->token_source:Lcom/google/gson/JsonParserJavaccTokenManager;

    .line 549
    new-instance v1, Lcom/google/gson/Token;

    invoke-direct {v1}, Lcom/google/gson/Token;-><init>()V

    iput-object v1, p0, Lcom/google/gson/JsonParserJavacc;->token:Lcom/google/gson/Token;

    .line 550
    iput v3, p0, Lcom/google/gson/JsonParserJavacc;->jj_ntk:I

    .line 551
    iput v4, p0, Lcom/google/gson/JsonParserJavacc;->jj_gen:I

    .line 552
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v5, :cond_0

    iget-object v1, p0, Lcom/google/gson/JsonParserJavacc;->jj_la1:[I

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 553
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/google/gson/JsonParserJavacc;->jj_2_rtns:[Lcom/google/gson/JsonParserJavacc$JJCalls;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/gson/JsonParserJavacc;->jj_2_rtns:[Lcom/google/gson/JsonParserJavacc$JJCalls;

    new-instance v2, Lcom/google/gson/JsonParserJavacc$JJCalls;

    invoke-direct {v2}, Lcom/google/gson/JsonParserJavacc$JJCalls;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 554
    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .parameter "stream"

    .prologue
    .line 496
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/gson/JsonParserJavacc;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 497
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 8
    .parameter "stream"
    .parameter "encoding"

    .prologue
    const/16 v7, 0x12

    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 499
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 477
    new-array v2, v7, [I

    iput-object v2, p0, Lcom/google/gson/JsonParserJavacc;->jj_la1:[I

    .line 490
    new-array v2, v3, [Lcom/google/gson/JsonParserJavacc$JJCalls;

    iput-object v2, p0, Lcom/google/gson/JsonParserJavacc;->jj_2_rtns:[Lcom/google/gson/JsonParserJavacc$JJCalls;

    .line 491
    iput-boolean v6, p0, Lcom/google/gson/JsonParserJavacc;->jj_rescan:Z

    .line 492
    iput v6, p0, Lcom/google/gson/JsonParserJavacc;->jj_gc:I

    .line 591
    new-instance v2, Lcom/google/gson/JsonParserJavacc$LookaheadSuccess;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/gson/JsonParserJavacc$LookaheadSuccess;-><init>(Lcom/google/gson/JsonParserJavacc$1;)V

    iput-object v2, p0, Lcom/google/gson/JsonParserJavacc;->jj_ls:Lcom/google/gson/JsonParserJavacc$LookaheadSuccess;

    .line 640
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/gson/JsonParserJavacc;->jj_expentries:Ljava/util/List;

    .line 642
    iput v5, p0, Lcom/google/gson/JsonParserJavacc;->jj_kind:I

    .line 643
    const/16 v2, 0x64

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/google/gson/JsonParserJavacc;->jj_lasttokens:[I

    .line 500
    :try_start_0
    new-instance v2, Lcom/google/gson/SimpleCharStream;

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-direct {v2, p1, p2, v3, v4}, Lcom/google/gson/SimpleCharStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;II)V

    iput-object v2, p0, Lcom/google/gson/JsonParserJavacc;->jj_input_stream:Lcom/google/gson/SimpleCharStream;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 501
    new-instance v2, Lcom/google/gson/JsonParserJavaccTokenManager;

    iget-object v3, p0, Lcom/google/gson/JsonParserJavacc;->jj_input_stream:Lcom/google/gson/SimpleCharStream;

    invoke-direct {v2, v3}, Lcom/google/gson/JsonParserJavaccTokenManager;-><init>(Lcom/google/gson/SimpleCharStream;)V

    iput-object v2, p0, Lcom/google/gson/JsonParserJavacc;->token_source:Lcom/google/gson/JsonParserJavaccTokenManager;

    .line 502
    new-instance v2, Lcom/google/gson/Token;

    invoke-direct {v2}, Lcom/google/gson/Token;-><init>()V

    iput-object v2, p0, Lcom/google/gson/JsonParserJavacc;->token:Lcom/google/gson/Token;

    .line 503
    iput v5, p0, Lcom/google/gson/JsonParserJavacc;->jj_ntk:I

    .line 504
    iput v6, p0, Lcom/google/gson/JsonParserJavacc;->jj_gen:I

    .line 505
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v7, :cond_0

    iget-object v2, p0, Lcom/google/gson/JsonParserJavacc;->jj_la1:[I

    aput v5, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 500
    .end local v1           #i:I
    :catch_0
    move-exception v0

    .local v0, e:Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 506
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    .restart local v1       #i:I
    :cond_0
    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/google/gson/JsonParserJavacc;->jj_2_rtns:[Lcom/google/gson/JsonParserJavacc$JJCalls;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/google/gson/JsonParserJavacc;->jj_2_rtns:[Lcom/google/gson/JsonParserJavacc$JJCalls;

    new-instance v3, Lcom/google/gson/JsonParserJavacc$JJCalls;

    invoke-direct {v3}, Lcom/google/gson/JsonParserJavacc$JJCalls;-><init>()V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 507
    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 7
    .parameter "stream"

    .prologue
    const/16 v6, 0x12

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 525
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 477
    new-array v1, v6, [I

    iput-object v1, p0, Lcom/google/gson/JsonParserJavacc;->jj_la1:[I

    .line 490
    new-array v1, v5, [Lcom/google/gson/JsonParserJavacc$JJCalls;

    iput-object v1, p0, Lcom/google/gson/JsonParserJavacc;->jj_2_rtns:[Lcom/google/gson/JsonParserJavacc$JJCalls;

    .line 491
    iput-boolean v4, p0, Lcom/google/gson/JsonParserJavacc;->jj_rescan:Z

    .line 492
    iput v4, p0, Lcom/google/gson/JsonParserJavacc;->jj_gc:I

    .line 591
    new-instance v1, Lcom/google/gson/JsonParserJavacc$LookaheadSuccess;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/gson/JsonParserJavacc$LookaheadSuccess;-><init>(Lcom/google/gson/JsonParserJavacc$1;)V

    iput-object v1, p0, Lcom/google/gson/JsonParserJavacc;->jj_ls:Lcom/google/gson/JsonParserJavacc$LookaheadSuccess;

    .line 640
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/gson/JsonParserJavacc;->jj_expentries:Ljava/util/List;

    .line 642
    iput v3, p0, Lcom/google/gson/JsonParserJavacc;->jj_kind:I

    .line 643
    const/16 v1, 0x64

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/google/gson/JsonParserJavacc;->jj_lasttokens:[I

    .line 526
    new-instance v1, Lcom/google/gson/SimpleCharStream;

    invoke-direct {v1, p1, v5, v5}, Lcom/google/gson/SimpleCharStream;-><init>(Ljava/io/Reader;II)V

    iput-object v1, p0, Lcom/google/gson/JsonParserJavacc;->jj_input_stream:Lcom/google/gson/SimpleCharStream;

    .line 527
    new-instance v1, Lcom/google/gson/JsonParserJavaccTokenManager;

    iget-object v2, p0, Lcom/google/gson/JsonParserJavacc;->jj_input_stream:Lcom/google/gson/SimpleCharStream;

    invoke-direct {v1, v2}, Lcom/google/gson/JsonParserJavaccTokenManager;-><init>(Lcom/google/gson/SimpleCharStream;)V

    iput-object v1, p0, Lcom/google/gson/JsonParserJavacc;->token_source:Lcom/google/gson/JsonParserJavaccTokenManager;

    .line 528
    new-instance v1, Lcom/google/gson/Token;

    invoke-direct {v1}, Lcom/google/gson/Token;-><init>()V

    iput-object v1, p0, Lcom/google/gson/JsonParserJavacc;->token:Lcom/google/gson/Token;

    .line 529
    iput v3, p0, Lcom/google/gson/JsonParserJavacc;->jj_ntk:I

    .line 530
    iput v4, p0, Lcom/google/gson/JsonParserJavacc;->jj_gen:I

    .line 531
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v6, :cond_0

    iget-object v1, p0, Lcom/google/gson/JsonParserJavacc;->jj_la1:[I

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 532
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/google/gson/JsonParserJavacc;->jj_2_rtns:[Lcom/google/gson/JsonParserJavacc$JJCalls;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/gson/JsonParserJavacc;->jj_2_rtns:[Lcom/google/gson/JsonParserJavacc$JJCalls;

    new-instance v2, Lcom/google/gson/JsonParserJavacc$JJCalls;

    invoke-direct {v2}, Lcom/google/gson/JsonParserJavacc$JJCalls;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 533
    :cond_1
    return-void
.end method

.method private final Digits()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/ParseException;
        }
    .end annotation

    .prologue
    .line 402
    const/4 v1, 0x6

    invoke-direct {p0, v1}, Lcom/google/gson/JsonParserJavacc;->jj_consume_token(I)Lcom/google/gson/Token;

    move-result-object v0

    .line 403
    .local v0, t:Lcom/google/gson/Token;
    iget-object v1, v0, Lcom/google/gson/Token;->image:Ljava/lang/String;

    return-object v1
.end method

.method private final Identifier()Lcom/google/gson/Token;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/ParseException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 384
    iget v1, p0, Lcom/google/gson/JsonParserJavacc;->jj_ntk:I

    if-ne v1, v4, :cond_0

    invoke-direct {p0}, Lcom/google/gson/JsonParserJavacc;->jj_ntk()I

    move-result v1

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 392
    iget-object v1, p0, Lcom/google/gson/JsonParserJavacc;->jj_la1:[I

    const/16 v2, 0x10

    iget v3, p0, Lcom/google/gson/JsonParserJavacc;->jj_gen:I

    aput v3, v1, v2

    .line 393
    invoke-direct {p0, v4}, Lcom/google/gson/JsonParserJavacc;->jj_consume_token(I)Lcom/google/gson/Token;

    .line 394
    new-instance v1, Lcom/google/gson/ParseException;

    invoke-direct {v1}, Lcom/google/gson/ParseException;-><init>()V

    throw v1

    .line 384
    :cond_0
    iget v1, p0, Lcom/google/gson/JsonParserJavacc;->jj_ntk:I

    goto :goto_0

    .line 386
    :pswitch_0
    const/16 v1, 0xc

    invoke-direct {p0, v1}, Lcom/google/gson/JsonParserJavacc;->jj_consume_token(I)Lcom/google/gson/Token;

    move-result-object v0

    .line 396
    .local v0, t:Lcom/google/gson/Token;
    :goto_1
    return-object v0

    .line 389
    .end local v0           #t:Lcom/google/gson/Token;
    :pswitch_1
    const/16 v1, 0xb

    invoke-direct {p0, v1}, Lcom/google/gson/JsonParserJavacc;->jj_consume_token(I)Lcom/google/gson/Token;

    move-result-object v0

    .line 390
    .restart local v0       #t:Lcom/google/gson/Token;
    goto :goto_1

    .line 384
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final JsonArray()Lcom/google/gson/JsonArray;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/ParseException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    .line 138
    new-instance v0, Lcom/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/google/gson/JsonArray;-><init>()V

    .line 139
    .local v0, array:Lcom/google/gson/JsonArray;
    const/16 v2, 0x1f

    invoke-direct {p0, v2}, Lcom/google/gson/JsonParserJavacc;->jj_consume_token(I)Lcom/google/gson/Token;

    .line 140
    iget v2, p0, Lcom/google/gson/JsonParserJavacc;->jj_ntk:I

    if-ne v2, v5, :cond_0

    invoke-direct {p0}, Lcom/google/gson/JsonParserJavacc;->jj_ntk()I

    move-result v2

    :goto_0
    sparse-switch v2, :sswitch_data_0

    .line 172
    iget-object v2, p0, Lcom/google/gson/JsonParserJavacc;->jj_la1:[I

    const/4 v3, 0x7

    iget v4, p0, Lcom/google/gson/JsonParserJavacc;->jj_gen:I

    aput v4, v2, v3

    .line 173
    invoke-direct {p0, v5}, Lcom/google/gson/JsonParserJavacc;->jj_consume_token(I)Lcom/google/gson/Token;

    .line 174
    new-instance v2, Lcom/google/gson/ParseException;

    invoke-direct {v2}, Lcom/google/gson/ParseException;-><init>()V

    throw v2

    .line 140
    :cond_0
    iget v2, p0, Lcom/google/gson/JsonParserJavacc;->jj_ntk:I

    goto :goto_0

    .line 142
    :sswitch_0
    invoke-direct {p0, v0}, Lcom/google/gson/JsonParserJavacc;->JsonArrayEmpty(Lcom/google/gson/JsonArray;)Lcom/google/gson/JsonArray;

    move-result-object v0

    move-object v1, v0

    .line 169
    .end local v0           #array:Lcom/google/gson/JsonArray;
    .local v1, array:Ljava/lang/Object;
    :goto_1
    return-object v1

    .line 155
    .end local v1           #array:Ljava/lang/Object;
    .restart local v0       #array:Lcom/google/gson/JsonArray;
    :sswitch_1
    invoke-direct {p0, v0}, Lcom/google/gson/JsonParserJavacc;->JsonArrayElement(Lcom/google/gson/JsonArray;)Lcom/google/gson/JsonArray;

    .line 158
    :goto_2
    iget v2, p0, Lcom/google/gson/JsonParserJavacc;->jj_ntk:I

    if-ne v2, v5, :cond_1

    invoke-direct {p0}, Lcom/google/gson/JsonParserJavacc;->jj_ntk()I

    move-result v2

    :goto_3
    packed-switch v2, :pswitch_data_0

    .line 163
    iget-object v2, p0, Lcom/google/gson/JsonParserJavacc;->jj_la1:[I

    const/4 v3, 0x6

    iget v4, p0, Lcom/google/gson/JsonParserJavacc;->jj_gen:I

    aput v4, v2, v3

    .line 168
    const/16 v2, 0x20

    invoke-direct {p0, v2}, Lcom/google/gson/JsonParserJavacc;->jj_consume_token(I)Lcom/google/gson/Token;

    move-object v1, v0

    .line 169
    .restart local v1       #array:Ljava/lang/Object;
    goto :goto_1

    .line 158
    .end local v1           #array:Ljava/lang/Object;
    :cond_1
    iget v2, p0, Lcom/google/gson/JsonParserJavacc;->jj_ntk:I

    goto :goto_3

    .line 166
    :pswitch_0
    invoke-direct {p0, v0}, Lcom/google/gson/JsonParserJavacc;->JsonArrayNextElement(Lcom/google/gson/JsonArray;)Lcom/google/gson/JsonArray;

    goto :goto_2

    .line 140
    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_1
        0x7 -> :sswitch_1
        0x8 -> :sswitch_1
        0x9 -> :sswitch_1
        0xa -> :sswitch_1
        0x10 -> :sswitch_1
        0x11 -> :sswitch_1
        0x1b -> :sswitch_1
        0x1f -> :sswitch_1
        0x20 -> :sswitch_0
        0x21 -> :sswitch_1
    .end sparse-switch

    .line 158
    :pswitch_data_0
    .packed-switch 0x1d
        :pswitch_0
    .end packed-switch
.end method

.method private final JsonArrayElement(Lcom/google/gson/JsonArray;)Lcom/google/gson/JsonArray;
    .locals 1
    .parameter "array"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/ParseException;
        }
    .end annotation

    .prologue
    .line 186
    const/4 v0, 0x0

    .line 187
    .local v0, element:Lcom/google/gson/JsonElement;
    invoke-direct {p0}, Lcom/google/gson/JsonParserJavacc;->JsonValue()Lcom/google/gson/JsonElement;

    move-result-object v0

    .line 188
    invoke-virtual {p1, v0}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    .line 189
    return-object p1
.end method

.method private final JsonArrayEmpty(Lcom/google/gson/JsonArray;)Lcom/google/gson/JsonArray;
    .locals 1
    .parameter "array"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/ParseException;
        }
    .end annotation

    .prologue
    .line 180
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lcom/google/gson/JsonParserJavacc;->jj_consume_token(I)Lcom/google/gson/Token;

    .line 181
    return-object p1
.end method

.method private final JsonArrayNextElement(Lcom/google/gson/JsonArray;)Lcom/google/gson/JsonArray;
    .locals 2
    .parameter "array"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/ParseException;
        }
    .end annotation

    .prologue
    .line 194
    const/4 v0, 0x0

    .line 195
    .local v0, element:Lcom/google/gson/JsonElement;
    const/16 v1, 0x1d

    invoke-direct {p0, v1}, Lcom/google/gson/JsonParserJavacc;->jj_consume_token(I)Lcom/google/gson/Token;

    .line 196
    invoke-direct {p0}, Lcom/google/gson/JsonParserJavacc;->JsonValue()Lcom/google/gson/JsonElement;

    move-result-object v0

    .line 197
    invoke-virtual {p1, v0}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    .line 198
    return-object p1
.end method

.method private final JsonBoolean()Lcom/google/gson/JsonPrimitive;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/ParseException;
        }
    .end annotation

    .prologue
    .line 238
    const/16 v2, 0xa

    invoke-direct {p0, v2}, Lcom/google/gson/JsonParserJavacc;->jj_consume_token(I)Lcom/google/gson/Token;

    move-result-object v0

    .line 239
    .local v0, t:Lcom/google/gson/Token;
    iget-object v2, v0, Lcom/google/gson/Token;->image:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 240
    .local v1, value:Z
    new-instance v2, Lcom/google/gson/JsonPrimitive;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/Boolean;)V

    return-object v2
.end method

.method private final JsonExp()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/ParseException;
        }
    .end annotation

    .prologue
    .line 377
    const/4 v1, 0x5

    invoke-direct {p0, v1}, Lcom/google/gson/JsonParserJavacc;->jj_consume_token(I)Lcom/google/gson/Token;

    move-result-object v0

    .line 378
    .local v0, t:Lcom/google/gson/Token;
    iget-object v1, v0, Lcom/google/gson/Token;->image:Ljava/lang/String;

    return-object v1
.end method

.method private final JsonFrac()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/ParseException;
        }
    .end annotation

    .prologue
    .line 369
    const/16 v1, 0x22

    invoke-direct {p0, v1}, Lcom/google/gson/JsonParserJavacc;->jj_consume_token(I)Lcom/google/gson/Token;

    .line 370
    invoke-direct {p0}, Lcom/google/gson/JsonParserJavacc;->Digits()Ljava/lang/String;

    move-result-object v0

    .line 371
    .local v0, digits:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private final JsonInt()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/ParseException;
        }
    .end annotation

    .prologue
    .line 350
    const/4 v1, 0x0

    .line 351
    .local v1, negative:Z
    iget v2, p0, Lcom/google/gson/JsonParserJavacc;->jj_ntk:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    invoke-direct {p0}, Lcom/google/gson/JsonParserJavacc;->jj_ntk()I

    move-result v2

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 357
    iget-object v2, p0, Lcom/google/gson/JsonParserJavacc;->jj_la1:[I

    const/16 v3, 0xf

    iget v4, p0, Lcom/google/gson/JsonParserJavacc;->jj_gen:I

    aput v4, v2, v3

    .line 360
    :goto_1
    invoke-direct {p0}, Lcom/google/gson/JsonParserJavacc;->Digits()Ljava/lang/String;

    move-result-object v0

    .line 361
    .local v0, digits:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 362
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 363
    .end local v0           #digits:Ljava/lang/String;
    :cond_0
    return-object v0

    .line 351
    :cond_1
    iget v2, p0, Lcom/google/gson/JsonParserJavacc;->jj_ntk:I

    goto :goto_0

    .line 353
    :pswitch_0
    const/16 v2, 0x21

    invoke-direct {p0, v2}, Lcom/google/gson/JsonParserJavacc;->jj_consume_token(I)Lcom/google/gson/Token;

    .line 354
    const/4 v1, 0x1

    .line 355
    goto :goto_1

    .line 351
    nop

    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_0
    .end packed-switch
.end method

.method private final JsonMemberName()Lcom/google/gson/JsonPrimitive;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/ParseException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    .line 118
    iget v2, p0, Lcom/google/gson/JsonParserJavacc;->jj_ntk:I

    if-ne v2, v5, :cond_0

    invoke-direct {p0}, Lcom/google/gson/JsonParserJavacc;->jj_ntk()I

    move-result v2

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 130
    :pswitch_0
    iget-object v2, p0, Lcom/google/gson/JsonParserJavacc;->jj_la1:[I

    const/4 v3, 0x5

    iget v4, p0, Lcom/google/gson/JsonParserJavacc;->jj_gen:I

    aput v4, v2, v3

    .line 131
    invoke-direct {p0, v5}, Lcom/google/gson/JsonParserJavacc;->jj_consume_token(I)Lcom/google/gson/Token;

    .line 132
    new-instance v2, Lcom/google/gson/ParseException;

    invoke-direct {v2}, Lcom/google/gson/ParseException;-><init>()V

    throw v2

    .line 118
    :cond_0
    iget v2, p0, Lcom/google/gson/JsonParserJavacc;->jj_ntk:I

    goto :goto_0

    .line 121
    :pswitch_1
    invoke-direct {p0}, Lcom/google/gson/JsonParserJavacc;->Identifier()Lcom/google/gson/Token;

    move-result-object v0

    .line 122
    .local v0, t:Lcom/google/gson/Token;
    new-instance v1, Lcom/google/gson/JsonPrimitive;

    iget-object v2, v0, Lcom/google/gson/Token;->image:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    .line 127
    .end local v0           #t:Lcom/google/gson/Token;
    :goto_1
    return-object v1

    .line 126
    :pswitch_2
    invoke-direct {p0}, Lcom/google/gson/JsonParserJavacc;->JsonString()Lcom/google/gson/JsonPrimitive;

    move-result-object v1

    .line 127
    .local v1, value:Lcom/google/gson/JsonPrimitive;
    goto :goto_1

    .line 118
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private final JsonNull()Lcom/google/gson/JsonNull;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/ParseException;
        }
    .end annotation

    .prologue
    .line 89
    const/4 v1, 0x7

    invoke-direct {p0, v1}, Lcom/google/gson/JsonParserJavacc;->jj_consume_token(I)Lcom/google/gson/Token;

    move-result-object v0

    .line 90
    .local v0, t:Lcom/google/gson/Token;
    invoke-static {}, Lcom/google/gson/JsonNull;->createJsonNull()Lcom/google/gson/JsonNull;

    move-result-object v1

    return-object v1
.end method

.method private final JsonNumber()Lcom/google/gson/JsonPrimitive;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/ParseException;
        }
    .end annotation

    .prologue
    const/4 v8, -0x1

    .line 272
    const/4 v2, 0x0

    .line 273
    .local v2, intpart:Ljava/lang/String;
    const/4 v1, 0x0

    .line 274
    .local v1, fracpart:Ljava/lang/String;
    const/4 v0, 0x0

    .line 276
    .local v0, exppart:Ljava/lang/String;
    const/4 v5, 0x2

    invoke-direct {p0, v5}, Lcom/google/gson/JsonParserJavacc;->jj_2_1(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 277
    invoke-direct {p0}, Lcom/google/gson/JsonParserJavacc;->JsonSpecialNumbers()Lcom/google/gson/JsonPrimitive;

    move-result-object v4

    .line 308
    :goto_0
    return-object v4

    .line 280
    :cond_0
    iget v5, p0, Lcom/google/gson/JsonParserJavacc;->jj_ntk:I

    if-ne v5, v8, :cond_1

    invoke-direct {p0}, Lcom/google/gson/JsonParserJavacc;->jj_ntk()I

    move-result v5

    :goto_1
    sparse-switch v5, :sswitch_data_0

    .line 311
    iget-object v5, p0, Lcom/google/gson/JsonParserJavacc;->jj_la1:[I

    const/16 v6, 0xc

    iget v7, p0, Lcom/google/gson/JsonParserJavacc;->jj_gen:I

    aput v7, v5, v6

    .line 312
    invoke-direct {p0, v8}, Lcom/google/gson/JsonParserJavacc;->jj_consume_token(I)Lcom/google/gson/Token;

    .line 313
    new-instance v5, Lcom/google/gson/ParseException;

    invoke-direct {v5}, Lcom/google/gson/ParseException;-><init>()V

    throw v5

    .line 280
    :cond_1
    iget v5, p0, Lcom/google/gson/JsonParserJavacc;->jj_ntk:I

    goto :goto_1

    .line 283
    :sswitch_0
    invoke-direct {p0}, Lcom/google/gson/JsonParserJavacc;->JsonInt()Ljava/lang/String;

    move-result-object v2

    .line 284
    iget v5, p0, Lcom/google/gson/JsonParserJavacc;->jj_ntk:I

    if-ne v5, v8, :cond_5

    invoke-direct {p0}, Lcom/google/gson/JsonParserJavacc;->jj_ntk()I

    move-result v5

    :goto_2
    packed-switch v5, :pswitch_data_0

    .line 289
    iget-object v5, p0, Lcom/google/gson/JsonParserJavacc;->jj_la1:[I

    const/16 v6, 0xa

    iget v7, p0, Lcom/google/gson/JsonParserJavacc;->jj_gen:I

    aput v7, v5, v6

    .line 292
    :goto_3
    iget v5, p0, Lcom/google/gson/JsonParserJavacc;->jj_ntk:I

    if-ne v5, v8, :cond_6

    invoke-direct {p0}, Lcom/google/gson/JsonParserJavacc;->jj_ntk()I

    move-result v5

    :goto_4
    packed-switch v5, :pswitch_data_1

    .line 297
    iget-object v5, p0, Lcom/google/gson/JsonParserJavacc;->jj_la1:[I

    const/16 v6, 0xb

    iget v7, p0, Lcom/google/gson/JsonParserJavacc;->jj_gen:I

    aput v7, v5, v6

    .line 301
    :goto_5
    if-nez v0, :cond_2

    if-eqz v1, :cond_7

    .line 302
    :cond_2
    if-nez v1, :cond_3

    const-string v1, ""

    .line 303
    :cond_3
    if-nez v0, :cond_4

    const-string v0, ""

    .line 304
    :cond_4
    new-instance v3, Ljava/math/BigDecimal;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 308
    .local v3, n:Ljava/lang/Number;
    :goto_6
    new-instance v4, Lcom/google/gson/JsonPrimitive;

    invoke-direct {v4, v3}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    goto :goto_0

    .line 284
    .end local v3           #n:Ljava/lang/Number;
    :cond_5
    iget v5, p0, Lcom/google/gson/JsonParserJavacc;->jj_ntk:I

    goto :goto_2

    .line 286
    :pswitch_0
    invoke-direct {p0}, Lcom/google/gson/JsonParserJavacc;->JsonFrac()Ljava/lang/String;

    move-result-object v1

    .line 287
    goto :goto_3

    .line 292
    :cond_6
    iget v5, p0, Lcom/google/gson/JsonParserJavacc;->jj_ntk:I

    goto :goto_4

    .line 294
    :pswitch_1
    invoke-direct {p0}, Lcom/google/gson/JsonParserJavacc;->JsonExp()Ljava/lang/String;

    move-result-object v0

    .line 295
    goto :goto_5

    .line 306
    :cond_7
    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .restart local v3       #n:Ljava/lang/Number;
    goto :goto_6

    .line 280
    nop

    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_0
        0x21 -> :sswitch_0
    .end sparse-switch

    .line 284
    :pswitch_data_0
    .packed-switch 0x22
        :pswitch_0
    .end packed-switch

    .line 292
    :pswitch_data_1
    .packed-switch 0x5
        :pswitch_1
    .end packed-switch
.end method

.method private final JsonObject()Lcom/google/gson/JsonObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/ParseException;
        }
    .end annotation

    .prologue
    .line 69
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 70
    .local v0, o:Lcom/google/gson/JsonObject;
    const/16 v1, 0x1b

    invoke-direct {p0, v1}, Lcom/google/gson/JsonParserJavacc;->jj_consume_token(I)Lcom/google/gson/Token;

    .line 71
    iget v1, p0, Lcom/google/gson/JsonParserJavacc;->jj_ntk:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lcom/google/gson/JsonParserJavacc;->jj_ntk()I

    move-result v1

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 79
    :pswitch_0
    iget-object v1, p0, Lcom/google/gson/JsonParserJavacc;->jj_la1:[I

    const/4 v2, 0x3

    iget v3, p0, Lcom/google/gson/JsonParserJavacc;->jj_gen:I

    aput v3, v1, v2

    .line 82
    :goto_1
    const/16 v1, 0x1c

    invoke-direct {p0, v1}, Lcom/google/gson/JsonParserJavacc;->jj_consume_token(I)Lcom/google/gson/Token;

    .line 83
    return-object v0

    .line 71
    :cond_0
    iget v1, p0, Lcom/google/gson/JsonParserJavacc;->jj_ntk:I

    goto :goto_0

    .line 76
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/google/gson/JsonParserJavacc;->Members(Lcom/google/gson/JsonObject;)V

    goto :goto_1

    .line 71
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private final JsonPrimitive()Lcom/google/gson/JsonPrimitive;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/ParseException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    .line 246
    iget v2, p0, Lcom/google/gson/JsonParserJavacc;->jj_ntk:I

    if-ne v2, v5, :cond_0

    invoke-direct {p0}, Lcom/google/gson/JsonParserJavacc;->jj_ntk()I

    move-result v2

    :goto_0
    sparse-switch v2, :sswitch_data_0

    .line 264
    iget-object v2, p0, Lcom/google/gson/JsonParserJavacc;->jj_la1:[I

    const/16 v3, 0x9

    iget v4, p0, Lcom/google/gson/JsonParserJavacc;->jj_gen:I

    aput v4, v2, v3

    .line 265
    invoke-direct {p0, v5}, Lcom/google/gson/JsonParserJavacc;->jj_consume_token(I)Lcom/google/gson/Token;

    .line 266
    new-instance v2, Lcom/google/gson/ParseException;

    invoke-direct {v2}, Lcom/google/gson/ParseException;-><init>()V

    throw v2

    .line 246
    :cond_0
    iget v2, p0, Lcom/google/gson/JsonParserJavacc;->jj_ntk:I

    goto :goto_0

    .line 249
    :sswitch_0
    invoke-direct {p0}, Lcom/google/gson/JsonParserJavacc;->JsonString()Lcom/google/gson/JsonPrimitive;

    move-result-object v0

    .local v0, value:Lcom/google/gson/JsonPrimitive;
    move-object v1, v0

    .line 261
    .end local v0           #value:Lcom/google/gson/JsonPrimitive;
    .local v1, value:Lcom/google/gson/JsonPrimitive;
    :goto_1
    return-object v1

    .line 256
    .end local v1           #value:Lcom/google/gson/JsonPrimitive;
    :sswitch_1
    invoke-direct {p0}, Lcom/google/gson/JsonParserJavacc;->JsonNumber()Lcom/google/gson/JsonPrimitive;

    move-result-object v0

    .restart local v0       #value:Lcom/google/gson/JsonPrimitive;
    move-object v1, v0

    .line 257
    .end local v0           #value:Lcom/google/gson/JsonPrimitive;
    .restart local v1       #value:Lcom/google/gson/JsonPrimitive;
    goto :goto_1

    .line 260
    .end local v1           #value:Lcom/google/gson/JsonPrimitive;
    :sswitch_2
    invoke-direct {p0}, Lcom/google/gson/JsonParserJavacc;->JsonBoolean()Lcom/google/gson/JsonPrimitive;

    move-result-object v0

    .restart local v0       #value:Lcom/google/gson/JsonPrimitive;
    move-object v1, v0

    .line 261
    .end local v0           #value:Lcom/google/gson/JsonPrimitive;
    .restart local v1       #value:Lcom/google/gson/JsonPrimitive;
    goto :goto_1

    .line 246
    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_1
        0x8 -> :sswitch_1
        0x9 -> :sswitch_1
        0xa -> :sswitch_2
        0x10 -> :sswitch_0
        0x11 -> :sswitch_0
        0x21 -> :sswitch_1
    .end sparse-switch
.end method

.method private final JsonSpecialNumbers()Lcom/google/gson/JsonPrimitive;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/ParseException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 320
    const/4 v0, 0x0

    .line 321
    .local v0, negative:Z
    iget v1, p0, Lcom/google/gson/JsonParserJavacc;->jj_ntk:I

    if-ne v1, v4, :cond_0

    invoke-direct {p0}, Lcom/google/gson/JsonParserJavacc;->jj_ntk()I

    move-result v1

    :goto_0
    sparse-switch v1, :sswitch_data_0

    .line 341
    iget-object v1, p0, Lcom/google/gson/JsonParserJavacc;->jj_la1:[I

    const/16 v2, 0xe

    iget v3, p0, Lcom/google/gson/JsonParserJavacc;->jj_gen:I

    aput v3, v1, v2

    .line 342
    invoke-direct {p0, v4}, Lcom/google/gson/JsonParserJavacc;->jj_consume_token(I)Lcom/google/gson/Token;

    .line 343
    new-instance v1, Lcom/google/gson/ParseException;

    invoke-direct {v1}, Lcom/google/gson/ParseException;-><init>()V

    throw v1

    .line 321
    :cond_0
    iget v1, p0, Lcom/google/gson/JsonParserJavacc;->jj_ntk:I

    goto :goto_0

    .line 323
    :sswitch_0
    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/google/gson/JsonParserJavacc;->jj_consume_token(I)Lcom/google/gson/Token;

    .line 324
    new-instance v1, Lcom/google/gson/JsonPrimitive;

    const-wide/high16 v2, 0x7ff8

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    .line 338
    :goto_1
    return-object v1

    .line 328
    :sswitch_1
    iget v1, p0, Lcom/google/gson/JsonParserJavacc;->jj_ntk:I

    if-ne v1, v4, :cond_1

    invoke-direct {p0}, Lcom/google/gson/JsonParserJavacc;->jj_ntk()I

    move-result v1

    :goto_2
    packed-switch v1, :pswitch_data_0

    .line 334
    iget-object v1, p0, Lcom/google/gson/JsonParserJavacc;->jj_la1:[I

    const/16 v2, 0xd

    iget v3, p0, Lcom/google/gson/JsonParserJavacc;->jj_gen:I

    aput v3, v1, v2

    .line 337
    :goto_3
    const/16 v1, 0x9

    invoke-direct {p0, v1}, Lcom/google/gson/JsonParserJavacc;->jj_consume_token(I)Lcom/google/gson/Token;

    .line 338
    new-instance v3, Lcom/google/gson/JsonPrimitive;

    if-eqz v0, :cond_2

    const-wide/high16 v1, -0x10

    :goto_4
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v3, v1}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    move-object v1, v3

    goto :goto_1

    .line 328
    :cond_1
    iget v1, p0, Lcom/google/gson/JsonParserJavacc;->jj_ntk:I

    goto :goto_2

    .line 330
    :pswitch_0
    const/16 v1, 0x21

    invoke-direct {p0, v1}, Lcom/google/gson/JsonParserJavacc;->jj_consume_token(I)Lcom/google/gson/Token;

    .line 331
    const/4 v0, 0x1

    .line 332
    goto :goto_3

    .line 338
    :cond_2
    const-wide/high16 v1, 0x7ff0

    goto :goto_4

    .line 321
    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_0
        0x9 -> :sswitch_1
        0x21 -> :sswitch_1
    .end sparse-switch

    .line 328
    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_0
    .end packed-switch
.end method

.method private final JsonString()Lcom/google/gson/JsonPrimitive;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/ParseException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x11

    const/4 v4, -0x1

    .line 409
    iget v2, p0, Lcom/google/gson/JsonParserJavacc;->jj_ntk:I

    if-ne v2, v4, :cond_0

    invoke-direct {p0}, Lcom/google/gson/JsonParserJavacc;->jj_ntk()I

    move-result v2

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 417
    iget-object v2, p0, Lcom/google/gson/JsonParserJavacc;->jj_la1:[I

    iget v3, p0, Lcom/google/gson/JsonParserJavacc;->jj_gen:I

    aput v3, v2, v5

    .line 418
    invoke-direct {p0, v4}, Lcom/google/gson/JsonParserJavacc;->jj_consume_token(I)Lcom/google/gson/Token;

    .line 419
    new-instance v2, Lcom/google/gson/ParseException;

    invoke-direct {v2}, Lcom/google/gson/ParseException;-><init>()V

    throw v2

    .line 409
    :cond_0
    iget v2, p0, Lcom/google/gson/JsonParserJavacc;->jj_ntk:I

    goto :goto_0

    .line 411
    :pswitch_0
    const/16 v2, 0x10

    invoke-direct {p0, v2}, Lcom/google/gson/JsonParserJavacc;->jj_consume_token(I)Lcom/google/gson/Token;

    move-result-object v0

    .line 421
    .local v0, t:Lcom/google/gson/Token;
    :goto_1
    iget-object v2, v0, Lcom/google/gson/Token;->image:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/gson/StringUnmarshaller;->unmarshall(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 422
    .local v1, value:Ljava/lang/String;
    new-instance v2, Lcom/google/gson/JsonPrimitive;

    invoke-direct {v2, v1}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    return-object v2

    .line 414
    .end local v0           #t:Lcom/google/gson/Token;
    .end local v1           #value:Ljava/lang/String;
    :pswitch_1
    invoke-direct {p0, v5}, Lcom/google/gson/JsonParserJavacc;->jj_consume_token(I)Lcom/google/gson/Token;

    move-result-object v0

    .line 415
    .restart local v0       #t:Lcom/google/gson/Token;
    goto :goto_1

    .line 409
    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private final JsonValue()Lcom/google/gson/JsonElement;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/ParseException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 203
    const/4 v0, 0x0

    .line 204
    .local v0, o:Lcom/google/gson/JsonElement;
    iget v1, p0, Lcom/google/gson/JsonParserJavacc;->jj_ntk:I

    if-ne v1, v4, :cond_0

    invoke-direct {p0}, Lcom/google/gson/JsonParserJavacc;->jj_ntk()I

    move-result v1

    :goto_0
    sparse-switch v1, :sswitch_data_0

    .line 228
    iget-object v1, p0, Lcom/google/gson/JsonParserJavacc;->jj_la1:[I

    const/16 v2, 0x8

    iget v3, p0, Lcom/google/gson/JsonParserJavacc;->jj_gen:I

    aput v3, v1, v2

    .line 229
    invoke-direct {p0, v4}, Lcom/google/gson/JsonParserJavacc;->jj_consume_token(I)Lcom/google/gson/Token;

    .line 230
    new-instance v1, Lcom/google/gson/ParseException;

    invoke-direct {v1}, Lcom/google/gson/ParseException;-><init>()V

    throw v1

    .line 204
    :cond_0
    iget v1, p0, Lcom/google/gson/JsonParserJavacc;->jj_ntk:I

    goto :goto_0

    .line 207
    :sswitch_0
    invoke-direct {p0}, Lcom/google/gson/JsonParserJavacc;->JsonString()Lcom/google/gson/JsonPrimitive;

    move-result-object v0

    .line 232
    :goto_1
    return-object v0

    .line 213
    :sswitch_1
    invoke-direct {p0}, Lcom/google/gson/JsonParserJavacc;->JsonNumber()Lcom/google/gson/JsonPrimitive;

    move-result-object v0

    .line 214
    goto :goto_1

    .line 216
    :sswitch_2
    invoke-direct {p0}, Lcom/google/gson/JsonParserJavacc;->JsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 217
    goto :goto_1

    .line 219
    :sswitch_3
    invoke-direct {p0}, Lcom/google/gson/JsonParserJavacc;->JsonArray()Lcom/google/gson/JsonArray;

    move-result-object v0

    .line 220
    goto :goto_1

    .line 222
    :sswitch_4
    invoke-direct {p0}, Lcom/google/gson/JsonParserJavacc;->JsonBoolean()Lcom/google/gson/JsonPrimitive;

    move-result-object v0

    .line 223
    goto :goto_1

    .line 225
    :sswitch_5
    invoke-direct {p0}, Lcom/google/gson/JsonParserJavacc;->JsonNull()Lcom/google/gson/JsonNull;

    move-result-object v0

    .line 226
    goto :goto_1

    .line 204
    nop

    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_1
        0x7 -> :sswitch_5
        0x8 -> :sswitch_1
        0x9 -> :sswitch_1
        0xa -> :sswitch_4
        0x10 -> :sswitch_0
        0x11 -> :sswitch_0
        0x1b -> :sswitch_2
        0x1f -> :sswitch_3
        0x21 -> :sswitch_1
    .end sparse-switch
.end method

.method private final Members(Lcom/google/gson/JsonObject;)V
    .locals 3
    .parameter "o"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/ParseException;
        }
    .end annotation

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/google/gson/JsonParserJavacc;->Pair(Lcom/google/gson/JsonObject;)V

    .line 96
    iget v0, p0, Lcom/google/gson/JsonParserJavacc;->jj_ntk:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/google/gson/JsonParserJavacc;->jj_ntk()I

    move-result v0

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 102
    iget-object v0, p0, Lcom/google/gson/JsonParserJavacc;->jj_la1:[I

    const/4 v1, 0x4

    iget v2, p0, Lcom/google/gson/JsonParserJavacc;->jj_gen:I

    aput v2, v0, v1

    .line 105
    :goto_1
    return-void

    .line 96
    :cond_0
    iget v0, p0, Lcom/google/gson/JsonParserJavacc;->jj_ntk:I

    goto :goto_0

    .line 98
    :pswitch_0
    const/16 v0, 0x1d

    invoke-direct {p0, v0}, Lcom/google/gson/JsonParserJavacc;->jj_consume_token(I)Lcom/google/gson/Token;

    .line 99
    invoke-direct {p0, p1}, Lcom/google/gson/JsonParserJavacc;->Members(Lcom/google/gson/JsonObject;)V

    goto :goto_1

    .line 96
    nop

    :pswitch_data_0
    .packed-switch 0x1d
        :pswitch_0
    .end packed-switch
.end method

.method private final Pair(Lcom/google/gson/JsonObject;)V
    .locals 3
    .parameter "o"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/ParseException;
        }
    .end annotation

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/google/gson/JsonParserJavacc;->JsonMemberName()Lcom/google/gson/JsonPrimitive;

    move-result-object v0

    .line 111
    .local v0, property:Lcom/google/gson/JsonPrimitive;
    const/16 v2, 0x1e

    invoke-direct {p0, v2}, Lcom/google/gson/JsonParserJavacc;->jj_consume_token(I)Lcom/google/gson/Token;

    .line 112
    invoke-direct {p0}, Lcom/google/gson/JsonParserJavacc;->JsonValue()Lcom/google/gson/JsonElement;

    move-result-object v1

    .line 113
    .local v1, value:Lcom/google/gson/JsonElement;
    invoke-virtual {v0}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v1}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 114
    return-void
.end method

.method private jj_2_1(I)Z
    .locals 4
    .parameter "xla"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 427
    iput p1, p0, Lcom/google/gson/JsonParserJavacc;->jj_la:I

    iget-object v3, p0, Lcom/google/gson/JsonParserJavacc;->token:Lcom/google/gson/Token;

    iput-object v3, p0, Lcom/google/gson/JsonParserJavacc;->jj_scanpos:Lcom/google/gson/Token;

    iput-object v3, p0, Lcom/google/gson/JsonParserJavacc;->jj_lastpos:Lcom/google/gson/Token;

    .line 428
    :try_start_0
    invoke-direct {p0}, Lcom/google/gson/JsonParserJavacc;->jj_3_1()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/gson/JsonParserJavacc$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_0

    .line 430
    :goto_0
    invoke-direct {p0, v2, p1}, Lcom/google/gson/JsonParserJavacc;->jj_save(II)V

    :goto_1
    return v1

    :cond_0
    move v1, v2

    .line 428
    goto :goto_0

    .line 429
    :catch_0
    move-exception v0

    .line 430
    .local v0, ls:Lcom/google/gson/JsonParserJavacc$LookaheadSuccess;
    invoke-direct {p0, v2, p1}, Lcom/google/gson/JsonParserJavacc;->jj_save(II)V

    goto :goto_1

    .end local v0           #ls:Lcom/google/gson/JsonParserJavacc$LookaheadSuccess;
    :catchall_0
    move-exception v1

    invoke-direct {p0, v2, p1}, Lcom/google/gson/JsonParserJavacc;->jj_save(II)V

    throw v1
.end method

.method private jj_3R_2()Z
    .locals 2

    .prologue
    .line 440
    iget-object v0, p0, Lcom/google/gson/JsonParserJavacc;->jj_scanpos:Lcom/google/gson/Token;

    .line 441
    .local v0, xsp:Lcom/google/gson/Token;
    invoke-direct {p0}, Lcom/google/gson/JsonParserJavacc;->jj_3R_3()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 442
    iput-object v0, p0, Lcom/google/gson/JsonParserJavacc;->jj_scanpos:Lcom/google/gson/Token;

    .line 443
    invoke-direct {p0}, Lcom/google/gson/JsonParserJavacc;->jj_3R_4()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 445
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private jj_3R_3()Z
    .locals 1

    .prologue
    .line 434
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/google/gson/JsonParserJavacc;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 435
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private jj_3R_4()Z
    .locals 2

    .prologue
    .line 455
    iget-object v0, p0, Lcom/google/gson/JsonParserJavacc;->jj_scanpos:Lcom/google/gson/Token;

    .line 456
    .local v0, xsp:Lcom/google/gson/Token;
    invoke-direct {p0}, Lcom/google/gson/JsonParserJavacc;->jj_3R_5()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/google/gson/JsonParserJavacc;->jj_scanpos:Lcom/google/gson/Token;

    .line 457
    :cond_0
    const/16 v1, 0x9

    invoke-direct {p0, v1}, Lcom/google/gson/JsonParserJavacc;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 458
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private jj_3R_5()Z
    .locals 1

    .prologue
    .line 449
    const/16 v0, 0x21

    invoke-direct {p0, v0}, Lcom/google/gson/JsonParserJavacc;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 450
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private jj_3_1()Z
    .locals 1

    .prologue
    .line 462
    invoke-direct {p0}, Lcom/google/gson/JsonParserJavacc;->jj_3R_2()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 463
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private jj_add_error_token(II)V
    .locals 6
    .parameter "kind"
    .parameter "pos"

    .prologue
    .line 647
    const/16 v3, 0x64

    if-lt p2, v3, :cond_1

    .line 669
    :cond_0
    :goto_0
    return-void

    .line 648
    :cond_1
    iget v3, p0, Lcom/google/gson/JsonParserJavacc;->jj_endpos:I

    add-int/lit8 v3, v3, 0x1

    if-ne p2, v3, :cond_2

    .line 649
    iget-object v3, p0, Lcom/google/gson/JsonParserJavacc;->jj_lasttokens:[I

    iget v4, p0, Lcom/google/gson/JsonParserJavacc;->jj_endpos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/google/gson/JsonParserJavacc;->jj_endpos:I

    aput p1, v3, v4

    goto :goto_0

    .line 650
    :cond_2
    iget v3, p0, Lcom/google/gson/JsonParserJavacc;->jj_endpos:I

    if-eqz v3, :cond_0

    .line 651
    iget v3, p0, Lcom/google/gson/JsonParserJavacc;->jj_endpos:I

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/google/gson/JsonParserJavacc;->jj_expentry:[I

    .line 652
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget v3, p0, Lcom/google/gson/JsonParserJavacc;->jj_endpos:I

    if-ge v0, v3, :cond_3

    .line 653
    iget-object v3, p0, Lcom/google/gson/JsonParserJavacc;->jj_expentry:[I

    iget-object v4, p0, Lcom/google/gson/JsonParserJavacc;->jj_lasttokens:[I

    aget v4, v4, v0

    aput v4, v3, v0

    .line 652
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 655
    :cond_3
    iget-object v3, p0, Lcom/google/gson/JsonParserJavacc;->jj_expentries:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, it:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 656
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    move-object v2, v3

    check-cast v2, [I

    .line 657
    .local v2, oldentry:[I
    array-length v3, v2

    iget-object v4, p0, Lcom/google/gson/JsonParserJavacc;->jj_expentry:[I

    array-length v4, v4

    if-ne v3, v4, :cond_4

    .line 658
    const/4 v0, 0x0

    :goto_2
    iget-object v3, p0, Lcom/google/gson/JsonParserJavacc;->jj_expentry:[I

    array-length v3, v3

    if-ge v0, v3, :cond_5

    .line 659
    aget v3, v2, v0

    iget-object v4, p0, Lcom/google/gson/JsonParserJavacc;->jj_expentry:[I

    aget v4, v4, v0

    if-ne v3, v4, :cond_4

    .line 658
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 663
    :cond_5
    iget-object v3, p0, Lcom/google/gson/JsonParserJavacc;->jj_expentries:Ljava/util/List;

    iget-object v4, p0, Lcom/google/gson/JsonParserJavacc;->jj_expentry:[I

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 667
    .end local v2           #oldentry:[I
    :cond_6
    if-eqz p2, :cond_0

    iget-object v3, p0, Lcom/google/gson/JsonParserJavacc;->jj_lasttokens:[I

    iput p2, p0, Lcom/google/gson/JsonParserJavacc;->jj_endpos:I

    add-int/lit8 v4, p2, -0x1

    aput p1, v3, v4

    goto :goto_0
.end method

.method private jj_consume_token(I)Lcom/google/gson/Token;
    .locals 5
    .parameter "kind"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/ParseException;
        }
    .end annotation

    .prologue
    .line 568
    iget-object v2, p0, Lcom/google/gson/JsonParserJavacc;->token:Lcom/google/gson/Token;

    .local v2, oldToken:Lcom/google/gson/Token;
    iget-object v3, v2, Lcom/google/gson/Token;->next:Lcom/google/gson/Token;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/gson/JsonParserJavacc;->token:Lcom/google/gson/Token;

    iget-object v3, v3, Lcom/google/gson/Token;->next:Lcom/google/gson/Token;

    iput-object v3, p0, Lcom/google/gson/JsonParserJavacc;->token:Lcom/google/gson/Token;

    .line 570
    :goto_0
    const/4 v3, -0x1

    iput v3, p0, Lcom/google/gson/JsonParserJavacc;->jj_ntk:I

    .line 571
    iget-object v3, p0, Lcom/google/gson/JsonParserJavacc;->token:Lcom/google/gson/Token;

    iget v3, v3, Lcom/google/gson/Token;->kind:I

    if-ne v3, p1, :cond_4

    .line 572
    iget v3, p0, Lcom/google/gson/JsonParserJavacc;->jj_gen:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/gson/JsonParserJavacc;->jj_gen:I

    .line 573
    iget v3, p0, Lcom/google/gson/JsonParserJavacc;->jj_gc:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/gson/JsonParserJavacc;->jj_gc:I

    const/16 v4, 0x64

    if-le v3, v4, :cond_3

    .line 574
    const/4 v3, 0x0

    iput v3, p0, Lcom/google/gson/JsonParserJavacc;->jj_gc:I

    .line 575
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v3, p0, Lcom/google/gson/JsonParserJavacc;->jj_2_rtns:[Lcom/google/gson/JsonParserJavacc$JJCalls;

    array-length v3, v3

    if-ge v1, v3, :cond_3

    .line 576
    iget-object v3, p0, Lcom/google/gson/JsonParserJavacc;->jj_2_rtns:[Lcom/google/gson/JsonParserJavacc$JJCalls;

    aget-object v0, v3, v1

    .line 577
    .local v0, c:Lcom/google/gson/JsonParserJavacc$JJCalls;
    :goto_2
    if-eqz v0, :cond_2

    .line 578
    iget v3, v0, Lcom/google/gson/JsonParserJavacc$JJCalls;->gen:I

    iget v4, p0, Lcom/google/gson/JsonParserJavacc;->jj_gen:I

    if-ge v3, v4, :cond_0

    const/4 v3, 0x0

    iput-object v3, v0, Lcom/google/gson/JsonParserJavacc$JJCalls;->first:Lcom/google/gson/Token;

    .line 579
    :cond_0
    iget-object v0, v0, Lcom/google/gson/JsonParserJavacc$JJCalls;->next:Lcom/google/gson/JsonParserJavacc$JJCalls;

    goto :goto_2

    .line 569
    .end local v0           #c:Lcom/google/gson/JsonParserJavacc$JJCalls;
    .end local v1           #i:I
    :cond_1
    iget-object v3, p0, Lcom/google/gson/JsonParserJavacc;->token:Lcom/google/gson/Token;

    iget-object v4, p0, Lcom/google/gson/JsonParserJavacc;->token_source:Lcom/google/gson/JsonParserJavaccTokenManager;

    invoke-virtual {v4}, Lcom/google/gson/JsonParserJavaccTokenManager;->getNextToken()Lcom/google/gson/Token;

    move-result-object v4

    iput-object v4, v3, Lcom/google/gson/Token;->next:Lcom/google/gson/Token;

    iput-object v4, p0, Lcom/google/gson/JsonParserJavacc;->token:Lcom/google/gson/Token;

    goto :goto_0

    .line 575
    .restart local v0       #c:Lcom/google/gson/JsonParserJavacc$JJCalls;
    .restart local v1       #i:I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 583
    .end local v0           #c:Lcom/google/gson/JsonParserJavacc$JJCalls;
    .end local v1           #i:I
    :cond_3
    iget-object v3, p0, Lcom/google/gson/JsonParserJavacc;->token:Lcom/google/gson/Token;

    return-object v3

    .line 585
    :cond_4
    iput-object v2, p0, Lcom/google/gson/JsonParserJavacc;->token:Lcom/google/gson/Token;

    .line 586
    iput p1, p0, Lcom/google/gson/JsonParserJavacc;->jj_kind:I

    .line 587
    invoke-virtual {p0}, Lcom/google/gson/JsonParserJavacc;->generateParseException()Lcom/google/gson/ParseException;

    move-result-object v3

    throw v3
.end method

.method private static jj_la1_init_0()V
    .locals 1

    .prologue
    .line 485
    const/16 v0, 0x12

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/gson/JsonParserJavacc;->jj_la1_0:[I

    .line 486
    return-void

    .line 485
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x4t
        0xc0t 0x7t 0x3t 0x88t
        0xc1t 0x7t 0x3t 0x8ct
        0x0t 0x18t 0x3t 0x0t
        0x0t 0x0t 0x0t 0x20t
        0x0t 0x18t 0x3t 0x0t
        0x0t 0x0t 0x0t 0x20t
        0xc0t 0x7t 0x3t 0x88t
        0xc0t 0x7t 0x3t 0x88t
        0x40t 0x7t 0x3t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x40t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x3t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x18t 0x0t 0x0t
        0x0t 0x0t 0x3t 0x0t
    .end array-data
.end method

.method private static jj_la1_init_1()V
    .locals 1

    .prologue
    .line 488
    const/16 v0, 0x12

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/gson/JsonParserJavacc;->jj_la1_1:[I

    .line 489
    return-void

    .line 488
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private jj_ntk()I
    .locals 2

    .prologue
    .line 634
    iget-object v0, p0, Lcom/google/gson/JsonParserJavacc;->token:Lcom/google/gson/Token;

    iget-object v0, v0, Lcom/google/gson/Token;->next:Lcom/google/gson/Token;

    iput-object v0, p0, Lcom/google/gson/JsonParserJavacc;->jj_nt:Lcom/google/gson/Token;

    if-nez v0, :cond_0

    .line 635
    iget-object v0, p0, Lcom/google/gson/JsonParserJavacc;->token:Lcom/google/gson/Token;

    iget-object v1, p0, Lcom/google/gson/JsonParserJavacc;->token_source:Lcom/google/gson/JsonParserJavaccTokenManager;

    invoke-virtual {v1}, Lcom/google/gson/JsonParserJavaccTokenManager;->getNextToken()Lcom/google/gson/Token;

    move-result-object v1

    iput-object v1, v0, Lcom/google/gson/Token;->next:Lcom/google/gson/Token;

    iget v0, v1, Lcom/google/gson/Token;->kind:I

    iput v0, p0, Lcom/google/gson/JsonParserJavacc;->jj_ntk:I

    .line 637
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/gson/JsonParserJavacc;->jj_nt:Lcom/google/gson/Token;

    iget v0, v0, Lcom/google/gson/Token;->kind:I

    iput v0, p0, Lcom/google/gson/JsonParserJavacc;->jj_ntk:I

    goto :goto_0
.end method

.method private jj_rescan_token()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 717
    iput-boolean v4, p0, Lcom/google/gson/JsonParserJavacc;->jj_rescan:Z

    .line 718
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v4, :cond_2

    .line 720
    :try_start_0
    iget-object v2, p0, Lcom/google/gson/JsonParserJavacc;->jj_2_rtns:[Lcom/google/gson/JsonParserJavacc$JJCalls;

    aget-object v1, v2, v0

    .line 722
    .local v1, p:Lcom/google/gson/JsonParserJavacc$JJCalls;
    :cond_0
    iget v2, v1, Lcom/google/gson/JsonParserJavacc$JJCalls;->gen:I

    iget v3, p0, Lcom/google/gson/JsonParserJavacc;->jj_gen:I

    if-le v2, v3, :cond_1

    .line 723
    iget v2, v1, Lcom/google/gson/JsonParserJavacc$JJCalls;->arg:I

    iput v2, p0, Lcom/google/gson/JsonParserJavacc;->jj_la:I

    iget-object v2, v1, Lcom/google/gson/JsonParserJavacc$JJCalls;->first:Lcom/google/gson/Token;

    iput-object v2, p0, Lcom/google/gson/JsonParserJavacc;->jj_scanpos:Lcom/google/gson/Token;

    iput-object v2, p0, Lcom/google/gson/JsonParserJavacc;->jj_lastpos:Lcom/google/gson/Token;

    .line 724
    packed-switch v0, :pswitch_data_0

    .line 728
    :cond_1
    :goto_1
    iget-object v1, v1, Lcom/google/gson/JsonParserJavacc$JJCalls;->next:Lcom/google/gson/JsonParserJavacc$JJCalls;

    .line 729
    if-nez v1, :cond_0

    .line 718
    .end local v1           #p:Lcom/google/gson/JsonParserJavacc$JJCalls;
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 725
    .restart local v1       #p:Lcom/google/gson/JsonParserJavacc$JJCalls;
    :pswitch_0
    invoke-direct {p0}, Lcom/google/gson/JsonParserJavacc;->jj_3_1()Z
    :try_end_0
    .catch Lcom/google/gson/JsonParserJavacc$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 730
    .end local v1           #p:Lcom/google/gson/JsonParserJavacc$JJCalls;
    :catch_0
    move-exception v2

    goto :goto_2

    .line 732
    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/gson/JsonParserJavacc;->jj_rescan:Z

    .line 733
    return-void

    .line 724
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private jj_save(II)V
    .locals 4
    .parameter "index"
    .parameter "xla"

    .prologue
    .line 736
    iget-object v2, p0, Lcom/google/gson/JsonParserJavacc;->jj_2_rtns:[Lcom/google/gson/JsonParserJavacc$JJCalls;

    aget-object v0, v2, p1

    .line 737
    .local v0, p:Lcom/google/gson/JsonParserJavacc$JJCalls;
    :goto_0
    iget v2, v0, Lcom/google/gson/JsonParserJavacc$JJCalls;->gen:I

    iget v3, p0, Lcom/google/gson/JsonParserJavacc;->jj_gen:I

    if-le v2, v3, :cond_0

    .line 738
    iget-object v2, v0, Lcom/google/gson/JsonParserJavacc$JJCalls;->next:Lcom/google/gson/JsonParserJavacc$JJCalls;

    if-nez v2, :cond_1

    new-instance v1, Lcom/google/gson/JsonParserJavacc$JJCalls;

    invoke-direct {v1}, Lcom/google/gson/JsonParserJavacc$JJCalls;-><init>()V

    iput-object v1, v0, Lcom/google/gson/JsonParserJavacc$JJCalls;->next:Lcom/google/gson/JsonParserJavacc$JJCalls;

    .end local v0           #p:Lcom/google/gson/JsonParserJavacc$JJCalls;
    .local v1, p:Lcom/google/gson/JsonParserJavacc$JJCalls;
    move-object v0, v1

    .line 741
    .end local v1           #p:Lcom/google/gson/JsonParserJavacc$JJCalls;
    .restart local v0       #p:Lcom/google/gson/JsonParserJavacc$JJCalls;
    :cond_0
    iget v2, p0, Lcom/google/gson/JsonParserJavacc;->jj_gen:I

    add-int/2addr v2, p2

    iget v3, p0, Lcom/google/gson/JsonParserJavacc;->jj_la:I

    sub-int/2addr v2, v3

    iput v2, v0, Lcom/google/gson/JsonParserJavacc$JJCalls;->gen:I

    iget-object v2, p0, Lcom/google/gson/JsonParserJavacc;->token:Lcom/google/gson/Token;

    iput-object v2, v0, Lcom/google/gson/JsonParserJavacc$JJCalls;->first:Lcom/google/gson/Token;

    iput p2, v0, Lcom/google/gson/JsonParserJavacc$JJCalls;->arg:I

    .line 742
    return-void

    .line 739
    :cond_1
    iget-object v0, v0, Lcom/google/gson/JsonParserJavacc$JJCalls;->next:Lcom/google/gson/JsonParserJavacc$JJCalls;

    goto :goto_0
.end method

.method private jj_scan_token(I)Z
    .locals 4
    .parameter "kind"

    .prologue
    .line 593
    iget-object v2, p0, Lcom/google/gson/JsonParserJavacc;->jj_scanpos:Lcom/google/gson/Token;

    iget-object v3, p0, Lcom/google/gson/JsonParserJavacc;->jj_lastpos:Lcom/google/gson/Token;

    if-ne v2, v3, :cond_1

    .line 594
    iget v2, p0, Lcom/google/gson/JsonParserJavacc;->jj_la:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/google/gson/JsonParserJavacc;->jj_la:I

    .line 595
    iget-object v2, p0, Lcom/google/gson/JsonParserJavacc;->jj_scanpos:Lcom/google/gson/Token;

    iget-object v2, v2, Lcom/google/gson/Token;->next:Lcom/google/gson/Token;

    if-nez v2, :cond_0

    .line 596
    iget-object v2, p0, Lcom/google/gson/JsonParserJavacc;->jj_scanpos:Lcom/google/gson/Token;

    iget-object v3, p0, Lcom/google/gson/JsonParserJavacc;->token_source:Lcom/google/gson/JsonParserJavaccTokenManager;

    invoke-virtual {v3}, Lcom/google/gson/JsonParserJavaccTokenManager;->getNextToken()Lcom/google/gson/Token;

    move-result-object v3

    iput-object v3, v2, Lcom/google/gson/Token;->next:Lcom/google/gson/Token;

    iput-object v3, p0, Lcom/google/gson/JsonParserJavacc;->jj_scanpos:Lcom/google/gson/Token;

    iput-object v3, p0, Lcom/google/gson/JsonParserJavacc;->jj_lastpos:Lcom/google/gson/Token;

    .line 603
    :goto_0
    iget-boolean v2, p0, Lcom/google/gson/JsonParserJavacc;->jj_rescan:Z

    if-eqz v2, :cond_3

    .line 604
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v1, p0, Lcom/google/gson/JsonParserJavacc;->token:Lcom/google/gson/Token;

    .line 605
    .local v1, tok:Lcom/google/gson/Token;
    :goto_1
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/google/gson/JsonParserJavacc;->jj_scanpos:Lcom/google/gson/Token;

    if-eq v1, v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    iget-object v1, v1, Lcom/google/gson/Token;->next:Lcom/google/gson/Token;

    goto :goto_1

    .line 598
    .end local v0           #i:I
    .end local v1           #tok:Lcom/google/gson/Token;
    :cond_0
    iget-object v2, p0, Lcom/google/gson/JsonParserJavacc;->jj_scanpos:Lcom/google/gson/Token;

    iget-object v2, v2, Lcom/google/gson/Token;->next:Lcom/google/gson/Token;

    iput-object v2, p0, Lcom/google/gson/JsonParserJavacc;->jj_scanpos:Lcom/google/gson/Token;

    iput-object v2, p0, Lcom/google/gson/JsonParserJavacc;->jj_lastpos:Lcom/google/gson/Token;

    goto :goto_0

    .line 601
    :cond_1
    iget-object v2, p0, Lcom/google/gson/JsonParserJavacc;->jj_scanpos:Lcom/google/gson/Token;

    iget-object v2, v2, Lcom/google/gson/Token;->next:Lcom/google/gson/Token;

    iput-object v2, p0, Lcom/google/gson/JsonParserJavacc;->jj_scanpos:Lcom/google/gson/Token;

    goto :goto_0

    .line 606
    .restart local v0       #i:I
    .restart local v1       #tok:Lcom/google/gson/Token;
    :cond_2
    if-eqz v1, :cond_3

    invoke-direct {p0, p1, v0}, Lcom/google/gson/JsonParserJavacc;->jj_add_error_token(II)V

    .line 608
    .end local v0           #i:I
    .end local v1           #tok:Lcom/google/gson/Token;
    :cond_3
    iget-object v2, p0, Lcom/google/gson/JsonParserJavacc;->jj_scanpos:Lcom/google/gson/Token;

    iget v2, v2, Lcom/google/gson/Token;->kind:I

    if-eq v2, p1, :cond_4

    const/4 v2, 0x1

    .line 610
    :goto_2
    return v2

    .line 609
    :cond_4
    iget v2, p0, Lcom/google/gson/JsonParserJavacc;->jj_la:I

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/google/gson/JsonParserJavacc;->jj_scanpos:Lcom/google/gson/Token;

    iget-object v3, p0, Lcom/google/gson/JsonParserJavacc;->jj_lastpos:Lcom/google/gson/Token;

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/google/gson/JsonParserJavacc;->jj_ls:Lcom/google/gson/JsonParserJavacc$LookaheadSuccess;

    throw v2

    .line 610
    :cond_5
    const/4 v2, 0x0

    goto :goto_2
.end method


# virtual methods
.method public ReInit(Lcom/google/gson/JsonParserJavaccTokenManager;)V
    .locals 3
    .parameter "tm"

    .prologue
    const/4 v2, -0x1

    .line 558
    iput-object p1, p0, Lcom/google/gson/JsonParserJavacc;->token_source:Lcom/google/gson/JsonParserJavaccTokenManager;

    .line 559
    new-instance v1, Lcom/google/gson/Token;

    invoke-direct {v1}, Lcom/google/gson/Token;-><init>()V

    iput-object v1, p0, Lcom/google/gson/JsonParserJavacc;->token:Lcom/google/gson/Token;

    .line 560
    iput v2, p0, Lcom/google/gson/JsonParserJavacc;->jj_ntk:I

    .line 561
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/gson/JsonParserJavacc;->jj_gen:I

    .line 562
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0x12

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/gson/JsonParserJavacc;->jj_la1:[I

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 563
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/google/gson/JsonParserJavacc;->jj_2_rtns:[Lcom/google/gson/JsonParserJavacc$JJCalls;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/gson/JsonParserJavacc;->jj_2_rtns:[Lcom/google/gson/JsonParserJavacc$JJCalls;

    new-instance v2, Lcom/google/gson/JsonParserJavacc$JJCalls;

    invoke-direct {v2}, Lcom/google/gson/JsonParserJavacc$JJCalls;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 564
    :cond_1
    return-void
.end method

.method public ReInit(Ljava/io/InputStream;)V
    .locals 1
    .parameter "stream"

    .prologue
    .line 511
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/gson/JsonParserJavacc;->ReInit(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 512
    return-void
.end method

.method public ReInit(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 6
    .parameter "stream"
    .parameter "encoding"

    .prologue
    const/4 v5, -0x1

    .line 515
    :try_start_0
    iget-object v2, p0, Lcom/google/gson/JsonParserJavacc;->jj_input_stream:Lcom/google/gson/SimpleCharStream;

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {v2, p1, p2, v3, v4}, Lcom/google/gson/SimpleCharStream;->ReInit(Ljava/io/InputStream;Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 516
    iget-object v2, p0, Lcom/google/gson/JsonParserJavacc;->token_source:Lcom/google/gson/JsonParserJavaccTokenManager;

    iget-object v3, p0, Lcom/google/gson/JsonParserJavacc;->jj_input_stream:Lcom/google/gson/SimpleCharStream;

    invoke-virtual {v2, v3}, Lcom/google/gson/JsonParserJavaccTokenManager;->ReInit(Lcom/google/gson/SimpleCharStream;)V

    .line 517
    new-instance v2, Lcom/google/gson/Token;

    invoke-direct {v2}, Lcom/google/gson/Token;-><init>()V

    iput-object v2, p0, Lcom/google/gson/JsonParserJavacc;->token:Lcom/google/gson/Token;

    .line 518
    iput v5, p0, Lcom/google/gson/JsonParserJavacc;->jj_ntk:I

    .line 519
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/gson/JsonParserJavacc;->jj_gen:I

    .line 520
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/16 v2, 0x12

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/google/gson/JsonParserJavacc;->jj_la1:[I

    aput v5, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 515
    .end local v1           #i:I
    :catch_0
    move-exception v0

    .local v0, e:Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 521
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    .restart local v1       #i:I
    :cond_0
    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/google/gson/JsonParserJavacc;->jj_2_rtns:[Lcom/google/gson/JsonParserJavacc$JJCalls;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/google/gson/JsonParserJavacc;->jj_2_rtns:[Lcom/google/gson/JsonParserJavacc$JJCalls;

    new-instance v3, Lcom/google/gson/JsonParserJavacc$JJCalls;

    invoke-direct {v3}, Lcom/google/gson/JsonParserJavacc$JJCalls;-><init>()V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 522
    :cond_1
    return-void
.end method

.method public ReInit(Ljava/io/Reader;)V
    .locals 4
    .parameter "stream"

    .prologue
    const/4 v2, 0x1

    const/4 v3, -0x1

    .line 537
    iget-object v1, p0, Lcom/google/gson/JsonParserJavacc;->jj_input_stream:Lcom/google/gson/SimpleCharStream;

    invoke-virtual {v1, p1, v2, v2}, Lcom/google/gson/SimpleCharStream;->ReInit(Ljava/io/Reader;II)V

    .line 538
    iget-object v1, p0, Lcom/google/gson/JsonParserJavacc;->token_source:Lcom/google/gson/JsonParserJavaccTokenManager;

    iget-object v2, p0, Lcom/google/gson/JsonParserJavacc;->jj_input_stream:Lcom/google/gson/SimpleCharStream;

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonParserJavaccTokenManager;->ReInit(Lcom/google/gson/SimpleCharStream;)V

    .line 539
    new-instance v1, Lcom/google/gson/Token;

    invoke-direct {v1}, Lcom/google/gson/Token;-><init>()V

    iput-object v1, p0, Lcom/google/gson/JsonParserJavacc;->token:Lcom/google/gson/Token;

    .line 540
    iput v3, p0, Lcom/google/gson/JsonParserJavacc;->jj_ntk:I

    .line 541
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/gson/JsonParserJavacc;->jj_gen:I

    .line 542
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0x12

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/gson/JsonParserJavacc;->jj_la1:[I

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 543
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/google/gson/JsonParserJavacc;->jj_2_rtns:[Lcom/google/gson/JsonParserJavacc$JJCalls;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/gson/JsonParserJavacc;->jj_2_rtns:[Lcom/google/gson/JsonParserJavacc$JJCalls;

    new-instance v2, Lcom/google/gson/JsonParserJavacc$JJCalls;

    invoke-direct {v2}, Lcom/google/gson/JsonParserJavacc$JJCalls;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 544
    :cond_1
    return-void
.end method

.method public final disable_tracing()V
    .locals 0

    .prologue
    .line 714
    return-void
.end method

.method public final enable_tracing()V
    .locals 0

    .prologue
    .line 710
    return-void
.end method

.method public generateParseException()Lcom/google/gson/ParseException;
    .locals 9

    .prologue
    const/16 v8, 0x23

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 673
    iget-object v4, p0, Lcom/google/gson/JsonParserJavacc;->jj_expentries:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 674
    new-array v3, v8, [Z

    .line 675
    .local v3, la1tokens:[Z
    iget v4, p0, Lcom/google/gson/JsonParserJavacc;->jj_kind:I

    if-ltz v4, :cond_0

    .line 676
    iget v4, p0, Lcom/google/gson/JsonParserJavacc;->jj_kind:I

    aput-boolean v6, v3, v4

    .line 677
    const/4 v4, -0x1

    iput v4, p0, Lcom/google/gson/JsonParserJavacc;->jj_kind:I

    .line 679
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/16 v4, 0x12

    if-ge v1, v4, :cond_4

    .line 680
    iget-object v4, p0, Lcom/google/gson/JsonParserJavacc;->jj_la1:[I

    aget v4, v4, v1

    iget v5, p0, Lcom/google/gson/JsonParserJavacc;->jj_gen:I

    if-ne v4, v5, :cond_3

    .line 681
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    const/16 v4, 0x20

    if-ge v2, v4, :cond_3

    .line 682
    sget-object v4, Lcom/google/gson/JsonParserJavacc;->jj_la1_0:[I

    aget v4, v4, v1

    shl-int v5, v6, v2

    and-int/2addr v4, v5

    if-eqz v4, :cond_1

    .line 683
    aput-boolean v6, v3, v2

    .line 685
    :cond_1
    sget-object v4, Lcom/google/gson/JsonParserJavacc;->jj_la1_1:[I

    aget v4, v4, v1

    shl-int v5, v6, v2

    and-int/2addr v4, v5

    if-eqz v4, :cond_2

    .line 686
    add-int/lit8 v4, v2, 0x20

    aput-boolean v6, v3, v4

    .line 681
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 679
    .end local v2           #j:I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 691
    :cond_4
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v8, :cond_6

    .line 692
    aget-boolean v4, v3, v1

    if-eqz v4, :cond_5

    .line 693
    new-array v4, v6, [I

    iput-object v4, p0, Lcom/google/gson/JsonParserJavacc;->jj_expentry:[I

    .line 694
    iget-object v4, p0, Lcom/google/gson/JsonParserJavacc;->jj_expentry:[I

    aput v1, v4, v7

    .line 695
    iget-object v4, p0, Lcom/google/gson/JsonParserJavacc;->jj_expentries:Ljava/util/List;

    iget-object v5, p0, Lcom/google/gson/JsonParserJavacc;->jj_expentry:[I

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 691
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 698
    :cond_6
    iput v7, p0, Lcom/google/gson/JsonParserJavacc;->jj_endpos:I

    .line 699
    invoke-direct {p0}, Lcom/google/gson/JsonParserJavacc;->jj_rescan_token()V

    .line 700
    invoke-direct {p0, v7, v7}, Lcom/google/gson/JsonParserJavacc;->jj_add_error_token(II)V

    .line 701
    iget-object v4, p0, Lcom/google/gson/JsonParserJavacc;->jj_expentries:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    new-array v0, v4, [[I

    .line 702
    .local v0, exptokseq:[[I
    const/4 v1, 0x0

    :goto_3
    iget-object v4, p0, Lcom/google/gson/JsonParserJavacc;->jj_expentries:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_7

    .line 703
    iget-object v4, p0, Lcom/google/gson/JsonParserJavacc;->jj_expentries:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    check-cast v4, [I

    aput-object v4, v0, v1

    .line 702
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 705
    :cond_7
    new-instance v4, Lcom/google/gson/ParseException;

    iget-object v5, p0, Lcom/google/gson/JsonParserJavacc;->token:Lcom/google/gson/Token;

    sget-object v6, Lcom/google/gson/JsonParserJavacc;->tokenImage:[Ljava/lang/String;

    invoke-direct {v4, v5, v0, v6}, Lcom/google/gson/ParseException;-><init>(Lcom/google/gson/Token;[[I[Ljava/lang/String;)V

    return-object v4
.end method

.method public final getNextToken()Lcom/google/gson/Token;
    .locals 2

    .prologue
    .line 616
    iget-object v0, p0, Lcom/google/gson/JsonParserJavacc;->token:Lcom/google/gson/Token;

    iget-object v0, v0, Lcom/google/gson/Token;->next:Lcom/google/gson/Token;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/gson/JsonParserJavacc;->token:Lcom/google/gson/Token;

    iget-object v0, v0, Lcom/google/gson/Token;->next:Lcom/google/gson/Token;

    iput-object v0, p0, Lcom/google/gson/JsonParserJavacc;->token:Lcom/google/gson/Token;

    .line 618
    :goto_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/gson/JsonParserJavacc;->jj_ntk:I

    .line 619
    iget v0, p0, Lcom/google/gson/JsonParserJavacc;->jj_gen:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/gson/JsonParserJavacc;->jj_gen:I

    .line 620
    iget-object v0, p0, Lcom/google/gson/JsonParserJavacc;->token:Lcom/google/gson/Token;

    return-object v0

    .line 617
    :cond_0
    iget-object v0, p0, Lcom/google/gson/JsonParserJavacc;->token:Lcom/google/gson/Token;

    iget-object v1, p0, Lcom/google/gson/JsonParserJavacc;->token_source:Lcom/google/gson/JsonParserJavaccTokenManager;

    invoke-virtual {v1}, Lcom/google/gson/JsonParserJavaccTokenManager;->getNextToken()Lcom/google/gson/Token;

    move-result-object v1

    iput-object v1, v0, Lcom/google/gson/Token;->next:Lcom/google/gson/Token;

    iput-object v1, p0, Lcom/google/gson/JsonParserJavacc;->token:Lcom/google/gson/Token;

    goto :goto_0
.end method

.method public final getToken(I)Lcom/google/gson/Token;
    .locals 4
    .parameter "index"

    .prologue
    .line 625
    iget-object v1, p0, Lcom/google/gson/JsonParserJavacc;->token:Lcom/google/gson/Token;

    .line 626
    .local v1, t:Lcom/google/gson/Token;
    const/4 v0, 0x0

    .local v0, i:I
    move-object v2, v1

    .end local v1           #t:Lcom/google/gson/Token;
    .local v2, t:Lcom/google/gson/Token;
    :goto_0
    if-ge v0, p1, :cond_1

    .line 627
    iget-object v3, v2, Lcom/google/gson/Token;->next:Lcom/google/gson/Token;

    if-eqz v3, :cond_0

    iget-object v1, v2, Lcom/google/gson/Token;->next:Lcom/google/gson/Token;

    .line 626
    .end local v2           #t:Lcom/google/gson/Token;
    .restart local v1       #t:Lcom/google/gson/Token;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    move-object v2, v1

    .end local v1           #t:Lcom/google/gson/Token;
    .restart local v2       #t:Lcom/google/gson/Token;
    goto :goto_0

    .line 628
    :cond_0
    iget-object v3, p0, Lcom/google/gson/JsonParserJavacc;->token_source:Lcom/google/gson/JsonParserJavaccTokenManager;

    invoke-virtual {v3}, Lcom/google/gson/JsonParserJavaccTokenManager;->getNextToken()Lcom/google/gson/Token;

    move-result-object v1

    iput-object v1, v2, Lcom/google/gson/Token;->next:Lcom/google/gson/Token;

    .end local v2           #t:Lcom/google/gson/Token;
    .restart local v1       #t:Lcom/google/gson/Token;
    goto :goto_1

    .line 630
    .end local v1           #t:Lcom/google/gson/Token;
    .restart local v2       #t:Lcom/google/gson/Token;
    :cond_1
    return-object v2
.end method

.method public final parse()Lcom/google/gson/JsonElement;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/ParseException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v4, -0x1

    .line 9
    const/4 v0, 0x0

    .line 10
    .local v0, json:Lcom/google/gson/JsonElement;
    iget v1, p0, Lcom/google/gson/JsonParserJavacc;->jj_ntk:I

    if-ne v1, v4, :cond_0

    invoke-direct {p0}, Lcom/google/gson/JsonParserJavacc;->jj_ntk()I

    move-result v1

    :goto_0
    sparse-switch v1, :sswitch_data_0

    .line 61
    iget-object v1, p0, Lcom/google/gson/JsonParserJavacc;->jj_la1:[I

    const/4 v2, 0x2

    iget v3, p0, Lcom/google/gson/JsonParserJavacc;->jj_gen:I

    aput v3, v1, v2

    .line 62
    invoke-direct {p0, v4}, Lcom/google/gson/JsonParserJavacc;->jj_consume_token(I)Lcom/google/gson/Token;

    .line 63
    new-instance v1, Lcom/google/gson/ParseException;

    invoke-direct {v1}, Lcom/google/gson/ParseException;-><init>()V

    throw v1

    .line 10
    :cond_0
    iget v1, p0, Lcom/google/gson/JsonParserJavacc;->jj_ntk:I

    goto :goto_0

    .line 12
    :sswitch_0
    invoke-direct {p0, v3}, Lcom/google/gson/JsonParserJavacc;->jj_consume_token(I)Lcom/google/gson/Token;

    .line 13
    new-instance v1, Lcom/google/gson/JsonParseException;

    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    invoke-direct {v1, v2}, Lcom/google/gson/JsonParseException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 26
    :sswitch_1
    iget v1, p0, Lcom/google/gson/JsonParserJavacc;->jj_ntk:I

    if-ne v1, v4, :cond_1

    invoke-direct {p0}, Lcom/google/gson/JsonParserJavacc;->jj_ntk()I

    move-result v1

    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 31
    iget-object v1, p0, Lcom/google/gson/JsonParserJavacc;->jj_la1:[I

    iget v2, p0, Lcom/google/gson/JsonParserJavacc;->jj_gen:I

    aput v2, v1, v3

    .line 34
    :goto_2
    iget v1, p0, Lcom/google/gson/JsonParserJavacc;->jj_ntk:I

    if-ne v1, v4, :cond_2

    invoke-direct {p0}, Lcom/google/gson/JsonParserJavacc;->jj_ntk()I

    move-result v1

    :goto_3
    sparse-switch v1, :sswitch_data_1

    .line 54
    iget-object v1, p0, Lcom/google/gson/JsonParserJavacc;->jj_la1:[I

    const/4 v2, 0x1

    iget v3, p0, Lcom/google/gson/JsonParserJavacc;->jj_gen:I

    aput v3, v1, v2

    .line 55
    invoke-direct {p0, v4}, Lcom/google/gson/JsonParserJavacc;->jj_consume_token(I)Lcom/google/gson/Token;

    .line 56
    new-instance v1, Lcom/google/gson/ParseException;

    invoke-direct {v1}, Lcom/google/gson/ParseException;-><init>()V

    throw v1

    .line 26
    :cond_1
    iget v1, p0, Lcom/google/gson/JsonParserJavacc;->jj_ntk:I

    goto :goto_1

    .line 28
    :pswitch_0
    const/16 v1, 0x1a

    invoke-direct {p0, v1}, Lcom/google/gson/JsonParserJavacc;->jj_consume_token(I)Lcom/google/gson/Token;

    goto :goto_2

    .line 34
    :cond_2
    iget v1, p0, Lcom/google/gson/JsonParserJavacc;->jj_ntk:I

    goto :goto_3

    .line 36
    :sswitch_2
    invoke-direct {p0}, Lcom/google/gson/JsonParserJavacc;->JsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 58
    :goto_4
    return-object v0

    .line 39
    :sswitch_3
    invoke-direct {p0}, Lcom/google/gson/JsonParserJavacc;->JsonArray()Lcom/google/gson/JsonArray;

    move-result-object v0

    .line 40
    goto :goto_4

    .line 48
    :sswitch_4
    invoke-direct {p0}, Lcom/google/gson/JsonParserJavacc;->JsonPrimitive()Lcom/google/gson/JsonPrimitive;

    move-result-object v0

    .line 49
    goto :goto_4

    .line 51
    :sswitch_5
    invoke-direct {p0}, Lcom/google/gson/JsonParserJavacc;->JsonNull()Lcom/google/gson/JsonNull;

    move-result-object v0

    .line 52
    goto :goto_4

    .line 10
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x6 -> :sswitch_1
        0x7 -> :sswitch_1
        0x8 -> :sswitch_1
        0x9 -> :sswitch_1
        0xa -> :sswitch_1
        0x10 -> :sswitch_1
        0x11 -> :sswitch_1
        0x1a -> :sswitch_1
        0x1b -> :sswitch_1
        0x1f -> :sswitch_1
        0x21 -> :sswitch_1
    .end sparse-switch

    .line 26
    :pswitch_data_0
    .packed-switch 0x1a
        :pswitch_0
    .end packed-switch

    .line 34
    :sswitch_data_1
    .sparse-switch
        0x6 -> :sswitch_4
        0x7 -> :sswitch_5
        0x8 -> :sswitch_4
        0x9 -> :sswitch_4
        0xa -> :sswitch_4
        0x10 -> :sswitch_4
        0x11 -> :sswitch_4
        0x1b -> :sswitch_2
        0x1f -> :sswitch_3
        0x21 -> :sswitch_4
    .end sparse-switch
.end method
