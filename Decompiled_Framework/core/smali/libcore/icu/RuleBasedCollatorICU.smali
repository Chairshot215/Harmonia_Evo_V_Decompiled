.class public final Llibcore/icu/RuleBasedCollatorICU;
.super Ljava/lang/Object;
.source "RuleBasedCollatorICU.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final ALTERNATE_HANDLING:I = 0x1

.field public static final CASE_FIRST:I = 0x2

.field public static final CASE_LEVEL:I = 0x3

.field public static final DECOMPOSITION_MODE:I = 0x4

.field public static final FRENCH_COLLATION:I = 0x0

.field public static final STRENGTH:I = 0x5

.field public static final VALUE_ATTRIBUTE_VALUE_COUNT:I = 0x1d

.field public static final VALUE_DEFAULT:I = -0x1

.field public static final VALUE_DEFAULT_STRENGTH:I = 0x2

.field public static final VALUE_IDENTICAL:I = 0xf

.field public static final VALUE_LOWER_FIRST:I = 0x18

.field public static final VALUE_NON_IGNORABLE:I = 0x15

.field public static final VALUE_OFF:I = 0x10

.field public static final VALUE_ON:I = 0x11

.field public static final VALUE_ON_WITHOUT_HANGUL:I = 0x1c

.field public static final VALUE_PRIMARY:I = 0x0

.field public static final VALUE_QUATERNARY:I = 0x3

.field public static final VALUE_SECONDARY:I = 0x1

.field public static final VALUE_SHIFTED:I = 0x14

.field public static final VALUE_TERTIARY:I = 0x2

.field public static final VALUE_UPPER_FIRST:I = 0x19


# instance fields
.field private address:I


# direct methods
.method private constructor <init>(I)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Llibcore/icu/RuleBasedCollatorICU;->address:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    const/16 v0, 0x10

    const/4 v1, 0x2

    invoke-static {p1, v0, v1}, Llibcore/icu/NativeCollation;->openCollatorFromRules(Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Llibcore/icu/RuleBasedCollatorICU;->address:I

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Llibcore/icu/NativeCollation;->openCollator(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Llibcore/icu/RuleBasedCollatorICU;->address:I

    return-void
.end method

.method private characterIteratorToString(Ljava/text/CharacterIterator;)Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/text/CharacterIterator;->current()C

    move-result v0

    :goto_0
    const v2, 0xffff

    if-eq v0, v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/text/CharacterIterator;->next()C

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    new-instance v0, Llibcore/icu/RuleBasedCollatorICU;

    iget v1, p0, Llibcore/icu/RuleBasedCollatorICU;->address:I

    invoke-static {v1}, Llibcore/icu/NativeCollation;->safeClone(I)I

    move-result v1

    invoke-direct {v0, v1}, Llibcore/icu/RuleBasedCollatorICU;-><init>(I)V

    return-object v0
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    iget v0, p0, Llibcore/icu/RuleBasedCollatorICU;->address:I

    invoke-static {v0, p1, p2}, Llibcore/icu/NativeCollation;->compare(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    instance-of v3, p1, Llibcore/icu/RuleBasedCollatorICU;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    check-cast v0, Llibcore/icu/RuleBasedCollatorICU;

    invoke-virtual {p0}, Llibcore/icu/RuleBasedCollatorICU;->getRules()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Llibcore/icu/RuleBasedCollatorICU;->getRules()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Llibcore/icu/RuleBasedCollatorICU;->getStrength()I

    move-result v3

    invoke-virtual {v0}, Llibcore/icu/RuleBasedCollatorICU;->getStrength()I

    move-result v4

    if-ne v3, v4, :cond_3

    invoke-virtual {p0}, Llibcore/icu/RuleBasedCollatorICU;->getDecomposition()I

    move-result v3

    invoke-virtual {v0}, Llibcore/icu/RuleBasedCollatorICU;->getDecomposition()I

    move-result v4

    if-eq v3, v4, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public equals(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0, p1, p2}, Llibcore/icu/RuleBasedCollatorICU;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget v0, p0, Llibcore/icu/RuleBasedCollatorICU;->address:I

    invoke-static {v0}, Llibcore/icu/NativeCollation;->closeCollator(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getAttribute(I)I
    .locals 1

    iget v0, p0, Llibcore/icu/RuleBasedCollatorICU;->address:I

    invoke-static {v0, p1}, Llibcore/icu/NativeCollation;->getAttribute(II)I

    move-result v0

    return v0
.end method

.method public getCollationElementIterator(Ljava/lang/String;)Llibcore/icu/CollationElementIteratorICU;
    .locals 1

    iget v0, p0, Llibcore/icu/RuleBasedCollatorICU;->address:I

    invoke-static {v0, p1}, Llibcore/icu/CollationElementIteratorICU;->getInstance(ILjava/lang/String;)Llibcore/icu/CollationElementIteratorICU;

    move-result-object v0

    return-object v0
.end method

.method public getCollationElementIterator(Ljava/text/CharacterIterator;)Llibcore/icu/CollationElementIteratorICU;
    .locals 1

    invoke-direct {p0, p1}, Llibcore/icu/RuleBasedCollatorICU;->characterIteratorToString(Ljava/text/CharacterIterator;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Llibcore/icu/RuleBasedCollatorICU;->getCollationElementIterator(Ljava/lang/String;)Llibcore/icu/CollationElementIteratorICU;

    move-result-object v0

    return-object v0
.end method

.method public getCollationKey(Ljava/lang/String;)Ljava/text/CollationKey;
    .locals 3

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget v2, p0, Llibcore/icu/RuleBasedCollatorICU;->address:I

    invoke-static {v2, p1}, Llibcore/icu/NativeCollation;->getSortKey(ILjava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Llibcore/icu/CollationKeyICU;

    invoke-direct {v1, p1, v0}, Llibcore/icu/CollationKeyICU;-><init>(Ljava/lang/String;[B)V

    goto :goto_0
.end method

.method public getDecomposition()I
    .locals 2

    iget v0, p0, Llibcore/icu/RuleBasedCollatorICU;->address:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Llibcore/icu/NativeCollation;->getAttribute(II)I

    move-result v0

    return v0
.end method

.method public getRules()Ljava/lang/String;
    .locals 1

    iget v0, p0, Llibcore/icu/RuleBasedCollatorICU;->address:I

    invoke-static {v0}, Llibcore/icu/NativeCollation;->getRules(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStrength()I
    .locals 2

    iget v0, p0, Llibcore/icu/RuleBasedCollatorICU;->address:I

    const/4 v1, 0x5

    invoke-static {v0, v1}, Llibcore/icu/NativeCollation;->getAttribute(II)I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    const/16 v0, 0x2a

    return v0
.end method

.method public setAttribute(II)V
    .locals 1

    iget v0, p0, Llibcore/icu/RuleBasedCollatorICU;->address:I

    invoke-static {v0, p1, p2}, Llibcore/icu/NativeCollation;->setAttribute(III)V

    return-void
.end method

.method public setDecomposition(I)V
    .locals 2

    iget v0, p0, Llibcore/icu/RuleBasedCollatorICU;->address:I

    const/4 v1, 0x4

    invoke-static {v0, v1, p1}, Llibcore/icu/NativeCollation;->setAttribute(III)V

    return-void
.end method

.method public setStrength(I)V
    .locals 2

    iget v0, p0, Llibcore/icu/RuleBasedCollatorICU;->address:I

    const/4 v1, 0x5

    invoke-static {v0, v1, p1}, Llibcore/icu/NativeCollation;->setAttribute(III)V

    return-void
.end method
