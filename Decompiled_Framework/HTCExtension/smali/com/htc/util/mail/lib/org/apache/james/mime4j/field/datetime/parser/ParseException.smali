.class public Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/ParseException;
.super Ljava/lang/Exception;
.source "ParseException.java"


# instance fields
.field public currentToken:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

.field protected eol:Ljava/lang/String;

.field public expectedTokenSequences:[[I

.field protected specialConstructor:Z

.field public tokenImage:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const-string v0, "line.separator"

    const-string v1, "\n"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/ParseException;->eol:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/ParseException;->specialConstructor:Z

    return-void
.end method

.method public constructor <init>(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;[[I[Ljava/lang/String;)V
    .locals 2

    const-string v0, ""

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const-string v0, "line.separator"

    const-string v1, "\n"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/ParseException;->eol:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/ParseException;->specialConstructor:Z

    iput-object p1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/ParseException;->currentToken:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    iput-object p2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/ParseException;->expectedTokenSequences:[[I

    iput-object p3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/ParseException;->tokenImage:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const-string v0, "line.separator"

    const-string v1, "\n"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/ParseException;->eol:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/ParseException;->specialConstructor:Z

    return-void
.end method


# virtual methods
.method protected add_escapes(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    sparse-switch v4, :sswitch_data_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0x20

    if-lt v0, v4, :cond_0

    const/16 v4, 0x7e

    if-le v0, v4, :cond_1

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0000"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v0, v5}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\\u"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    :sswitch_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :sswitch_1
    const-string v4, "\\b"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :sswitch_2
    const-string v4, "\\t"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :sswitch_3
    const-string v4, "\\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :sswitch_4
    const-string v4, "\\f"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :sswitch_5
    const-string v4, "\\r"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :sswitch_6
    const-string v4, "\\\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :sswitch_7
    const-string v4, "\\\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :sswitch_8
    const-string v4, "\\\\"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x9 -> :sswitch_2
        0xa -> :sswitch_3
        0xc -> :sswitch_4
        0xd -> :sswitch_5
        0x22 -> :sswitch_6
        0x27 -> :sswitch_7
        0x5c -> :sswitch_8
    .end sparse-switch
.end method

.method public getMessage()Ljava/lang/String;
    .locals 9

    iget-boolean v6, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/ParseException;->specialConstructor:Z

    if-nez v6, :cond_0

    invoke-super {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    :goto_0
    return-object v4

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v3, 0x0

    const/4 v1, 0x0

    :goto_1
    iget-object v6, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/ParseException;->expectedTokenSequences:[[I

    array-length v6, v6

    if-ge v1, v6, :cond_4

    iget-object v6, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/ParseException;->expectedTokenSequences:[[I

    aget-object v6, v6, v1

    array-length v6, v6

    if-ge v3, v6, :cond_1

    iget-object v6, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/ParseException;->expectedTokenSequences:[[I

    aget-object v6, v6, v1

    array-length v3, v6

    :cond_1
    const/4 v2, 0x0

    :goto_2
    iget-object v6, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/ParseException;->expectedTokenSequences:[[I

    aget-object v6, v6, v1

    array-length v6, v6

    if-ge v2, v6, :cond_2

    iget-object v6, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/ParseException;->tokenImage:[Ljava/lang/String;

    iget-object v7, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/ParseException;->expectedTokenSequences:[[I

    aget-object v7, v7, v1

    aget v7, v7, v2

    aget-object v6, v6, v7

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    iget-object v6, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/ParseException;->expectedTokenSequences:[[I

    aget-object v6, v6, v1

    iget-object v7, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/ParseException;->expectedTokenSequences:[[I

    aget-object v7, v7, v1

    array-length v7, v7

    add-int/lit8 v7, v7, -0x1

    aget v6, v6, v7

    if-eqz v6, :cond_3

    const-string v6, "..."

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    iget-object v6, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/ParseException;->eol:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "    "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    const-string v4, "Encountered \""

    iget-object v6, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/ParseException;->currentToken:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    iget-object v5, v6, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;->next:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v3, :cond_6

    if-eqz v1, :cond_5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_5
    iget v6, v5, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;->kind:I

    if-nez v6, :cond_7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/ParseException;->tokenImage:[Ljava/lang/String;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\" at line "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/ParseException;->currentToken:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    iget-object v7, v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;->next:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    iget v7, v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;->beginLine:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", column "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/ParseException;->currentToken:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    iget-object v7, v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;->next:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    iget v7, v7, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;->beginColumn:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/ParseException;->eol:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/ParseException;->expectedTokenSequences:[[I

    array-length v6, v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_8

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Was expecting:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/ParseException;->eol:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "    "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    :cond_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v5, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/ParseException;->add_escapes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v5, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;->next:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3

    :cond_8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Was expecting one of:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/ParseException;->eol:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "    "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_4
.end method
