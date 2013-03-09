.class public Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;
.super Ljava/lang/Object;
.source "ContentTypeParser.java"

# interfaces
.implements Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserConstants;


# static fields
.field private static jj_la1_0:[I


# instance fields
.field private jj_expentries:Ljava/util/Vector;

.field private jj_expentry:[I

.field private jj_gen:I

.field jj_input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

.field private jj_kind:I

.field private final jj_la1:[I

.field public jj_nt:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;

.field private jj_ntk:I

.field private paramNames:Ljava/util/ArrayList;

.field private paramValues:Ljava/util/ArrayList;

.field private subtype:Ljava/lang/String;

.field public token:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;

.field public token_source:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;

.field private type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 122
    invoke-static {}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_la1_0()V

    .line 123
    return-void
.end method

.method public constructor <init>(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;)V
    .locals 4
    .parameter "tm"

    .prologue
    const/4 v3, 0x3

    const/4 v2, -0x1

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->paramNames:Ljava/util/ArrayList;

    .line 26
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->paramValues:Ljava/util/ArrayList;

    .line 119
    new-array v1, v3, [I

    iput-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_la1:[I

    .line 224
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_expentries:Ljava/util/Vector;

    .line 226
    iput v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_kind:I

    .line 171
    iput-object p1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->token_source:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;

    .line 172
    new-instance v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;

    invoke-direct {v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;-><init>()V

    iput-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->token:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;

    .line 173
    iput v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_ntk:I

    .line 174
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_gen:I

    .line 175
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_0

    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_la1:[I

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 176
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .parameter "stream"

    .prologue
    .line 129
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 7
    .parameter "stream"
    .parameter "encoding"

    .prologue
    const/4 v6, 0x3

    const/4 v5, -0x1

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->paramNames:Ljava/util/ArrayList;

    .line 26
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->paramValues:Ljava/util/ArrayList;

    .line 119
    new-array v2, v6, [I

    iput-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_la1:[I

    .line 224
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_expentries:Ljava/util/Vector;

    .line 226
    iput v5, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_kind:I

    .line 132
    :try_start_0
    new-instance v2, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-direct {v2, p1, p2, v3, v4}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;II)V

    iput-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    new-instance v2, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;

    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    invoke-direct {v2, v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;-><init>(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;)V

    iput-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->token_source:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;

    .line 134
    new-instance v2, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;

    invoke-direct {v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;-><init>()V

    iput-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->token:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;

    .line 135
    iput v5, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_ntk:I

    .line 136
    const/4 v2, 0x0

    iput v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_gen:I

    .line 137
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v6, :cond_0

    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_la1:[I

    aput v5, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 132
    .end local v1           #i:I
    :catch_0
    move-exception v0

    .local v0, e:Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 138
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    .restart local v1       #i:I
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 5
    .parameter "stream"

    .prologue
    const/4 v4, 0x3

    const/4 v2, 0x1

    const/4 v3, -0x1

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->paramNames:Ljava/util/ArrayList;

    .line 26
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->paramValues:Ljava/util/ArrayList;

    .line 119
    new-array v1, v4, [I

    iput-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_la1:[I

    .line 224
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_expentries:Ljava/util/Vector;

    .line 226
    iput v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_kind:I

    .line 153
    new-instance v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    invoke-direct {v1, p1, v2, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;-><init>(Ljava/io/Reader;II)V

    iput-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    .line 154
    new-instance v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;

    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    invoke-direct {v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;-><init>(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;)V

    iput-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->token_source:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;

    .line 155
    new-instance v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;

    invoke-direct {v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;-><init>()V

    iput-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->token:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;

    .line 156
    iput v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_ntk:I

    .line 157
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_gen:I

    .line 158
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v4, :cond_0

    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_la1:[I

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 159
    :cond_0
    return-void
.end method

.method private final jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;
    .locals 3
    .parameter "kind"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 188
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->token:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;

    .local v0, oldToken:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;
    iget-object v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;->next:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->token:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;

    iget-object v1, v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;->next:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;

    iput-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->token:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;

    .line 190
    :goto_0
    const/4 v1, -0x1

    iput v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_ntk:I

    .line 191
    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->token:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;

    iget v1, v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;->kind:I

    if-ne v1, p1, :cond_1

    .line 192
    iget v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_gen:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_gen:I

    .line 193
    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->token:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;

    return-object v1

    .line 189
    :cond_0
    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->token:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;

    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->token_source:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;

    invoke-virtual {v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->getNextToken()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;->next:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;

    iput-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->token:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;

    goto :goto_0

    .line 195
    :cond_1
    iput-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->token:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;

    .line 196
    iput p1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_kind:I

    .line 197
    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->generateParseException()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ParseException;

    move-result-object v1

    throw v1
.end method

.method private static jj_la1_0()V
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_la1_0:[I

    .line 126
    return-void

    .line 125
    nop

    :array_0
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x28t 0x0t
    .end array-data
.end method

.method private final jj_ntk()I
    .locals 2

    .prologue
    .line 218
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->token:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;

    iget-object v0, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;->next:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;

    iput-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_nt:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;

    if-nez v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->token:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;

    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->token_source:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;

    invoke-virtual {v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->getNextToken()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;->next:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;

    iget v0, v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;->kind:I

    iput v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_ntk:I

    .line 221
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_nt:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;

    iget v0, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;->kind:I

    iput v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_ntk:I

    goto :goto_0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 3
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 36
    :goto_0
    :try_start_0
    new-instance v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;

    sget-object v2, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-direct {v0, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;-><init>(Ljava/io/InputStream;)V

    .line 37
    .local v0, parser:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;
    invoke-virtual {v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->parseLine()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 38
    .end local v0           #parser:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;
    :catch_0
    move-exception v1

    .line 39
    .local v1, x:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 40
    return-void
.end method


# virtual methods
.method public ReInit(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;)V
    .locals 3
    .parameter "tm"

    .prologue
    const/4 v2, -0x1

    .line 179
    iput-object p1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->token_source:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;

    .line 180
    new-instance v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;

    invoke-direct {v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;-><init>()V

    iput-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->token:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;

    .line 181
    iput v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_ntk:I

    .line 182
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_gen:I

    .line 183
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_la1:[I

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 184
    :cond_0
    return-void
.end method

.method public ReInit(Ljava/io/InputStream;)V
    .locals 1
    .parameter "stream"

    .prologue
    .line 141
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->ReInit(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 142
    return-void
.end method

.method public ReInit(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 6
    .parameter "stream"
    .parameter "encoding"

    .prologue
    const/4 v5, -0x1

    .line 144
    :try_start_0
    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {v2, p1, p2, v3, v4}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->ReInit(Ljava/io/InputStream;Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->token_source:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;

    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    invoke-virtual {v2, v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->ReInit(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;)V

    .line 146
    new-instance v2, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;

    invoke-direct {v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;-><init>()V

    iput-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->token:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;

    .line 147
    iput v5, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_ntk:I

    .line 148
    const/4 v2, 0x0

    iput v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_gen:I

    .line 149
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_la1:[I

    aput v5, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 144
    .end local v1           #i:I
    :catch_0
    move-exception v0

    .local v0, e:Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 150
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    .restart local v1       #i:I
    :cond_0
    return-void
.end method

.method public ReInit(Ljava/io/Reader;)V
    .locals 4
    .parameter "stream"

    .prologue
    const/4 v2, 0x1

    const/4 v3, -0x1

    .line 162
    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    invoke-virtual {v1, p1, v2, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->ReInit(Ljava/io/Reader;II)V

    .line 163
    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->token_source:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;

    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    invoke-virtual {v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->ReInit(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;)V

    .line 164
    new-instance v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;

    invoke-direct {v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;-><init>()V

    iput-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->token:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;

    .line 165
    iput v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_ntk:I

    .line 166
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_gen:I

    .line 167
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_la1:[I

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 168
    :cond_0
    return-void
.end method

.method public final disable_tracing()V
    .locals 0

    .prologue
    .line 265
    return-void
.end method

.method public final enable_tracing()V
    .locals 0

    .prologue
    .line 262
    return-void
.end method

.method public generateParseException()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ParseException;
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0x18

    const/4 v6, 0x1

    .line 229
    iget-object v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_expentries:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->removeAllElements()V

    .line 230
    new-array v3, v7, [Z

    .line 231
    .local v3, la1tokens:[Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v7, :cond_0

    .line 232
    aput-boolean v8, v3, v1

    .line 231
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 234
    :cond_0
    iget v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_kind:I

    if-ltz v4, :cond_1

    .line 235
    iget v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_kind:I

    aput-boolean v6, v3, v4

    .line 236
    const/4 v4, -0x1

    iput v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_kind:I

    .line 238
    :cond_1
    const/4 v1, 0x0

    :goto_1
    const/4 v4, 0x3

    if-ge v1, v4, :cond_4

    .line 239
    iget-object v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_la1:[I

    aget v4, v4, v1

    iget v5, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_gen:I

    if-ne v4, v5, :cond_3

    .line 240
    const/4 v2, 0x0

    .local v2, j:I
    :goto_2
    const/16 v4, 0x20

    if-ge v2, v4, :cond_3

    .line 241
    sget-object v4, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_la1_0:[I

    aget v4, v4, v1

    shl-int v5, v6, v2

    and-int/2addr v4, v5

    if-eqz v4, :cond_2

    .line 242
    aput-boolean v6, v3, v2

    .line 240
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 238
    .end local v2           #j:I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 247
    :cond_4
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v7, :cond_6

    .line 248
    aget-boolean v4, v3, v1

    if-eqz v4, :cond_5

    .line 249
    new-array v4, v6, [I

    iput-object v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_expentry:[I

    .line 250
    iget-object v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_expentry:[I

    aput v1, v4, v8

    .line 251
    iget-object v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_expentries:Ljava/util/Vector;

    iget-object v5, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_expentry:[I

    invoke-virtual {v4, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 247
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 254
    :cond_6
    iget-object v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_expentries:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    new-array v0, v4, [[I

    .line 255
    .local v0, exptokseq:[[I
    const/4 v1, 0x0

    :goto_4
    iget-object v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_expentries:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v1, v4, :cond_7

    .line 256
    iget-object v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_expentries:Ljava/util/Vector;

    invoke-virtual {v4, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    check-cast v4, [I

    aput-object v4, v0, v1

    .line 255
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 258
    :cond_7
    new-instance v4, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ParseException;

    iget-object v5, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->token:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;

    sget-object v6, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->tokenImage:[Ljava/lang/String;

    invoke-direct {v4, v5, v0, v6}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ParseException;-><init>(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;[[I[Ljava/lang/String;)V

    return-object v4
.end method

.method public final getNextToken()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->token:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;

    iget-object v0, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;->next:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->token:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;

    iget-object v0, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;->next:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;

    iput-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->token:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;

    .line 203
    :goto_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_ntk:I

    .line 204
    iget v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_gen:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_gen:I

    .line 205
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->token:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;

    return-object v0

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->token:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;

    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->token_source:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;

    invoke-virtual {v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->getNextToken()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;->next:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;

    iput-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->token:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;

    goto :goto_0
.end method

.method public getParamNames()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->paramNames:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getParamValues()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->paramValues:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSubType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->subtype:Ljava/lang/String;

    return-object v0
.end method

.method public final getToken(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;
    .locals 4
    .parameter "index"

    .prologue
    .line 209
    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->token:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;

    .line 210
    .local v1, t:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;
    const/4 v0, 0x0

    .local v0, i:I
    move-object v2, v1

    .end local v1           #t:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;
    .local v2, t:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;
    :goto_0
    if-ge v0, p1, :cond_1

    .line 211
    iget-object v3, v2, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;->next:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;

    if-eqz v3, :cond_0

    iget-object v1, v2, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;->next:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;

    .line 210
    .end local v2           #t:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;
    .restart local v1       #t:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    move-object v2, v1

    .end local v1           #t:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;
    .restart local v2       #t:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;
    goto :goto_0

    .line 212
    :cond_0
    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->token_source:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;

    invoke-virtual {v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->getNextToken()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;

    move-result-object v1

    iput-object v1, v2, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;->next:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;

    .end local v2           #t:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;
    .restart local v1       #t:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;
    goto :goto_1

    .line 214
    .end local v1           #t:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;
    .restart local v2       #t:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;
    :cond_1
    return-object v2
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->type:Ljava/lang/String;

    return-object v0
.end method

.method public final parameter()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 89
    const/16 v2, 0x15

    invoke-direct {p0, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;

    move-result-object v0

    .line 90
    .local v0, attrib:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;
    const/4 v2, 0x5

    invoke-direct {p0, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;

    .line 91
    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->value()Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, val:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->paramNames:Ljava/util/ArrayList;

    iget-object v3, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->paramValues:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    return-void
.end method

.method public final parse()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ParseException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x15

    .line 66
    invoke-direct {p0, v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;

    move-result-object v1

    .line 67
    .local v1, type:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;
    const/4 v2, 0x3

    invoke-direct {p0, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;

    .line 68
    invoke-direct {p0, v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;

    move-result-object v0

    .line 69
    .local v0, subtype:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;
    iget-object v2, v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;->image:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->type:Ljava/lang/String;

    .line 70
    iget-object v2, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;->image:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->subtype:Ljava/lang/String;

    .line 73
    :goto_0
    iget v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_ntk:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_ntk()I

    move-result v2

    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 78
    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_la1:[I

    const/4 v3, 0x1

    iget v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_gen:I

    aput v4, v2, v3

    .line 84
    return-void

    .line 73
    :cond_0
    iget v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_ntk:I

    goto :goto_1

    .line 81
    :pswitch_0
    const/4 v2, 0x4

    invoke-direct {p0, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;

    .line 82
    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->parameter()V

    goto :goto_0

    .line 73
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public final parseAll()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->parse()V

    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;

    .line 61
    return-void
.end method

.method public final parseLine()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->parse()V

    .line 47
    iget v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_ntk:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_ntk()I

    move-result v0

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 52
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_la1:[I

    const/4 v1, 0x0

    iget v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_gen:I

    aput v2, v0, v1

    .line 55
    :goto_1
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;

    .line 56
    return-void

    .line 47
    :cond_0
    iget v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_ntk:I

    goto :goto_0

    .line 49
    :pswitch_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;

    goto :goto_1

    .line 47
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final value()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ParseException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 98
    iget v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_ntk:I

    if-ne v1, v4, :cond_0

    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_ntk()I

    move-result v1

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 106
    :pswitch_0
    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_la1:[I

    const/4 v2, 0x2

    iget v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_gen:I

    aput v3, v1, v2

    .line 107
    invoke-direct {p0, v4}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;

    .line 108
    new-instance v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ParseException;

    invoke-direct {v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ParseException;-><init>()V

    throw v1

    .line 98
    :cond_0
    iget v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_ntk:I

    goto :goto_0

    .line 100
    :pswitch_1
    const/16 v1, 0x15

    invoke-direct {p0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;

    move-result-object v0

    .line 110
    .local v0, t:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;
    :goto_1
    iget-object v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;->image:Ljava/lang/String;

    return-object v1

    .line 103
    .end local v0           #t:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;
    :pswitch_2
    const/16 v1, 0x13

    invoke-direct {p0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;

    move-result-object v0

    .line 104
    .restart local v0       #t:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;
    goto :goto_1

    .line 98
    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
