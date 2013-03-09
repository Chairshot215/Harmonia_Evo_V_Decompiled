.class public final Ljava/lang/StringBuilder;
.super Ljava/lang/AbstractStringBuilder;
.source "StringBuilder.java"

# interfaces
.implements Ljava/lang/Appendable;
.implements Ljava/lang/CharSequence;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x3cd5fb145a4c6acbL


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/AbstractStringBuilder;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/AbstractStringBuilder;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/AbstractStringBuilder;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/AbstractStringBuilder;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [C

    move-object v1, v2

    check-cast v1, [C

    invoke-virtual {p0, v1, v0}, Ljava/lang/StringBuilder;->set([CI)V

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->getValue()[C

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(C)Ljava/lang/StringBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append0(C)V

    return-object p0
.end method

.method public append(D)Ljava/lang/StringBuilder;
    .locals 1

    invoke-static {}, Ljava/lang/RealToString;->getInstance()Ljava/lang/RealToString;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Ljava/lang/RealToString;->appendDouble(Ljava/lang/AbstractStringBuilder;D)V

    return-object p0
.end method

.method public append(F)Ljava/lang/StringBuilder;
    .locals 1

    invoke-static {}, Ljava/lang/RealToString;->getInstance()Ljava/lang/RealToString;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/RealToString;->appendFloat(Ljava/lang/AbstractStringBuilder;F)V

    return-object p0
.end method

.method public append(I)Ljava/lang/StringBuilder;
    .locals 0

    invoke-static {p0, p1}, Ljava/lang/IntegralToString;->appendInt(Ljava/lang/AbstractStringBuilder;I)V

    return-object p0
.end method

.method public append(J)Ljava/lang/StringBuilder;
    .locals 0

    invoke-static {p0, p1, p2}, Ljava/lang/IntegralToString;->appendLong(Ljava/lang/AbstractStringBuilder;J)V

    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
    .locals 2

    if-nez p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->appendNull()V

    :goto_0
    return-object p0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Ljava/lang/StringBuilder;->append0(Ljava/lang/CharSequence;II)V

    goto :goto_0
.end method

.method public append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Ljava/lang/StringBuilder;->append0(Ljava/lang/CharSequence;II)V

    return-object p0
.end method

.method public append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    .locals 1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->appendNull()V

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append0(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append0(Ljava/lang/String;)V

    return-object p0
.end method

.method public append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuilder;
    .locals 3

    if-nez p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->appendNull()V

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->getValue()[C

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Ljava/lang/StringBuilder;->append0([CII)V

    goto :goto_0
.end method

.method public append(Z)Ljava/lang/StringBuilder;
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append0(Ljava/lang/String;)V

    return-object p0

    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method public append([C)Ljava/lang/StringBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append0([C)V

    return-object p0
.end method

.method public append([CII)Ljava/lang/StringBuilder;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Ljava/lang/StringBuilder;->append0([CII)V

    return-object p0
.end method

.method public appendCodePoint(I)Ljava/lang/StringBuilder;
    .locals 1

    invoke-static {p1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append0([C)V

    return-object p0
.end method

.method public bridge synthetic capacity()I
    .locals 1

    invoke-super {p0}, Ljava/lang/AbstractStringBuilder;->capacity()I

    move-result v0

    return v0
.end method

.method public bridge synthetic charAt(I)C
    .locals 1

    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->charAt(I)C

    move-result v0

    return v0
.end method

.method public bridge synthetic codePointAt(I)I
    .locals 1

    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->codePointAt(I)I

    move-result v0

    return v0
.end method

.method public bridge synthetic codePointBefore(I)I
    .locals 1

    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->codePointBefore(I)I

    move-result v0

    return v0
.end method

.method public bridge synthetic codePointCount(II)I
    .locals 1

    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->codePointCount(II)I

    move-result v0

    return v0
.end method

.method public delete(II)Ljava/lang/StringBuilder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->delete0(II)V

    return-object p0
.end method

.method public deleteCharAt(I)Ljava/lang/StringBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->deleteCharAt0(I)V

    return-object p0
.end method

.method public bridge synthetic ensureCapacity(I)V
    .locals 0

    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->ensureCapacity(I)V

    return-void
.end method

.method public bridge synthetic getChars(II[CI)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Ljava/lang/AbstractStringBuilder;->getChars(II[CI)V

    return-void
.end method

.method public bridge synthetic indexOf(Ljava/lang/String;)I
    .locals 1

    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic indexOf(Ljava/lang/String;I)I
    .locals 1

    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public insert(IC)Ljava/lang/StringBuilder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->insert0(IC)V

    return-object p0
.end method

.method public insert(ID)Ljava/lang/StringBuilder;
    .locals 1

    invoke-static {p2, p3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/lang/StringBuilder;->insert0(ILjava/lang/String;)V

    return-object p0
.end method

.method public insert(IF)Ljava/lang/StringBuilder;
    .locals 1

    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/lang/StringBuilder;->insert0(ILjava/lang/String;)V

    return-object p0
.end method

.method public insert(II)Ljava/lang/StringBuilder;
    .locals 1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/lang/StringBuilder;->insert0(ILjava/lang/String;)V

    return-object p0
.end method

.method public insert(IJ)Ljava/lang/StringBuilder;
    .locals 1

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/lang/StringBuilder;->insert0(ILjava/lang/String;)V

    return-object p0
.end method

.method public insert(ILjava/lang/CharSequence;)Ljava/lang/StringBuilder;
    .locals 1

    if-nez p2, :cond_0

    const-string v0, "null"

    :goto_0
    invoke-virtual {p0, p1, v0}, Ljava/lang/StringBuilder;->insert0(ILjava/lang/String;)V

    return-object p0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public insert(ILjava/lang/CharSequence;II)Ljava/lang/StringBuilder;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/lang/StringBuilder;->insert0(ILjava/lang/CharSequence;II)V

    return-object p0
.end method

.method public insert(ILjava/lang/Object;)Ljava/lang/StringBuilder;
    .locals 1

    if-nez p2, :cond_0

    const-string v0, "null"

    :goto_0
    invoke-virtual {p0, p1, v0}, Ljava/lang/StringBuilder;->insert0(ILjava/lang/String;)V

    return-object p0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public insert(ILjava/lang/String;)Ljava/lang/StringBuilder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->insert0(ILjava/lang/String;)V

    return-object p0
.end method

.method public insert(IZ)Ljava/lang/StringBuilder;
    .locals 1

    if-eqz p2, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-virtual {p0, p1, v0}, Ljava/lang/StringBuilder;->insert0(ILjava/lang/String;)V

    return-object p0

    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method public insert(I[C)Ljava/lang/StringBuilder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->insert0(I[C)V

    return-object p0
.end method

.method public insert(I[CII)Ljava/lang/StringBuilder;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/lang/StringBuilder;->insert0(I[CII)V

    return-object p0
.end method

.method public bridge synthetic lastIndexOf(Ljava/lang/String;)I
    .locals 1

    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic lastIndexOf(Ljava/lang/String;I)I
    .locals 1

    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->lastIndexOf(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public bridge synthetic length()I
    .locals 1

    invoke-super {p0}, Ljava/lang/AbstractStringBuilder;->length()I

    move-result v0

    return v0
.end method

.method public bridge synthetic offsetByCodePoints(II)I
    .locals 1

    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->offsetByCodePoints(II)I

    move-result v0

    return v0
.end method

.method public replace(IILjava/lang/String;)Ljava/lang/StringBuilder;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Ljava/lang/StringBuilder;->replace0(IILjava/lang/String;)V

    return-object p0
.end method

.method public reverse()Ljava/lang/StringBuilder;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->reverse0()V

    return-object p0
.end method

.method public bridge synthetic setCharAt(IC)V
    .locals 0

    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->setCharAt(IC)V

    return-void
.end method

.method public bridge synthetic setLength(I)V
    .locals 0

    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->setLength(I)V

    return-void
.end method

.method public bridge synthetic subSequence(II)Ljava/lang/CharSequence;
    .locals 1

    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic substring(I)Ljava/lang/String;
    .locals 1

    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic substring(II)Ljava/lang/String;
    .locals 1

    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Ljava/lang/AbstractStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic trimToSize()V
    .locals 0

    invoke-super {p0}, Ljava/lang/AbstractStringBuilder;->trimToSize()V

    return-void
.end method
