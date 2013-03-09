.class public Ljava/text/RuleBasedCollator;
.super Ljava/text/Collator;
.source "RuleBasedCollator.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/text/Collator;-><init>()V

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/text/ParseException;

    const-string v2, "empty rules"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1

    :cond_1
    :try_start_0
    new-instance v1, Llibcore/icu/RuleBasedCollatorICU;

    invoke-direct {v1, p1}, Llibcore/icu/RuleBasedCollatorICU;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Ljava/text/Collator;->icuColl:Llibcore/icu/RuleBasedCollatorICU;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    instance-of v1, v0, Ljava/text/ParseException;

    if-eqz v1, :cond_2

    check-cast v0, Ljava/text/ParseException;

    throw v0

    :cond_2
    new-instance v1, Ljava/text/ParseException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method constructor <init>(Llibcore/icu/RuleBasedCollatorICU;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/text/Collator;-><init>(Llibcore/icu/RuleBasedCollatorICU;)V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Ljava/text/Collator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/RuleBasedCollator;

    return-object v0
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1
    iget-object v0, p0, Ljava/text/Collator;->icuColl:Llibcore/icu/RuleBasedCollatorICU;

    invoke-virtual {v0, p1, p2}, Llibcore/icu/RuleBasedCollatorICU;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Ljava/text/Collator;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Ljava/text/Collator;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getCollationElementIterator(Ljava/lang/String;)Ljava/text/CollationElementIterator;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    new-instance v0, Ljava/text/CollationElementIterator;

    iget-object v1, p0, Ljava/text/Collator;->icuColl:Llibcore/icu/RuleBasedCollatorICU;

    invoke-virtual {v1, p1}, Llibcore/icu/RuleBasedCollatorICU;->getCollationElementIterator(Ljava/lang/String;)Llibcore/icu/CollationElementIteratorICU;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/text/CollationElementIterator;-><init>(Llibcore/icu/CollationElementIteratorICU;)V

    return-object v0
.end method

.method public getCollationElementIterator(Ljava/text/CharacterIterator;)Ljava/text/CollationElementIterator;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    new-instance v0, Ljava/text/CollationElementIterator;

    iget-object v1, p0, Ljava/text/Collator;->icuColl:Llibcore/icu/RuleBasedCollatorICU;

    invoke-virtual {v1, p1}, Llibcore/icu/RuleBasedCollatorICU;->getCollationElementIterator(Ljava/text/CharacterIterator;)Llibcore/icu/CollationElementIteratorICU;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/text/CollationElementIterator;-><init>(Llibcore/icu/CollationElementIteratorICU;)V

    return-object v0
.end method

.method public getCollationKey(Ljava/lang/String;)Ljava/text/CollationKey;
    .locals 1

    iget-object v0, p0, Ljava/text/Collator;->icuColl:Llibcore/icu/RuleBasedCollatorICU;

    invoke-virtual {v0, p1}, Llibcore/icu/RuleBasedCollatorICU;->getCollationKey(Ljava/lang/String;)Ljava/text/CollationKey;

    move-result-object v0

    return-object v0
.end method

.method public getRules()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/text/Collator;->icuColl:Llibcore/icu/RuleBasedCollatorICU;

    invoke-virtual {v0}, Llibcore/icu/RuleBasedCollatorICU;->getRules()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Ljava/text/Collator;->icuColl:Llibcore/icu/RuleBasedCollatorICU;

    invoke-virtual {v0}, Llibcore/icu/RuleBasedCollatorICU;->getRules()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
