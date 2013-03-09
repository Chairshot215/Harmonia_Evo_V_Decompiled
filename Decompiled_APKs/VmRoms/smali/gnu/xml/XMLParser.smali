.class public Lgnu/xml/XMLParser;
.super Ljava/lang/Object;
.source "XMLParser.java"


# static fields
.field private static final ATTRIBUTE_SEEN_EQ_STATE:I = 0xb

.field private static final ATTRIBUTE_SEEN_NAME_STATE:I = 0x8

.field static final BAD_ENCODING_SYNTAX:Ljava/lang/String; = "bad \'encoding\' declaration"

.field static final BAD_STANDALONE_SYNTAX:Ljava/lang/String; = "bad \'standalone\' declaration"

.field private static final BEGIN_ELEMENT_STATE:I = 0x2

.field private static final DOCTYPE_NAME_SEEN_STATE:I = 0x10

.field private static final DOCTYPE_SEEN_STATE:I = 0xd

.field private static final END_ELEMENT_STATE:I = 0x4

.field private static final EXPECT_NAME_MODIFIER:I = 0x1

.field private static final EXPECT_RIGHT_STATE:I = 0x1b

.field private static final INIT_LEFT_QUEST_STATE:I = 0x1e

.field private static final INIT_LEFT_STATE:I = 0x22

.field private static final INIT_STATE:I = 0x0

.field private static final INIT_TEXT_STATE:I = 0x1f

.field private static final INVALID_VERSION_DECL:I = 0x23

.field private static final MAYBE_ATTRIBUTE_STATE:I = 0xa

.field private static final PREV_WAS_CR_STATE:I = 0x1c

.field private static final SAW_AMP_SHARP_STATE:I = 0x1a

.field private static final SAW_AMP_STATE:I = 0x19

.field private static final SAW_ENTITY_REF:I = 0x6

.field private static final SAW_EOF_ERROR:I = 0x25

.field private static final SAW_ERROR:I = 0x24

.field private static final SAW_LEFT_EXCL_MINUS_STATE:I = 0x16

.field private static final SAW_LEFT_EXCL_STATE:I = 0x14

.field private static final SAW_LEFT_QUEST_STATE:I = 0x15

.field private static final SAW_LEFT_SLASH_STATE:I = 0x13

.field private static final SAW_LEFT_STATE:I = 0xe

.field private static final SKIP_SPACES_MODIFIER:I = 0x2

