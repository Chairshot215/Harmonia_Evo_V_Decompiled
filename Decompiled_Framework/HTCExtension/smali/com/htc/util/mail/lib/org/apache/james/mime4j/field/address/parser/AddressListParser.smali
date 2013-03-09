.class public Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;
.super Ljava/lang/Object;
.source "AddressListParser.java"

# interfaces
.implements Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTreeConstants;
.implements Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser$1;,
        Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;,
        Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess;
    }
.end annotation


# static fields
.field private static jj_la1_0:[I

.field private static jj_la1_1:[I


# instance fields
.field private final jj_2_rtns:[Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

.field private jj_endpos:I

.field private jj_expentries:Ljava/util/Vector;

.field private jj_expentry:[I

.field private jj_gc:I

.field private jj_gen:I

.field jj_input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleCharStream;

.field private jj_kind:I

.field private jj_la:I

.field private final jj_la1:[I

.field private jj_lastpos:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

.field private jj_lasttokens:[I

.field private final jj_ls:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess;

.field public jj_nt:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

.field private jj_ntk:I

.field private jj_rescan:Z

.field private jj_scanpos:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

.field private jj_semLA:Z

.field protected jjtree:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

.field public lookingAhead:Z

.field public token:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

.field public token_source:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1_0()V

    invoke-static {}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1_1()V

    return-void
.end method

.method public constructor <init>(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;)V
    .locals 6

    const/16 v5, 0x16

    const/4 v4, -0x1

    const/4 v3, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-direct {v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;-><init>()V

    iput-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    iput-boolean v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->lookingAhead:Z

    new-array v1, v5, [I

    iput-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    iput-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    iput-boolean v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_rescan:Z

    iput v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gc:I

    new-instance v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess;-><init>(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser$1;)V

    iput-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ls:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess;

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentries:Ljava/util/Vector;

    iput v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_kind:I

    const/16 v1, 0x64

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_lasttokens:[I

    iput-object p1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->token_source:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;

    new-instance v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    invoke-direct {v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;-><init>()V

    iput-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    iput v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    iput v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v5, :cond_0

    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    aput v4, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    new-instance v2, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    invoke-direct {v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 8

    const/16 v7, 0x16

    const/4 v6, -0x1

    const/4 v5, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-direct {v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;-><init>()V

    iput-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    iput-boolean v5, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->lookingAhead:Z

    new-array v2, v7, [I

    iput-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    iput-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    iput-boolean v5, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_rescan:Z

    iput v5, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gc:I

    new-instance v2, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess;-><init>(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser$1;)V

    iput-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ls:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess;

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentries:Ljava/util/Vector;

    iput v6, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_kind:I

    const/16 v2, 0x64

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_lasttokens:[I

    :try_start_0
    new-instance v2, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleCharStream;

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-direct {v2, p1, p2, v3, v4}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleCharStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;II)V

    iput-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleCharStream;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v2, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;

    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleCharStream;

    invoke-direct {v2, v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;-><init>(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleCharStream;)V

    iput-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->token_source:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;

    new-instance v2, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    invoke-direct {v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;-><init>()V

    iput-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    iput v6, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    iput v5, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v7, :cond_0

    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    aput v6, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_0
    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    new-instance v3, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    invoke-direct {v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;-><init>()V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 7

    const/16 v6, 0x16

    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-direct {v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;-><init>()V

    iput-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    iput-boolean v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->lookingAhead:Z

    new-array v1, v6, [I

    iput-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    iput-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    iput-boolean v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_rescan:Z

    iput v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gc:I

    new-instance v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess;-><init>(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser$1;)V

    iput-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ls:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess;

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentries:Ljava/util/Vector;

    iput v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_kind:I

    const/16 v1, 0x64

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_lasttokens:[I

    new-instance v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleCharStream;

    invoke-direct {v1, p1, v5, v5}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleCharStream;-><init>(Ljava/io/Reader;II)V

    iput-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleCharStream;

    new-instance v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;

    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleCharStream;

    invoke-direct {v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;-><init>(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleCharStream;)V

    iput-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->token_source:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;

    new-instance v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    invoke-direct {v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;-><init>()V

    iput-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    iput v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    iput v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v6, :cond_0

    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    aput v4, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    new-instance v2, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    invoke-direct {v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private final jj_2_1(I)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iput p1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la:I

    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    iput-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    iput-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_lastpos:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    :try_start_0
    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_3_1()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    invoke-direct {p0, v2, p1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_save(II)V

    :goto_1
    return v1

    :cond_0
    move v1, v2

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0, v2, p1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_save(II)V

    goto :goto_1

    :catchall_0
    move-exception v1

    invoke-direct {p0, v2, p1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_save(II)V

    throw v1
.end method

.method private final jj_2_2(I)Z
    .locals 3

    const/4 v2, 0x1

    iput p1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la:I

    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    iput-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    iput-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_lastpos:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    :try_start_0
    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_3_2()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    invoke-direct {p0, v2, p1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_save(II)V

    :goto_1
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0, v2, p1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_save(II)V

    move v1, v2

    goto :goto_1

    :catchall_0
    move-exception v1

    invoke-direct {p0, v2, p1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_save(II)V

    throw v1
.end method

.method private final jj_3R_10()Z
    .locals 2

    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_3R_12()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    const/16 v1, 0x12

    invoke-direct {p0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private final jj_3R_11()Z
    .locals 2

    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    const/16 v1, 0x9

    invoke-direct {p0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    :cond_0
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    const/16 v1, 0xe

    invoke-direct {p0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    const/16 v1, 0x1f

    invoke-direct {p0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private final jj_3R_12()Z
    .locals 2

    const/16 v1, 0xe

    invoke-direct {p0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_3R_13()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private final jj_3R_13()Z
    .locals 2

    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    const/16 v1, 0x9

    invoke-direct {p0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    :cond_0
    const/16 v1, 0xe

    invoke-direct {p0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private final jj_3R_8()Z
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_3R_9()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_3R_10()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_9()Z
    .locals 2

    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    const/16 v1, 0xe

    invoke-direct {p0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    const/16 v1, 0x1f

    invoke-direct {p0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_3R_11()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private final jj_3_1()Z
    .locals 1

    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_3R_8()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3_2()Z
    .locals 1

    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_3R_8()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private jj_add_error_token(II)V
    .locals 7

    const/16 v4, 0x64

    if-lt p2, v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_endpos:I

    add-int/lit8 v4, v4, 0x1

    if-ne p2, v4, :cond_2

    iget-object v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_lasttokens:[I

    iget v5, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_endpos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_endpos:I

    aput p1, v4, v5

    goto :goto_0

    :cond_2
    iget v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_endpos:I

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_endpos:I

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentry:[I

    const/4 v2, 0x0

    :goto_1
    iget v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_endpos:I

    if-ge v2, v4, :cond_3

    iget-object v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentry:[I

    iget-object v5, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_lasttokens:[I

    aget v5, v5, v2

    aput v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    iget-object v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentries:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    move-object v3, v4

    check-cast v3, [I

    array-length v4, v3

    iget-object v5, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentry:[I

    array-length v5, v5

    if-ne v4, v5, :cond_4

    const/4 v1, 0x1

    const/4 v2, 0x0

    :goto_2
    iget-object v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentry:[I

    array-length v4, v4

    if-ge v2, v4, :cond_5

    aget v4, v3, v2

    iget-object v5, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentry:[I

    aget v5, v5, v2

    if-eq v4, v5, :cond_8

    const/4 v1, 0x0

    :cond_5
    if-eqz v1, :cond_4

    :cond_6
    if-nez v1, :cond_7

    iget-object v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentries:Ljava/util/Vector;

    iget-object v5, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentry:[I

    invoke-virtual {v4, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_7
    if-eqz p2, :cond_0

    iget-object v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_lasttokens:[I

    iput p2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_endpos:I

    add-int/lit8 v5, p2, -0x1

    aput p1, v4, v5

    goto :goto_0

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method private final jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ParseException;
        }
    .end annotation

    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    iget-object v3, v2, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;->next:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    iget-object v3, v3, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;->next:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    iput-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    :goto_0
    const/4 v3, -0x1

    iput v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    iget v3, v3, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;->kind:I

    if-ne v3, p1, :cond_4

    iget v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    iget v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gc:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gc:I

    const/16 v4, 0x64

    if-le v3, v4, :cond_3

    const/4 v3, 0x0

    iput v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gc:I

    const/4 v1, 0x0

    :goto_1
    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    array-length v3, v3

    if-ge v1, v3, :cond_3

    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    aget-object v0, v3, v1

    :goto_2
    if-eqz v0, :cond_2

    iget v3, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;->gen:I

    iget v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    if-ge v3, v4, :cond_0

    const/4 v3, 0x0

    iput-object v3, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;->first:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    :cond_0
    iget-object v0, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;->next:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    goto :goto_2

    :cond_1
    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    iget-object v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->token_source:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;

    invoke-virtual {v4}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->getNextToken()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    move-result-object v4

    iput-object v4, v3, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;->next:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    iput-object v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    return-object v3

    :cond_4
    iput-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    iput p1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_kind:I

    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->generateParseException()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ParseException;

    move-result-object v3

    throw v3
.end method

.method private static jj_la1_0()V
    .locals 1

    const/16 v0, 0x16

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1_0:[I

    return-void

    :array_0
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x40t 0x40t 0x0t 0x80t
        0x8t 0x0t 0x0t 0x0t
        0x40t 0x40t 0x0t 0x80t
        0x50t 0x0t 0x0t 0x0t
        0x40t 0x40t 0x0t 0x80t
        0x40t 0x40t 0x0t 0x80t
        0x40t 0x40t 0x0t 0x80t
        0x8t 0x0t 0x0t 0x0t
        0x40t 0x40t 0x0t 0x80t
        0x0t 0x1t 0x0t 0x0t
        0x8t 0x1t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x0t 0x40t 0x0t 0x80t
        0x0t 0x40t 0x0t 0x80t
        0x0t 0x40t 0x0t 0x80t
        0x0t 0x42t 0x0t 0x80t
        0x0t 0x2t 0x0t 0x0t
        0x0t 0x40t 0x0t 0x80t
        0x0t 0x42t 0x0t 0x0t
        0x0t 0x2t 0x0t 0x0t
        0x0t 0x40t 0x4t 0x0t
    .end array-data
.end method

.method private static jj_la1_1()V
    .locals 1

    const/16 v0, 0x16

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1_1:[I

    return-void

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private final jj_ntk()I
    .locals 2

    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    iget-object v0, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;->next:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    iput-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_nt:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->token_source:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;

    invoke-virtual {v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->getNextToken()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;->next:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    iget v0, v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;->kind:I

    iput v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_nt:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    iget v0, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;->kind:I

    iput v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_0
.end method

.method private final jj_rescan_token()V
    .locals 4

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_rescan:Z

    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x2

    if-ge v0, v2, :cond_2

    :try_start_0
    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    aget-object v1, v2, v0

    :cond_0
    iget v2, v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;->gen:I

    iget v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    if-le v2, v3, :cond_1

    iget v2, v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;->arg:I

    iput v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la:I

    iget-object v2, v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;->first:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    iput-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    iput-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_lastpos:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_1
    iget-object v1, v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;->next:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    if-nez v1, :cond_0

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :pswitch_0
    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_3_1()Z

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_2

    :pswitch_1
    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_3_2()Z
    :try_end_0
    .catch Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_rescan:Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private final jj_save(II)V
    .locals 4

    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    aget-object v0, v2, p1

    :goto_0
    iget v2, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;->gen:I

    iget v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    if-le v2, v3, :cond_0

    iget-object v2, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;->next:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    if-nez v2, :cond_1

    new-instance v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    invoke-direct {v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;-><init>()V

    iput-object v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;->next:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    move-object v0, v1

    :cond_0
    iget v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    add-int/2addr v2, p2

    iget v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la:I

    sub-int/2addr v2, v3

    iput v2, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;->gen:I

    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    iput-object v2, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;->first:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    iput p2, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;->arg:I

    return-void

    :cond_1
    iget-object v0, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;->next:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    goto :goto_0
.end method

.method private final jj_scan_token(I)Z
    .locals 4

    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_lastpos:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la:I

    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    iget-object v2, v2, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;->next:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->token_source:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;

    invoke-virtual {v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->getNextToken()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    move-result-object v3

    iput-object v3, v2, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;->next:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    iput-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    iput-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_lastpos:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    :goto_0
    iget-boolean v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_rescan:Z

    if-eqz v2, :cond_3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    :goto_1
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    if-eq v1, v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    iget-object v1, v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;->next:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    iget-object v2, v2, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;->next:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    iput-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    iput-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_lastpos:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    iget-object v2, v2, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;->next:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    iput-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    invoke-direct {p0, p1, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_add_error_token(II)V

    :cond_3
    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    iget v2, v2, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;->kind:I

    if-eq v2, p1, :cond_4

    const/4 v2, 0x1

    :goto_2
    return v2

    :cond_4
    iget v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la:I

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_lastpos:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ls:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess;

    throw v2

    :cond_5
    const/4 v2, 0x0

    goto :goto_2
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ParseException;
        }
    .end annotation

    :goto_0
    :try_start_0
    new-instance v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;

    sget-object v2, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-direct {v0, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->parseLine()V

    iget-object v2, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->rootNode()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;

    move-result-object v2

    check-cast v2, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleNode;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleNode;->dump(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method


# virtual methods
.method public ReInit(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;)V
    .locals 3

    const/4 v2, -0x1

    iput-object p1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->token_source:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;

    new-instance v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    invoke-direct {v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;-><init>()V

    iput-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    iput v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->reset()V

    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x16

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    new-instance v2, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    invoke-direct {v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public ReInit(Ljava/io/InputStream;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->ReInit(Ljava/io/InputStream;Ljava/lang/String;)V

    return-void
.end method

.method public ReInit(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 6

    const/4 v5, -0x1

    :try_start_0
    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleCharStream;

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {v2, p1, p2, v3, v4}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleCharStream;->ReInit(Ljava/io/InputStream;Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->token_source:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;

    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleCharStream;

    invoke-virtual {v2, v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->ReInit(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleCharStream;)V

    new-instance v2, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    invoke-direct {v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;-><init>()V

    iput-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    iput v5, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->reset()V

    const/4 v2, 0x0

    iput v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x16

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    aput v5, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_0
    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    new-instance v3, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    invoke-direct {v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;-><init>()V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public ReInit(Ljava/io/Reader;)V
    .locals 4

    const/4 v2, 0x1

    const/4 v3, -0x1

    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleCharStream;

    invoke-virtual {v1, p1, v2, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleCharStream;->ReInit(Ljava/io/Reader;II)V

    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->token_source:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;

    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleCharStream;

    invoke-virtual {v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->ReInit(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleCharStream;)V

    new-instance v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    invoke-direct {v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;-><init>()V

    iput-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    iput v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->reset()V

    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x16

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    new-instance v2, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    invoke-direct {v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final addr_spec()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ParseException;
        }
    .end annotation

    const/4 v5, 0x1

    new-instance v2, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTaddr_spec;

    const/16 v3, 0x9

    invoke-direct {v2, v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTaddr_spec;-><init>(I)V

    const/4 v0, 0x1

    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->openNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;)V

    invoke-virtual {p0, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeOpenNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->local_part()V

    const/16 v3, 0x8

    invoke-direct {p0, v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->domain()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2, v5}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;Z)V

    invoke-virtual {p0, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;)V

    :cond_0
    return-void

    :catch_0
    move-exception v1

    if-eqz v0, :cond_2

    :try_start_1
    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->clearNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;)V

    const/4 v0, 0x0

    :goto_0
    instance-of v3, v1, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_3

    check-cast v1, Ljava/lang/RuntimeException;

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v3

    if-eqz v0, :cond_1

    iget-object v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v4, v2, v5}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;Z)V

    invoke-virtual {p0, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;)V

    :cond_1
    throw v3

    :cond_2
    :try_start_2
    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->popNode()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;

    goto :goto_0

    :cond_3
    instance-of v3, v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ParseException;

    if-eqz v3, :cond_4

    check-cast v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ParseException;

    throw v1

    :cond_4
    check-cast v1, Ljava/lang/Error;

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public final address()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ParseException;
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v4, -0x1

    new-instance v2, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTaddress;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTaddress;-><init>(I)V

    const/4 v0, 0x1

    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->openNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;)V

    invoke-virtual {p0, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeOpenNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;)V

    const v3, 0x7fffffff

    :try_start_0
    invoke-direct {p0, v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_1(I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->addr_spec()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2, v6}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;Z)V

    invoke-virtual {p0, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;)V

    :cond_0
    return-void

    :cond_1
    :try_start_1
    iget v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v3, v4, :cond_3

    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v3

    :goto_1
    sparse-switch v3, :sswitch_data_0

    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/4 v4, 0x5

    iget v5, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v5, v3, v4

    const/4 v3, -0x1

    invoke-direct {p0, v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    new-instance v3, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ParseException;

    invoke-direct {v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ParseException;-><init>()V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v1

    if-eqz v0, :cond_5

    :try_start_2
    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->clearNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;)V

    const/4 v0, 0x0

    :goto_2
    instance-of v3, v1, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_6

    check-cast v1, Ljava/lang/RuntimeException;

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v3

    if-eqz v0, :cond_2

    iget-object v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v4, v2, v6}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;Z)V

    invoke-virtual {p0, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;)V

    :cond_2
    throw v3

    :cond_3
    :try_start_3
    iget v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_1

    :sswitch_0
    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->angle_addr()V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->phrase()V

    iget v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v3, v4, :cond_4

    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v3

    :goto_3
    packed-switch v3, :pswitch_data_0

    :pswitch_0
    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/4 v4, 0x4

    iget v5, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v5, v3, v4

    const/4 v3, -0x1

    invoke-direct {p0, v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    new-instance v3, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ParseException;

    invoke-direct {v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ParseException;-><init>()V

    throw v3

    :cond_4
    iget v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_3

    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->group_body()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->angle_addr()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :cond_5
    :try_start_4
    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->popNode()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;

    goto :goto_2

    :cond_6
    instance-of v3, v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ParseException;

    if-eqz v3, :cond_7

    check-cast v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ParseException;

    throw v1

    :cond_7
    check-cast v1, Ljava/lang/Error;

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_0
        0xe -> :sswitch_1
        0x1f -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public final address_list()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ParseException;
        }
    .end annotation

    const/4 v7, -0x1

    const/4 v6, 0x1

    new-instance v2, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTaddress_list;

    invoke-direct {v2, v6}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTaddress_list;-><init>(I)V

    const/4 v0, 0x1

    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->openNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;)V

    invoke-virtual {p0, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeOpenNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;)V

    :try_start_0
    iget v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v3, v7, :cond_1

    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v3

    :goto_0
    sparse-switch v3, :sswitch_data_0

    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/4 v4, 0x1

    iget v5, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v5, v3, v4

    :goto_1
    iget v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v3, v7, :cond_3

    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v3

    :goto_2
    packed-switch v3, :pswitch_data_0

    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/4 v4, 0x2

    iget v5, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v5, v3, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2, v6}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;Z)V

    invoke-virtual {p0, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;)V

    :cond_0
    return-void

    :cond_1
    :try_start_1
    iget v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_0

    :sswitch_0
    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->address()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    if-eqz v0, :cond_5

    :try_start_2
    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->clearNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;)V

    const/4 v0, 0x0

    :goto_3
    instance-of v3, v1, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_6

    check-cast v1, Ljava/lang/RuntimeException;

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v3

    if-eqz v0, :cond_2

    iget-object v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v4, v2, v6}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;Z)V

    invoke-virtual {p0, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;)V

    :cond_2
    throw v3

    :cond_3
    :try_start_3
    iget v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_2

    :pswitch_0
    const/4 v3, 0x3

    invoke-direct {p0, v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    iget v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v3, v7, :cond_4

    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v3

    :goto_4
    sparse-switch v3, :sswitch_data_1

    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/4 v4, 0x3

    iget v5, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v5, v3, v4

    goto :goto_1

    :cond_4
    iget v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_4

    :sswitch_1
    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->address()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :cond_5
    :try_start_4
    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->popNode()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;

    goto :goto_3

    :cond_6
    instance-of v3, v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ParseException;

    if-eqz v3, :cond_7

    check-cast v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ParseException;

    throw v1

    :cond_7
    check-cast v1, Ljava/lang/Error;

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_0
        0xe -> :sswitch_0
        0x1f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0x6 -> :sswitch_1
        0xe -> :sswitch_1
        0x1f -> :sswitch_1
    .end sparse-switch
.end method

.method public final angle_addr()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ParseException;
        }
    .end annotation

    const/4 v3, 0x6

    const/4 v6, 0x1

    new-instance v2, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTangle_addr;

    invoke-direct {v2, v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTangle_addr;-><init>(I)V

    const/4 v0, 0x1

    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->openNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;)V

    invoke-virtual {p0, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeOpenNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;)V

    const/4 v3, 0x6

    :try_start_0
    invoke-direct {p0, v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    iget v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v3

    :goto_0
    packed-switch v3, :pswitch_data_0

    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/16 v4, 0xa

    iget v5, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v5, v3, v4

    :goto_1
    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->addr_spec()V

    const/4 v3, 0x7

    invoke-direct {p0, v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2, v6}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;Z)V

    invoke-virtual {p0, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;)V

    :cond_0
    return-void

    :cond_1
    :try_start_1
    iget v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->route()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    if-eqz v0, :cond_3

    :try_start_2
    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->clearNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;)V

    const/4 v0, 0x0

    :goto_2
    instance-of v3, v1, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_4

    check-cast v1, Ljava/lang/RuntimeException;

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v3

    if-eqz v0, :cond_2

    iget-object v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v4, v2, v6}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;Z)V

    invoke-virtual {p0, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;)V

    :cond_2
    throw v3

    :cond_3
    :try_start_3
    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->popNode()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;

    goto :goto_2

    :cond_4
    instance-of v3, v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ParseException;

    if-eqz v3, :cond_5

    check-cast v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ParseException;

    throw v1

    :cond_5
    check-cast v1, Ljava/lang/Error;

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public final disable_tracing()V
    .locals 0

    return-void
.end method

.method public final domain()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ParseException;
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v6, -0x1

    new-instance v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTdomain;

    const/16 v3, 0xb

    invoke-direct {v1, v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTdomain;-><init>(I)V

    const/4 v0, 0x1

    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->openNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;)V

    invoke-virtual {p0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeOpenNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;)V

    :try_start_0
    iget v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v3, v6, :cond_1

    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v3

    :goto_0
    sparse-switch v3, :sswitch_data_0

    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/16 v4, 0x15

    iget v5, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v5, v3, v4

    const/4 v3, -0x1

    invoke-direct {p0, v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    new-instance v3, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ParseException;

    invoke-direct {v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ParseException;-><init>()V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v3

    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v4, v1, v7}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;Z)V

    invoke-virtual {p0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;)V

    :cond_0
    throw v3

    :cond_1
    :try_start_1
    iget v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_0

    :sswitch_0
    const/16 v3, 0xe

    invoke-direct {p0, v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    move-result-object v2

    :goto_1
    iget v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v3, v6, :cond_3

    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v3

    :goto_2
    sparse-switch v3, :sswitch_data_1

    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/16 v4, 0x13

    iget v5, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v5, v3, v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v1, v7}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;Z)V

    invoke-virtual {p0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;)V

    :cond_2
    return-void

    :cond_3
    :try_start_2
    iget v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_2

    :sswitch_1
    iget v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v3, v6, :cond_4

    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v3

    :goto_4
    packed-switch v3, :pswitch_data_0

    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/16 v4, 0x14

    iget v5, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v5, v3, v4

    :goto_5
    iget-object v3, v2, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;->image:Ljava/lang/String;

    iget-object v4, v2, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2e

    if-eq v3, v4, :cond_5

    new-instance v3, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ParseException;

    const-string v4, "Atoms in domain names must be separated by \'.\'"

    invoke-direct {v3, v4}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_4
    iget v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_4

    :pswitch_0
    const/16 v3, 0x9

    invoke-direct {p0, v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    move-result-object v2

    goto :goto_5

    :cond_5
    const/16 v3, 0xe

    invoke-direct {p0, v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    move-result-object v2

    goto :goto_1

    :sswitch_2
    const/16 v3, 0x12

    invoke-direct {p0, v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    nop

    :sswitch_data_0
    .sparse-switch
        0xe -> :sswitch_0
        0x12 -> :sswitch_2
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x9 -> :sswitch_1
        0xe -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method

.method public final enable_tracing()V
    .locals 0

    return-void
.end method

.method public generateParseException()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ParseException;
    .locals 9

    const/16 v8, 0x22

    const/4 v7, 0x0

    const/4 v6, 0x1

    iget-object v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentries:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->removeAllElements()V

    new-array v3, v8, [Z

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v8, :cond_0

    aput-boolean v7, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_kind:I

    if-ltz v4, :cond_1

    iget v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_kind:I

    aput-boolean v6, v3, v4

    const/4 v4, -0x1

    iput v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_kind:I

    :cond_1
    const/4 v1, 0x0

    :goto_1
    const/16 v4, 0x16

    if-ge v1, v4, :cond_5

    iget-object v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    aget v4, v4, v1

    iget v5, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    if-ne v4, v5, :cond_4

    const/4 v2, 0x0

    :goto_2
    const/16 v4, 0x20

    if-ge v2, v4, :cond_4

    sget-object v4, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1_0:[I

    aget v4, v4, v1

    shl-int v5, v6, v2

    and-int/2addr v4, v5

    if-eqz v4, :cond_2

    aput-boolean v6, v3, v2

    :cond_2
    sget-object v4, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1_1:[I

    aget v4, v4, v1

    shl-int v5, v6, v2

    and-int/2addr v4, v5

    if-eqz v4, :cond_3

    add-int/lit8 v4, v2, 0x20

    aput-boolean v6, v3, v4

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v8, :cond_7

    aget-boolean v4, v3, v1

    if-eqz v4, :cond_6

    new-array v4, v6, [I

    iput-object v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentry:[I

    iget-object v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentry:[I

    aput v1, v4, v7

    iget-object v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentries:Ljava/util/Vector;

    iget-object v5, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentry:[I

    invoke-virtual {v4, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_7
    iput v7, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_endpos:I

    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_rescan_token()V

    invoke-direct {p0, v7, v7}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_add_error_token(II)V

    iget-object v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentries:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    new-array v0, v4, [[I

    const/4 v1, 0x0

    :goto_4
    iget-object v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentries:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v1, v4, :cond_8

    iget-object v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentries:Ljava/util/Vector;

    invoke-virtual {v4, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    check-cast v4, [I

    aput-object v4, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_8
    new-instance v4, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ParseException;

    iget-object v5, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    sget-object v6, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->tokenImage:[Ljava/lang/String;

    invoke-direct {v4, v5, v0, v6}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ParseException;-><init>(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;[[I[Ljava/lang/String;)V

    return-object v4
.end method

.method public final getNextToken()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;
    .locals 2

    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    iget-object v0, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;->next:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    iget-object v0, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;->next:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    iput-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    :goto_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    iget v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->token_source:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;

    invoke-virtual {v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->getNextToken()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;->next:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    iput-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    goto :goto_0
.end method

.method public final getToken(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;
    .locals 4

    iget-boolean v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->lookingAhead:Z

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    :goto_0
    const/4 v0, 0x0

    move-object v2, v1

    :goto_1
    if-ge v0, p1, :cond_2

    iget-object v3, v2, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;->next:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    if-eqz v3, :cond_1

    iget-object v1, v2, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;->next:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    :goto_2
    add-int/lit8 v0, v0, 0x1

    move-object v2, v1

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->token_source:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;

    invoke-virtual {v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->getNextToken()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    move-result-object v1

    iput-object v1, v2, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;->next:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    goto :goto_2

    :cond_2
    return-object v2
.end method

.method public final group_body()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ParseException;
        }
    .end annotation

    const/4 v3, 0x5

    const/4 v7, 0x1

    const/4 v6, -0x1

    new-instance v2, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTgroup_body;

    invoke-direct {v2, v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTgroup_body;-><init>(I)V

    const/4 v0, 0x1

    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->openNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;)V

    invoke-virtual {p0, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeOpenNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;)V

    const/4 v3, 0x4

    :try_start_0
    invoke-direct {p0, v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    iget v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v3, v6, :cond_1

    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v3

    :goto_0
    sparse-switch v3, :sswitch_data_0

    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/4 v4, 0x7

    iget v5, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v5, v3, v4

    :goto_1
    iget v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v3, v6, :cond_3

    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v3

    :goto_2
    packed-switch v3, :pswitch_data_0

    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/16 v4, 0x8

    iget v5, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v5, v3, v4

    const/4 v3, 0x5

    invoke-direct {p0, v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2, v7}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;Z)V

    invoke-virtual {p0, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;)V

    :cond_0
    return-void

    :cond_1
    :try_start_1
    iget v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_0

    :sswitch_0
    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->mailbox()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    if-eqz v0, :cond_5

    :try_start_2
    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->clearNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;)V

    const/4 v0, 0x0

    :goto_3
    instance-of v3, v1, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_6

    check-cast v1, Ljava/lang/RuntimeException;

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v3

    if-eqz v0, :cond_2

    iget-object v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v4, v2, v7}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;Z)V

    invoke-virtual {p0, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;)V

    :cond_2
    throw v3

    :cond_3
    :try_start_3
    iget v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_2

    :pswitch_0
    const/4 v3, 0x3

    invoke-direct {p0, v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    iget v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v3, v6, :cond_4

    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v3

    :goto_4
    sparse-switch v3, :sswitch_data_1

    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/16 v4, 0x9

    iget v5, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v5, v3, v4

    goto :goto_1

    :cond_4
    iget v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_4

    :sswitch_1
    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->mailbox()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :cond_5
    :try_start_4
    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->popNode()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;

    goto :goto_3

    :cond_6
    instance-of v3, v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ParseException;

    if-eqz v3, :cond_7

    check-cast v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ParseException;

    throw v1

    :cond_7
    check-cast v1, Ljava/lang/Error;

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_0
        0xe -> :sswitch_0
        0x1f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0x6 -> :sswitch_1
        0xe -> :sswitch_1
        0x1f -> :sswitch_1
    .end sparse-switch
.end method

.method jjtreeCloseNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;)V
    .locals 1

    check-cast p1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleNode;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->getToken(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    move-result-object v0

    iput-object v0, p1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/BaseNode;->lastToken:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    return-void
.end method

.method jjtreeOpenNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;)V
    .locals 1

    check-cast p1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleNode;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->getToken(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    move-result-object v0

    iput-object v0, p1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/BaseNode;->firstToken:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    return-void
.end method

.method public final local_part()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ParseException;
        }
    .end annotation

    const/4 v8, 0x1

    const/16 v7, 0x1f

    const/4 v6, -0x1

    new-instance v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTlocal_part;

    const/16 v3, 0xa

    invoke-direct {v1, v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTlocal_part;-><init>(I)V

    const/4 v0, 0x1

    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->openNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;)V

    invoke-virtual {p0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeOpenNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;)V

    :try_start_0
    iget v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v3, v6, :cond_1

    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v3

    :goto_0
    sparse-switch v3, :sswitch_data_0

    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/16 v4, 0xf

    iget v5, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v5, v3, v4

    const/4 v3, -0x1

    invoke-direct {p0, v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    new-instance v3, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ParseException;

    invoke-direct {v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ParseException;-><init>()V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v3

    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v4, v1, v8}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;Z)V

    invoke-virtual {p0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;)V

    :cond_0
    throw v3

    :cond_1
    :try_start_1
    iget v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_0

    :sswitch_0
    const/16 v3, 0xe

    invoke-direct {p0, v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    move-result-object v2

    :goto_1
    iget v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v3, v6, :cond_3

    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v3

    :goto_2
    sparse-switch v3, :sswitch_data_1

    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/16 v4, 0x10

    iget v5, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v5, v3, v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v1, v8}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;Z)V

    invoke-virtual {p0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;)V

    :cond_2
    return-void

    :sswitch_1
    const/16 v3, 0x1f

    :try_start_2
    invoke-direct {p0, v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    move-result-object v2

    goto :goto_1

    :cond_3
    iget v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_2

    :sswitch_2
    iget v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v3, v6, :cond_5

    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v3

    :goto_3
    packed-switch v3, :pswitch_data_0

    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/16 v4, 0x11

    iget v5, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v5, v3, v4

    :goto_4
    iget-object v3, v2, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;->image:Ljava/lang/String;

    iget-object v4, v2, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2e

    if-ne v3, v4, :cond_4

    iget v3, v2, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;->kind:I

    if-ne v3, v7, :cond_6

    :cond_4
    new-instance v3, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ParseException;

    const-string v4, "Words in local part must be separated by \'.\'"

    invoke-direct {v3, v4}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_5
    iget v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_3

    :pswitch_0
    const/16 v3, 0x9

    invoke-direct {p0, v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    move-result-object v2

    goto :goto_4

    :cond_6
    iget v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v3, v6, :cond_7

    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v3

    :goto_5
    sparse-switch v3, :sswitch_data_2

    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/16 v4, 0x12

    iget v5, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v5, v3, v4

    const/4 v3, -0x1

    invoke-direct {p0, v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    new-instance v3, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ParseException;

    invoke-direct {v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ParseException;-><init>()V

    throw v3

    :cond_7
    iget v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_5

    :sswitch_3
    const/16 v3, 0xe

    invoke-direct {p0, v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    move-result-object v2

    goto/16 :goto_1

    :sswitch_4
    const/16 v3, 0x1f

    invoke-direct {p0, v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0xe -> :sswitch_0
        0x1f -> :sswitch_1
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x9 -> :sswitch_2
        0xe -> :sswitch_2
        0x1f -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        0xe -> :sswitch_3
        0x1f -> :sswitch_4
    .end sparse-switch
.end method

.method public final mailbox()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ParseException;
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v4, -0x1

    new-instance v2, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTmailbox;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTmailbox;-><init>(I)V

    const/4 v0, 0x1

    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->openNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;)V

    invoke-virtual {p0, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeOpenNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;)V

    const v3, 0x7fffffff

    :try_start_0
    invoke-direct {p0, v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_2(I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->addr_spec()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2, v6}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;Z)V

    invoke-virtual {p0, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;)V

    :cond_0
    return-void

    :cond_1
    :try_start_1
    iget v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v3, v4, :cond_3

    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v3

    :goto_1
    sparse-switch v3, :sswitch_data_0

    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/4 v4, 0x6

    iget v5, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v5, v3, v4

    const/4 v3, -0x1

    invoke-direct {p0, v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    new-instance v3, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ParseException;

    invoke-direct {v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ParseException;-><init>()V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v1

    if-eqz v0, :cond_4

    :try_start_2
    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->clearNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;)V

    const/4 v0, 0x0

    :goto_2
    instance-of v3, v1, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_5

    check-cast v1, Ljava/lang/RuntimeException;

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v3

    if-eqz v0, :cond_2

    iget-object v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v4, v2, v6}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;Z)V

    invoke-virtual {p0, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;)V

    :cond_2
    throw v3

    :cond_3
    :try_start_3
    iget v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_1

    :sswitch_0
    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->angle_addr()V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->name_addr()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :cond_4
    :try_start_4
    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->popNode()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;

    goto :goto_2

    :cond_5
    instance-of v3, v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ParseException;

    if-eqz v3, :cond_6

    check-cast v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ParseException;

    throw v1

    :cond_6
    check-cast v1, Ljava/lang/Error;

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_0
        0xe -> :sswitch_1
        0x1f -> :sswitch_1
    .end sparse-switch
.end method

.method public final name_addr()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ParseException;
        }
    .end annotation

    const/4 v5, 0x1

    new-instance v2, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTname_addr;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTname_addr;-><init>(I)V

    const/4 v0, 0x1

    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->openNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;)V

    invoke-virtual {p0, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeOpenNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->phrase()V

    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->angle_addr()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2, v5}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;Z)V

    invoke-virtual {p0, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;)V

    :cond_0
    return-void

    :catch_0
    move-exception v1

    if-eqz v0, :cond_2

    :try_start_1
    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->clearNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;)V

    const/4 v0, 0x0

    :goto_0
    instance-of v3, v1, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_3

    check-cast v1, Ljava/lang/RuntimeException;

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v3

    if-eqz v0, :cond_1

    iget-object v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v4, v2, v5}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;Z)V

    invoke-virtual {p0, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;)V

    :cond_1
    throw v3

    :cond_2
    :try_start_2
    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->popNode()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;

    goto :goto_0

    :cond_3
    instance-of v3, v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ParseException;

    if-eqz v3, :cond_4

    check-cast v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ParseException;

    throw v1

    :cond_4
    check-cast v1, Ljava/lang/Error;

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public parse()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTaddress_list;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ParseException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->parseAll()V

    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->rootNode()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;

    move-result-object v1

    check-cast v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTaddress_list;
    :try_end_0
    .catch Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/TokenMgrError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ParseException;

    invoke-virtual {v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/TokenMgrError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final parseAll()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ParseException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->address_list()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    return-void
.end method

.method public final parseLine()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ParseException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->address_list()V

    iget v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v0

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/4 v1, 0x0

    iget v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v2, v0, v1

    :goto_1
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    return-void

    :cond_0
    iget v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final phrase()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ParseException;
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v3, -0x1

    new-instance v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTphrase;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTphrase;-><init>(I)V

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v2, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->openNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;)V

    invoke-virtual {p0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeOpenNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;)V

    :sswitch_0
    :try_start_0
    iget v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v2, v3, :cond_1

    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v2

    :goto_0
    sparse-switch v2, :sswitch_data_0

    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/16 v3, 0xd

    iget v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v4, v2, v3

    const/4 v2, -0x1

    invoke-direct {p0, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    new-instance v2, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ParseException;

    invoke-direct {v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ParseException;-><init>()V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v2

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v1, v5}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;Z)V

    invoke-virtual {p0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;)V

    :cond_0
    throw v2

    :cond_1
    :try_start_1
    iget v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_0

    :sswitch_1
    const/16 v2, 0xe

    invoke-direct {p0, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    :goto_1
    iget v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v2, v3, :cond_3

    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v2

    :goto_2
    sparse-switch v2, :sswitch_data_1

    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/16 v3, 0xe

    iget v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v4, v2, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v2, v1, v5}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;Z)V

    invoke-virtual {p0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;)V

    :cond_2
    return-void

    :sswitch_2
    const/16 v2, 0x1f

    :try_start_2
    invoke-direct {p0, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    goto :goto_1

    :cond_3
    iget v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :sswitch_data_0
    .sparse-switch
        0xe -> :sswitch_1
        0x1f -> :sswitch_2
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0xe -> :sswitch_0
        0x1f -> :sswitch_0
    .end sparse-switch
.end method

.method public final route()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ParseException;
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v6, -0x1

    new-instance v2, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTroute;

    const/4 v3, 0x7

    invoke-direct {v2, v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTroute;-><init>(I)V

    const/4 v0, 0x1

    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->openNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;)V

    invoke-virtual {p0, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeOpenNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;)V

    const/16 v3, 0x8

    :try_start_0
    invoke-direct {p0, v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->domain()V

    :goto_0
    iget v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v3, v6, :cond_1

    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v3

    :goto_1
    sparse-switch v3, :sswitch_data_0

    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/16 v4, 0xb

    iget v5, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v5, v3, v4

    const/4 v3, 0x4

    invoke-direct {p0, v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2, v7}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;Z)V

    invoke-virtual {p0, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;)V

    :cond_0
    return-void

    :cond_1
    :try_start_1
    iget v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_1

    :pswitch_0
    const/4 v3, 0x3

    invoke-direct {p0, v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    :sswitch_0
    iget v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v3, v6, :cond_3

    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v3

    :goto_2
    packed-switch v3, :pswitch_data_0

    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/16 v4, 0xc

    iget v5, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v5, v3, v4

    const/16 v3, 0x8

    invoke-direct {p0, v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->domain()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    if-eqz v0, :cond_4

    :try_start_2
    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->clearNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;)V

    const/4 v0, 0x0

    :goto_3
    instance-of v3, v1, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_5

    check-cast v1, Ljava/lang/RuntimeException;

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v3

    if-eqz v0, :cond_2

    iget-object v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v4, v2, v7}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;Z)V

    invoke-virtual {p0, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;)V

    :cond_2
    throw v3

    :cond_3
    :try_start_3
    iget v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :cond_4
    :try_start_4
    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->popNode()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;

    goto :goto_3

    :cond_5
    instance-of v3, v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ParseException;

    if-eqz v3, :cond_6

    check-cast v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ParseException;

    throw v1

    :cond_6
    check-cast v1, Ljava/lang/Error;

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x8 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method
