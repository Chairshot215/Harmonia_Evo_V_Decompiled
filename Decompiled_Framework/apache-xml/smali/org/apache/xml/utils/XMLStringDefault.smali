.class public Lorg/apache/xml/utils/XMLStringDefault;
.super Ljava/lang/Object;
.source "XMLStringDefault.java"

# interfaces
.implements Lorg/apache/xml/utils/XMLString;


# instance fields
.field private m_str:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/xml/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public charAt(I)C
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/apache/xml/utils/XMLString;)I
    .locals 2

    iget-object v0, p0, Lorg/apache/xml/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public compareToIgnoreCase(Lorg/apache/xml/utils/XMLString;)I
    .locals 2

    iget-object v0, p0, Lorg/apache/xml/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public concat(Ljava/lang/String;)Lorg/apache/xml/utils/XMLString;
    .locals 2

    new-instance v0, Lorg/apache/xml/utils/XMLStringDefault;

    iget-object v1, p0, Lorg/apache/xml/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/xml/utils/XMLStringDefault;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public dispatchAsComment(Lorg/xml/sax/ext/LexicalHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public dispatchCharactersEvents(Lorg/xml/sax/ContentHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public endsWith(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public equals(Lorg/apache/xml/utils/XMLString;)Z
    .locals 2

    iget-object v0, p0, Lorg/apache/xml/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public equalsIgnoreCase(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public fixWhiteSpace(ZZZ)Lorg/apache/xml/utils/XMLString;
    .locals 2

    new-instance v0, Lorg/apache/xml/utils/XMLStringDefault;

    iget-object v1, p0, Lorg/apache/xml/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/xml/utils/XMLStringDefault;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getChars(II[CI)V
    .locals 4

    move v0, p4

    move v2, p1

    move v1, v0

    :goto_0
    if-ge v2, p2, :cond_0

    add-int/lit8 v0, v1, 0x1

    iget-object v3, p0, Lorg/apache/xml/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aput-char v3, p3, v1

    add-int/lit8 v2, v2, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public hasString()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public indexOf(I)I
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    return v0
.end method

.method public indexOf(II)I
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    return v0
.end method

.method public indexOf(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public indexOf(Ljava/lang/String;I)I
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public indexOf(Lorg/apache/xml/utils/XMLString;)I
    .locals 2

    iget-object v0, p0, Lorg/apache/xml/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public lastIndexOf(I)I
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    return v0
.end method

.method public lastIndexOf(II)I
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v0

    return v0
.end method

.method public lastIndexOf(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public lastIndexOf(Ljava/lang/String;I)I
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public length()I
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public startsWith(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public startsWith(Ljava/lang/String;I)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public startsWith(Lorg/apache/xml/utils/XMLString;)Z
    .locals 2

    iget-object v0, p0, Lorg/apache/xml/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public startsWith(Lorg/apache/xml/utils/XMLString;I)Z
    .locals 2

    iget-object v0, p0, Lorg/apache/xml/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public substring(I)Lorg/apache/xml/utils/XMLString;
    .locals 2

    new-instance v0, Lorg/apache/xml/utils/XMLStringDefault;

    iget-object v1, p0, Lorg/apache/xml/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/xml/utils/XMLStringDefault;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public substring(II)Lorg/apache/xml/utils/XMLString;
    .locals 2

    new-instance v0, Lorg/apache/xml/utils/XMLStringDefault;

    iget-object v1, p0, Lorg/apache/xml/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    invoke-virtual {v1, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/xml/utils/XMLStringDefault;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public toDouble()D
    .locals 3

    :try_start_0
    iget-object v1, p0, Lorg/apache/xml/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    :goto_0
    return-wide v1

    :catch_0
    move-exception v0

    const-wide/high16 v1, 0x7ff8

    goto :goto_0
.end method

.method public toLowerCase()Lorg/apache/xml/utils/XMLString;
    .locals 2

    new-instance v0, Lorg/apache/xml/utils/XMLStringDefault;

    iget-object v1, p0, Lorg/apache/xml/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/xml/utils/XMLStringDefault;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public toLowerCase(Ljava/util/Locale;)Lorg/apache/xml/utils/XMLString;
    .locals 2

    new-instance v0, Lorg/apache/xml/utils/XMLStringDefault;

    iget-object v1, p0, Lorg/apache/xml/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/xml/utils/XMLStringDefault;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    return-object v0
.end method

.method public toUpperCase()Lorg/apache/xml/utils/XMLString;
    .locals 2

    new-instance v0, Lorg/apache/xml/utils/XMLStringDefault;

    iget-object v1, p0, Lorg/apache/xml/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/xml/utils/XMLStringDefault;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public toUpperCase(Ljava/util/Locale;)Lorg/apache/xml/utils/XMLString;
    .locals 2

    new-instance v0, Lorg/apache/xml/utils/XMLStringDefault;

    iget-object v1, p0, Lorg/apache/xml/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/xml/utils/XMLStringDefault;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public trim()Lorg/apache/xml/utils/XMLString;
    .locals 2

    new-instance v0, Lorg/apache/xml/utils/XMLStringDefault;

    iget-object v1, p0, Lorg/apache/xml/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/xml/utils/XMLStringDefault;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
