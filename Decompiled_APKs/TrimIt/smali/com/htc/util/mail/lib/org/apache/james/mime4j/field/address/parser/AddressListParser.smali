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

    .prologue
    .line 711
    invoke-static {}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1_0()V

    .line 712
    invoke-static {}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1_1()V

    .line 713
    return-void
.end method

.method public constructor <init>(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;)V
    .locals 6
    .parameter "tm"

    .prologue
    const/16 v5, 0x16

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 772
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-direct {v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;-><init>()V

    iput-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    .line 704
    iput-boolean v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->lookingAhead:Z

    .line 707
    new-array v1, v5, [I

    iput-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    .line 720
    const/4 v1, 0x2

    new-array v1, v1, [Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    iput-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    .line 721
    iput-boolean v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_rescan:Z

    .line 722
    iput v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gc:I

    .line 816
    new-instance v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess;-><init>(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser$1;)V

    iput-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ls:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess;

    .line 862
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentries:Ljava/util/Vector;

    .line 864
    iput v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_kind:I

    .line 865
    const/16 v1, 0x64

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_lasttokens:[I

    .line 773
    iput-object p1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->token_source:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;

    .line 774
    new-instance v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    invoke-direct {v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;-><init>()V

    iput-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    .line 775
    iput v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    .line 776
    iput v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    .line 777
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v5, :cond_0

    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    aput v4, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 778
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

    .line 779
    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .parameter "stream"

    .prologue
    .line 725
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 726
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 8
    .parameter "stream"
    .parameter "encoding"

    .prologue
    const/16 v7, 0x16

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 727
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v2, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-direct {v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;-><init>()V

    iput-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    .line 704
    iput-boolean v5, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->lookingAhead:Z

    .line 707
    new-array v2, v7, [I

    iput-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    .line 720
    const/4 v2, 0x2

    new-array v2, v2, [Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    iput-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    .line 721
    iput-boolean v5, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_rescan:Z

    .line 722
    iput v5, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gc:I

    .line 816
    new-instance v2, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess;-><init>(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser$1;)V

    iput-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ls:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess;

    .line 862
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentries:Ljava/util/Vector;

    .line 864
    iput v6, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_kind:I

    .line 865
    const/16 v2, 0x64

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_lasttokens:[I

    .line 728
    :try_start_0
    new-instance v2, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleCharStream;

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-direct {v2, p1, p2, v3, v4}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleCharStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;II)V

    iput-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleCharStream;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 729
    new-instance v2, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;

    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleCharStream;

    invoke-direct {v2, v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;-><init>(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleCharStream;)V

    iput-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->token_source:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;

    .line 730
    new-instance v2, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    invoke-direct {v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;-><init>()V

    iput-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    .line 731
    iput v6, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    .line 732
    iput v5, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    .line 733
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v7, :cond_0

    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    aput v6, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 728
    .end local v1           #i:I
    :catch_0
    move-exception v0

    .local v0, e:Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 734
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    .restart local v1       #i:I
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

    .line 735
    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 7
    .parameter "stream"

    .prologue
    const/16 v6, 0x16

    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 751
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-direct {v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;-><init>()V

    iput-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    .line 704
    iput-boolean v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->lookingAhead:Z

    .line 707
    new-array v1, v6, [I

    iput-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    .line 720
    const/4 v1, 0x2

    new-array v1, v1, [Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    iput-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    .line 721
    iput-boolean v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_rescan:Z

    .line 722
    iput v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gc:I

    .line 816
    new-instance v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess;-><init>(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser$1;)V

    iput-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ls:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess;

    .line 862
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentries:Ljava/util/Vector;

    .line 864
    iput v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_kind:I

    .line 865
    const/16 v1, 0x64

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_lasttokens:[I

    .line 752
    new-instance v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleCharStream;

    invoke-direct {v1, p1, v5, v5}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleCharStream;-><init>(Ljava/io/Reader;II)V

    iput-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleCharStream;

    .line 753
    new-instance v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;

    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleCharStream;

    invoke-direct {v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;-><init>(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleCharStream;)V

    iput-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->token_source:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;

    .line 754
    new-instance v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    invoke-direct {v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;-><init>()V

    iput-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    .line 755
    iput v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    .line 756
    iput v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    .line 757
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v6, :cond_0

    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    aput v4, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 758
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

    .line 759
    :cond_1
    return-void
.end method

.method private final jj_2_1(I)Z
    .locals 4
    .parameter "xla"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 614
    iput p1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la:I

    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    iput-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    iput-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_lastpos:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    .line 615
    :try_start_0
    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_3_1()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_0

    .line 617
    :goto_0
    invoke-direct {p0, v2, p1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_save(II)V

    :goto_1
    return v1

    :cond_0
    move v1, v2

    .line 615
    goto :goto_0

    .line 616
    :catch_0
    move-exception v0

    .line 617
    .local v0, ls:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess;
    invoke-direct {p0, v2, p1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_save(II)V

    goto :goto_1

    .end local v0           #ls:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess;
    :catchall_0
    move-exception v1

    invoke-direct {p0, v2, p1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_save(II)V

    throw v1
.end method

.method private final jj_2_2(I)Z
    .locals 3
    .parameter "xla"

    .prologue
    const/4 v2, 0x1

    .line 621
    iput p1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la:I

    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    iput-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    iput-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_lastpos:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    .line 622
    :try_start_0
    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_3_2()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    .line 624
    :goto_0
    invoke-direct {p0, v2, p1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_save(II)V

    :goto_1
    return v1

    .line 622
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 623
    :catch_0
    move-exception v0

    .line 624
    .local v0, ls:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess;
    invoke-direct {p0, v2, p1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_save(II)V

    move v1, v2

    goto :goto_1

    .end local v0           #ls:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess;
    :catchall_0
    move-exception v1

    invoke-direct {p0, v2, p1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_save(II)V

    throw v1
.end method

.method private final jj_3R_10()Z
    .locals 2

    .prologue
    .line 671
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    .line 672
    .local v0, xsp:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;
    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_3R_12()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 673
    iput-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    .line 674
    const/16 v1, 0x12

    invoke-direct {p0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 676
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private final jj_3R_11()Z
    .locals 2

    .prologue
    .line 629
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    .line 630
    .local v0, xsp:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;
    const/16 v1, 0x9

    invoke-direct {p0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    .line 631
    :cond_0
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    .line 632
    const/16 v1, 0xe

    invoke-direct {p0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 633
    iput-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    .line 634
    const/16 v1, 0x1f

    invoke-direct {p0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 636
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private final jj_3R_12()Z
    .locals 2

    .prologue
    .line 660
    const/16 v1, 0xe

    invoke-direct {p0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 666
    :goto_0
    return v1

    .line 663
    :cond_0
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    .line 664
    .local v0, xsp:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;
    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_3R_13()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    .line 666
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private final jj_3R_13()Z
    .locals 2

    .prologue
    .line 641
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    .line 642
    .local v0, xsp:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;
    const/16 v1, 0x9

    invoke-direct {p0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    .line 643
    :cond_0
    const/16 v1, 0xe

    invoke-direct {p0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 644
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private final jj_3R_8()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 648
    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_3R_9()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 651
    :cond_0
    :goto_0
    return v0

    .line 649
    :cond_1
    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 650
    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_3R_10()Z

    move-result v1

    if-nez v1, :cond_0

    .line 651
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_9()Z
    .locals 2

    .prologue
    .line 686
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    .line 687
    .local v0, xsp:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;
    const/16 v1, 0xe

    invoke-direct {p0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 688
    iput-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    .line 689
    const/16 v1, 0x1f

    invoke-direct {p0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 695
    :goto_0
    return v1

    .line 692
    :cond_0
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    .line 693
    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_3R_11()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    .line 695
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private final jj_3_1()Z
    .locals 1

    .prologue
    .line 655
    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_3R_8()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 656
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3_2()Z
    .locals 1

    .prologue
    .line 680
    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_3R_8()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 681
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private jj_add_error_token(II)V
    .locals 7
    .parameter "kind"
    .parameter "pos"

    .prologue
    .line 869
    const/16 v4, 0x64

    if-lt p2, v4, :cond_1

    .line 894
    :cond_0
    :goto_0
    return-void

    .line 870
    :cond_1
    iget v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_endpos:I

    add-int/lit8 v4, v4, 0x1

    if-ne p2, v4, :cond_2

    .line 871
    iget-object v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_lasttokens:[I

    iget v5, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_endpos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_endpos:I

    aput p1, v4, v5

    goto :goto_0

    .line 872
    :cond_2
    iget v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_endpos:I

    if-eqz v4, :cond_0

    .line 873
    iget v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_endpos:I

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentry:[I

    .line 874
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_endpos:I

    if-ge v2, v4, :cond_3

    .line 875
    iget-object v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentry:[I

    iget-object v5, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_lasttokens:[I

    aget v5, v5, v2

    aput v5, v4, v2

    .line 874
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 877
    :cond_3
    const/4 v1, 0x0

    .line 878
    .local v1, exists:Z
    iget-object v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentries:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, e:Ljava/util/Enumeration;
    :cond_4
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 879
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    move-object v3, v4

    check-cast v3, [I

    .line 880
    .local v3, oldentry:[I
    array-length v4, v3

    iget-object v5, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentry:[I

    array-length v5, v5

    if-ne v4, v5, :cond_4

    .line 881
    const/4 v1, 0x1

    .line 882
    const/4 v2, 0x0

    :goto_2
    iget-object v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentry:[I

    array-length v4, v4

    if-ge v2, v4, :cond_5

    .line 883
    aget v4, v3, v2

    iget-object v5, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentry:[I

    aget v5, v5, v2

    if-eq v4, v5, :cond_8

    .line 884
    const/4 v1, 0x0

    .line 888
    :cond_5
    if-eqz v1, :cond_4

    .line 891
    .end local v3           #oldentry:[I
    :cond_6
    if-nez v1, :cond_7

    iget-object v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentries:Ljava/util/Vector;

    iget-object v5, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentry:[I

    invoke-virtual {v4, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 892
    :cond_7
    if-eqz p2, :cond_0

    iget-object v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_lasttokens:[I

    iput p2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_endpos:I

    add-int/lit8 v5, p2, -0x1

    aput p1, v4, v5

    goto :goto_0

    .line 882
    .restart local v3       #oldentry:[I
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method private final jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;
    .locals 5
    .parameter "kind"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 793
    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    .local v2, oldToken:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;
    iget-object v3, v2, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;->next:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    iget-object v3, v3, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;->next:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    iput-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    .line 795
    :goto_0
    const/4 v3, -0x1

    iput v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    .line 796
    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    iget v3, v3, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;->kind:I

    if-ne v3, p1, :cond_4

    .line 797
    iget v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    .line 798
    iget v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gc:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gc:I

    const/16 v4, 0x64

    if-le v3, v4, :cond_3

    .line 799
    const/4 v3, 0x0

    iput v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gc:I

    .line 800
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    array-length v3, v3

    if-ge v1, v3, :cond_3

    .line 801
    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    aget-object v0, v3, v1

    .line 802
    .local v0, c:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;
    :goto_2
    if-eqz v0, :cond_2

    .line 803
    iget v3, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;->gen:I

    iget v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    if-ge v3, v4, :cond_0

    const/4 v3, 0x0

    iput-object v3, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;->first:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    .line 804
    :cond_0
    iget-object v0, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;->next:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    goto :goto_2

    .line 794
    .end local v0           #c:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;
    .end local v1           #i:I
    :cond_1
    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    iget-object v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->token_source:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;

    invoke-virtual {v4}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->getNextToken()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    move-result-object v4

    iput-object v4, v3, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;->next:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    iput-object v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    goto :goto_0

    .line 800
    .restart local v0       #c:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;
    .restart local v1       #i:I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 808
    .end local v0           #c:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;
    .end local v1           #i:I
    :cond_3
    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    return-object v3

    .line 810
    :cond_4
    iput-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    .line 811
    iput p1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_kind:I

    .line 812
    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->generateParseException()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ParseException;

    move-result-object v3

    throw v3
.end method

.method private static jj_la1_0()V
    .locals 1

    .prologue
    .line 715
    const/16 v0, 0x16

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1_0:[I

    .line 716
    return-void

    .line 715
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

    .prologue
    .line 718
    const/16 v0, 0x16

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1_1:[I

    .line 719
    return-void

    .line 718
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

    .prologue
    .line 856
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    iget-object v0, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;->next:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    iput-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_nt:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    if-nez v0, :cond_0

    .line 857
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->token_source:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;

    invoke-virtual {v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->getNextToken()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;->next:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    iget v0, v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;->kind:I

    iput v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    .line 859
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

    .prologue
    .line 942
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_rescan:Z

    .line 943
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v2, 0x2

    if-ge v0, v2, :cond_2

    .line 945
    :try_start_0
    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    aget-object v1, v2, v0

    .line 947
    .local v1, p:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;
    :cond_0
    iget v2, v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;->gen:I

    iget v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    if-le v2, v3, :cond_1

    .line 948
    iget v2, v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;->arg:I

    iput v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la:I

    iget-object v2, v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;->first:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    iput-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    iput-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_lastpos:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    .line 949
    packed-switch v0, :pswitch_data_0

    .line 954
    :cond_1
    :goto_1
    iget-object v1, v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;->next:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    .line 955
    if-nez v1, :cond_0

    .line 943
    .end local v1           #p:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 950
    .restart local v1       #p:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;
    :pswitch_0
    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_3_1()Z

    goto :goto_1

    .line 956
    .end local v1           #p:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;
    :catch_0
    move-exception v2

    goto :goto_2

    .line 951
    .restart local v1       #p:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;
    :pswitch_1
    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_3_2()Z
    :try_end_0
    .catch Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 958
    .end local v1           #p:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;
    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_rescan:Z

    .line 959
    return-void

    .line 949
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private final jj_save(II)V
    .locals 4
    .parameter "index"
    .parameter "xla"

    .prologue
    .line 962
    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    aget-object v0, v2, p1

    .line 963
    .local v0, p:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;
    :goto_0
    iget v2, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;->gen:I

    iget v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    if-le v2, v3, :cond_0

    .line 964
    iget-object v2, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;->next:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    if-nez v2, :cond_1

    new-instance v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    invoke-direct {v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;-><init>()V

    iput-object v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;->next:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    .end local v0           #p:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;
    .local v1, p:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;
    move-object v0, v1

    .line 967
    .end local v1           #p:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;
    .restart local v0       #p:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;
    :cond_0
    iget v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    add-int/2addr v2, p2

    iget v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la:I

    sub-int/2addr v2, v3

    iput v2, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;->gen:I

    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    iput-object v2, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;->first:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    iput p2, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;->arg:I

    .line 968
    return-void

    .line 965
    :cond_1
    iget-object v0, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;->next:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    goto :goto_0
.end method

.method private final jj_scan_token(I)Z
    .locals 4
    .parameter "kind"

    .prologue
    .line 818
    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_lastpos:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    if-ne v2, v3, :cond_1

    .line 819
    iget v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la:I

    .line 820
    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    iget-object v2, v2, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;->next:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    if-nez v2, :cond_0

    .line 821
    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->token_source:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;

    invoke-virtual {v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->getNextToken()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    move-result-object v3

    iput-object v3, v2, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;->next:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    iput-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    iput-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_lastpos:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    .line 828
    :goto_0
    iget-boolean v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_rescan:Z

    if-eqz v2, :cond_3

    .line 829
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    .line 830
    .local v1, tok:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;
    :goto_1
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    if-eq v1, v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    iget-object v1, v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;->next:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    goto :goto_1

    .line 823
    .end local v0           #i:I
    .end local v1           #tok:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;
    :cond_0
    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    iget-object v2, v2, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;->next:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    iput-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    iput-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_lastpos:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    goto :goto_0

    .line 826
    :cond_1
    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    iget-object v2, v2, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;->next:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    iput-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    goto :goto_0

    .line 831
    .restart local v0       #i:I
    .restart local v1       #tok:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;
    :cond_2
    if-eqz v1, :cond_3

    invoke-direct {p0, p1, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_add_error_token(II)V

    .line 833
    .end local v0           #i:I
    .end local v1           #tok:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;
    :cond_3
    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    iget v2, v2, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;->kind:I

    if-eq v2, p1, :cond_4

    const/4 v2, 0x1

    .line 835
    :goto_2
    return v2

    .line 834
    :cond_4
    iget v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la:I

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_lastpos:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ls:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess;

    throw v2

    .line 835
    :cond_5
    const/4 v2, 0x0

    goto :goto_2
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 34
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 4
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 23
    :goto_0
    :try_start_0
    new-instance v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;

    sget-object v2, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-direct {v0, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;-><init>(Ljava/io/InputStream;)V

    .line 24
    .local v0, parser:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;
    invoke-virtual {v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->parseLine()V

    .line 25
    iget-object v2, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->rootNode()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;

    move-result-object v2

    check-cast v2, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleNode;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleNode;->dump(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 26
    .end local v0           #parser:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;
    :catch_0
    move-exception v1

    .line 27
    .local v1, x:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 28
    return-void
.end method


# virtual methods
.method public ReInit(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;)V
    .locals 3
    .parameter "tm"

    .prologue
    const/4 v2, -0x1

    .line 782
    iput-object p1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->token_source:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;

    .line 783
    new-instance v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    invoke-direct {v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;-><init>()V

    iput-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    .line 784
    iput v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    .line 785
    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->reset()V

    .line 786
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    .line 787
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0x16

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 788
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

    .line 789
    :cond_1
    return-void
.end method

.method public ReInit(Ljava/io/InputStream;)V
    .locals 1
    .parameter "stream"

    .prologue
    .line 738
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->ReInit(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 739
    return-void
.end method

.method public ReInit(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 6
    .parameter "stream"
    .parameter "encoding"

    .prologue
    const/4 v5, -0x1

    .line 741
    :try_start_0
    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleCharStream;

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {v2, p1, p2, v3, v4}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleCharStream;->ReInit(Ljava/io/InputStream;Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 742
    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->token_source:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;

    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleCharStream;

    invoke-virtual {v2, v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->ReInit(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleCharStream;)V

    .line 743
    new-instance v2, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    invoke-direct {v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;-><init>()V

    iput-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    .line 744
    iput v5, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    .line 745
    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->reset()V

    .line 746
    const/4 v2, 0x0

    iput v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    .line 747
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/16 v2, 0x16

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    aput v5, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 741
    .end local v1           #i:I
    :catch_0
    move-exception v0

    .local v0, e:Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 748
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    .restart local v1       #i:I
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

    .line 749
    :cond_1
    return-void
.end method

.method public ReInit(Ljava/io/Reader;)V
    .locals 4
    .parameter "stream"

    .prologue
    const/4 v2, 0x1

    const/4 v3, -0x1

    .line 762
    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleCharStream;

    invoke-virtual {v1, p1, v2, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleCharStream;->ReInit(Ljava/io/Reader;II)V

    .line 763
    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->token_source:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;

    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleCharStream;

    invoke-virtual {v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->ReInit(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleCharStream;)V

    .line 764
    new-instance v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    invoke-direct {v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;-><init>()V

    iput-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    .line 765
    iput v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    .line 766
    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->reset()V

    .line 767
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    .line 768
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0x16

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 769
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

    .line 770
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

    .prologue
    const/4 v5, 0x1

    .line 471
    new-instance v2, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTaddr_spec;

    const/16 v3, 0x9

    invoke-direct {v2, v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTaddr_spec;-><init>(I)V

    .line 472
    .local v2, jjtn000:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTaddr_spec;
    const/4 v0, 0x1

    .line 473
    .local v0, jjtc000:Z
    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->openNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;)V

    .line 474
    invoke-virtual {p0, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeOpenNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;)V

    .line 476
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->local_part()V

    .line 477
    const/16 v3, 0x8

    invoke-direct {p0, v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    .line 478
    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->domain()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 494
    if-eqz v0, :cond_0

    .line 495
    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2, v5}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;Z)V

    .line 496
    invoke-virtual {p0, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;)V

    .line 499
    :cond_0
    return-void

    .line 479
    :catch_0
    move-exception v1

    .line 480
    .local v1, jjte000:Ljava/lang/Throwable;
    if-eqz v0, :cond_2

    .line 481
    :try_start_1
    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->clearNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;)V

    .line 482
    const/4 v0, 0x0

    .line 486
    :goto_0
    instance-of v3, v1, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_3

    .line 487
    check-cast v1, Ljava/lang/RuntimeException;

    .end local v1           #jjte000:Ljava/lang/Throwable;
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 494
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_1

    .line 495
    iget-object v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v4, v2, v5}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;Z)V

    .line 496
    invoke-virtual {p0, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;)V

    :cond_1
    throw v3

    .line 484
    .restart local v1       #jjte000:Ljava/lang/Throwable;
    :cond_2
    :try_start_2
    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->popNode()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;

    goto :goto_0

    .line 489
    :cond_3
    instance-of v3, v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ParseException;

    if-eqz v3, :cond_4

    .line 490
    check-cast v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ParseException;

    .end local v1           #jjte000:Ljava/lang/Throwable;
    throw v1

    .line 492
    .restart local v1       #jjte000:Ljava/lang/Throwable;
    :cond_4
    check-cast v1, Ljava/lang/Error;

    .end local v1           #jjte000:Ljava/lang/Throwable;
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

    .prologue
    const/4 v6, 0x1

    const/4 v4, -0x1

    .line 136
    new-instance v2, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTaddress;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTaddress;-><init>(I)V

    .line 137
    .local v2, jjtn000:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTaddress;
    const/4 v0, 0x1

    .line 138
    .local v0, jjtc000:Z
    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->openNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;)V

    .line 139
    invoke-virtual {p0, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeOpenNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;)V

    .line 141
    const v3, 0x7fffffff

    :try_start_0
    invoke-direct {p0, v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_1(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 142
    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->addr_spec()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    :goto_0
    if-eqz v0, :cond_0

    .line 186
    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2, v6}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;Z)V

    .line 187
    invoke-virtual {p0, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;)V

    .line 190
    :cond_0
    return-void

    .line 144
    :cond_1
    :try_start_1
    iget v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v3, v4, :cond_3

    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v3

    :goto_1
    sparse-switch v3, :sswitch_data_0

    .line 165
    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/4 v4, 0x5

    iget v5, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v5, v3, v4

    .line 166
    const/4 v3, -0x1

    invoke-direct {p0, v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    .line 167
    new-instance v3, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ParseException;

    invoke-direct {v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ParseException;-><init>()V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 170
    :catch_0
    move-exception v1

    .line 171
    .local v1, jjte000:Ljava/lang/Throwable;
    if-eqz v0, :cond_5

    .line 172
    :try_start_2
    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->clearNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;)V

    .line 173
    const/4 v0, 0x0

    .line 177
    :goto_2
    instance-of v3, v1, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_6

    .line 178
    check-cast v1, Ljava/lang/RuntimeException;

    .end local v1           #jjte000:Ljava/lang/Throwable;
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 185
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_2

    .line 186
    iget-object v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v4, v2, v6}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;Z)V

    .line 187
    invoke-virtual {p0, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;)V

    :cond_2
    throw v3

    .line 144
    :cond_3
    :try_start_3
    iget v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_1

    .line 146
    :sswitch_0
    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->angle_addr()V

    goto :goto_0

    .line 150
    :sswitch_1
    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->phrase()V

    .line 151
    iget v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v3, v4, :cond_4

    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v3

    :goto_3
    packed-switch v3, :pswitch_data_0

    .line 159
    :pswitch_0
    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/4 v4, 0x4

    iget v5, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v5, v3, v4

    .line 160
    const/4 v3, -0x1

    invoke-direct {p0, v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    .line 161
    new-instance v3, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ParseException;

    invoke-direct {v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ParseException;-><init>()V

    throw v3

    .line 151
    :cond_4
    iget v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_3

    .line 153
    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->group_body()V

    goto :goto_0

    .line 156
    :pswitch_2
    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->angle_addr()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 175
    .restart local v1       #jjte000:Ljava/lang/Throwable;
    :cond_5
    :try_start_4
    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->popNode()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;

    goto :goto_2

    .line 180
    :cond_6
    instance-of v3, v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ParseException;

    if-eqz v3, :cond_7

    .line 181
    check-cast v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ParseException;

    .end local v1           #jjte000:Ljava/lang/Throwable;
    throw v1

    .line 183
    .restart local v1       #jjte000:Ljava/lang/Throwable;
    :cond_7
    check-cast v1, Ljava/lang/Error;

    .end local v1           #jjte000:Ljava/lang/Throwable;
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 144
    nop

    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_0
        0xe -> :sswitch_1
        0x1f -> :sswitch_1
    .end sparse-switch

    .line 151
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

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x1

    .line 75
    new-instance v2, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTaddress_list;

    invoke-direct {v2, v6}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTaddress_list;-><init>(I)V

    .line 76
    .local v2, jjtn000:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTaddress_list;
    const/4 v0, 0x1

    .line 77
    .local v0, jjtc000:Z
    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->openNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;)V

    .line 78
    invoke-virtual {p0, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeOpenNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;)V

    .line 80
    :try_start_0
    iget v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v3, v7, :cond_1

    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v3

    :goto_0
    sparse-switch v3, :sswitch_data_0

    .line 87
    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/4 v4, 0x1

    iget v5, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v5, v3, v4

    .line 92
    :goto_1
    iget v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v3, v7, :cond_3

    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v3

    :goto_2
    packed-switch v3, :pswitch_data_0

    .line 97
    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/4 v4, 0x2

    iget v5, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v5, v3, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    if-eqz v0, :cond_0

    .line 128
    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2, v6}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;Z)V

    .line 129
    invoke-virtual {p0, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;)V

    .line 132
    :cond_0
    return-void

    .line 80
    :cond_1
    :try_start_1
    iget v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_0

    .line 84
    :sswitch_0
    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->address()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 112
    :catch_0
    move-exception v1

    .line 113
    .local v1, jjte000:Ljava/lang/Throwable;
    if-eqz v0, :cond_5

    .line 114
    :try_start_2
    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->clearNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;)V

    .line 115
    const/4 v0, 0x0

    .line 119
    :goto_3
    instance-of v3, v1, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_6

    .line 120
    check-cast v1, Ljava/lang/RuntimeException;

    .end local v1           #jjte000:Ljava/lang/Throwable;
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 127
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_2

    .line 128
    iget-object v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v4, v2, v6}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;Z)V

    .line 129
    invoke-virtual {p0, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;)V

    :cond_2
    throw v3

    .line 92
    :cond_3
    :try_start_3
    iget v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_2

    .line 100
    :pswitch_0
    const/4 v3, 0x3

    invoke-direct {p0, v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    .line 101
    iget v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v3, v7, :cond_4

    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v3

    :goto_4
    sparse-switch v3, :sswitch_data_1

    .line 108
    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/4 v4, 0x3

    iget v5, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v5, v3, v4

    goto :goto_1

    .line 101
    :cond_4
    iget v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_4

    .line 105
    :sswitch_1
    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->address()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 117
    .restart local v1       #jjte000:Ljava/lang/Throwable;
    :cond_5
    :try_start_4
    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->popNode()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;

    goto :goto_3

    .line 122
    :cond_6
    instance-of v3, v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ParseException;

    if-eqz v3, :cond_7

    .line 123
    check-cast v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ParseException;

    .end local v1           #jjte000:Ljava/lang/Throwable;
    throw v1

    .line 125
    .restart local v1       #jjte000:Ljava/lang/Throwable;
    :cond_7
    check-cast v1, Ljava/lang/Error;

    .end local v1           #jjte000:Ljava/lang/Throwable;
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 80
    nop

    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_0
        0xe -> :sswitch_0
        0x1f -> :sswitch_0
    .end sparse-switch

    .line 92
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch

    .line 101
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

    .prologue
    const/4 v3, 0x6

    const/4 v6, 0x1

    .line 334
    new-instance v2, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTangle_addr;

    invoke-direct {v2, v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTangle_addr;-><init>(I)V

    .line 335
    .local v2, jjtn000:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTangle_addr;
    const/4 v0, 0x1

    .line 336
    .local v0, jjtc000:Z
    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->openNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;)V

    .line 337
    invoke-virtual {p0, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeOpenNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;)V

    .line 339
    const/4 v3, 0x6

    :try_start_0
    invoke-direct {p0, v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    .line 340
    iget v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v3

    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 345
    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/16 v4, 0xa

    iget v5, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v5, v3, v4

    .line 348
    :goto_1
    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->addr_spec()V

    .line 349
    const/4 v3, 0x7

    invoke-direct {p0, v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 365
    if-eqz v0, :cond_0

    .line 366
    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2, v6}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;Z)V

    .line 367
    invoke-virtual {p0, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;)V

    .line 370
    :cond_0
    return-void

    .line 340
    :cond_1
    :try_start_1
    iget v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_0

    .line 342
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->route()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 350
    :catch_0
    move-exception v1

    .line 351
    .local v1, jjte000:Ljava/lang/Throwable;
    if-eqz v0, :cond_3

    .line 352
    :try_start_2
    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->clearNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;)V

    .line 353
    const/4 v0, 0x0

    .line 357
    :goto_2
    instance-of v3, v1, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_4

    .line 358
    check-cast v1, Ljava/lang/RuntimeException;

    .end local v1           #jjte000:Ljava/lang/Throwable;
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 365
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_2

    .line 366
    iget-object v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v4, v2, v6}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;Z)V

    .line 367
    invoke-virtual {p0, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;)V

    :cond_2
    throw v3

    .line 355
    .restart local v1       #jjte000:Ljava/lang/Throwable;
    :cond_3
    :try_start_3
    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->popNode()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;

    goto :goto_2

    .line 360
    :cond_4
    instance-of v3, v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ParseException;

    if-eqz v3, :cond_5

    .line 361
    check-cast v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ParseException;

    .end local v1           #jjte000:Ljava/lang/Throwable;
    throw v1

    .line 363
    .restart local v1       #jjte000:Ljava/lang/Throwable;
    :cond_5
    check-cast v1, Ljava/lang/Error;

    .end local v1           #jjte000:Ljava/lang/Throwable;
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 340
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public final disable_tracing()V
    .locals 0

    .prologue
    .line 939
    return-void
.end method

.method public final domain()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ParseException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    .line 565
    new-instance v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTdomain;

    const/16 v3, 0xb

    invoke-direct {v1, v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTdomain;-><init>(I)V

    .line 566
    .local v1, jjtn000:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTdomain;
    const/4 v0, 0x1

    .line 567
    .local v0, jjtc000:Z
    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->openNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;)V

    .line 568
    invoke-virtual {p0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeOpenNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;)V

    .line 570
    :try_start_0
    iget v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v3, v6, :cond_1

    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v3

    :goto_0
    sparse-switch v3, :sswitch_data_0

    .line 601
    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/16 v4, 0x15

    iget v5, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v5, v3, v4

    .line 602
    const/4 v3, -0x1

    invoke-direct {p0, v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    .line 603
    new-instance v3, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ParseException;

    invoke-direct {v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ParseException;-><init>()V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 606
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_0

    .line 607
    iget-object v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v4, v1, v7}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;Z)V

    .line 608
    invoke-virtual {p0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;)V

    :cond_0
    throw v3

    .line 570
    :cond_1
    :try_start_1
    iget v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_0

    .line 572
    :sswitch_0
    const/16 v3, 0xe

    invoke-direct {p0, v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    move-result-object v2

    .line 575
    .local v2, t:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;
    :goto_1
    iget v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v3, v6, :cond_3

    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v3

    :goto_2
    sparse-switch v3, :sswitch_data_1

    .line 581
    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/16 v4, 0x13

    iget v5, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v5, v3, v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 606
    .end local v2           #t:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;
    :goto_3
    if-eqz v0, :cond_2

    .line 607
    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v1, v7}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;Z)V

    .line 608
    invoke-virtual {p0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;)V

    .line 611
    :cond_2
    return-void

    .line 575
    .restart local v2       #t:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;
    :cond_3
    :try_start_2
    iget v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_2

    .line 584
    :sswitch_1
    iget v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v3, v6, :cond_4

    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v3

    :goto_4
    packed-switch v3, :pswitch_data_0

    .line 589
    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/16 v4, 0x14

    iget v5, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v5, v3, v4

    .line 592
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

    .line 593
    new-instance v3, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ParseException;

    const-string v4, "Atoms in domain names must be separated by \'.\'"

    invoke-direct {v3, v4}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 584
    :cond_4
    iget v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_4

    .line 586
    :pswitch_0
    const/16 v3, 0x9

    invoke-direct {p0, v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    move-result-object v2

    .line 587
    goto :goto_5

    .line 594
    :cond_5
    const/16 v3, 0xe

    invoke-direct {p0, v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    move-result-object v2

    goto :goto_1

    .line 598
    .end local v2           #t:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;
    :sswitch_2
    const/16 v3, 0x12

    invoke-direct {p0, v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 570
    nop

    :sswitch_data_0
    .sparse-switch
        0xe -> :sswitch_0
        0x12 -> :sswitch_2
    .end sparse-switch

    .line 575
    :sswitch_data_1
    .sparse-switch
        0x9 -> :sswitch_1
        0xe -> :sswitch_1
    .end sparse-switch

    .line 584
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method

.method public final enable_tracing()V
    .locals 0

    .prologue
    .line 936
    return-void
.end method

.method public generateParseException()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ParseException;
    .locals 9

    .prologue
    const/16 v8, 0x22

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 897
    iget-object v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentries:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->removeAllElements()V

    .line 898
    new-array v3, v8, [Z

    .line 899
    .local v3, la1tokens:[Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v8, :cond_0

    .line 900
    aput-boolean v7, v3, v1

    .line 899
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 902
    :cond_0
    iget v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_kind:I

    if-ltz v4, :cond_1

    .line 903
    iget v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_kind:I

    aput-boolean v6, v3, v4

    .line 904
    const/4 v4, -0x1

    iput v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_kind:I

    .line 906
    :cond_1
    const/4 v1, 0x0

    :goto_1
    const/16 v4, 0x16

    if-ge v1, v4, :cond_5

    .line 907
    iget-object v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    aget v4, v4, v1

    iget v5, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    if-ne v4, v5, :cond_4

    .line 908
    const/4 v2, 0x0

    .local v2, j:I
    :goto_2
    const/16 v4, 0x20

    if-ge v2, v4, :cond_4

    .line 909
    sget-object v4, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1_0:[I

    aget v4, v4, v1

    shl-int v5, v6, v2

    and-int/2addr v4, v5

    if-eqz v4, :cond_2

    .line 910
    aput-boolean v6, v3, v2

    .line 912
    :cond_2
    sget-object v4, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1_1:[I

    aget v4, v4, v1

    shl-int v5, v6, v2

    and-int/2addr v4, v5

    if-eqz v4, :cond_3

    .line 913
    add-int/lit8 v4, v2, 0x20

    aput-boolean v6, v3, v4

    .line 908
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 906
    .end local v2           #j:I
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 918
    :cond_5
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v8, :cond_7

    .line 919
    aget-boolean v4, v3, v1

    if-eqz v4, :cond_6

    .line 920
    new-array v4, v6, [I

    iput-object v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentry:[I

    .line 921
    iget-object v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentry:[I

    aput v1, v4, v7

    .line 922
    iget-object v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentries:Ljava/util/Vector;

    iget-object v5, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentry:[I

    invoke-virtual {v4, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 918
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 925
    :cond_7
    iput v7, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_endpos:I

    .line 926
    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_rescan_token()V

    .line 927
    invoke-direct {p0, v7, v7}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_add_error_token(II)V

    .line 928
    iget-object v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentries:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    new-array v0, v4, [[I

    .line 929
    .local v0, exptokseq:[[I
    const/4 v1, 0x0

    :goto_4
    iget-object v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentries:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v1, v4, :cond_8

    .line 930
    iget-object v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentries:Ljava/util/Vector;

    invoke-virtual {v4, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    check-cast v4, [I

    aput-object v4, v0, v1

    .line 929
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 932
    :cond_8
    new-instance v4, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ParseException;

    iget-object v5, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    sget-object v6, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->tokenImage:[Ljava/lang/String;

    invoke-direct {v4, v5, v0, v6}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ParseException;-><init>(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;[[I[Ljava/lang/String;)V

    return-object v4
.end method

.method public final getNextToken()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;
    .locals 2

    .prologue
    .line 839
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    iget-object v0, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;->next:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    iget-object v0, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;->next:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    iput-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    .line 841
    :goto_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    .line 842
    iget v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    .line 843
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    return-object v0

    .line 840
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
    .parameter "index"

    .prologue
    .line 847
    iget-boolean v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->lookingAhead:Z

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    .line 848
    .local v1, t:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;
    :goto_0
    const/4 v0, 0x0

    .local v0, i:I
    move-object v2, v1

    .end local v1           #t:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;
    .local v2, t:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;
    :goto_1
    if-ge v0, p1, :cond_2

    .line 849
    iget-object v3, v2, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;->next:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    if-eqz v3, :cond_1

    iget-object v1, v2, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;->next:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    .line 848
    .end local v2           #t:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;
    .restart local v1       #t:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;
    :goto_2
    add-int/lit8 v0, v0, 0x1

    move-object v2, v1

    .end local v1           #t:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;
    .restart local v2       #t:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;
    goto :goto_1

    .line 847
    .end local v0           #i:I
    .end local v2           #t:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;
    :cond_0
    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    goto :goto_0

    .line 850
    .restart local v0       #i:I
    .restart local v2       #t:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;
    :cond_1
    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->token_source:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;

    invoke-virtual {v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->getNextToken()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    move-result-object v1

    iput-object v1, v2, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;->next:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    .end local v2           #t:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;
    .restart local v1       #t:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;
    goto :goto_2

    .line 852
    .end local v1           #t:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;
    .restart local v2       #t:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;
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

    .prologue
    const/4 v3, 0x5

    const/4 v7, 0x1

    const/4 v6, -0x1

    .line 271
    new-instance v2, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTgroup_body;

    invoke-direct {v2, v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTgroup_body;-><init>(I)V

    .line 272
    .local v2, jjtn000:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTgroup_body;
    const/4 v0, 0x1

    .line 273
    .local v0, jjtc000:Z
    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->openNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;)V

    .line 274
    invoke-virtual {p0, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeOpenNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;)V

    .line 276
    const/4 v3, 0x4

    :try_start_0
    invoke-direct {p0, v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    .line 277
    iget v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v3, v6, :cond_1

    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v3

    :goto_0
    sparse-switch v3, :sswitch_data_0

    .line 284
    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/4 v4, 0x7

    iget v5, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v5, v3, v4

    .line 289
    :goto_1
    iget v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v3, v6, :cond_3

    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v3

    :goto_2
    packed-switch v3, :pswitch_data_0

    .line 294
    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/16 v4, 0x8

    iget v5, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v5, v3, v4

    .line 309
    const/4 v3, 0x5

    invoke-direct {p0, v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    if-eqz v0, :cond_0

    .line 326
    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2, v7}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;Z)V

    .line 327
    invoke-virtual {p0, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;)V

    .line 330
    :cond_0
    return-void

    .line 277
    :cond_1
    :try_start_1
    iget v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_0

    .line 281
    :sswitch_0
    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->mailbox()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 310
    :catch_0
    move-exception v1

    .line 311
    .local v1, jjte000:Ljava/lang/Throwable;
    if-eqz v0, :cond_5

    .line 312
    :try_start_2
    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->clearNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;)V

    .line 313
    const/4 v0, 0x0

    .line 317
    :goto_3
    instance-of v3, v1, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_6

    .line 318
    check-cast v1, Ljava/lang/RuntimeException;

    .end local v1           #jjte000:Ljava/lang/Throwable;
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 325
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_2

    .line 326
    iget-object v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v4, v2, v7}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;Z)V

    .line 327
    invoke-virtual {p0, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;)V

    :cond_2
    throw v3

    .line 289
    :cond_3
    :try_start_3
    iget v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_2

    .line 297
    :pswitch_0
    const/4 v3, 0x3

    invoke-direct {p0, v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    .line 298
    iget v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v3, v6, :cond_4

    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v3

    :goto_4
    sparse-switch v3, :sswitch_data_1

    .line 305
    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/16 v4, 0x9

    iget v5, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v5, v3, v4

    goto :goto_1

    .line 298
    :cond_4
    iget v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_4

    .line 302
    :sswitch_1
    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->mailbox()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 315
    .restart local v1       #jjte000:Ljava/lang/Throwable;
    :cond_5
    :try_start_4
    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->popNode()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;

    goto :goto_3

    .line 320
    :cond_6
    instance-of v3, v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ParseException;

    if-eqz v3, :cond_7

    .line 321
    check-cast v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ParseException;

    .end local v1           #jjte000:Ljava/lang/Throwable;
    throw v1

    .line 323
    .restart local v1       #jjte000:Ljava/lang/Throwable;
    :cond_7
    check-cast v1, Ljava/lang/Error;

    .end local v1           #jjte000:Ljava/lang/Throwable;
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 277
    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_0
        0xe -> :sswitch_0
        0x1f -> :sswitch_0
    .end sparse-switch

    .line 289
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch

    .line 298
    :sswitch_data_1
    .sparse-switch
        0x6 -> :sswitch_1
        0xe -> :sswitch_1
        0x1f -> :sswitch_1
    .end sparse-switch
.end method

.method jjtreeCloseNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;)V
    .locals 1
    .parameter "n"

    .prologue
    .line 52
    check-cast p1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleNode;

    .end local p1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->getToken(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    move-result-object v0

    iput-object v0, p1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleNode;->lastToken:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    .line 53
    return-void
.end method

.method jjtreeOpenNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;)V
    .locals 1
    .parameter "n"

    .prologue
    .line 48
    check-cast p1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleNode;

    .end local p1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->getToken(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    move-result-object v0

    iput-object v0, p1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleNode;->firstToken:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    .line 49
    return-void
.end method

.method public final local_part()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ParseException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/16 v7, 0x1f

    const/4 v6, -0x1

    .line 503
    new-instance v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTlocal_part;

    const/16 v3, 0xa

    invoke-direct {v1, v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTlocal_part;-><init>(I)V

    .line 504
    .local v1, jjtn000:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTlocal_part;
    const/4 v0, 0x1

    .line 505
    .local v0, jjtc000:Z
    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->openNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;)V

    .line 506
    invoke-virtual {p0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeOpenNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;)V

    .line 508
    :try_start_0
    iget v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v3, v6, :cond_1

    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v3

    :goto_0
    sparse-switch v3, :sswitch_data_0

    .line 516
    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/16 v4, 0xf

    iget v5, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v5, v3, v4

    .line 517
    const/4 v3, -0x1

    invoke-direct {p0, v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    .line 518
    new-instance v3, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ParseException;

    invoke-direct {v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ParseException;-><init>()V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 556
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_0

    .line 557
    iget-object v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v4, v1, v8}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;Z)V

    .line 558
    invoke-virtual {p0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;)V

    :cond_0
    throw v3

    .line 508
    :cond_1
    :try_start_1
    iget v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_0

    .line 510
    :sswitch_0
    const/16 v3, 0xe

    invoke-direct {p0, v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    move-result-object v2

    .line 522
    .local v2, t:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;
    :goto_1
    iget v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v3, v6, :cond_3

    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v3

    :goto_2
    sparse-switch v3, :sswitch_data_1

    .line 529
    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/16 v4, 0x10

    iget v5, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v5, v3, v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 556
    if-eqz v0, :cond_2

    .line 557
    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v1, v8}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;Z)V

    .line 558
    invoke-virtual {p0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;)V

    .line 561
    :cond_2
    return-void

    .line 513
    .end local v2           #t:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;
    :sswitch_1
    const/16 v3, 0x1f

    :try_start_2
    invoke-direct {p0, v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    move-result-object v2

    .line 514
    .restart local v2       #t:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;
    goto :goto_1

    .line 522
    :cond_3
    iget v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_2

    .line 532
    :sswitch_2
    iget v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v3, v6, :cond_5

    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v3

    :goto_3
    packed-switch v3, :pswitch_data_0

    .line 537
    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/16 v4, 0x11

    iget v5, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v5, v3, v4

    .line 540
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

    .line 541
    :cond_4
    new-instance v3, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ParseException;

    const-string v4, "Words in local part must be separated by \'.\'"

    invoke-direct {v3, v4}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 532
    :cond_5
    iget v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_3

    .line 534
    :pswitch_0
    const/16 v3, 0x9

    invoke-direct {p0, v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    move-result-object v2

    .line 535
    goto :goto_4

    .line 542
    :cond_6
    iget v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v3, v6, :cond_7

    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v3

    :goto_5
    sparse-switch v3, :sswitch_data_2

    .line 550
    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/16 v4, 0x12

    iget v5, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v5, v3, v4

    .line 551
    const/4 v3, -0x1

    invoke-direct {p0, v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    .line 552
    new-instance v3, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ParseException;

    invoke-direct {v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ParseException;-><init>()V

    throw v3

    .line 542
    :cond_7
    iget v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_5

    .line 544
    :sswitch_3
    const/16 v3, 0xe

    invoke-direct {p0, v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    move-result-object v2

    .line 545
    goto/16 :goto_1

    .line 547
    :sswitch_4
    const/16 v3, 0x1f

    invoke-direct {p0, v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    .line 548
    goto/16 :goto_1

    .line 508
    nop

    :sswitch_data_0
    .sparse-switch
        0xe -> :sswitch_0
        0x1f -> :sswitch_1
    .end sparse-switch

    .line 522
    :sswitch_data_1
    .sparse-switch
        0x9 -> :sswitch_2
        0xe -> :sswitch_2
        0x1f -> :sswitch_2
    .end sparse-switch

    .line 532
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch

    .line 542
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

    .prologue
    const/4 v6, 0x1

    const/4 v4, -0x1

    .line 194
    new-instance v2, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTmailbox;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTmailbox;-><init>(I)V

    .line 195
    .local v2, jjtn000:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTmailbox;
    const/4 v0, 0x1

    .line 196
    .local v0, jjtc000:Z
    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->openNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;)V

    .line 197
    invoke-virtual {p0, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeOpenNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;)V

    .line 199
    const v3, 0x7fffffff

    :try_start_0
    invoke-direct {p0, v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_2(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 200
    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->addr_spec()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    :goto_0
    if-eqz v0, :cond_0

    .line 232
    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2, v6}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;Z)V

    .line 233
    invoke-virtual {p0, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;)V

    .line 236
    :cond_0
    return-void

    .line 202
    :cond_1
    :try_start_1
    iget v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v3, v4, :cond_3

    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v3

    :goto_1
    sparse-switch v3, :sswitch_data_0

    .line 211
    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/4 v4, 0x6

    iget v5, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v5, v3, v4

    .line 212
    const/4 v3, -0x1

    invoke-direct {p0, v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    .line 213
    new-instance v3, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ParseException;

    invoke-direct {v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ParseException;-><init>()V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 216
    :catch_0
    move-exception v1

    .line 217
    .local v1, jjte000:Ljava/lang/Throwable;
    if-eqz v0, :cond_4

    .line 218
    :try_start_2
    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->clearNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;)V

    .line 219
    const/4 v0, 0x0

    .line 223
    :goto_2
    instance-of v3, v1, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_5

    .line 224
    check-cast v1, Ljava/lang/RuntimeException;

    .end local v1           #jjte000:Ljava/lang/Throwable;
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 231
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_2

    .line 232
    iget-object v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v4, v2, v6}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;Z)V

    .line 233
    invoke-virtual {p0, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;)V

    :cond_2
    throw v3

    .line 202
    :cond_3
    :try_start_3
    iget v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_1

    .line 204
    :sswitch_0
    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->angle_addr()V

    goto :goto_0

    .line 208
    :sswitch_1
    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->name_addr()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 221
    .restart local v1       #jjte000:Ljava/lang/Throwable;
    :cond_4
    :try_start_4
    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->popNode()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;

    goto :goto_2

    .line 226
    :cond_5
    instance-of v3, v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ParseException;

    if-eqz v3, :cond_6

    .line 227
    check-cast v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ParseException;

    .end local v1           #jjte000:Ljava/lang/Throwable;
    throw v1

    .line 229
    .restart local v1       #jjte000:Ljava/lang/Throwable;
    :cond_6
    check-cast v1, Ljava/lang/Error;

    .end local v1           #jjte000:Ljava/lang/Throwable;
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 202
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

    .prologue
    const/4 v5, 0x1

    .line 240
    new-instance v2, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTname_addr;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTname_addr;-><init>(I)V

    .line 241
    .local v2, jjtn000:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTname_addr;
    const/4 v0, 0x1

    .line 242
    .local v0, jjtc000:Z
    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->openNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;)V

    .line 243
    invoke-virtual {p0, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeOpenNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;)V

    .line 245
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->phrase()V

    .line 246
    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->angle_addr()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    if-eqz v0, :cond_0

    .line 263
    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2, v5}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;Z)V

    .line 264
    invoke-virtual {p0, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;)V

    .line 267
    :cond_0
    return-void

    .line 247
    :catch_0
    move-exception v1

    .line 248
    .local v1, jjte000:Ljava/lang/Throwable;
    if-eqz v0, :cond_2

    .line 249
    :try_start_1
    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->clearNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;)V

    .line 250
    const/4 v0, 0x0

    .line 254
    :goto_0
    instance-of v3, v1, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_3

    .line 255
    check-cast v1, Ljava/lang/RuntimeException;

    .end local v1           #jjte000:Ljava/lang/Throwable;
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 262
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_1

    .line 263
    iget-object v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v4, v2, v5}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;Z)V

    .line 264
    invoke-virtual {p0, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;)V

    :cond_1
    throw v3

    .line 252
    .restart local v1       #jjte000:Ljava/lang/Throwable;
    :cond_2
    :try_start_2
    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->popNode()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;

    goto :goto_0

    .line 257
    :cond_3
    instance-of v3, v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ParseException;

    if-eqz v3, :cond_4

    .line 258
    check-cast v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ParseException;

    .end local v1           #jjte000:Ljava/lang/Throwable;
    throw v1

    .line 260
    .restart local v1       #jjte000:Ljava/lang/Throwable;
    :cond_4
    check-cast v1, Ljava/lang/Error;

    .end local v1           #jjte000:Ljava/lang/Throwable;
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

    .prologue
    .line 39
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->parseAll()V

    .line 40
    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->rootNode()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;

    move-result-object v1

    check-cast v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTaddress_list;
    :try_end_0
    .catch Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/TokenMgrError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 41
    :catch_0
    move-exception v0

    .line 42
    .local v0, tme:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/TokenMgrError;
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

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->address_list()V

    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    .line 71
    return-void
.end method

.method public final parseLine()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->address_list()V

    .line 57
    iget v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v0

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 62
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/4 v1, 0x0

    iget v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v2, v0, v1

    .line 65
    :goto_1
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    .line 66
    return-void

    .line 57
    :cond_0
    iget v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_0

    .line 59
    :pswitch_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    goto :goto_1

    .line 57
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

    .prologue
    const/4 v5, 0x1

    const/4 v3, -0x1

    .line 432
    new-instance v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTphrase;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTphrase;-><init>(I)V

    .line 433
    .local v1, jjtn000:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTphrase;
    const/4 v0, 0x1

    .line 434
    .local v0, jjtc000:Z
    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v2, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->openNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;)V

    .line 435
    invoke-virtual {p0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeOpenNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;)V

    .line 439
    :sswitch_0
    :try_start_0
    iget v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v2, v3, :cond_1

    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v2

    :goto_0
    sparse-switch v2, :sswitch_data_0

    .line 447
    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/16 v3, 0xd

    iget v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v4, v2, v3

    .line 448
    const/4 v2, -0x1

    invoke-direct {p0, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    .line 449
    new-instance v2, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ParseException;

    invoke-direct {v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ParseException;-><init>()V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 462
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_0

    .line 463
    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v1, v5}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;Z)V

    .line 464
    invoke-virtual {p0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;)V

    :cond_0
    throw v2

    .line 439
    :cond_1
    :try_start_1
    iget v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_0

    .line 441
    :sswitch_1
    const/16 v2, 0xe

    invoke-direct {p0, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    .line 451
    :goto_1
    iget v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v2, v3, :cond_3

    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v2

    :goto_2
    sparse-switch v2, :sswitch_data_1

    .line 457
    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/16 v3, 0xe

    iget v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v4, v2, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 462
    if-eqz v0, :cond_2

    .line 463
    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v2, v1, v5}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;Z)V

    .line 464
    invoke-virtual {p0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;)V

    .line 467
    :cond_2
    return-void

    .line 444
    :sswitch_2
    const/16 v2, 0x1f

    :try_start_2
    invoke-direct {p0, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    goto :goto_1

    .line 451
    :cond_3
    iget v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 439
    :sswitch_data_0
    .sparse-switch
        0xe -> :sswitch_1
        0x1f -> :sswitch_2
    .end sparse-switch

    .line 451
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

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    .line 374
    new-instance v2, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTroute;

    const/4 v3, 0x7

    invoke-direct {v2, v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTroute;-><init>(I)V

    .line 375
    .local v2, jjtn000:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTroute;
    const/4 v0, 0x1

    .line 376
    .local v0, jjtc000:Z
    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->openNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;)V

    .line 377
    invoke-virtual {p0, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeOpenNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;)V

    .line 379
    const/16 v3, 0x8

    :try_start_0
    invoke-direct {p0, v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    .line 380
    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->domain()V

    .line 383
    :goto_0
    iget v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v3, v6, :cond_1

    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v3

    :goto_1
    sparse-switch v3, :sswitch_data_0

    .line 389
    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/16 v4, 0xb

    iget v5, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v5, v3, v4

    .line 407
    const/4 v3, 0x4

    invoke-direct {p0, v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 423
    if-eqz v0, :cond_0

    .line 424
    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2, v7}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;Z)V

    .line 425
    invoke-virtual {p0, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;)V

    .line 428
    :cond_0
    return-void

    .line 383
    :cond_1
    :try_start_1
    iget v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_1

    .line 402
    :pswitch_0
    const/4 v3, 0x3

    invoke-direct {p0, v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    .line 394
    :sswitch_0
    iget v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v3, v6, :cond_3

    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v3

    :goto_2
    packed-switch v3, :pswitch_data_0

    .line 399
    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/16 v4, 0xc

    iget v5, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v5, v3, v4

    .line 404
    const/16 v3, 0x8

    invoke-direct {p0, v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    .line 405
    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->domain()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 408
    :catch_0
    move-exception v1

    .line 409
    .local v1, jjte000:Ljava/lang/Throwable;
    if-eqz v0, :cond_4

    .line 410
    :try_start_2
    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->clearNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;)V

    .line 411
    const/4 v0, 0x0

    .line 415
    :goto_3
    instance-of v3, v1, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_5

    .line 416
    check-cast v1, Ljava/lang/RuntimeException;

    .end local v1           #jjte000:Ljava/lang/Throwable;
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 423
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_2

    .line 424
    iget-object v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v4, v2, v7}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;Z)V

    .line 425
    invoke-virtual {p0, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;)V

    :cond_2
    throw v3

    .line 394
    :cond_3
    :try_start_3
    iget v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 413
    .restart local v1       #jjte000:Ljava/lang/Throwable;
    :cond_4
    :try_start_4
    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->popNode()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;

    goto :goto_3

    .line 418
    :cond_5
    instance-of v3, v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ParseException;

    if-eqz v3, :cond_6

    .line 419
    check-cast v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ParseException;

    .end local v1           #jjte000:Ljava/lang/Throwable;
    throw v1

    .line 421
    .restart local v1       #jjte000:Ljava/lang/Throwable;
    :cond_6
    check-cast v1, Ljava/lang/Error;

    .end local v1           #jjte000:Ljava/lang/Throwable;
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 383
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x8 -> :sswitch_0
    .end sparse-switch

    .line 394
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method
