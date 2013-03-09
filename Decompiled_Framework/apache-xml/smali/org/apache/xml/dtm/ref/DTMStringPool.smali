.class public Lorg/apache/xml/dtm/ref/DTMStringPool;
.super Ljava/lang/Object;
.source "DTMStringPool.java"


# static fields
.field static final HASHPRIME:I = 0x65

.field public static final NULL:I = -0x1


# instance fields
.field m_hashChain:Lorg/apache/xml/utils/IntVector;

.field m_hashStart:[I

.field m_intToString:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x200

    invoke-direct {p0, v0}, Lorg/apache/xml/dtm/ref/DTMStringPool;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x65

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/DTMStringPool;->m_hashStart:[I

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/DTMStringPool;->m_intToString:Ljava/util/Vector;

    new-instance v0, Lorg/apache/xml/utils/IntVector;

    invoke-direct {v0, p1}, Lorg/apache/xml/utils/IntVector;-><init>(I)V

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/DTMStringPool;->m_hashChain:Lorg/apache/xml/utils/IntVector;

    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMStringPool;->removeAllElements()V

    const-string v0, ""

    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 10

    const/4 v9, 0x1

    const/16 v6, 0x28

    new-array v5, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "Zero"

    aput-object v7, v5, v6

    const-string v6, "One"

    aput-object v6, v5, v9

    const/4 v6, 0x2

    const-string v7, "Two"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-string v7, "Three"

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-string v7, "Four"

    aput-object v7, v5, v6

    const/4 v6, 0x5

    const-string v7, "Five"

    aput-object v7, v5, v6

    const/4 v6, 0x6

    const-string v7, "Six"

    aput-object v7, v5, v6

    const/4 v6, 0x7

    const-string v7, "Seven"

    aput-object v7, v5, v6

    const/16 v6, 0x8

    const-string v7, "Eight"

    aput-object v7, v5, v6

    const/16 v6, 0x9

    const-string v7, "Nine"

    aput-object v7, v5, v6

    const/16 v6, 0xa

    const-string v7, "Ten"

    aput-object v7, v5, v6

    const/16 v6, 0xb

    const-string v7, "Eleven"

    aput-object v7, v5, v6

    const/16 v6, 0xc

    const-string v7, "Twelve"

    aput-object v7, v5, v6

    const/16 v6, 0xd

    const-string v7, "Thirteen"

    aput-object v7, v5, v6

    const/16 v6, 0xe

    const-string v7, "Fourteen"

    aput-object v7, v5, v6

    const/16 v6, 0xf

    const-string v7, "Fifteen"

    aput-object v7, v5, v6

    const/16 v6, 0x10

    const-string v7, "Sixteen"

    aput-object v7, v5, v6

    const/16 v6, 0x11

    const-string v7, "Seventeen"

    aput-object v7, v5, v6

    const/16 v6, 0x12

    const-string v7, "Eighteen"

    aput-object v7, v5, v6

    const/16 v6, 0x13

    const-string v7, "Nineteen"

    aput-object v7, v5, v6

    const/16 v6, 0x14

    const-string v7, "Twenty"

    aput-object v7, v5, v6

    const/16 v6, 0x15

    const-string v7, "Twenty-One"

    aput-object v7, v5, v6

    const/16 v6, 0x16

    const-string v7, "Twenty-Two"

    aput-object v7, v5, v6

    const/16 v6, 0x17

    const-string v7, "Twenty-Three"

    aput-object v7, v5, v6

    const/16 v6, 0x18

    const-string v7, "Twenty-Four"

    aput-object v7, v5, v6

    const/16 v6, 0x19

    const-string v7, "Twenty-Five"

    aput-object v7, v5, v6

    const/16 v6, 0x1a

    const-string v7, "Twenty-Six"

    aput-object v7, v5, v6

    const/16 v6, 0x1b

    const-string v7, "Twenty-Seven"

    aput-object v7, v5, v6

    const/16 v6, 0x1c

    const-string v7, "Twenty-Eight"

    aput-object v7, v5, v6

    const/16 v6, 0x1d

    const-string v7, "Twenty-Nine"

    aput-object v7, v5, v6

    const/16 v6, 0x1e

    const-string v7, "Thirty"

    aput-object v7, v5, v6

    const/16 v6, 0x1f

    const-string v7, "Thirty-One"

    aput-object v7, v5, v6

    const/16 v6, 0x20

    const-string v7, "Thirty-Two"

    aput-object v7, v5, v6

    const/16 v6, 0x21

    const-string v7, "Thirty-Three"

    aput-object v7, v5, v6

    const/16 v6, 0x22

    const-string v7, "Thirty-Four"

    aput-object v7, v5, v6

    const/16 v6, 0x23

    const-string v7, "Thirty-Five"

    aput-object v7, v5, v6

    const/16 v6, 0x24

    const-string v7, "Thirty-Six"

    aput-object v7, v5, v6

    const/16 v6, 0x25

    const-string v7, "Thirty-Seven"

    aput-object v7, v5, v6

    const/16 v6, 0x26

    const-string v7, "Thirty-Eight"

    aput-object v7, v5, v6

    const/16 v6, 0x27

    const-string v7, "Thirty-Nine"

    aput-object v7, v5, v6

    new-instance v3, Lorg/apache/xml/dtm/ref/DTMStringPool;

    invoke-direct {v3}, Lorg/apache/xml/dtm/ref/DTMStringPool;-><init>()V

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "If no complaints are printed below, we passed initial test."

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_0
    if-gt v2, v9, :cond_6

    const/4 v0, 0x0

    :goto_1
    array-length v6, v5

    if-ge v0, v6, :cond_1

    aget-object v6, v5, v0

    invoke-virtual {v3, v6}, Lorg/apache/xml/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v0, :cond_0

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\tMismatch populating pool: assigned "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " for create "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_2
    array-length v6, v5

    if-ge v0, v6, :cond_3

    aget-object v6, v5, v0

    invoke-virtual {v3, v6}, Lorg/apache/xml/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v0, :cond_2

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\tMismatch in stringToIndex: returned "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " for lookup "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_3
    array-length v6, v5

    if-ge v0, v6, :cond_5

    invoke-virtual {v3, v0}, Lorg/apache/xml/dtm/ref/DTMStringPool;->indexToString(I)Ljava/lang/String;

    move-result-object v4

    aget-object v6, v5, v0

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\tMismatch in indexToString: returned"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " for lookup "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    invoke-virtual {v3}, Lorg/apache/xml/dtm/ref/DTMStringPool;->removeAllElements()V

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\nPass "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " complete\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_6
    return-void
.end method


# virtual methods
.method public indexToString(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMStringPool;->m_intToString:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public removeAllElements()V
    .locals 3

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMStringPool;->m_intToString:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->removeAllElements()V

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x65

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMStringPool;->m_hashStart:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMStringPool;->m_hashChain:Lorg/apache/xml/utils/IntVector;

    invoke-virtual {v1}, Lorg/apache/xml/utils/IntVector;->removeAllElements()V

    return-void
.end method

.method public stringToIndex(Ljava/lang/String;)I
    .locals 6

    const/4 v4, -0x1

    if-nez p1, :cond_1

    move v0, v4

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    rem-int/lit8 v2, v5, 0x65

    if-gez v2, :cond_2

    neg-int v2, v2

    :cond_2
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/DTMStringPool;->m_hashStart:[I

    aget v1, v5, v2

    move v0, v1

    :goto_1
    if-eq v0, v4, :cond_3

    iget-object v5, p0, Lorg/apache/xml/dtm/ref/DTMStringPool;->m_intToString:Ljava/util/Vector;

    invoke-virtual {v5, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    move v1, v0

    iget-object v5, p0, Lorg/apache/xml/dtm/ref/DTMStringPool;->m_hashChain:Lorg/apache/xml/utils/IntVector;

    invoke-virtual {v5, v0}, Lorg/apache/xml/utils/IntVector;->elementAt(I)I

    move-result v0

    goto :goto_1

    :cond_3
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/DTMStringPool;->m_intToString:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v3

    iget-object v5, p0, Lorg/apache/xml/dtm/ref/DTMStringPool;->m_intToString:Ljava/util/Vector;

    invoke-virtual {v5, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v5, p0, Lorg/apache/xml/dtm/ref/DTMStringPool;->m_hashChain:Lorg/apache/xml/utils/IntVector;

    invoke-virtual {v5, v4}, Lorg/apache/xml/utils/IntVector;->addElement(I)V

    if-ne v1, v4, :cond_4

    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMStringPool;->m_hashStart:[I

    aput v3, v4, v2

    :goto_2
    move v0, v3

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMStringPool;->m_hashChain:Lorg/apache/xml/utils/IntVector;

    invoke-virtual {v4, v3, v1}, Lorg/apache/xml/utils/IntVector;->setElementAt(II)V

    goto :goto_2
.end method
