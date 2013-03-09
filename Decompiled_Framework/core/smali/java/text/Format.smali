.class public abstract Ljava/text/Format;
.super Ljava/lang/Object;
.source "Format.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/text/Format$Field;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x42743ed16f0e7bdL


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static upTo(Ljava/lang/String;Ljava/text/ParsePosition;Ljava/lang/StringBuffer;C)Z
    .locals 9

    const/16 v8, 0x27

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {p1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v3, 0x0

    const/4 v5, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_4

    add-int/lit8 v1, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v8, :cond_2

    if-eqz v3, :cond_0

    invoke-virtual {p2, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    if-nez v5, :cond_1

    move v5, v6

    :goto_1
    const/4 v3, 0x1

    :goto_2
    move v2, v1

    goto :goto_0

    :cond_1
    move v5, v7

    goto :goto_1

    :cond_2
    if-ne v0, p3, :cond_3

    if-nez v5, :cond_3

    invoke-virtual {p1, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    :goto_3
    return v6

    :cond_3
    const/4 v3, 0x0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_4
    invoke-virtual {p1, v2}, Ljava/text/ParsePosition;->setIndex(I)V

    move v1, v2

    move v6, v7

    goto :goto_3
.end method

.method static upToWithQuotes(Ljava/lang/String;Ljava/text/ParsePosition;Ljava/lang/StringBuffer;CC)Z
    .locals 8

    const/4 v6, 0x1

    invoke-virtual {p1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v1, 0x1

    const/4 v5, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_5

    add-int/lit8 v2, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v7, 0x27

    if-ne v0, v7, :cond_0

    if-nez v5, :cond_2

    move v5, v6

    :cond_0
    :goto_1
    if-nez v5, :cond_4

    if-ne v0, p3, :cond_1

    add-int/lit8 v1, v1, -0x1

    :cond_1
    if-nez v1, :cond_3

    invoke-virtual {p1, v2}, Ljava/text/ParsePosition;->setIndex(I)V

    return v6

    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    :cond_3
    if-ne v0, p4, :cond_4

    add-int/lit8 v1, v1, 0x1

    :cond_4
    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v3, v2

    goto :goto_0

    :cond_5
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Unmatched braces in the pattern"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public final format(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/text/FieldPosition;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/text/FieldPosition;-><init>(I)V

    invoke-virtual {p0, p1, v0, v1}, Ljava/text/Format;->format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
.end method

.method public formatToCharacterIterator(Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;
    .locals 2

    new-instance v0, Ljava/text/AttributedString;

    invoke-virtual {p0, p1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/text/AttributedString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/text/AttributedString;->getIterator()Ljava/text/AttributedCharacterIterator;

    move-result-object v0

    return-object v0
.end method

.method public parseObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    new-instance v0, Ljava/text/ParsePosition;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/text/ParsePosition;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Ljava/text/Format;->parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/text/ParseException;

    const-string v3, "Parse failure"

    invoke-virtual {v0}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v4

    invoke-direct {v2, v3, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v2

    :cond_0
    return-object v1
.end method

.method public abstract parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
.end method