.field private static final TEXT_STATE:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static XMLStreamReader(Ljava/io/InputStream;)Lgnu/text/LineInputStreamReader;
    .locals 6
    .parameter "strm"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    new-instance v3, Lgnu/text/LineInputStreamReader;

    invoke-direct {v3, p0}, Lgnu/text/LineInputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 68
    .local v3, in:Lgnu/text/LineInputStreamReader;
    invoke-virtual {v3}, Lgnu/text/LineInputStreamReader;->getByte()I

    move-result p0

    .line 69
    .local p0, b1:I
    if-gez p0, :cond_0

    const/4 v0, -0x1

    .line 70
    .local v0, b2:I
    :goto_0
    if-gez v0, :cond_1

    const/4 v1, -0x1

    .line 71
    .local v1, b3:I
    :goto_1
    const/16 v2, 0xef

    if-ne p0, v2, :cond_2

    const/16 v2, 0xbb

    if-ne v0, v2, :cond_2

    const/16 v2, 0xbf

    if-ne v1, v2, :cond_2

    .line 73
    const/4 p0, 0x3

    invoke-virtual {v3, p0}, Lgnu/text/LineInputStreamReader;->resetStart(I)V

    .line 74
    .end local p0           #b1:I
    const-string p0, "UTF-8"

    invoke-virtual {v3, p0}, Lgnu/text/LineInputStreamReader;->setCharset(Ljava/lang/String;)V

    .line 125
    .end local v0           #b2:I
    .end local v1           #b3:I
    :goto_2
    const/4 p0, 0x0

    invoke-virtual {v3, p0}, Lgnu/text/LineInputStreamReader;->setKeepFullLines(Z)V

    .line 126
    return-object v3

    .line 69
    .restart local p0       #b1:I
    :cond_0
    invoke-virtual {v3}, Lgnu/text/LineInputStreamReader;->getByte()I

    move-result v0

    goto :goto_0

    .line 70
    .restart local v0       #b2:I
    :cond_1
    invoke-virtual {v3}, Lgnu/text/LineInputStreamReader;->getByte()I

    move-result v1

    goto :goto_1

    .line 76
    .restart local v1       #b3:I
    :cond_2
    const/16 v2, 0xff

    if-ne p0, v2, :cond_3

    const/16 v2, 0xfe

    if-ne v0, v2, :cond_3

    if-eqz v1, :cond_3

    .line 78
    const/4 p0, 0x2

    invoke-virtual {v3, p0}, Lgnu/text/LineInputStreamReader;->resetStart(I)V

    .line 79
    .end local p0           #b1:I
    const-string p0, "UTF-16LE"

    invoke-virtual {v3, p0}, Lgnu/text/LineInputStreamReader;->setCharset(Ljava/lang/String;)V

    goto :goto_2

    .line 81
    .restart local p0       #b1:I
    :cond_3
    const/16 v2, 0xfe

    if-ne p0, v2, :cond_4

    const/16 v2, 0xff

    if-ne v0, v2, :cond_4

    if-eqz v1, :cond_4

    .line 83
    const/4 p0, 0x2

    invoke-virtual {v3, p0}, Lgnu/text/LineInputStreamReader;->resetStart(I)V

    .line 84
    .end local p0           #b1:I
    const-string p0, "UTF-16BE"

    invoke-virtual {v3, p0}, Lgnu/text/LineInputStreamReader;->setCharset(Ljava/lang/String;)V

    goto :goto_2

    .line 88
    .restart local p0       #b1:I
    :cond_4
    if-gez v1, :cond_5

    const/4 v2, -0x1

    .line 89
    .local v2, b4:I
    :goto_3
    const/16 v4, 0x4c

    if-ne p0, v4, :cond_6

    const/16 v4, 0x6f

    if-ne v0, v4, :cond_6

    const/16 v4, 0xa7

    if-ne v1, v4, :cond_6

    const/16 v4, 0x94

    if-ne v2, v4, :cond_6

    .line 90
    new-instance p0, Ljava/lang/RuntimeException;

    .end local p0           #b1:I
    const-string v0, "XMLParser: EBCDIC encodings not supported"

    .end local v0           #b2:I
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 88
    .end local v2           #b4:I
    .restart local v0       #b2:I
    .restart local p0       #b1:I
    :cond_5
    invoke-virtual {v3}, Lgnu/text/LineInputStreamReader;->getByte()I

    move-result v2

    goto :goto_3

    .line 91
    .restart local v2       #b4:I
    :cond_6
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lgnu/text/LineInputStreamReader;->resetStart(I)V

    .line 92
    const/16 v4, 0x3c

    if-ne p0, v4, :cond_8

    const/16 v4, 0x3f

    if-ne v0, v4, :cond_7

    const/16 v4, 0x78

    if-ne v1, v4, :cond_7

    const/16 v4, 0x6d

    if-eq v2, v4, :cond_9

    :cond_7
    if-nez v0, :cond_8

    const/16 v4, 0x3f

    if-ne v1, v4, :cond_8

    if-eqz v2, :cond_9

    :cond_8
    if-nez p0, :cond_10

    const/16 p0, 0x3c

    if-ne v0, p0, :cond_10

    .end local p0           #b1:I
    if-nez v1, :cond_10

    const/16 p0, 0x3f

    if-ne v2, p0, :cond_10

    .line 96
    :cond_9
    iget-object p0, v3, Lgnu/text/LineInputStreamReader;->buffer:[C

    .line 97
    .local p0, buffer:[C
    if-nez p0, :cond_a

    .line 98
    const/16 p0, 0x2000

    new-array p0, p0, [C

    iput-object p0, v3, Lgnu/text/LineInputStreamReader;->buffer:[C

    :cond_a
    move-object v0, p0

    .line 99
    .end local p0           #buffer:[C
    .local v0, buffer:[C
    const/4 p0, 0x0

    .line 100
    .local p0, pos:I
    const/4 v1, 0x0

    .local v1, quote:I
    move v4, v1

    .end local v1           #quote:I
    .local v4, quote:I
    move v1, p0

    .line 103
    .end local v2           #b4:I
    .end local p0           #pos:I
    .local v1, pos:I
    :cond_b
    :goto_4
    invoke-virtual {v3}, Lgnu/text/LineInputStreamReader;->getByte()I

    move-result p0

    .line 104
    .local p0, b:I
    if-eqz p0, :cond_b

    .line 106
    if-gez p0, :cond_c

    move p0, v1

    .line 119
    .end local v1           #pos:I
    .local p0, pos:I
    :goto_5
    const/4 v0, 0x0

    iput v0, v3, Lgnu/text/LineInputStreamReader;->pos:I

    .line 120
    .end local v0           #buffer:[C
    iput p0, v3, Lgnu/text/LineInputStreamReader;->limit:I

    goto/16 :goto_2

    .line 108
    .restart local v0       #buffer:[C
    .restart local v1       #pos:I
    .local p0, b:I
    :cond_c
    add-int/lit8 v2, v1, 0x1

    .end local v1           #pos:I
    .local v2, pos:I
    and-int/lit16 v5, p0, 0xff

    int-to-char v5, v5

    aput-char v5, v0, v1

    .line 109
    if-nez v4, :cond_f

    .line 111
    const/16 v1, 0x3e

    if-ne p0, v1, :cond_d

    move p0, v2

    .line 112
    .end local v2           #pos:I
    .local p0, pos:I
    goto :goto_5

    .line 113
    .restart local v2       #pos:I
    .local p0, b:I
    :cond_d
    const/16 v1, 0x27

    if-eq p0, v1, :cond_e

    const/16 v1, 0x22

    if-ne p0, v1, :cond_11

    .line 114
    :cond_e
    move p0, p0

    .end local v4           #quote:I
    .local p0, quote:I
    :goto_6
    move v4, p0

    .end local p0           #quote:I
    .restart local v4       #quote:I
    move v1, v2

    .line 118
    .end local v2           #pos:I
    .restart local v1       #pos:I
    goto :goto_4

    .line 116
    .end local v1           #pos:I
    .restart local v2       #pos:I
    .local p0, b:I
    :cond_f
    if-ne p0, v4, :cond_11

    .line 117
    const/4 p0, 0x0

    .end local v4           #quote:I
    .local p0, quote:I
    goto :goto_6

    .line 123
    .end local p0           #quote:I
    .local v0, b2:I
    .local v1, b3:I
    .local v2, b4:I
    :cond_10
    const-string p0, "UTF-8"

    invoke-virtual {v3, p0}, Lgnu/text/LineInputStreamReader;->setCharset(Ljava/lang/String;)V

    goto/16 :goto_2

    .end local v1           #b3:I
    .local v0, buffer:[C
    .local v2, pos:I
    .restart local v4       #quote:I
    .local p0, b:I
    :cond_11
    move p0, v4

    .end local v4           #quote:I
    .local p0, quote:I
    goto :goto_6
.end method

.method public static parse(Lgnu/text/LineBufferedReader;Lgnu/text/SourceMessages;Lgnu/lists/Consumer;)V
    .locals 2
    .parameter "in"
    .parameter "messages"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 143
    new-instance v0, Lgnu/xml/XMLFilter;

    invoke-direct {v0, p2}, Lgnu/xml/XMLFilter;-><init>(Lgnu/lists/Consumer;)V

    .line 144
    .local v0, filter:Lgnu/xml/XMLFilter;
    invoke-virtual {v0, p1}, Lgnu/xml/XMLFilter;->setMessages(Lgnu/text/SourceMessages;)V

    .line 145
    invoke-virtual {v0, p0}, Lgnu/xml/XMLFilter;->setSourceLocator(Lgnu/text/LineBufferedReader;)V

    .line 146
    invoke-virtual {v0}, Lgnu/xml/XMLFilter;->startDocument()V

    .line 147
    invoke-virtual {p0}, Lgnu/text/LineBufferedReader;->getPath()Lgnu/text/Path;

    move-result-object v1

    .line 148
    .local v1, uri:Lgnu/text/Path;
    if-eqz v1, :cond_0

    .line 149
    invoke-virtual {v0, v1}, Lgnu/xml/XMLFilter;->writeDocumentUri(Ljava/lang/Object;)V

    .line 150
    :cond_0
    invoke-static {p0, v0}, Lgnu/xml/XMLParser;->parse(Lgnu/text/LineBufferedReader;Lgnu/xml/XMLFilter;)V

    .line 151
    invoke-virtual {v0}, Lgnu/xml/XMLFilter;->endDocument()V

    .line 152
    return-void
.end method

.method public static parse(Lgnu/text/LineBufferedReader;Lgnu/text/SourceMessages;Lgnu/xml/XMLFilter;)V
    .locals 1
    .parameter "in"
    .parameter "messages"
    .parameter "filter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 157
    invoke-virtual {p2, p1}, Lgnu/xml/XMLFilter;->setMessages(Lgnu/text/SourceMessages;)V

    .line 158
    invoke-virtual {p2, p0}, Lgnu/xml/XMLFilter;->setSourceLocator(Lgnu/text/LineBufferedReader;)V

    .line 159
    invoke-virtual {p2}, Lgnu/xml/XMLFilter;->startDocument()V

    .line 160
    invoke-virtual {p0}, Lgnu/text/LineBufferedReader;->getPath()Lgnu/text/Path;

    move-result-object v0

    .line 161
    .local v0, uri:Lgnu/text/Path;
    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {p2, v0}, Lgnu/xml/XMLFilter;->writeDocumentUri(Ljava/lang/Object;)V

    .line 163
    :cond_0
    invoke-static {p0, p2}, Lgnu/xml/XMLParser;->parse(Lgnu/text/LineBufferedReader;Lgnu/xml/XMLFilter;)V

    .line 164
    invoke-virtual {p2}, Lgnu/xml/XMLFilter;->endDocument()V

    .line 165
    invoke-virtual {p0}, Lgnu/text/LineBufferedReader;->close()V

    .line 166
    return-void
.end method

.method public static parse(Lgnu/text/LineBufferedReader;Lgnu/xml/XMLFilter;)V
    .locals 22
    .parameter "in"
    .parameter "out"

    .prologue
    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/text/LineBufferedReader;->buffer:[C

    move-object v6, v0

    .line 172
    .local v6, buffer:[C
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/text/LineBufferedReader;->pos:I

    move v14, v0

    .line 173
    .local v14, pos:I
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/text/LineBufferedReader;->limit:I

    move v12, v0

    .line 189
    .local v12, limit:I
    const/4 v15, 0x0

    .line 194
    .local v15, state:I
    const/16 v16, 0x3c

    .line 195
    .local v16, terminator:C
    const/16 v11, 0xe

    .line 196
    .local v11, continue_state:I
    const/16 v10, 0x20

    .line 197
    .local v10, ch:C
    const/4 v8, 0x0

    .line 198
    .local v8, length:I
    const/4 v9, -0x1

    .line 199
    .local v9, dstart:I
    const/4 v13, 0x0

    .line 201
    .local v13, message:Ljava/lang/String;
    move v7, v12

    .local v7, start:I
    move/from16 v19, v16

    .end local v16           #terminator:C
    .local v19, terminator:C
    move/from16 v18, v15

    .end local v15           #state:I
    .local v18, state:I
    move-object/from16 v16, v13

    .end local v13           #message:Ljava/lang/String;
    .local v16, message:Ljava/lang/String;
    move v15, v12

    .end local v12           #limit:I
    .local v15, limit:I
    move v12, v11

    .end local v11           #continue_state:I
    .local v12, continue_state:I
    move v13, v14

    .line 206
    .end local v14           #pos:I
    .local v13, pos:I
    :goto_0
    packed-switch v18, :pswitch_data_0

    :cond_0
    :pswitch_0
    move v11, v12

    .end local v12           #continue_state:I
    .restart local v11       #continue_state:I
    move/from16 v17, v18

    .end local v18           #state:I
    .local v17, state:I
    move v14, v13

    .end local v13           #pos:I
    .restart local v14       #pos:I
    move-object/from16 v13, v16

    .end local v16           #message:Ljava/lang/String;
    .local v13, message:Ljava/lang/String;
    move/from16 v18, v19

    .line 948
    .end local v19           #terminator:C
    .local v18, terminator:C
    :goto_1
    if-ge v14, v15, :cond_63

    .line 949
    add-int/lit8 v12, v14, 0x1

    .end local v14           #pos:I
    .local v12, pos:I
    aget-char v10, v6, v14

    move-object/from16 v16, v13

    .end local v13           #message:Ljava/lang/String;
    .restart local v16       #message:Ljava/lang/String;
    move/from16 v19, v18

    .end local v18           #terminator:C
    .restart local v19       #terminator:C
    move/from16 v18, v17

    .end local v17           #state:I
    .local v18, state:I
    move v13, v12

    .end local v12           #pos:I
    .local v13, pos:I
    move v12, v11

    .end local v11           #continue_state:I
    .local v12, continue_state:I
    goto :goto_0

    .line 209
    :pswitch_1
    const/4 v11, 0x1

    .line 210
    .end local v18           #state:I
    .local v11, state:I
    const/16 v11, 0x1f

    move/from16 v18, v19

    .end local v19           #terminator:C
    .local v18, terminator:C
    move/from16 v17, v11

    .end local v11           #state:I
    .restart local v17       #state:I
    move v14, v13

    .end local v13           #pos:I
    .restart local v14       #pos:I
    move v11, v12

    .end local v12           #continue_state:I
    .local v11, continue_state:I
    move-object/from16 v13, v16

    .line 211
    .end local v16           #message:Ljava/lang/String;
    .local v13, message:Ljava/lang/String;
    goto :goto_1

    .line 214
    .end local v11           #continue_state:I
    .end local v14           #pos:I
    .end local v17           #state:I
    .restart local v12       #continue_state:I
    .local v13, pos:I
    .restart local v16       #message:Ljava/lang/String;
    .local v18, state:I
    .restart local v19       #terminator:C
    :pswitch_2
    const/16 v11, 0x3c

    if-ne v10, v11, :cond_1

    .line 216
    const/16 v11, 0x22

    .end local v18           #state:I
    .local v11, state:I
    move/from16 v18, v19

    .end local v19           #terminator:C
    .local v18, terminator:C
    move/from16 v17, v11

    .end local v11           #state:I
    .restart local v17       #state:I
    move v14, v13

    .end local v13           #pos:I
    .restart local v14       #pos:I
    move v11, v12

    .end local v12           #continue_state:I
    .local v11, continue_state:I
    move-object/from16 v13, v16

    .line 217
    .end local v16           #message:Ljava/lang/String;
    .local v13, message:Ljava/lang/String;
    goto :goto_1

    .line 219
    .end local v11           #continue_state:I
    .end local v14           #pos:I
    .end local v17           #state:I
    .restart local v12       #continue_state:I
    .local v13, pos:I
    .restart local v16       #message:Ljava/lang/String;
    .local v18, state:I
    .restart local v19       #terminator:C
    :cond_1
    const/4 v11, 0x1

    .end local v18           #state:I
    .local v11, state:I
    move/from16 v18, v11

    .line 220
    .end local v11           #state:I
    .restart local v18       #state:I
    goto :goto_0

    .line 223
    :pswitch_3
    const/16 v11, 0x3f

    if-ne v10, v11, :cond_2

    .line 225
    move v7, v13

    .line 226
    const/16 v11, 0x21

    .end local v18           #state:I
    .restart local v11       #state:I
    move/from16 v18, v19

    .end local v19           #terminator:C
    .local v18, terminator:C
    move/from16 v17, v11

    .end local v11           #state:I
    .restart local v17       #state:I
    move v14, v13

    .end local v13           #pos:I
    .restart local v14       #pos:I
    move v11, v12

    .end local v12           #continue_state:I
    .local v11, continue_state:I
    move-object/from16 v13, v16

    .line 227
    .end local v16           #message:Ljava/lang/String;
    .local v13, message:Ljava/lang/String;
    goto :goto_1

    .line 229
    .end local v11           #continue_state:I
    .end local v14           #pos:I
    .end local v17           #state:I
    .restart local v12       #continue_state:I
    .local v13, pos:I
    .restart local v16       #message:Ljava/lang/String;
    .local v18, state:I
    .restart local v19       #terminator:C
    :cond_2
    const/16 v11, 0xe

    .end local v18           #state:I
    .local v11, state:I
    move/from16 v18, v11

    .line 230
    .end local v11           #state:I
    .restart local v18       #state:I
    goto :goto_0

    .line 233
    :pswitch_4
    move v13, v9

    .line 234
    const-string v11, "invalid xml version specifier"

    .line 238
    .end local v16           #message:Ljava/lang/String;
    .local v11, message:Ljava/lang/String;
    :goto_2
    move v0, v13

    move-object/from16 v1, p0

    iput v0, v1, Lgnu/text/LineBufferedReader;->pos:I

    .line 239
    const/16 v14, 0x65

    move-object/from16 v0, p1

    move v1, v14

    move-object v2, v11

    invoke-virtual {v0, v1, v2}, Lgnu/xml/XMLFilter;->error(CLjava/lang/String;)V

    :cond_3
    move v14, v13

    .line 242
    .end local v13           #pos:I
    .restart local v14       #pos:I
    if-lt v14, v15, :cond_4

    move-object v6, v11

    .end local v11           #message:Ljava/lang/String;
    .local v6, message:Ljava/lang/String;
    move/from16 p0, v10

    .end local v10           #ch:C
    .local p0, ch:C
    move/from16 p1, v12

    .end local v12           #continue_state:I
    .local p1, continue_state:I
    move/from16 v12, v19

    .end local v19           #terminator:C
    .local v12, terminator:C
    move/from16 v11, v18

    .end local v18           #state:I
    .local v11, state:I
    move v10, v14

    .line 989
    .end local v14           #pos:I
    .local v10, pos:I
    :goto_3
    return-void

    .line 244
    .local v6, buffer:[C
    .local v10, ch:C
    .local v11, message:Ljava/lang/String;
    .local v12, continue_state:I
    .restart local v14       #pos:I
    .restart local v18       #state:I
    .restart local v19       #terminator:C
    .local p0, in:Lgnu/text/LineBufferedReader;
    .local p1, out:Lgnu/xml/XMLFilter;
    :cond_4
    add-int/lit8 v13, v14, 0x1

    .end local v14           #pos:I
    .restart local v13       #pos:I
    aget-char v10, v6, v14

    .line 245
    const/16 v14, 0x3e

    if-ne v10, v14, :cond_3

    .line 247
    const/4 v14, 0x1

    .end local v18           #state:I
    .local v14, state:I
    move/from16 v18, v19

    .end local v19           #terminator:C
    .local v18, terminator:C
    move/from16 v17, v14

    .end local v14           #state:I
    .restart local v17       #state:I
    move v14, v13

    .end local v13           #pos:I
    .local v14, pos:I
    move-object v13, v11

    .end local v11           #message:Ljava/lang/String;
    .local v13, message:Ljava/lang/String;
    move v11, v12

    .line 248
    .end local v12           #continue_state:I
    .local v11, continue_state:I
    goto :goto_1

    .line 253
    .end local v11           #continue_state:I
    .end local v14           #pos:I
    .end local v17           #state:I
    .restart local v12       #continue_state:I
    .local v13, pos:I
    .restart local v16       #message:Ljava/lang/String;
    .local v18, state:I
    .restart local v19       #terminator:C
    :pswitch_5
    move v0, v13

    move-object/from16 v1, p0

    iput v0, v1, Lgnu/text/LineBufferedReader;->pos:I

    .line 254
    const/16 p0, 0x66

    const-string v6, "unexpected end-of-file"

    .end local v6           #buffer:[C
    .end local p0           #in:Lgnu/text/LineBufferedReader;
    move-object/from16 v0, p1

    move/from16 v1, p0

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lgnu/xml/XMLFilter;->error(CLjava/lang/String;)V

    move-object/from16 v6, v16

    .end local v16           #message:Ljava/lang/String;
    .local v6, message:Ljava/lang/String;
    move/from16 p0, v10

    .end local v10           #ch:C
    .local p0, ch:C
    move/from16 p1, v12

    .end local v12           #continue_state:I
    .local p1, continue_state:I
    move/from16 v11, v18

    .end local v18           #state:I
    .local v11, state:I
    move/from16 v12, v19

    .end local v19           #terminator:C
    .local v12, terminator:C
    move v10, v13

    .line 255
    .end local v13           #pos:I
    .local v10, pos:I
    goto :goto_3

    .line 261
    .end local v11           #state:I
    .local v6, buffer:[C
    .local v10, ch:C
    .local v12, continue_state:I
    .restart local v13       #pos:I
    .restart local v16       #message:Ljava/lang/String;
    .restart local v18       #state:I
    .restart local v19       #terminator:C
    .local p0, in:Lgnu/text/LineBufferedReader;
    .local p1, out:Lgnu/xml/XMLFilter;
    :pswitch_6
    const/4 v7, 0x1

    sub-int v7, v13, v7

    .line 263
    move v8, v13

    .line 266
    :goto_4
    move v0, v10

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    .line 268
    move v11, v12

    .end local v18           #state:I
    .restart local v11       #state:I
    move/from16 v21, v11

    .end local v11           #state:I
    .local v21, state:I
    move v11, v13

    .end local v13           #pos:I
    .local v11, pos:I
    move/from16 v13, v21

    .line 337
    .end local v21           #state:I
    .local v13, state:I
    :goto_5
    sub-int v8, v11, v8

    .line 338
    if-lez v8, :cond_5

    .line 340
    move v0, v11

    move-object/from16 v1, p0

    iput v0, v1, Lgnu/text/LineBufferedReader;->pos:I

    .line 341
    move-object/from16 v0, p1

    move-object v1, v6

    move v2, v7

    move v3, v8

    invoke-virtual {v0, v1, v2, v3}, Lgnu/xml/XMLFilter;->textFromParser([CII)V

    .line 343
    :cond_5
    array-length v7, v6

    move/from16 v18, v19

    .end local v19           #terminator:C
    .local v18, terminator:C
    move/from16 v17, v13

    .end local v13           #state:I
    .restart local v17       #state:I
    move v14, v11

    .end local v11           #pos:I
    .restart local v14       #pos:I
    move v11, v12

    .end local v12           #continue_state:I
    .local v11, continue_state:I
    move-object/from16 v13, v16

    .line 344
    .end local v16           #message:Ljava/lang/String;
    .local v13, message:Ljava/lang/String;
    goto/16 :goto_1

    .line 271
    .end local v11           #continue_state:I
    .end local v14           #pos:I
    .end local v17           #state:I
    .restart local v12       #continue_state:I
    .local v13, pos:I
    .restart local v16       #message:Ljava/lang/String;
    .local v18, state:I
    .restart local v19       #terminator:C
    :cond_6
    const/16 v11, 0x26

    if-ne v10, v11, :cond_7

    .line 273
    const/16 v11, 0x19

    .end local v18           #state:I
    .local v11, state:I
    move/from16 v21, v11

    .end local v11           #state:I
    .restart local v21       #state:I
    move v11, v13

    .end local v13           #pos:I
    .local v11, pos:I
    move/from16 v13, v21

    .line 274
    .end local v21           #state:I
    .local v13, state:I
    goto :goto_5

    .line 276
    .end local v11           #pos:I
    .local v13, pos:I
    .restart local v18       #state:I
    :cond_7
    const/16 v11, 0xd

    if-ne v10, v11, :cond_d

    .line 278
    sub-int v8, v13, v8

    .line 279
    move v0, v13

    move-object/from16 v1, p0

    iput v0, v1, Lgnu/text/LineBufferedReader;->pos:I

    .line 280
    if-lez v8, :cond_8

    .line 281
    move-object/from16 v0, p1

    move-object v1, v6

    move v2, v7

    move v3, v8

    invoke-virtual {v0, v1, v2, v3}, Lgnu/xml/XMLFilter;->textFromParser([CII)V

    .line 282
    :cond_8
    if-ge v13, v15, :cond_c

    .line 284
    aget-char v10, v6, v13

    .line 285
    const/16 v7, 0xa

    if-ne v10, v7, :cond_a

    .line 287
    .end local v7           #start:I
    move v7, v13

    .line 288
    .restart local v7       #start:I
    add-int/lit8 v11, v13, 0x1

    .end local v13           #pos:I
    .restart local v11       #pos:I
    move v8, v11

    .line 306
    :goto_6
    const/4 v13, 0x1

    move-object/from16 v0, p0

    move v1, v13

    move v2, v11

    invoke-virtual {v0, v1, v2}, Lgnu/text/LineBufferedReader;->incrLineNumber(II)V

    move v13, v11

    .line 330
    .end local v11           #pos:I
    .restart local v13       #pos:I
    :cond_9
    :goto_7
    if-ne v13, v15, :cond_11

    .line 332
    add-int/lit8 v8, v8, -0x1

    move v11, v13

    .end local v13           #pos:I
    .restart local v11       #pos:I
    move/from16 v13, v18

    .line 333
    .end local v18           #state:I
    .local v13, state:I
    goto :goto_5

    .line 292
    .end local v7           #start:I
    .end local v11           #pos:I
    .local v13, pos:I
    .restart local v18       #state:I
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lgnu/xml/XMLFilter;->linefeedFromParser()V

    .line 293
    const/16 v7, 0x85

    if-ne v10, v7, :cond_b

    .line 295
    add-int/lit8 v11, v13, 0x1

    .end local v13           #pos:I
    .restart local v11       #pos:I
    move v7, v13

    .line 296
    .restart local v7       #start:I
    add-int/lit8 v8, v11, 0x1

    goto :goto_6

    .line 300
    .end local v7           #start:I
    .end local v11           #pos:I
    .restart local v13       #pos:I
    :cond_b
    const/4 v7, 0x1

    move-object/from16 v0, p0

    move v1, v7

    move v2, v13

    invoke-virtual {v0, v1, v2}, Lgnu/text/LineBufferedReader;->incrLineNumber(II)V

    .line 301
    move v7, v13

    .line 302
    .restart local v7       #start:I
    add-int/lit8 v11, v13, 0x1

    .end local v13           #pos:I
    .restart local v11       #pos:I
    move v8, v11

    move v13, v11

    .line 303
    .end local v11           #pos:I
    .restart local v13       #pos:I
    goto :goto_4

    .line 310
    :cond_c
    invoke-virtual/range {p1 .. p1}, Lgnu/xml/XMLFilter;->linefeedFromParser()V

    .line 311
    const/16 v11, 0x1c

    .end local v18           #state:I
    .local v11, state:I
    move/from16 v18, v19

    .end local v19           #terminator:C
    .local v18, terminator:C
    move/from16 v17, v11

    .end local v11           #state:I
    .restart local v17       #state:I
    move v14, v13

    .end local v13           #pos:I
    .restart local v14       #pos:I
    move v11, v12

    .end local v12           #continue_state:I
    .local v11, continue_state:I
    move-object/from16 v13, v16

    .line 312
    .end local v16           #message:Ljava/lang/String;
    .local v13, message:Ljava/lang/String;
    goto/16 :goto_1

    .line 315
    .end local v11           #continue_state:I
    .end local v14           #pos:I
    .end local v17           #state:I
    .restart local v12       #continue_state:I
    .local v13, pos:I
    .restart local v16       #message:Ljava/lang/String;
    .local v18, state:I
    .restart local v19       #terminator:C
    :cond_d
    const/16 v11, 0x85

    if-eq v10, v11, :cond_e

    const/16 v11, 0x2028

    if-ne v10, v11, :cond_10

    .line 317
    :cond_e
    sub-int v8, v13, v8

    .line 318
    const/4 v11, 0x1

    sub-int v11, v13, v11

    move v0, v11

    move-object/from16 v1, p0

    iput v0, v1, Lgnu/text/LineBufferedReader;->pos:I

    .line 319
    if-lez v8, :cond_f

    .line 320
    move-object/from16 v0, p1

    move-object v1, v6

    move v2, v7

    move v3, v8

    invoke-virtual {v0, v1, v2, v3}, Lgnu/xml/XMLFilter;->textFromParser([CII)V

    .line 321
    :cond_f
    invoke-virtual/range {p1 .. p1}, Lgnu/xml/XMLFilter;->linefeedFromParser()V

    .line 322
    const/4 v7, 0x1

    move-object/from16 v0, p0

    move v1, v7

    move v2, v13

    invoke-virtual {v0, v1, v2}, Lgnu/text/LineBufferedReader;->incrLineNumber(II)V

    .line 323
    .end local v7           #start:I
    add-int/lit8 v8, v13, 0x1

    .line 324
    move v7, v13

    .restart local v7       #start:I
    goto :goto_7

    .line 326
    :cond_10
    const/16 v11, 0xa

    if-ne v10, v11, :cond_9

    .line 328
    const/4 v11, 0x1

    move-object/from16 v0, p0

    move v1, v11

    move v2, v13

    invoke-virtual {v0, v1, v2}, Lgnu/text/LineBufferedReader;->incrLineNumber(II)V

    goto :goto_7

    .line 335
    :cond_11
    add-int/lit8 v11, v13, 0x1

    .end local v13           #pos:I
    .local v11, pos:I
    aget-char v10, v6, v13

    move v13, v11

    .end local v11           #pos:I
    .restart local v13       #pos:I
    goto/16 :goto_4

    .line 349
    :pswitch_7
    const/4 v11, 0x1

    .line 350
    .end local v18           #state:I
    .local v11, state:I
    const/16 v14, 0xa

    if-ne v10, v14, :cond_12

    const/4 v14, 0x1

    :goto_8
    const/16 v17, 0x85

    move v0, v10

    move/from16 v1, v17

    if-ne v0, v1, :cond_13

    const/16 v17, 0x1

    :goto_9
    or-int v14, v14, v17

    if-eqz v14, :cond_14

    .line 352
    const/4 v14, 0x1

    move-object/from16 v0, p0

    move v1, v14

    move v2, v13

    invoke-virtual {v0, v1, v2}, Lgnu/text/LineBufferedReader;->incrLineNumber(II)V

    move/from16 v18, v19

    .end local v19           #terminator:C
    .local v18, terminator:C
    move/from16 v17, v11

    .end local v11           #state:I
    .restart local v17       #state:I
    move v14, v13

    .end local v13           #pos:I
    .restart local v14       #pos:I
    move v11, v12

    .end local v12           #continue_state:I
    .local v11, continue_state:I
    move-object/from16 v13, v16

    .line 353
    .end local v16           #message:Ljava/lang/String;
    .local v13, message:Ljava/lang/String;
    goto/16 :goto_1

    .line 350
    .end local v14           #pos:I
    .end local v17           #state:I
    .end local v18           #terminator:C
    .local v11, state:I
    .restart local v12       #continue_state:I
    .local v13, pos:I
    .restart local v16       #message:Ljava/lang/String;
    .restart local v19       #terminator:C
    :cond_12
    const/4 v14, 0x0

    goto :goto_8

    :cond_13
    const/16 v17, 0x0

    goto :goto_9

    .line 357
    :cond_14
    const/4 v14, 0x1

    const/16 v17, 0x1

    sub-int v17, v13, v17

    move-object/from16 v0, p0

    move v1, v14

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lgnu/text/LineBufferedReader;->incrLineNumber(II)V

    move/from16 v18, v11

    .line 358
    .end local v11           #state:I
    .local v18, state:I
    goto/16 :goto_0

    .line 367
    :pswitch_8
    const/16 v11, 0x20

    if-eq v10, v11, :cond_0

    const/16 v11, 0x9

    if-ne v10, v11, :cond_15

    move v11, v12

    .end local v12           #continue_state:I
    .local v11, continue_state:I
    move/from16 v17, v18

    .end local v18           #state:I
    .restart local v17       #state:I
    move v14, v13

    .end local v13           #pos:I
    .restart local v14       #pos:I
    move-object/from16 v13, v16

    .end local v16           #message:Ljava/lang/String;
    .local v13, message:Ljava/lang/String;
    move/from16 v18, v19

    .line 368
    .end local v19           #terminator:C
    .local v18, terminator:C
    goto/16 :goto_1

    .line 369
    .end local v11           #continue_state:I
    .end local v14           #pos:I
    .end local v17           #state:I
    .restart local v12       #continue_state:I
    .local v13, pos:I
    .restart local v16       #message:Ljava/lang/String;
    .local v18, state:I
    .restart local v19       #terminator:C
    :cond_15
    const/16 v11, 0xa

    if-eq v10, v11, :cond_16

    const/16 v11, 0xd

    if-eq v10, v11, :cond_16

    const/16 v11, 0x85

    if-eq v10, v11, :cond_16

    const/16 v11, 0x2028

    if-ne v10, v11, :cond_17

    .line 372
    :cond_16
    const/4 v11, 0x1

    move-object/from16 v0, p0

    move v1, v11

    move v2, v13

    invoke-virtual {v0, v1, v2}, Lgnu/text/LineBufferedReader;->incrLineNumber(II)V

    move v11, v12

    .end local v12           #continue_state:I
    .restart local v11       #continue_state:I
    move/from16 v17, v18

    .end local v18           #state:I
    .restart local v17       #state:I
    move v14, v13

    .end local v13           #pos:I
    .restart local v14       #pos:I
    move-object/from16 v13, v16

    .end local v16           #message:Ljava/lang/String;
    .local v13, message:Ljava/lang/String;
    move/from16 v18, v19

    .line 373
    .end local v19           #terminator:C
    .local v18, terminator:C
    goto/16 :goto_1

    .line 376
    .end local v11           #continue_state:I
    .end local v14           #pos:I
    .end local v17           #state:I
    .restart local v12       #continue_state:I
    .local v13, pos:I
    .restart local v16       #message:Ljava/lang/String;
    .local v18, state:I
    .restart local v19       #terminator:C
    :cond_17
    add-int/lit8 v11, v18, -0x2

    .end local v18           #state:I
    .local v11, state:I
    move/from16 v18, v11

    .line 377
    .end local v11           #state:I
    .restart local v18       #state:I
    goto/16 :goto_0

    .line 386
    :pswitch_9
    add-int/lit8 v8, v7, 0x1

    .line 399
    :goto_a
    const/16 v11, 0x61

    if-lt v10, v11, :cond_18

    const/16 v11, 0x7a

    if-le v10, v11, :cond_20

    :cond_18
    const/16 v11, 0x41

    if-lt v10, v11, :cond_19

    const/16 v11, 0x5a

    if-le v10, v11, :cond_20

    :cond_19
    const/16 v11, 0x5f

    if-eq v10, v11, :cond_20

    const/16 v11, 0x3a

    if-eq v10, v11, :cond_20

    const/16 v11, 0xc0

    if-lt v10, v11, :cond_1e

    const/16 v11, 0x2ff

    if-le v10, v11, :cond_20

    const/16 v11, 0x370

    if-lt v10, v11, :cond_1e

    const/16 v11, 0x1fff

    if-gt v10, v11, :cond_1a

    const/16 v11, 0x37e

    if-ne v10, v11, :cond_20

    :cond_1a
    const/16 v11, 0x200c

    if-lt v10, v11, :cond_1e

    const/16 v11, 0x200d

    if-le v10, v11, :cond_20

    const/16 v11, 0x2070

    if-lt v10, v11, :cond_1b

    const/16 v11, 0x218f

    if-le v10, v11, :cond_20

    :cond_1b
    const/16 v11, 0x2c00

    if-lt v10, v11, :cond_1c

    const/16 v11, 0x2fef

    if-le v10, v11, :cond_20

    :cond_1c
    const/16 v11, 0x3001

    if-lt v10, v11, :cond_1d

    const v11, 0xd7ff

    if-le v10, v11, :cond_20

    :cond_1d
    const v11, 0xf900

    if-lt v10, v11, :cond_1e

    const v11, 0xfffd

    if-le v10, v11, :cond_20

    :cond_1e
    if-le v13, v8, :cond_1f

    const/16 v11, 0x30

    if-lt v10, v11, :cond_1f

    const/16 v11, 0x39

    if-le v10, v11, :cond_20

    :cond_1f
    const/16 v11, 0x2e

    if-eq v10, v11, :cond_20

    const/16 v11, 0x2d

    if-eq v10, v11, :cond_20

    const/16 v11, 0xb7

    if-eq v10, v11, :cond_20

    const/16 v11, 0x300

    if-le v10, v11, :cond_21

    const/16 v11, 0x36f

    if-le v10, v11, :cond_20

    const/16 v11, 0x203f

    if-lt v10, v11, :cond_21

    const/16 v11, 0x2040

    if-gt v10, v11, :cond_21

    .line 436
    :cond_20
    if-ge v13, v15, :cond_0

    .line 437
    add-int/lit8 v11, v13, 0x1

    .end local v13           #pos:I
    .local v11, pos:I
    aget-char v10, v6, v13

    move v13, v11

    .end local v11           #pos:I
    .restart local v13       #pos:I
    goto/16 :goto_a

    .line 421
    :cond_21
    add-int/lit8 v11, v18, -0x1

    .line 422
    .end local v18           #state:I
    .local v11, state:I
    sub-int v8, v13, v8

    .line 423
    if-nez v8, :cond_70

    .line 425
    const/16 v14, 0x8

    if-ne v11, v14, :cond_22

    .line 426
    const-string v11, "missing or invalid attribute name"

    .line 432
    .end local v16           #message:Ljava/lang/String;
    .local v11, message:Ljava/lang/String;
    :goto_b
    const/16 v14, 0x24

    .local v14, state:I
    move-object/from16 v16, v11

    .end local v11           #message:Ljava/lang/String;
    .restart local v16       #message:Ljava/lang/String;
    move/from16 v18, v14

    .end local v14           #state:I
    .restart local v18       #state:I
    goto/16 :goto_0

    .line 427
    .end local v18           #state:I
    .local v11, state:I
    :cond_22
    const/4 v14, 0x2

    if-eq v11, v14, :cond_23

    const/4 v14, 0x4

    if-ne v11, v14, :cond_24

    .line 429
    :cond_23
    const-string v11, "missing or invalid element name"

    .end local v16           #message:Ljava/lang/String;
    .local v11, message:Ljava/lang/String;
    goto :goto_b

    .line 431
    .local v11, state:I
    .restart local v16       #message:Ljava/lang/String;
    :cond_24
    const-string v11, "missing or invalid name"

    .end local v16           #message:Ljava/lang/String;
    .local v11, message:Ljava/lang/String;
    goto :goto_b

    .line 452
    .end local v10           #ch:C
    .end local v13           #pos:I
    .local v11, ch:C
    .local v14, pos:I
    .restart local v16       #message:Ljava/lang/String;
    .restart local v18       #state:I
    :cond_25
    const/16 v10, 0x78

    if-ne v11, v10, :cond_26

    if-nez v9, :cond_26

    .line 453
    const/16 v9, 0x10

    .line 464
    :goto_c
    if-ge v14, v15, :cond_6f

    .line 465
    add-int/lit8 v11, v14, 0x1

    .end local v14           #pos:I
    .local v11, pos:I
    aget-char v10, v6, v14

    .restart local v10       #ch:C
    move v14, v11

    .end local v11           #pos:I
    .restart local v14       #pos:I
    move v11, v10

    .line 444
    .end local v10           #ch:C
    .local v11, ch:C
    :goto_d
    const/16 v10, 0x3b

    if-ne v11, v10, :cond_25

    .line 446
    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lgnu/text/LineBufferedReader;->pos:I

    .line 447
    const/4 v10, 0x1

    sub-int v10, v14, v10

    sub-int/2addr v10, v7

    move-object/from16 v0, p1

    move v1, v8

    move-object v2, v6

    move v3, v7

    move v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Lgnu/xml/XMLFilter;->emitCharacterReference(I[CII)V

    .line 449
    const/4 v10, 0x1

    .end local v18           #state:I
    .local v10, state:I
    move-object/from16 v13, v16

    .end local v16           #message:Ljava/lang/String;
    .local v13, message:Ljava/lang/String;
    move/from16 v18, v19

    .end local v19           #terminator:C
    .local v18, terminator:C
    move/from16 v17, v10

    .end local v10           #state:I
    .restart local v17       #state:I
    move v10, v11

    .end local v11           #ch:C
    .local v10, ch:C
    move v11, v12

    .line 450
    .end local v12           #continue_state:I
    .local v11, continue_state:I
    goto/16 :goto_1

    .line 454
    .end local v10           #ch:C
    .end local v13           #message:Ljava/lang/String;
    .end local v17           #state:I
    .local v11, ch:C
    .restart local v12       #continue_state:I
    .restart local v16       #message:Ljava/lang/String;
    .local v18, state:I
    .restart local v19       #terminator:C
    :cond_26
    const/high16 v10, 0x800

    if-lt v8, v10, :cond_28

    .line 469
    :cond_27
    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lgnu/text/LineBufferedReader;->pos:I

    .line 470
    const/16 v10, 0x65

    const-string v13, "invalid character reference"

    move-object/from16 v0, p1

    move v1, v10

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Lgnu/xml/XMLFilter;->error(CLjava/lang/String;)V

    .line 471
    const/4 v10, 0x1

    .end local v18           #state:I
    .local v10, state:I
    move-object/from16 v13, v16

    .end local v16           #message:Ljava/lang/String;
    .restart local v13       #message:Ljava/lang/String;
    move/from16 v18, v19

    .end local v19           #terminator:C
    .local v18, terminator:C
    move/from16 v17, v10

    .end local v10           #state:I
    .restart local v17       #state:I
    move v10, v11

    .end local v11           #ch:C
    .local v10, ch:C
    move v11, v12

    .line 472
    .end local v12           #continue_state:I
    .local v11, continue_state:I
    goto/16 :goto_1

    .line 458
    .end local v10           #ch:C
    .end local v13           #message:Ljava/lang/String;
    .end local v17           #state:I
    .local v11, ch:C
    .restart local v12       #continue_state:I
    .restart local v16       #message:Ljava/lang/String;
    .local v18, state:I
    .restart local v19       #terminator:C
    :cond_28
    if-nez v9, :cond_29

    const/16 v10, 0xa

    .line 459
    .local v10, base:I
    :goto_e
    invoke-static {v11, v10}, Ljava/lang/Character;->digit(CI)I

    move-result v13

    .line 460
    .local v13, digit:I
    if-ltz v13, :cond_27

    .line 462
    mul-int/2addr v8, v10

    add-int/2addr v8, v13

    goto :goto_c

    .end local v10           #base:I
    .end local v13           #digit:I
    :cond_29
    move v10, v9

    .line 458
    goto :goto_e

    .line 475
    .end local v11           #ch:C
    .end local v14           #pos:I
    .local v10, ch:C
    .local v13, pos:I
    :pswitch_a
    const/16 v7, 0x23

    if-ne v10, v7, :cond_2a

    .line 477
    .end local v7           #start:I
    const/16 v11, 0x1a

    .line 478
    .end local v18           #state:I
    .local v11, state:I
    move v7, v13

    .line 479
    .restart local v7       #start:I
    const/4 v8, 0x0

    .line 480
    const/4 v9, 0x0

    move/from16 v18, v19

    .end local v19           #terminator:C
    .local v18, terminator:C
    move/from16 v17, v11

    .end local v11           #state:I
    .restart local v17       #state:I
    move v14, v13

    .end local v13           #pos:I
    .restart local v14       #pos:I
    move v11, v12

    .end local v12           #continue_state:I
    .local v11, continue_state:I
    move-object/from16 v13, v16

    .line 481
    .end local v16           #message:Ljava/lang/String;
    .local v13, message:Ljava/lang/String;
    goto/16 :goto_1

    .line 483
    .end local v7           #start:I
    .end local v11           #continue_state:I
    .end local v14           #pos:I
    .end local v17           #state:I
    .restart local v12       #continue_state:I
    .local v13, pos:I
    .restart local v16       #message:Ljava/lang/String;
    .local v18, state:I
    .restart local v19       #terminator:C
    :cond_2a
    const/4 v7, 0x1

    sub-int v7, v13, v7

    .line 484
    .restart local v7       #start:I
    const/4 v11, 0x7

    .end local v18           #state:I
    .local v11, state:I
    move/from16 v18, v11

    .line 485
    .end local v11           #state:I
    .restart local v18       #state:I
    goto/16 :goto_0

    .line 488
    :pswitch_b
    move v0, v13

    move-object/from16 v1, p0

    iput v0, v1, Lgnu/text/LineBufferedReader;->pos:I

    .line 489
    const/16 v11, 0x3b

    if-eq v10, v11, :cond_2b

    .line 490
    const/16 v11, 0x77

    const-string v14, "missing \';\'"

    move-object/from16 v0, p1

    move v1, v11

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Lgnu/xml/XMLFilter;->error(CLjava/lang/String;)V

    .line 491
    :cond_2b
    move-object/from16 v0, p1

    move-object v1, v6

    move v2, v7

    move v3, v8

    invoke-virtual {v0, v1, v2, v3}, Lgnu/xml/XMLFilter;->emitEntityReference([CII)V

    .line 492
    move v7, v15

    .line 493
    const/4 v11, 0x1

    .end local v18           #state:I
    .restart local v11       #state:I
    move/from16 v18, v19

    .end local v19           #terminator:C
    .local v18, terminator:C
    move/from16 v17, v11

    .end local v11           #state:I
    .restart local v17       #state:I
    move v14, v13

    .end local v13           #pos:I
    .restart local v14       #pos:I
    move v11, v12

    .end local v12           #continue_state:I
    .local v11, continue_state:I
    move-object/from16 v13, v16

    .line 494
    .end local v16           #message:Ljava/lang/String;
    .local v13, message:Ljava/lang/String;
    goto/16 :goto_1

    .line 497
    .end local v11           #continue_state:I
    .end local v14           #pos:I
    .end local v17           #state:I
    .restart local v12       #continue_state:I
    .local v13, pos:I
    .restart local v16       #message:Ljava/lang/String;
    .local v18, state:I
    .restart local v19       #terminator:C
    :pswitch_c
    const/16 v11, 0x2f

    if-ne v10, v11, :cond_2c

    .line 499
    const/16 v11, 0x13

    .end local v18           #state:I
    .local v11, state:I
    move/from16 v18, v19

    .end local v19           #terminator:C
    .local v18, terminator:C
    move/from16 v17, v11

    .end local v11           #state:I
    .restart local v17       #state:I
    move v14, v13

    .end local v13           #pos:I
    .restart local v14       #pos:I
    move v11, v12

    .end local v12           #continue_state:I
    .local v11, continue_state:I
    move-object/from16 v13, v16

    .line 500
    .end local v16           #message:Ljava/lang/String;
    .local v13, message:Ljava/lang/String;
    goto/16 :goto_1

    .line 502
    .end local v11           #continue_state:I
    .end local v14           #pos:I
    .end local v17           #state:I
    .restart local v12       #continue_state:I
    .local v13, pos:I
    .restart local v16       #message:Ljava/lang/String;
    .local v18, state:I
    .restart local v19       #terminator:C
    :cond_2c
    const/16 v7, 0x3f

    if-ne v10, v7, :cond_2d

    .line 504
    .end local v7           #start:I
    move v7, v13

    .line 505
    .restart local v7       #start:I
    const/16 v11, 0x18

    .end local v18           #state:I
    .local v11, state:I
    move/from16 v18, v19

    .end local v19           #terminator:C
    .local v18, terminator:C
    move/from16 v17, v11

    .end local v11           #state:I
    .restart local v17       #state:I
    move v14, v13

    .end local v13           #pos:I
    .restart local v14       #pos:I
    move v11, v12

    .end local v12           #continue_state:I
    .local v11, continue_state:I
    move-object/from16 v13, v16

    .line 506
    .end local v16           #message:Ljava/lang/String;
    .local v13, message:Ljava/lang/String;
    goto/16 :goto_1

    .line 508
    .end local v7           #start:I
    .end local v11           #continue_state:I
    .end local v14           #pos:I
    .end local v17           #state:I
    .restart local v12       #continue_state:I
    .local v13, pos:I
    .restart local v16       #message:Ljava/lang/String;
    .local v18, state:I
    .restart local v19       #terminator:C
    :cond_2d
    const/16 v7, 0x21

    if-ne v10, v7, :cond_2e

    .line 510
    const/16 v11, 0x14

    .line 511
    .end local v18           #state:I
    .local v11, state:I
    move v7, v13

    .restart local v7       #start:I
    move/from16 v18, v19

    .end local v19           #terminator:C
    .local v18, terminator:C
    move/from16 v17, v11

    .end local v11           #state:I
    .restart local v17       #state:I
    move v14, v13

    .end local v13           #pos:I
    .restart local v14       #pos:I
    move v11, v12

    .end local v12           #continue_state:I
    .local v11, continue_state:I
    move-object/from16 v13, v16

    .line 512
    .end local v16           #message:Ljava/lang/String;
    .local v13, message:Ljava/lang/String;
    goto/16 :goto_1

    .line 515
    .end local v7           #start:I
    .end local v11           #continue_state:I
    .end local v14           #pos:I
    .end local v17           #state:I
    .restart local v12       #continue_state:I
    .local v13, pos:I
    .restart local v16       #message:Ljava/lang/String;
    .local v18, state:I
    .restart local v19       #terminator:C
    :cond_2e
    const/4 v7, 0x1

    sub-int v7, v13, v7

    .line 516
    .restart local v7       #start:I
    const/4 v11, 0x3

    .end local v18           #state:I
    .local v11, state:I
    move/from16 v18, v11

    .line 517
    .end local v11           #state:I
    .restart local v18       #state:I
    goto/16 :goto_0

    .line 519
    :pswitch_d
    sub-int v11, v13, v8

    move v0, v11

    move-object/from16 v1, p0

    iput v0, v1, Lgnu/text/LineBufferedReader;->pos:I

    .line 520
    move-object/from16 v0, p1

    move-object v1, v6

    move v2, v7

    move v3, v8

    invoke-virtual {v0, v1, v2, v3}, Lgnu/xml/XMLFilter;->emitStartElement([CII)V

    .line 521
    const/16 v11, 0xc

    .line 522
    .end local v18           #state:I
    .restart local v11       #state:I
    move v7, v15

    move/from16 v18, v11

    .line 523
    .end local v11           #state:I
    .restart local v18       #state:I
    goto/16 :goto_0

    .line 527
    :pswitch_e
    if-gez v9, :cond_6e

    .line 528
    const/4 v9, 0x1

    sub-int v9, v13, v9

    move v11, v10

    .end local v10           #ch:C
    .local v11, ch:C
    move/from16 v17, v13

    .line 532
    .end local v13           #pos:I
    .local v17, pos:I
    :goto_f
    const/16 v10, 0x3e

    if-ne v11, v10, :cond_51

    const/4 v10, 0x2

    sub-int v13, v17, v10

    .local v13, end:I
    aget-char v10, v6, v13

    const/16 v14, 0x3f

    if-ne v10, v14, :cond_51

    if-lt v13, v9, :cond_51

    .line 536
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lgnu/text/LineBufferedReader;->pos:I

    .line 537
    const/4 v10, 0x3

    if-ne v8, v10, :cond_4f

    aget-char v10, v6, v7

    const/16 v14, 0x78

    if-ne v10, v14, :cond_4f

    add-int/lit8 v10, v7, 0x1

    aget-char v10, v6, v10

    const/16 v14, 0x6d

    if-ne v10, v14, :cond_4f

    add-int/lit8 v10, v7, 0x2

    aget-char v10, v6, v10

    const/16 v14, 0x6c

    if-ne v10, v14, :cond_4f

    .line 542
    const/16 v10, 0x1e

    move/from16 v0, v18

    move v1, v10

    if-ne v0, v1, :cond_4e

    .line 544
    add-int/lit8 v10, v9, 0x7

    if-le v13, v10, :cond_2f

    aget-char v10, v6, v9

    const/16 v14, 0x76

    if-ne v10, v14, :cond_2f

    add-int/lit8 v10, v9, 0x1

    aget-char v10, v6, v10

    const/16 v14, 0x65

    if-ne v10, v14, :cond_2f

    add-int/lit8 v10, v9, 0x2

    aget-char v10, v6, v10

    const/16 v14, 0x72

    if-ne v10, v14, :cond_2f

    add-int/lit8 v10, v9, 0x3

    aget-char v10, v6, v10

    const/16 v14, 0x73

    if-ne v10, v14, :cond_2f

    add-int/lit8 v10, v9, 0x4

    aget-char v10, v6, v10

    const/16 v14, 0x69

    if-ne v10, v14, :cond_2f

    add-int/lit8 v10, v9, 0x5

    aget-char v10, v6, v10

    const/16 v14, 0x6f

    if-ne v10, v14, :cond_2f

    add-int/lit8 v10, v9, 0x6

    aget-char v10, v6, v10

    const/16 v14, 0x6e

    if-eq v10, v14, :cond_30

    .line 553
    :cond_2f
    move v13, v9

    .line 554
    .end local v17           #pos:I
    .local v13, pos:I
    const-string v10, "xml declaration without version"

    .line 555
    .end local v16           #message:Ljava/lang/String;
    .local v10, message:Ljava/lang/String;
    const/16 v14, 0x24

    .end local v18           #state:I
    .local v14, state:I
    move-object/from16 v16, v10

    .end local v10           #message:Ljava/lang/String;
    .restart local v16       #message:Ljava/lang/String;
    move/from16 v18, v14

    .end local v14           #state:I
    .restart local v18       #state:I
    move v10, v11

    .line 556
    .end local v11           #ch:C
    .local v10, ch:C
    goto/16 :goto_0

    .line 558
    .end local v10           #ch:C
    .restart local v11       #ch:C
    .local v13, end:I
    .restart local v17       #pos:I
    :cond_30
    add-int/lit8 v9, v9, 0x7

    .line 559
    aget-char v10, v6, v9

    .line 561
    .end local v11           #ch:C
    .restart local v10       #ch:C
    :goto_10
    invoke-static {v10}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v11

    if-eqz v11, :cond_31

    add-int/lit8 v9, v9, 0x1

    if-ge v9, v13, :cond_31

    .line 562
    aget-char v10, v6, v9

    goto :goto_10

    .line 563
    :cond_31
    const/16 v11, 0x3d

    if-eq v10, v11, :cond_32

    .line 565
    const/16 v11, 0x23

    .end local v18           #state:I
    .local v11, state:I
    move/from16 v18, v11

    .end local v11           #state:I
    .restart local v18       #state:I
    move/from16 v13, v17

    .line 566
    .end local v17           #pos:I
    .local v13, pos:I
    goto/16 :goto_0

    .line 568
    .local v13, end:I
    .restart local v17       #pos:I
    :cond_32
    add-int/lit8 v9, v9, 0x1

    aget-char v10, v6, v9

    .line 570
    :goto_11
    invoke-static {v10}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v11

    if-eqz v11, :cond_33

    add-int/lit8 v9, v9, 0x1

    if-ge v9, v13, :cond_33

    .line 571
    aget-char v10, v6, v9

    goto :goto_11

    .line 572
    :cond_33
    const/16 v11, 0x27

    if-eq v10, v11, :cond_34

    const/16 v11, 0x22

    if-eq v10, v11, :cond_34

    .line 574
    const/16 v11, 0x23

    .end local v18           #state:I
    .restart local v11       #state:I
    move/from16 v18, v11

    .end local v11           #state:I
    .restart local v18       #state:I
    move/from16 v13, v17

    .line 575
    .end local v17           #pos:I
    .local v13, pos:I
    goto/16 :goto_0

    .line 577
    .local v13, end:I
    .restart local v17       #pos:I
    :cond_34
    move v14, v10

    .line 578
    .local v14, quote:C
    add-int/lit8 v9, v9, 0x1

    move v11, v9

    .line 581
    .local v11, i:I
    :goto_12
    if-ne v11, v13, :cond_35

    .line 583
    const/16 v11, 0x23

    .end local v18           #state:I
    .local v11, state:I
    move/from16 v18, v11

    .end local v11           #state:I
    .restart local v18       #state:I
    move/from16 v13, v17

    .line 584
    .end local v17           #pos:I
    .local v13, pos:I
    goto/16 :goto_0

    .line 586
    .local v11, i:I
    .local v13, end:I
    .restart local v17       #pos:I
    :cond_35
    aget-char v10, v6, v11

    .line 587
    if-ne v10, v14, :cond_38

    .line 590
    add-int/lit8 v18, v9, 0x3

    move v0, v11

    move/from16 v1, v18

    if-ne v0, v1, :cond_36

    .end local v18           #state:I
    aget-char v18, v6, v9

    const/16 v20, 0x31

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_36

    add-int/lit8 v18, v9, 0x1

    aget-char v18, v6, v18

    const/16 v20, 0x2e

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_36

    add-int/lit8 v10, v9, 0x2

    aget-char v10, v6, v10

    const/16 v18, 0x30

    move v0, v10

    move/from16 v1, v18

    if-eq v0, v1, :cond_37

    :cond_36
    const/16 v18, 0x31

    move v0, v10

    move/from16 v1, v18

    if-ne v0, v1, :cond_39

    .line 601
    :cond_37
    add-int/lit8 v9, v11, 0x1

    .line 603
    :goto_13
    if-ge v9, v13, :cond_3a

    aget-char v18, v6, v9

    invoke-static/range {v18 .. v18}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v18

    if-eqz v18, :cond_3a

    .line 604
    add-int/lit8 v9, v9, 0x1

    goto :goto_13

    .line 579
    .restart local v18       #state:I
    :cond_38
    add-int/lit8 v11, v11, 0x1

    goto :goto_12

    .line 598
    .end local v18           #state:I
    :cond_39
    const/16 v11, 0x23

    .local v11, state:I
    move/from16 v18, v11

    .end local v11           #state:I
    .restart local v18       #state:I
    move/from16 v13, v17

    .line 599
    .end local v17           #pos:I
    .local v13, pos:I
    goto/16 :goto_0

    .line 605
    .end local v18           #state:I
    .local v11, i:I
    .local v13, end:I
    .restart local v17       #pos:I
    :cond_3a
    add-int/lit8 v18, v9, 0x7

    move v0, v13

    move/from16 v1, v18

    if-le v0, v1, :cond_43

    aget-char v18, v6, v9

    const/16 v20, 0x65

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_43

    add-int/lit8 v18, v9, 0x1

    aget-char v18, v6, v18

    const/16 v20, 0x6e

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_43

    add-int/lit8 v18, v9, 0x2

    aget-char v18, v6, v18

    const/16 v20, 0x63

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_43

    add-int/lit8 v18, v9, 0x3

    aget-char v18, v6, v18

    const/16 v20, 0x6f

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_43

    add-int/lit8 v18, v9, 0x4

    aget-char v18, v6, v18

    const/16 v20, 0x64

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_43

    add-int/lit8 v18, v9, 0x5

    aget-char v18, v6, v18

    const/16 v20, 0x69

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_43

    add-int/lit8 v18, v9, 0x6

    aget-char v18, v6, v18

    const/16 v20, 0x6e

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_43

    add-int/lit8 v18, v9, 0x7

    aget-char v18, v6, v18

    const/16 v20, 0x67

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_43

    .line 615
    add-int/lit8 v9, v9, 0x8

    .line 616
    aget-char v10, v6, v9

    .line 618
    .end local v11           #i:I
    :goto_14
    invoke-static {v10}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v11

    if-eqz v11, :cond_3b

    add-int/lit8 v9, v9, 0x1

    if-ge v9, v13, :cond_3b

    .line 619
    aget-char v10, v6, v9

    goto :goto_14

    .line 620
    :cond_3b
    const/16 v11, 0x3d

    if-eq v10, v11, :cond_3c

    .line 622
    const-string v11, "bad \'encoding\' declaration"

    .line 623
    .end local v16           #message:Ljava/lang/String;
    .local v11, message:Ljava/lang/String;
    const/16 v13, 0x24

    .local v13, state:I
    move-object/from16 v16, v11

    .end local v11           #message:Ljava/lang/String;
    .restart local v16       #message:Ljava/lang/String;
    move/from16 v18, v13

    .end local v13           #state:I
    .restart local v18       #state:I
    move/from16 v13, v17

    .line 624
    .end local v17           #pos:I
    .local v13, pos:I
    goto/16 :goto_0

    .line 626
    .end local v18           #state:I
    .local v13, end:I
    .restart local v17       #pos:I
    :cond_3c
    add-int/lit8 v9, v9, 0x1

    aget-char v10, v6, v9

    .line 628
    :goto_15
    invoke-static {v10}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v11

    if-eqz v11, :cond_3d

    add-int/lit8 v9, v9, 0x1

    if-ge v9, v13, :cond_3d

    .line 629
    aget-char v10, v6, v9

    goto :goto_15

    .line 630
    :cond_3d
    const/16 v11, 0x27

    if-eq v10, v11, :cond_3e

    const/16 v11, 0x22

    if-eq v10, v11, :cond_3e

    .line 632
    const-string v11, "bad \'encoding\' declaration"

    .line 633
    .end local v16           #message:Ljava/lang/String;
    .restart local v11       #message:Ljava/lang/String;
    const/16 v13, 0x24

    .local v13, state:I
    move-object/from16 v16, v11

    .end local v11           #message:Ljava/lang/String;
    .restart local v16       #message:Ljava/lang/String;
    move/from16 v18, v13

    .end local v13           #state:I
    .restart local v18       #state:I
    move/from16 v13, v17

    .line 634
    .end local v17           #pos:I
    .local v13, pos:I
    goto/16 :goto_0

    .line 636
    .end local v18           #state:I
    .local v13, end:I
    .restart local v17       #pos:I
    :cond_3e
    move/from16 v18, v10

    .line 637
    .end local v14           #quote:C
    .local v18, quote:C
    add-int/lit8 v9, v9, 0x1

    move v11, v9

    .local v11, i:I
    move v14, v11

    .line 640
    .end local v11           #i:I
    .local v14, i:I
    :goto_16
    if-ne v14, v13, :cond_3f

    .line 642
    const-string v11, "bad \'encoding\' declaration"

    .line 643
    .end local v16           #message:Ljava/lang/String;
    .local v11, message:Ljava/lang/String;
    const/16 v13, 0x24

    .local v13, state:I
    move-object/from16 v16, v11

    .end local v11           #message:Ljava/lang/String;
    .restart local v16       #message:Ljava/lang/String;
    move/from16 v18, v13

    .end local v13           #state:I
    .local v18, state:I
    move/from16 v13, v17

    .line 644
    .end local v17           #pos:I
    .local v13, pos:I
    goto/16 :goto_0

    .line 646
    .local v13, end:I
    .restart local v17       #pos:I
    .local v18, quote:C
    :cond_3f
    aget-char v10, v6, v14

    .line 647
    move v0, v10

    move/from16 v1, v18

    if-ne v0, v1, :cond_41

    .line 650
    new-instance v11, Ljava/lang/String;

    sub-int v20, v14, v9

    move-object v0, v11

    move-object v1, v6

    move v2, v9

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    .line 651
    .local v11, encoding:Ljava/lang/String;
    move-object/from16 v0, p0

    instance-of v0, v0, Lgnu/text/LineInputStreamReader;

    move v9, v0

    .end local v9           #dstart:I
    if-eqz v9, :cond_40

    .line 652
    move-object/from16 v0, p0

    check-cast v0, Lgnu/text/LineInputStreamReader;

    move-object v9, v0

    invoke-virtual {v9, v11}, Lgnu/text/LineInputStreamReader;->setCharset(Ljava/lang/String;)V

    .line 653
    :cond_40
    add-int/lit8 v9, v14, 0x1

    .line 655
    .end local v11           #encoding:Ljava/lang/String;
    .restart local v9       #dstart:I
    :goto_17
    if-ge v9, v13, :cond_42

    aget-char v11, v6, v9

    invoke-static {v11}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v11

    if-eqz v11, :cond_42

    .line 656
    add-int/lit8 v9, v9, 0x1

    goto :goto_17

    .line 638
    :cond_41
    add-int/lit8 v11, v14, 0x1

    .end local v14           #i:I
    .local v11, i:I
    move v14, v11

    .end local v11           #i:I
    .restart local v14       #i:I
    goto :goto_16

    :cond_42
    move v11, v14

    .end local v14           #i:I
    .restart local v11       #i:I
    move/from16 v14, v18

    .line 658
    .end local v18           #quote:C
    .local v14, quote:C
    :cond_43
    add-int/lit8 v18, v9, 0x9

    move v0, v13

    move/from16 v1, v18

    if-le v0, v1, :cond_4d

    aget-char v18, v6, v9

    const/16 v20, 0x73

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_4d

    add-int/lit8 v18, v9, 0x1

    aget-char v18, v6, v18

    const/16 v20, 0x74

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_4d

    add-int/lit8 v18, v9, 0x2

    aget-char v18, v6, v18

    const/16 v20, 0x61

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_4d

    add-int/lit8 v18, v9, 0x3

    aget-char v18, v6, v18

    const/16 v20, 0x6e

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_4d

    add-int/lit8 v18, v9, 0x4

    aget-char v18, v6, v18

    const/16 v20, 0x64

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_4d

    add-int/lit8 v18, v9, 0x5

    aget-char v18, v6, v18

    const/16 v20, 0x61

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_4d

    add-int/lit8 v18, v9, 0x6

    aget-char v18, v6, v18

    const/16 v20, 0x6c

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_4d

    add-int/lit8 v18, v9, 0x7

    aget-char v18, v6, v18

    const/16 v20, 0x6f

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_4d

    add-int/lit8 v18, v9, 0x8

    aget-char v18, v6, v18

    const/16 v20, 0x6e

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_4d

    add-int/lit8 v18, v9, 0x9

    aget-char v18, v6, v18

    const/16 v20, 0x65

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_4d

    .line 670
    add-int/lit8 v9, v9, 0xa

    .line 671
    aget-char v10, v6, v9

    .line 673
    .end local v11           #i:I
    :goto_18
    invoke-static {v10}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v11

    if-eqz v11, :cond_44

    add-int/lit8 v9, v9, 0x1

    if-ge v9, v13, :cond_44

    .line 674
    aget-char v10, v6, v9

    goto :goto_18

    .line 675
    :cond_44
    const/16 v11, 0x3d

    if-eq v10, v11, :cond_45

    .line 677
    const-string v11, "bad \'standalone\' declaration"

    .line 678
    .end local v16           #message:Ljava/lang/String;
    .local v11, message:Ljava/lang/String;
    const/16 v13, 0x24

    .local v13, state:I
    move-object/from16 v16, v11

    .end local v11           #message:Ljava/lang/String;
    .restart local v16       #message:Ljava/lang/String;
    move/from16 v18, v13

    .end local v13           #state:I
    .local v18, state:I
    move/from16 v13, v17

    .line 679
    .end local v17           #pos:I
    .local v13, pos:I
    goto/16 :goto_0

    .line 681
    .end local v18           #state:I
    .local v13, end:I
    .restart local v17       #pos:I
    :cond_45
    add-int/lit8 v9, v9, 0x1

    aget-char v10, v6, v9

    .line 683
    :goto_19
    invoke-static {v10}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v11

    if-eqz v11, :cond_46

    add-int/lit8 v9, v9, 0x1

    if-ge v9, v13, :cond_46

    .line 684
    aget-char v10, v6, v9

    goto :goto_19

    .line 685
    :cond_46
    const/16 v11, 0x27

    if-eq v10, v11, :cond_47

    const/16 v11, 0x22

    if-eq v10, v11, :cond_47

    .line 687
    const-string v11, "bad \'standalone\' declaration"

    .line 688
    .end local v16           #message:Ljava/lang/String;
    .restart local v11       #message:Ljava/lang/String;
    const/16 v13, 0x24

    .local v13, state:I
    move-object/from16 v16, v11

    .end local v11           #message:Ljava/lang/String;
    .restart local v16       #message:Ljava/lang/String;
    move/from16 v18, v13

    .end local v13           #state:I
    .restart local v18       #state:I
    move/from16 v13, v17

    .line 689
    .end local v17           #pos:I
    .local v13, pos:I
    goto/16 :goto_0

    .line 691
    .end local v18           #state:I
    .local v13, end:I
    .restart local v17       #pos:I
    :cond_47
    move v14, v10

    .line 692
    add-int/lit8 v9, v9, 0x1

    move v11, v9

    .line 695
    .local v11, i:I
    :goto_1a
    if-ne v11, v13, :cond_48

    .line 697
    const-string v11, "bad \'standalone\' declaration"

    .line 698
    .end local v16           #message:Ljava/lang/String;
    .local v11, message:Ljava/lang/String;
    const/16 v13, 0x24

    .local v13, state:I
    move-object/from16 v16, v11

    .end local v11           #message:Ljava/lang/String;
    .restart local v16       #message:Ljava/lang/String;
    move/from16 v18, v13

    .end local v13           #state:I
    .restart local v18       #state:I
    move/from16 v13, v17

    .line 699
    .end local v17           #pos:I
    .local v13, pos:I
    goto/16 :goto_0

    .line 701
    .end local v18           #state:I
    .local v11, i:I
    .local v13, end:I
    .restart local v17       #pos:I
    :cond_48
    aget-char v10, v6, v11

    .line 702
    if-ne v10, v14, :cond_4a

    .line 705
    add-int/lit8 v18, v9, 0x3

    move v0, v11

    move/from16 v1, v18

    if-ne v0, v1, :cond_4b

    aget-char v18, v6, v9

    const/16 v20, 0x79

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_4b

    add-int/lit8 v18, v9, 0x1

    aget-char v18, v6, v18

    const/16 v20, 0x65

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_4b

    add-int/lit8 v18, v9, 0x2

    aget-char v18, v6, v18

    const/16 v20, 0x73

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_4b

    .line 722
    :cond_49
    add-int/lit8 v9, v11, 0x1

    .line 724
    :goto_1b
    if-ge v9, v13, :cond_4d

    aget-char v18, v6, v9

    invoke-static/range {v18 .. v18}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v18

    if-eqz v18, :cond_4d

    .line 725
    add-int/lit8 v9, v9, 0x1

    goto :goto_1b

    .line 693
    :cond_4a
    add-int/lit8 v11, v11, 0x1

    goto :goto_1a

    .line 711
    :cond_4b
    add-int/lit8 v18, v9, 0x2

    move v0, v11

    move/from16 v1, v18

    if-ne v0, v1, :cond_4c

    aget-char v18, v6, v9

    const/16 v20, 0x6e

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_4c

    add-int/lit8 v18, v9, 0x1

    aget-char v18, v6, v18

    const/16 v20, 0x6f

    move/from16 v0, v18

    move/from16 v1, v20

    if-eq v0, v1, :cond_49

    .line 718
    :cond_4c
    const-string v11, "bad \'standalone\' declaration"

    .line 719
    .end local v16           #message:Ljava/lang/String;
    .local v11, message:Ljava/lang/String;
    const/16 v13, 0x24

    .local v13, state:I
    move-object/from16 v16, v11

    .end local v11           #message:Ljava/lang/String;
    .restart local v16       #message:Ljava/lang/String;
    move/from16 v18, v13

    .end local v13           #state:I
    .restart local v18       #state:I
    move/from16 v13, v17

    .line 720
    .end local v17           #pos:I
    .local v13, pos:I
    goto/16 :goto_0

    .line 727
    .end local v18           #state:I
    .local v11, i:I
    .local v13, end:I
    .restart local v17       #pos:I
    :cond_4d
    if-eq v13, v9, :cond_50

    .line 729
    const-string v11, "junk at end of xml declaration"

    .line 730
    .end local v16           #message:Ljava/lang/String;
    .local v11, message:Ljava/lang/String;
    move v13, v9

    .line 731
    .end local v17           #pos:I
    .local v13, pos:I
    const/16 v14, 0x24

    .local v14, state:I
    move-object/from16 v16, v11

    .end local v11           #message:Ljava/lang/String;
    .restart local v16       #message:Ljava/lang/String;
    move/from16 v18, v14

    .line 732
    .end local v14           #state:I
    .restart local v18       #state:I
    goto/16 :goto_0

    .line 737
    .end local v10           #ch:C
    .local v11, ch:C
    .local v13, end:I
    .restart local v17       #pos:I
    :cond_4e
    const-string v10, "<?xml must be at start of file"

    .line 738
    .end local v16           #message:Ljava/lang/String;
    .local v10, message:Ljava/lang/String;
    const/16 v13, 0x24

    .end local v18           #state:I
    .local v13, state:I
    move-object/from16 v16, v10

    .end local v10           #message:Ljava/lang/String;
    .restart local v16       #message:Ljava/lang/String;
    move/from16 v18, v13

    .end local v13           #state:I
    .restart local v18       #state:I
    move v10, v11

    .end local v11           #ch:C
    .local v10, ch:C
    move/from16 v13, v17

    .line 739
    .end local v17           #pos:I
    .local v13, pos:I
    goto/16 :goto_0

    .line 743
    .end local v10           #ch:C
    .restart local v11       #ch:C
    .local v13, end:I
    .restart local v17       #pos:I
    :cond_4f
    sub-int v10, v13, v9

    move-object/from16 v0, p1

    move-object v1, v6

    move v2, v7

    move v3, v8

    move v4, v9

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Lgnu/xml/XMLFilter;->processingInstructionFromParser([CIIII)V

    move v10, v11

    .line 745
    .end local v11           #ch:C
    .end local v18           #state:I
    .restart local v10       #ch:C
    :cond_50
    move v7, v15

    .line 746
    const/4 v9, -0x1

    .line 747
    const/4 v11, 0x1

    .local v11, state:I
    move-object/from16 v13, v16

    .end local v16           #message:Ljava/lang/String;
    .local v13, message:Ljava/lang/String;
    move/from16 v18, v19

    .end local v19           #terminator:C
    .local v18, terminator:C
    move/from16 v14, v17

    .end local v17           #pos:I
    .local v14, pos:I
    move/from16 v17, v11

    .end local v11           #state:I
    .local v17, state:I
    move v11, v12

    .line 748
    .end local v12           #continue_state:I
    .local v11, continue_state:I
    goto/16 :goto_1

    .line 750
    .end local v10           #ch:C
    .end local v13           #message:Ljava/lang/String;
    .end local v14           #pos:I
    .local v11, ch:C
    .restart local v12       #continue_state:I
    .restart local v16       #message:Ljava/lang/String;
    .local v17, pos:I
    .local v18, state:I
    .restart local v19       #terminator:C
    :cond_51
    move/from16 v0, v17

    move v1, v15

    if-ge v0, v1, :cond_6d

    .line 751
    add-int/lit8 v11, v17, 0x1

    .end local v17           #pos:I
    .local v11, pos:I
    aget-char v10, v6, v17

    .restart local v10       #ch:C
    move/from16 v17, v11

    .end local v11           #pos:I
    .restart local v17       #pos:I
    move v11, v10

    .end local v10           #ch:C
    .local v11, ch:C
    goto/16 :goto_f

    .line 811
    .end local v11           #ch:C
    .end local v17           #pos:I
    .restart local v10       #ch:C
    .local v13, pos:I
    :cond_52
    if-ge v13, v15, :cond_0

    .line 812
    add-int/lit8 v11, v13, 0x1

    .end local v13           #pos:I
    .local v11, pos:I
    aget-char v10, v6, v13

    move v13, v11

    .line 760
    .end local v11           #pos:I
    .restart local v13       #pos:I
    :pswitch_f
    const/16 v11, 0x3e

    if-ne v10, v11, :cond_55

    .line 762
    const/4 v8, 0x1

    sub-int v8, v13, v8

    sub-int/2addr v8, v7

    .line 763
    const/4 v11, 0x4

    if-lt v8, v11, :cond_54

    aget-char v11, v6, v7

    const/16 v14, 0x2d

    if-ne v11, v14, :cond_54

    add-int/lit8 v11, v7, 0x1

    aget-char v11, v6, v11

    const/16 v14, 0x2d

    if-ne v11, v14, :cond_54

    .line 767
    const/4 v11, 0x2

    sub-int v11, v13, v11

    aget-char v11, v6, v11

    const/16 v14, 0x2d

    if-ne v11, v14, :cond_52

    const/4 v11, 0x3

    sub-int v11, v13, v11

    aget-char v11, v6, v11

    const/16 v14, 0x2d

    if-ne v11, v14, :cond_52

    .line 770
    move v0, v13

    move-object/from16 v1, p0

    iput v0, v1, Lgnu/text/LineBufferedReader;->pos:I

    .line 771
    add-int/lit8 v7, v7, 0x2

    const/4 v11, 0x4

    sub-int v11, v8, v11

    move-object/from16 v0, p1

    move-object v1, v6

    move v2, v7

    move v3, v11

    invoke-virtual {v0, v1, v2, v3}, Lgnu/xml/XMLFilter;->commentFromParser([CII)V

    .line 816
    .end local v7           #start:I
    :cond_53
    :goto_1c
    move v7, v15

    .line 817
    .restart local v7       #start:I
    const/4 v11, 0x1

    .end local v18           #state:I
    .local v11, state:I
    move/from16 v18, v19

    .end local v19           #terminator:C
    .local v18, terminator:C
    move/from16 v17, v11

    .end local v11           #state:I
    .local v17, state:I
    move v14, v13

    .end local v13           #pos:I
    .restart local v14       #pos:I
    move v11, v12

    .end local v12           #continue_state:I
    .local v11, continue_state:I
    move-object/from16 v13, v16

    .line 818
    .end local v16           #message:Ljava/lang/String;
    .local v13, message:Ljava/lang/String;
    goto/16 :goto_1

    .line 775
    .end local v11           #continue_state:I
    .end local v14           #pos:I
    .end local v17           #state:I
    .restart local v12       #continue_state:I
    .local v13, pos:I
    .restart local v16       #message:Ljava/lang/String;
    .local v18, state:I
    .restart local v19       #terminator:C
    :cond_54
    const/4 v11, 0x6

    if-lt v8, v11, :cond_53

    aget-char v11, v6, v7

    const/16 v14, 0x5b

    if-ne v11, v14, :cond_53

    add-int/lit8 v11, v7, 0x1

    aget-char v11, v6, v11

    const/16 v14, 0x43

    if-ne v11, v14, :cond_53

    add-int/lit8 v11, v7, 0x2

    aget-char v11, v6, v11

    const/16 v14, 0x44

    if-ne v11, v14, :cond_53

    add-int/lit8 v11, v7, 0x3

    aget-char v11, v6, v11

    const/16 v14, 0x41

    if-ne v11, v14, :cond_53

    add-int/lit8 v11, v7, 0x4

    aget-char v11, v6, v11

    const/16 v14, 0x54

    if-ne v11, v14, :cond_53

    add-int/lit8 v11, v7, 0x5

    aget-char v11, v6, v11

    const/16 v14, 0x41

    if-ne v11, v14, :cond_53

    add-int/lit8 v11, v7, 0x6

    aget-char v11, v6, v11

    const/16 v14, 0x5b

    if-ne v11, v14, :cond_53

    .line 784
    const/4 v11, 0x2

    sub-int v11, v13, v11

    aget-char v11, v6, v11

    const/16 v14, 0x5d

    if-ne v11, v14, :cond_52

    const/4 v11, 0x3

    sub-int v11, v13, v11

    aget-char v11, v6, v11

    const/16 v14, 0x5d

    if-ne v11, v14, :cond_52

    .line 787
    move v0, v13

    move-object/from16 v1, p0

    iput v0, v1, Lgnu/text/LineBufferedReader;->pos:I

    .line 788
    add-int/lit8 v11, v7, 0x7

    const/16 v14, 0xa

    sub-int v14, v13, v14

    sub-int v7, v14, v7

    move-object/from16 v0, p1

    move-object v1, v6

    move v2, v11

    move v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lgnu/xml/XMLFilter;->writeCDATA([CII)V

    goto :goto_1c

    .line 798
    :cond_55
    add-int/lit8 v11, v7, 0x7

    if-ne v13, v11, :cond_52

    aget-char v11, v6, v7

    const/16 v14, 0x44

    if-ne v11, v14, :cond_52

    add-int/lit8 v11, v7, 0x1

    aget-char v11, v6, v11

    const/16 v14, 0x4f

    if-ne v11, v14, :cond_52

    add-int/lit8 v11, v7, 0x2

    aget-char v11, v6, v11

    const/16 v14, 0x43

    if-ne v11, v14, :cond_52

    add-int/lit8 v11, v7, 0x3

    aget-char v11, v6, v11

    const/16 v14, 0x54

    if-ne v11, v14, :cond_52

    add-int/lit8 v11, v7, 0x4

    aget-char v11, v6, v11

    const/16 v14, 0x59

    if-ne v11, v14, :cond_52

    add-int/lit8 v11, v7, 0x5

    aget-char v11, v6, v11

    const/16 v14, 0x50

    if-ne v11, v14, :cond_52

    const/16 v11, 0x45

    if-ne v10, v11, :cond_52

    .line 807
    move v7, v15

    .line 808
    const/16 v11, 0xf

    .end local v18           #state:I
    .local v11, state:I
    move/from16 v18, v19

    .end local v19           #terminator:C
    .local v18, terminator:C
    move/from16 v17, v11

    .end local v11           #state:I
    .restart local v17       #state:I
    move v14, v13

    .end local v13           #pos:I
    .restart local v14       #pos:I
    move v11, v12

    .end local v12           #continue_state:I
    .local v11, continue_state:I
    move-object/from16 v13, v16

    .line 809
    .end local v16           #message:Ljava/lang/String;
    .local v13, message:Ljava/lang/String;
    goto/16 :goto_1

    .line 821
    .end local v11           #continue_state:I
    .end local v14           #pos:I
    .end local v17           #state:I
    .restart local v12       #continue_state:I
    .local v13, pos:I
    .restart local v16       #message:Ljava/lang/String;
    .local v18, state:I
    .restart local v19       #terminator:C
    :pswitch_10
    const/16 v11, 0x11

    .line 822
    .end local v18           #state:I
    .local v11, state:I
    const/4 v7, 0x1

    sub-int v7, v13, v7

    move/from16 v18, v11

    .line 823
    .end local v11           #state:I
    .restart local v18       #state:I
    goto/16 :goto_0

    .line 826
    :pswitch_11
    if-gez v9, :cond_6c

    .line 829
    const/4 v9, 0x1

    sub-int v9, v13, v9

    .line 830
    sub-int/2addr v9, v7

    .line 831
    shl-int/lit8 v9, v9, 0x1

    .line 832
    const/4 v11, 0x0

    .end local v19           #terminator:C
    .local v11, terminator:C
    move/from16 v21, v10

    .end local v10           #ch:C
    .local v21, ch:C
    move v10, v11

    .end local v11           #terminator:C
    .local v10, terminator:C
    move/from16 v11, v21

    .line 836
    .end local v21           #ch:C
    .local v11, ch:C
    :goto_1d
    const/16 v14, 0x27

    if-eq v11, v14, :cond_56

    const/16 v14, 0x22

    if-ne v11, v14, :cond_58

    .line 838
    :cond_56
    if-nez v10, :cond_57

    .line 839
    move v10, v11

    move v14, v10

    .line 864
    .end local v10           #terminator:C
    .local v14, terminator:C
    :goto_1e
    if-ge v13, v15, :cond_6a

    .line 865
    add-int/lit8 v11, v13, 0x1

    .end local v13           #pos:I
    .local v11, pos:I
    aget-char v10, v6, v13

    .local v10, ch:C
    move v13, v11

    .end local v11           #pos:I
    .restart local v13       #pos:I
    move v11, v10

    .end local v10           #ch:C
    .local v11, ch:C
    move v10, v14

    .end local v14           #terminator:C
    .local v10, terminator:C
    goto :goto_1d

    .line 840
    :cond_57
    if-ne v10, v11, :cond_6b

    .line 841
    const/4 v10, 0x0

    move v14, v10

    .end local v10           #terminator:C
    .restart local v14       #terminator:C
    goto :goto_1e

    .line 843
    .end local v14           #terminator:C
    .restart local v10       #terminator:C
    :cond_58
    if-nez v10, :cond_6b

    .line 846
    const/16 v14, 0x5b

    if-ne v11, v14, :cond_59

    .line 847
    or-int/lit8 v9, v9, 0x1

    move v14, v10

    .end local v10           #terminator:C
    .restart local v14       #terminator:C
    goto :goto_1e

    .line 848
    .end local v14           #terminator:C
    .restart local v10       #terminator:C
    :cond_59
    const/16 v14, 0x5d

    if-ne v11, v14, :cond_5a

    .line 849
    and-int/lit8 v9, v9, -0x2

    move v14, v10

    .end local v10           #terminator:C
    .restart local v14       #terminator:C
    goto :goto_1e

    .line 850
    .end local v14           #terminator:C
    .restart local v10       #terminator:C
    :cond_5a
    const/16 v14, 0x3e

    if-ne v11, v14, :cond_6b

    and-int/lit8 v14, v9, 0x1

    if-nez v14, :cond_6b

    .line 852
    move v0, v13

    move-object/from16 v1, p0

    iput v0, v1, Lgnu/text/LineBufferedReader;->pos:I

    .line 853
    shr-int/lit8 v9, v9, 0x1

    .line 854
    add-int/2addr v9, v7

    .line 855
    const/4 v10, 0x1

    sub-int v10, v13, v10

    sub-int/2addr v10, v9

    move-object/from16 v0, p1

    move-object v1, v6

    move v2, v7

    move v3, v8

    move v4, v9

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Lgnu/xml/XMLFilter;->emitDoctypeDecl([CIIII)V

    .line 857
    .end local v10           #terminator:C
    const/16 v14, 0x3c

    .line 858
    .restart local v14       #terminator:C
    move v7, v15

    .line 859
    const/4 v9, -0x1

    .line 860
    const/4 v10, 0x1

    .end local v18           #state:I
    .local v10, state:I
    move/from16 v18, v14

    .end local v14           #terminator:C
    .local v18, terminator:C
    move/from16 v17, v10

    .end local v10           #state:I
    .restart local v17       #state:I
    move v10, v11

    .end local v11           #ch:C
    .local v10, ch:C
    move v14, v13

    .end local v13           #pos:I
    .local v14, pos:I
    move v11, v12

    .end local v12           #continue_state:I
    .local v11, continue_state:I
    move-object/from16 v13, v16

    .line 861
    .end local v16           #message:Ljava/lang/String;
    .local v13, message:Ljava/lang/String;
    goto/16 :goto_1

    .line 871
    .end local v11           #continue_state:I
    .end local v14           #pos:I
    .end local v17           #state:I
    .restart local v12       #continue_state:I
    .local v13, pos:I
    .restart local v16       #message:Ljava/lang/String;
    .local v18, state:I
    .restart local v19       #terminator:C
    :pswitch_12
    const/16 v14, 0x3c

    .line 872
    .end local v19           #terminator:C
    .local v14, terminator:C
    const/16 v11, 0xe

    .line 873
    .end local v12           #continue_state:I
    .restart local v11       #continue_state:I
    const/16 v12, 0x2f

    if-ne v10, v12, :cond_5b

    .line 875
    move v0, v13

    move-object/from16 v1, p0

    iput v0, v1, Lgnu/text/LineBufferedReader;->pos:I

    .line 876
    invoke-virtual/range {p1 .. p1}, Lgnu/xml/XMLFilter;->emitEndAttributes()V

    .line 877
    const/4 v12, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object v1, v12

    move/from16 v2, v17

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lgnu/xml/XMLFilter;->emitEndElement([CII)V

    .line 878
    .end local v18           #state:I
    const/16 v12, 0x1b

    .local v12, state:I
    move/from16 v18, v14

    .end local v14           #terminator:C
    .local v18, terminator:C
    move/from16 v17, v12

    .end local v12           #state:I
    .restart local v17       #state:I
    move v14, v13

    .end local v13           #pos:I
    .local v14, pos:I
    move-object/from16 v13, v16

    .line 879
    .end local v16           #message:Ljava/lang/String;
    .local v13, message:Ljava/lang/String;
    goto/16 :goto_1

    .line 881
    .end local v17           #state:I
    .local v13, pos:I
    .local v14, terminator:C
    .restart local v16       #message:Ljava/lang/String;
    .local v18, state:I
    :cond_5b
    const/16 v12, 0x3e

    if-ne v10, v12, :cond_5c

    .line 883
    move v0, v13

    move-object/from16 v1, p0

    iput v0, v1, Lgnu/text/LineBufferedReader;->pos:I

    .line 884
    invoke-virtual/range {p1 .. p1}, Lgnu/xml/XMLFilter;->emitEndAttributes()V

    .line 885
    const/4 v12, 0x1

    .end local v18           #state:I
    .restart local v12       #state:I
    move/from16 v18, v14

    .end local v14           #terminator:C
    .local v18, terminator:C
    move/from16 v17, v12

    .end local v12           #state:I
    .restart local v17       #state:I
    move v14, v13

    .end local v13           #pos:I
    .local v14, pos:I
    move-object/from16 v13, v16

    .line 886
    .end local v16           #message:Ljava/lang/String;
    .local v13, message:Ljava/lang/String;
    goto/16 :goto_1

    .line 888
    .end local v17           #state:I
    .local v13, pos:I
    .local v14, terminator:C
    .restart local v16       #message:Ljava/lang/String;
    .local v18, state:I
    :cond_5c
    const/4 v7, 0x1

    sub-int v7, v13, v7

    .line 889
    const/16 v12, 0x9

    .end local v18           #state:I
    .restart local v12       #state:I
    move/from16 v19, v14

    .end local v14           #terminator:C
    .restart local v19       #terminator:C
    move/from16 v18, v12

    .end local v12           #state:I
    .restart local v18       #state:I
    move v12, v11

    .line 890
    .end local v11           #continue_state:I
    .local v12, continue_state:I
    goto/16 :goto_0

    .line 892
    :pswitch_13
    const/16 v11, 0x20

    if-eq v10, v11, :cond_0

    const/16 v11, 0x9

    if-eq v10, v11, :cond_0

    const/16 v11, 0xd

    if-eq v10, v11, :cond_0

    const/16 v11, 0xa

    if-eq v10, v11, :cond_0

    const/16 v11, 0x85

    if-eq v10, v11, :cond_0

    const/16 v11, 0x2028

    if-ne v10, v11, :cond_5d

    move v11, v12

    .end local v12           #continue_state:I
    .restart local v11       #continue_state:I
    move/from16 v17, v18

    .end local v18           #state:I
    .restart local v17       #state:I
    move v14, v13

    .end local v13           #pos:I
    .local v14, pos:I
    move-object/from16 v13, v16

    .end local v16           #message:Ljava/lang/String;
    .local v13, message:Ljava/lang/String;
    move/from16 v18, v19

    .line 894
    .end local v19           #terminator:C
    .local v18, terminator:C
    goto/16 :goto_1

    .line 895
    .end local v11           #continue_state:I
    .end local v14           #pos:I
    .end local v17           #state:I
    .restart local v12       #continue_state:I
    .local v13, pos:I
    .restart local v16       #message:Ljava/lang/String;
    .local v18, state:I
    .restart local v19       #terminator:C
    :cond_5d
    sub-int v11, v13, v8

    move v0, v11

    move-object/from16 v1, p0

    iput v0, v1, Lgnu/text/LineBufferedReader;->pos:I

    .line 896
    move-object/from16 v0, p1

    move-object v1, v6

    move v2, v7

    move v3, v8

    invoke-virtual {v0, v1, v2, v3}, Lgnu/xml/XMLFilter;->emitStartAttribute([CII)V

    .line 897
    move v7, v15

    .line 898
    const/16 v11, 0x3d

    if-ne v10, v11, :cond_5e

    .line 900
    const/16 v11, 0xb

    .end local v18           #state:I
    .local v11, state:I
    move/from16 v18, v19

    .end local v19           #terminator:C
    .local v18, terminator:C
    move/from16 v17, v11

    .end local v11           #state:I
    .restart local v17       #state:I
    move v14, v13

    .end local v13           #pos:I
    .restart local v14       #pos:I
    move v11, v12

    .end local v12           #continue_state:I
    .local v11, continue_state:I
    move-object/from16 v13, v16

    .line 901
    .end local v16           #message:Ljava/lang/String;
    .local v13, message:Ljava/lang/String;
    goto/16 :goto_1

    .line 903
    .end local v11           #continue_state:I
    .end local v14           #pos:I
    .end local v17           #state:I
    .restart local v12       #continue_state:I
    .local v13, pos:I
    .restart local v16       #message:Ljava/lang/String;
    .local v18, state:I
    .restart local v19       #terminator:C
    :cond_5e
    invoke-virtual/range {p1 .. p1}, Lgnu/xml/XMLFilter;->emitEndAttributes()V

    .line 904
    const-string v11, "missing or misplaced \'=\' after attribute name"

    .line 905
    .end local v16           #message:Ljava/lang/String;
    .local v11, message:Ljava/lang/String;
    const/16 v14, 0x24

    .end local v18           #state:I
    .local v14, state:I
    move-object/from16 v16, v11

    .end local v11           #message:Ljava/lang/String;
    .restart local v16       #message:Ljava/lang/String;
    move/from16 v18, v14

    .line 906
    .end local v14           #state:I
    .restart local v18       #state:I
    goto/16 :goto_0

    .line 908
    :pswitch_14
    const/16 v11, 0x27

    if-eq v10, v11, :cond_5f

    const/16 v11, 0x22

    if-ne v10, v11, :cond_60

    .line 910
    :cond_5f
    move v14, v10

    .line 911
    .end local v19           #terminator:C
    .local v14, terminator:C
    const/16 v11, 0xc

    .line 912
    .end local v12           #continue_state:I
    .local v11, continue_state:I
    const/4 v12, 0x1

    .end local v18           #state:I
    .local v12, state:I
    move/from16 v18, v14

    .end local v14           #terminator:C
    .local v18, terminator:C
    move/from16 v17, v12

    .end local v12           #state:I
    .restart local v17       #state:I
    move v14, v13

    .end local v13           #pos:I
    .local v14, pos:I
    move-object/from16 v13, v16

    .line 913
    .end local v16           #message:Ljava/lang/String;
    .local v13, message:Ljava/lang/String;
    goto/16 :goto_1

    .line 915
    .end local v11           #continue_state:I
    .end local v14           #pos:I
    .end local v17           #state:I
    .local v12, continue_state:I
    .local v13, pos:I
    .restart local v16       #message:Ljava/lang/String;
    .local v18, state:I
    .restart local v19       #terminator:C
    :cond_60
    const/16 v11, 0x20

    if-eq v10, v11, :cond_0

    const/16 v11, 0x9

    if-eq v10, v11, :cond_0

    const/16 v11, 0xd

    if-eq v10, v11, :cond_0

    const/16 v11, 0xa

    if-eq v10, v11, :cond_0

    const/16 v11, 0x85

    if-eq v10, v11, :cond_0

    const/16 v11, 0x2028

    if-ne v10, v11, :cond_61

    move v11, v12

    .end local v12           #continue_state:I
    .restart local v11       #continue_state:I
    move/from16 v17, v18

    .end local v18           #state:I
    .restart local v17       #state:I
    move v14, v13

    .end local v13           #pos:I
    .restart local v14       #pos:I
    move-object/from16 v13, v16

    .end local v16           #message:Ljava/lang/String;
    .local v13, message:Ljava/lang/String;
    move/from16 v18, v19

    .line 917
    .end local v19           #terminator:C
    .local v18, terminator:C
    goto/16 :goto_1

    .line 918
    .end local v11           #continue_state:I
    .end local v14           #pos:I
    .end local v17           #state:I
    .restart local v12       #continue_state:I
    .local v13, pos:I
    .restart local v16       #message:Ljava/lang/String;
    .local v18, state:I
    .restart local v19       #terminator:C
    :cond_61
    const-string v11, "missing or unquoted attribute value"

    .line 919
    .end local v16           #message:Ljava/lang/String;
    .local v11, message:Ljava/lang/String;
    const/16 v14, 0x24

    .end local v18           #state:I
    .local v14, state:I
    move-object/from16 v16, v11

    .end local v11           #message:Ljava/lang/String;
    .restart local v16       #message:Ljava/lang/String;
    move/from16 v18, v14

    .line 920
    .end local v14           #state:I
    .restart local v18       #state:I
    goto/16 :goto_0

    .line 924
    :pswitch_15
    const/4 v7, 0x1

    sub-int v7, v13, v7

    .line 925
    const/4 v11, 0x5

    .end local v18           #state:I
    .local v11, state:I
    move/from16 v18, v11

    .line 926
    .end local v11           #state:I
    .restart local v18       #state:I
    goto/16 :goto_0

    .line 929
    :pswitch_16
    move v0, v13

    move-object/from16 v1, p0

    iput v0, v1, Lgnu/text/LineBufferedReader;->pos:I

    .line 930
    move-object/from16 v0, p1

    move-object v1, v6

    move v2, v7

    move v3, v8

    invoke-virtual {v0, v1, v2, v3}, Lgnu/xml/XMLFilter;->emitEndElement([CII)V

    .line 931
    move v7, v15

    .line 933
    const/16 v11, 0x1d

    .end local v18           #state:I
    .restart local v11       #state:I
    move/from16 v18, v11

    .line 934
    .end local v11           #state:I
    .restart local v18       #state:I
    goto/16 :goto_0

    .line 937
    :pswitch_17
    const/16 v11, 0x3e

    if-eq v10, v11, :cond_62

    .line 939
    const-string v11, "missing \'>\'"

    .line 940
    .end local v16           #message:Ljava/lang/String;
    .local v11, message:Ljava/lang/String;
    const/16 v14, 0x24

    .end local v18           #state:I
    .restart local v14       #state:I
    move-object/from16 v16, v11

    .end local v11           #message:Ljava/lang/String;
    .restart local v16       #message:Ljava/lang/String;
    move/from16 v18, v14

    .line 941
    .end local v14           #state:I
    .restart local v18       #state:I
    goto/16 :goto_0

    .line 943
    :cond_62
    const/4 v11, 0x1

    .end local v18           #state:I
    .local v11, state:I
    move/from16 v18, v19

    .end local v19           #terminator:C
    .local v18, terminator:C
    move/from16 v17, v11

    .end local v11           #state:I
    .restart local v17       #state:I
    move v14, v13

    .end local v13           #pos:I
    .local v14, pos:I
    move v11, v12

    .end local v12           #continue_state:I
    .local v11, continue_state:I
    move-object/from16 v13, v16

    .line 944
    .end local v16           #message:Ljava/lang/String;
    .local v13, message:Ljava/lang/String;
    goto/16 :goto_1

    .line 952
    :cond_63
    sub-int v16, v14, v7

    .line 955
    .local v16, saved:I
    if-lez v16, :cond_64

    .line 957
    :try_start_0
    move v0, v7

    move-object/from16 v1, p0

    iput v0, v1, Lgnu/text/LineBufferedReader;->pos:I

    .line 958
    add-int/lit8 v12, v16, 0x1

    move-object/from16 v0, p0

    move v1, v12

    invoke-virtual {v0, v1}, Lgnu/text/LineBufferedReader;->mark(I)V

    .line 960
    :cond_64
    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lgnu/text/LineBufferedReader;->pos:I

    .line 961
    invoke-virtual/range {p0 .. p0}, Lgnu/text/LineBufferedReader;->read()I

    move-result v12

    .line 962
    .local v12, x:I
    if-gez v12, :cond_67

    .line 964
    const/4 v12, 0x1

    move/from16 v0, v17

    move v1, v12

    if-eq v0, v1, :cond_65

    .end local v12           #x:I
    const/16 v12, 0x1c

    move/from16 v0, v17

    move v1, v12

    if-ne v0, v1, :cond_66

    :cond_65
    move-object v6, v13

    .end local v13           #message:Ljava/lang/String;
    .local v6, message:Ljava/lang/String;
    move/from16 p0, v10

    .end local v10           #ch:C
    .local p0, ch:C
    move/from16 p1, v11

    .end local v11           #continue_state:I
    .local p1, continue_state:I
    move/from16 v12, v18

    .end local v18           #terminator:C
    .local v12, terminator:C
    move/from16 v11, v17

    .end local v17           #state:I
    .local v11, state:I
    move v10, v14

    .line 965
    .end local v14           #pos:I
    .local v10, pos:I
    goto/16 :goto_3

    .line 966
    .end local v12           #terminator:C
    .local v6, buffer:[C
    .local v10, ch:C
    .local v11, continue_state:I
    .restart local v13       #message:Ljava/lang/String;
    .restart local v14       #pos:I
    .restart local v17       #state:I
    .restart local v18       #terminator:C
    .local p0, in:Lgnu/text/LineBufferedReader;
    .local p1, out:Lgnu/xml/XMLFilter;
    :cond_66
    const/16 v12, 0x25

    .end local v17           #state:I
    .local v12, state:I
    move-object/from16 v16, v13

    .end local v13           #message:Ljava/lang/String;
    .local v16, message:Ljava/lang/String;
    move/from16 v19, v18

    .end local v18           #terminator:C
    .restart local v19       #terminator:C
    move/from16 v18, v12

    .end local v12           #state:I
    .local v18, state:I
    move v13, v14

    .end local v14           #pos:I
    .local v13, pos:I
    move v12, v11

    .line 967
    .end local v11           #continue_state:I
    .local v12, continue_state:I
    goto/16 :goto_0

    .line 969
    .end local v19           #terminator:C
    .restart local v11       #continue_state:I
    .local v12, x:I
    .local v13, message:Ljava/lang/String;
    .restart local v14       #pos:I
    .local v16, saved:I
    .restart local v17       #state:I
    .local v18, terminator:C
    :cond_67
    if-lez v16, :cond_68

    .line 971
    invoke-virtual/range {p0 .. p0}, Lgnu/text/LineBufferedReader;->reset()V

    .line 972
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lgnu/text/LineBufferedReader;->skip(I)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 981
    :goto_1f
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/text/LineBufferedReader;->pos:I

    move v10, v0

    .line 982
    .end local v14           #pos:I
    .local v10, pos:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/text/LineBufferedReader;->buffer:[C

    move-object v6, v0

    .line 984
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/text/LineBufferedReader;->limit:I

    move v12, v0

    .line 985
    .end local v15           #limit:I
    .local v12, limit:I
    if-lez v16, :cond_69

    sub-int v7, v10, v16

    .line 986
    :goto_20
    add-int/lit8 v14, v10, 0x1

    .end local v10           #pos:I
    .restart local v14       #pos:I
    aget-char v10, v6, v10

    .local v10, ch:C
    move-object/from16 v16, v13

    .end local v13           #message:Ljava/lang/String;
    .local v16, message:Ljava/lang/String;
    move/from16 v19, v18

    .end local v18           #terminator:C
    .restart local v19       #terminator:C
    move v15, v12

    .end local v12           #limit:I
    .restart local v15       #limit:I
    move/from16 v18, v17

    .end local v17           #state:I
    .local v18, state:I
    move v12, v11

    .end local v11           #continue_state:I
    .local v12, continue_state:I
    move v13, v14

    .line 987
    .end local v14           #pos:I
    .local v13, pos:I
    goto/16 :goto_0

    .line 975
    .end local v19           #terminator:C
    .restart local v11       #continue_state:I
    .local v12, x:I
    .local v13, message:Ljava/lang/String;
    .restart local v14       #pos:I
    .local v16, saved:I
    .restart local v17       #state:I
    .local v18, terminator:C
    :cond_68
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lgnu/text/LineBufferedReader;->unread_quick()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1f

    .line 977
    .end local v12           #x:I
    :catch_0
    move-exception p0

    .line 979
    .local p0, ex:Ljava/io/IOException;
    new-instance p1, Ljava/lang/RuntimeException;

    .end local p1           #out:Lgnu/xml/XMLFilter;
    invoke-virtual/range {p0 .. p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    .end local p0           #ex:Ljava/io/IOException;
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .end local v14           #pos:I
    .end local v15           #limit:I
    .local v10, pos:I
    .local v12, limit:I
    .local p0, in:Lgnu/text/LineBufferedReader;
    .restart local p1       #out:Lgnu/xml/XMLFilter;
    :cond_69
    move v7, v12

    .line 985
    goto :goto_20

    .end local v10           #pos:I
    .end local v17           #state:I
    .local v11, ch:C
    .local v12, continue_state:I
    .local v13, pos:I
    .local v14, terminator:C
    .restart local v15       #limit:I
    .local v16, message:Ljava/lang/String;
    .local v18, state:I
    :cond_6a
    move v10, v11

    .end local v11           #ch:C
    .local v10, ch:C
    move/from16 v17, v18

    .end local v18           #state:I
    .restart local v17       #state:I
    move v11, v12

    .end local v12           #continue_state:I
    .local v11, continue_state:I
    move/from16 v18, v14

    .end local v14           #terminator:C
    .local v18, terminator:C
    move v14, v13

    .end local v13           #pos:I
    .local v14, pos:I
    move-object/from16 v13, v16

    .end local v16           #message:Ljava/lang/String;
    .local v13, message:Ljava/lang/String;
    goto/16 :goto_1

    .end local v14           #pos:I
    .end local v17           #state:I
    .local v10, terminator:C
    .local v11, ch:C
    .restart local v12       #continue_state:I
    .local v13, pos:I
    .restart local v16       #message:Ljava/lang/String;
    .local v18, state:I
    :cond_6b
    move v14, v10

    .end local v10           #terminator:C
    .local v14, terminator:C
    goto/16 :goto_1e

    .end local v11           #ch:C
    .end local v14           #terminator:C
    .local v10, ch:C
    .restart local v19       #terminator:C
    :cond_6c
    move v11, v10

    .end local v10           #ch:C
    .restart local v11       #ch:C
    move/from16 v10, v19

    .end local v19           #terminator:C
    .local v10, terminator:C
    goto/16 :goto_1d

    .end local v10           #terminator:C
    .end local v13           #pos:I
    .local v17, pos:I
    .restart local v19       #terminator:C
    :cond_6d
    move-object/from16 v13, v16

    .end local v16           #message:Ljava/lang/String;
    .local v13, message:Ljava/lang/String;
    move v10, v11

    .end local v11           #ch:C
    .local v10, ch:C
    move/from16 v14, v17

    .end local v17           #pos:I
    .local v14, pos:I
    move/from16 v17, v18

    .end local v18           #state:I
    .local v17, state:I
    move v11, v12

    .end local v12           #continue_state:I
    .local v11, continue_state:I
    move/from16 v18, v19

    .end local v19           #terminator:C
    .local v18, terminator:C
    goto/16 :goto_1

    .end local v11           #continue_state:I
    .end local v14           #pos:I
    .end local v17           #state:I
    .restart local v12       #continue_state:I
    .local v13, pos:I
    .restart local v16       #message:Ljava/lang/String;
    .local v18, state:I
    .restart local v19       #terminator:C
    :cond_6e
    move v11, v10

    .end local v10           #ch:C
    .local v11, ch:C
    move/from16 v17, v13

    .end local v13           #pos:I
    .local v17, pos:I
    goto/16 :goto_f

    .end local v17           #pos:I
    .restart local v14       #pos:I
    :cond_6f
    move-object/from16 v13, v16

    .end local v16           #message:Ljava/lang/String;
    .local v13, message:Ljava/lang/String;
    move v10, v11

    .end local v11           #ch:C
    .restart local v10       #ch:C
    move/from16 v17, v18

    .end local v18           #state:I
    .local v17, state:I
    move/from16 v18, v19

    .end local v19           #terminator:C
    .local v18, terminator:C
    move v11, v12

    .end local v12           #continue_state:I
    .local v11, continue_state:I
    goto/16 :goto_1

    .end local v14           #pos:I
    .end local v17           #state:I
    .end local v18           #terminator:C
    .local v11, state:I
    .restart local v12       #continue_state:I
    .local v13, pos:I
    .restart local v16       #message:Ljava/lang/String;
    .restart local v19       #terminator:C
    :cond_70
    move/from16 v18, v11

    .end local v11           #state:I
    .local v18, state:I
    goto/16 :goto_0

    :pswitch_18
    move-object/from16 v11, v16

    .end local v16           #message:Ljava/lang/String;
    .local v11, message:Ljava/lang/String;
    goto/16 :goto_2

    .end local v11           #message:Ljava/lang/String;
    .restart local v16       #message:Ljava/lang/String;
    :pswitch_19
    move v11, v10

    .end local v10           #ch:C
    .local v11, ch:C
    move v14, v13

    .end local v13           #pos:I
    .restart local v14       #pos:I
    goto/16 :goto_d

    .line 206
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_6
        :pswitch_d
        :pswitch_9
        :pswitch_16
        :pswitch_9
        :pswitch_b
        :pswitch_9
        :pswitch_13
        :pswitch_9
        :pswitch_12
        :pswitch_14
        :pswitch_8
        :pswitch_10
        :pswitch_c
        :pswitch_8
        :pswitch_11
        :pswitch_9
        :pswitch_0
        :pswitch_15
        :pswitch_f
        :pswitch_e
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_19
        :pswitch_17
        :pswitch_7
        :pswitch_8
        :pswitch_e
        :pswitch_2
        :pswitch_8
        :pswitch_9
        :pswitch_3
        :pswitch_4
        :pswitch_18
        :pswitch_5
    .end packed-switch
.end method

.method public static parse(Ljava/io/InputStream;Ljava/lang/Object;Lgnu/text/SourceMessages;Lgnu/lists/Consumer;)V
    .locals 1
    .parameter "strm"
    .parameter "uri"
    .parameter "messages"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 133
    invoke-static {p0}, Lgnu/xml/XMLParser;->XMLStreamReader(Ljava/io/InputStream;)Lgnu/text/LineInputStreamReader;

    move-result-object v0

    .line 134
    .local v0, in:Lgnu/text/LineInputStreamReader;
    if-eqz p1, :cond_0

    .line 135
    invoke-virtual {v0, p1}, Lgnu/text/LineInputStreamReader;->setName(Ljava/lang/Object;)V

    .line 136
    :cond_0
    invoke-static {v0, p2, p3}, Lgnu/xml/XMLParser;->parse(Lgnu/text/LineBufferedReader;Lgnu/text/SourceMessages;Lgnu/lists/Consumer;)V

    .line 137
    invoke-virtual {v0}, Lgnu/text/LineInputStreamReader;->close()V

    .line 138
    return-void
.end method

.method public static parse(Ljava/lang/Object;Lgnu/text/SourceMessages;Lgnu/lists/Consumer;)V
    .locals 1
    .parameter "uri"
    .parameter "messages"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58
    invoke-static {p0}, Lgnu/text/Path;->openInputStream(Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0, p0, p1, p2}, Lgnu/xml/XMLParser;->parse(Ljava/io/InputStream;Ljava/lang/Object;Lgnu/text/SourceMessages;Lgnu/lists/Consumer;)V

    .line 59
    return-void
.end method
