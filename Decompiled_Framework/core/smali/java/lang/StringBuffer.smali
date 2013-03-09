.class public final Ljava/lang/StringBuffer;
.super Ljava/lang/AbstractStringBuilder;
.source "StringBuffer.java"

# interfaces
.implements Ljava/lang/Appendable;
.implements Ljava/io/Serializable;
.implements Ljava/lang/CharSequence;


# static fields
.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField; = null

.field private static final serialVersionUID:J = 0x2f0707d9eac8ead3L


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/io/ObjectStreamField;

    const/4 v1, 0x0

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "count"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "shared"

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "value"

    const-class v4, [C

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    sput-object v0, Ljava/lang/StringBuffer;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    return-void
.end method

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
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v1

    const-string v3, "count"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v0

    const-string v3, "value"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [C

    move-object v2, v3

    check-cast v2, [C

    invoke-virtual {p0, v2, v0}, Ljava/lang/StringBuffer;->set([CI)V

    return-void
.end method

.method private declared-synchronized writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v0

    const-string v1, "count"

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    const-string v1, "shared"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Z)V

    const-string v1, "value"

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->getValue()[C

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

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

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

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

    invoke-virtual {p0, p1, p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized append(C)Ljava/lang/StringBuffer;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append0(C)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public append(D)Ljava/lang/StringBuffer;
    .locals 1

    invoke-static {}, Ljava/lang/RealToString;->getInstance()Ljava/lang/RealToString;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Ljava/lang/RealToString;->appendDouble(Ljava/lang/AbstractStringBuilder;D)V

    return-object p0
.end method

.method public append(F)Ljava/lang/StringBuffer;
    .locals 1

    invoke-static {}, Ljava/lang/RealToString;->getInstance()Ljava/lang/RealToString;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/RealToString;->appendFloat(Ljava/lang/AbstractStringBuilder;F)V

    return-object p0
.end method

.method public append(I)Ljava/lang/StringBuffer;
    .locals 0

    invoke-static {p0, p1}, Ljava/lang/IntegralToString;->appendInt(Ljava/lang/AbstractStringBuilder;I)V

    return-object p0
.end method

.method public append(J)Ljava/lang/StringBuffer;
    .locals 0

    invoke-static {p0, p1, p2}, Ljava/lang/IntegralToString;->appendLong(Ljava/lang/AbstractStringBuilder;J)V

    return-object p0
.end method

.method public declared-synchronized append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;
    .locals 2

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->appendNull()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Ljava/lang/StringBuffer;->append0(Ljava/lang/CharSequence;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuffer;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Ljava/lang/StringBuffer;->append0(Ljava/lang/CharSequence;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized append(Ljava/lang/Object;)Ljava/lang/StringBuffer;
    .locals 1

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->appendNull()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object p0

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append0(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append0(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 3

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->appendNull()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    monitor-exit p0

    return-object p0

    :cond_0
    :try_start_1
    monitor-enter p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->getValue()[C

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Ljava/lang/StringBuffer;->append0([CII)V

    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public append(Z)Ljava/lang/StringBuffer;
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method public declared-synchronized append([C)Ljava/lang/StringBuffer;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append0([C)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized append([CII)Ljava/lang/StringBuffer;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Ljava/lang/StringBuffer;->append0([CII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public appendCodePoint(I)Ljava/lang/StringBuffer;
    .locals 1

    invoke-static {p1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic capacity()I
    .locals 1

    invoke-super {p0}, Ljava/lang/AbstractStringBuilder;->capacity()I

    move-result v0

    return v0
.end method

.method public declared-synchronized charAt(I)C
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->charAt(I)C
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized codePointAt(I)I
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->codePointAt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized codePointBefore(I)I
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->codePointBefore(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized codePointCount(II)I
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->codePointCount(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized delete(II)Ljava/lang/StringBuffer;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuffer;->delete0(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized deleteCharAt(I)Ljava/lang/StringBuffer;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->deleteCharAt0(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized ensureCapacity(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->ensureCapacity(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getChars(II[CI)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Ljava/lang/AbstractStringBuilder;->getChars(II[CI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic indexOf(Ljava/lang/String;)I
    .locals 1

    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public declared-synchronized indexOf(Ljava/lang/String;I)I
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->indexOf(Ljava/lang/String;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized insert(IC)Ljava/lang/StringBuffer;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuffer;->insert0(IC)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public insert(ID)Ljava/lang/StringBuffer;
    .locals 1

    invoke-static {p2, p3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public insert(IF)Ljava/lang/StringBuffer;
    .locals 1

    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public insert(II)Ljava/lang/StringBuffer;
    .locals 1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public insert(IJ)Ljava/lang/StringBuffer;
    .locals 1

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized insert(ILjava/lang/CharSequence;)Ljava/lang/StringBuffer;
    .locals 1

    monitor-enter p0

    if-nez p2, :cond_0

    :try_start_0
    const-string v0, "null"

    :goto_0
    invoke-virtual {p0, p1, v0}, Ljava/lang/StringBuffer;->insert0(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p0

    :cond_0
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized insert(ILjava/lang/CharSequence;II)Ljava/lang/StringBuffer;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/lang/StringBuffer;->insert0(ILjava/lang/CharSequence;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public insert(ILjava/lang/Object;)Ljava/lang/StringBuffer;
    .locals 1

    if-nez p2, :cond_0

    const-string v0, "null"

    :goto_0
    invoke-virtual {p0, p1, v0}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public declared-synchronized insert(ILjava/lang/String;)Ljava/lang/StringBuffer;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuffer;->insert0(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public insert(IZ)Ljava/lang/StringBuffer;
    .locals 1

    if-eqz p2, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-virtual {p0, p1, v0}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method public declared-synchronized insert(I[C)Ljava/lang/StringBuffer;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuffer;->insert0(I[C)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized insert(I[CII)Ljava/lang/StringBuffer;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/lang/StringBuffer;->insert0(I[CII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic lastIndexOf(Ljava/lang/String;)I
    .locals 1

    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public declared-synchronized lastIndexOf(Ljava/lang/String;I)I
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->lastIndexOf(Ljava/lang/String;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic length()I
    .locals 1

    invoke-super {p0}, Ljava/lang/AbstractStringBuilder;->length()I

    move-result v0

    return v0
.end method

.method public declared-synchronized offsetByCodePoints(II)I
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->offsetByCodePoints(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized replace(IILjava/lang/String;)Ljava/lang/StringBuffer;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Ljava/lang/StringBuffer;->replace0(IILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized reverse()Ljava/lang/StringBuffer;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->reverse0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setCharAt(IC)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->setCharAt(IC)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setLength(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->setLength(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized subSequence(II)Ljava/lang/CharSequence;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->substring(II)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized substring(I)Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->substring(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized substring(II)Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->substring(II)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Ljava/lang/AbstractStringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized trimToSize()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Ljava/lang/AbstractStringBuilder;->trimToSize()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
