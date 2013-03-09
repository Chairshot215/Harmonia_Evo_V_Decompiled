.class public abstract Ljava/text/Collator;
.super Ljava/lang/Object;
.source "Collator.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field public static final CANONICAL_DECOMPOSITION:I = 0x1

.field public static final FULL_DECOMPOSITION:I = 0x2

.field public static final IDENTICAL:I = 0x3

.field public static final NO_DECOMPOSITION:I = 0x0

.field public static final PRIMARY:I = 0x0

.field public static final SECONDARY:I = 0x1

.field public static final TERTIARY:I = 0x2


# instance fields
.field icuColl:Llibcore/icu/RuleBasedCollatorICU;


# direct methods
.method protected constructor <init>()V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Llibcore/icu/RuleBasedCollatorICU;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, v1}, Llibcore/icu/RuleBasedCollatorICU;-><init>(Ljava/util/Locale;)V

    iput-object v0, p0, Ljava/text/Collator;->icuColl:Llibcore/icu/RuleBasedCollatorICU;

    return-void
.end method

.method constructor <init>(Llibcore/icu/RuleBasedCollatorICU;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/text/Collator;->icuColl:Llibcore/icu/RuleBasedCollatorICU;

    return-void
.end method

.method private decompositionMode_ICU_Java(I)I
    .locals 1

    move v0, p1

    packed-switch p1, :pswitch_data_0

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private decompositionMode_Java_ICU(I)I
    .locals 1

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :pswitch_0
    const/16 v0, 0x11

    :goto_0
    return v0

    :pswitch_1
    const/16 v0, 0x10

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getAvailableLocales()[Ljava/util/Locale;
    .locals 1

    invoke-static {}, Llibcore/icu/ICU;->getAvailableCollatorLocales()[Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Ljava/text/Collator;
    .locals 1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/util/Locale;)Ljava/text/Collator;
    .locals 2

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    new-instance v0, Ljava/text/RuleBasedCollator;

    new-instance v1, Llibcore/icu/RuleBasedCollatorICU;

    invoke-direct {v1, p0}, Llibcore/icu/RuleBasedCollatorICU;-><init>(Ljava/util/Locale;)V

    invoke-direct {v0, v1}, Ljava/text/RuleBasedCollator;-><init>(Llibcore/icu/RuleBasedCollatorICU;)V

    return-object v0
.end method

.method private strength_ICU_Java(I)I
    .locals 1

    move v0, p1

    sparse-switch p1, :sswitch_data_0

    :goto_0
    return v0

    :sswitch_0
    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const/4 v0, 0x3

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0xf -> :sswitch_3
    .end sparse-switch
.end method

.method private strength_Java_ICU(I)I
    .locals 1

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_3
    const/16 v0, 0xf

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/Collator;

    iget-object v2, p0, Ljava/text/Collator;->icuColl:Llibcore/icu/RuleBasedCollatorICU;

    invoke-virtual {v2}, Llibcore/icu/RuleBasedCollatorICU;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Llibcore/icu/RuleBasedCollatorICU;

    iput-object v2, v0, Ljava/text/Collator;->icuColl:Llibcore/icu/RuleBasedCollatorICU;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public abstract compare(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v1, 0x0

    instance-of v2, p1, Ljava/text/Collator;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    check-cast v0, Ljava/text/Collator;

    iget-object v2, p0, Ljava/text/Collator;->icuColl:Llibcore/icu/RuleBasedCollatorICU;

    if-nez v2, :cond_2

    iget-object v2, v0, Ljava/text/Collator;->icuColl:Llibcore/icu/RuleBasedCollatorICU;

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Ljava/text/Collator;->icuColl:Llibcore/icu/RuleBasedCollatorICU;

    iget-object v2, v0, Ljava/text/Collator;->icuColl:Llibcore/icu/RuleBasedCollatorICU;

    invoke-virtual {v1, v2}, Llibcore/icu/RuleBasedCollatorICU;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public equals(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract getCollationKey(Ljava/lang/String;)Ljava/text/CollationKey;
.end method

.method public getDecomposition()I
    .locals 1

    iget-object v0, p0, Ljava/text/Collator;->icuColl:Llibcore/icu/RuleBasedCollatorICU;

    invoke-virtual {v0}, Llibcore/icu/RuleBasedCollatorICU;->getDecomposition()I

    move-result v0

    invoke-direct {p0, v0}, Ljava/text/Collator;->decompositionMode_ICU_Java(I)I

    move-result v0

    return v0
.end method

.method public getStrength()I
    .locals 1

    iget-object v0, p0, Ljava/text/Collator;->icuColl:Llibcore/icu/RuleBasedCollatorICU;

    invoke-virtual {v0}, Llibcore/icu/RuleBasedCollatorICU;->getStrength()I

    move-result v0

    invoke-direct {p0, v0}, Ljava/text/Collator;->strength_ICU_Java(I)I

    move-result v0

    return v0
.end method

.method public abstract hashCode()I
.end method

.method public setDecomposition(I)V
    .locals 2

    iget-object v0, p0, Ljava/text/Collator;->icuColl:Llibcore/icu/RuleBasedCollatorICU;

    invoke-direct {p0, p1}, Ljava/text/Collator;->decompositionMode_Java_ICU(I)I

    move-result v1

    invoke-virtual {v0, v1}, Llibcore/icu/RuleBasedCollatorICU;->setDecomposition(I)V

    return-void
.end method

.method public setStrength(I)V
    .locals 2

    iget-object v0, p0, Ljava/text/Collator;->icuColl:Llibcore/icu/RuleBasedCollatorICU;

    invoke-direct {p0, p1}, Ljava/text/Collator;->strength_Java_ICU(I)I

    move-result v1

    invoke-virtual {v0, v1}, Llibcore/icu/RuleBasedCollatorICU;->setStrength(I)V

    return-void
.end method
