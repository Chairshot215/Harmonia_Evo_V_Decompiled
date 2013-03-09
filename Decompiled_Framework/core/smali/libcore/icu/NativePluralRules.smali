.class public final Llibcore/icu/NativePluralRules;
.super Ljava/lang/Object;
.source "NativePluralRules.java"


# static fields
.field public static final FEW:I = 0x3

.field public static final MANY:I = 0x4

.field public static final ONE:I = 0x1

.field public static final OTHER:I = 0x5

.field public static final TWO:I = 0x2

.field public static final ZERO:I


# instance fields
.field private final address:I


# direct methods
.method private constructor <init>(I)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Llibcore/icu/NativePluralRules;->address:I

    return-void
.end method

.method private static native finalizeImpl(I)V
.end method

.method public static forLocale(Ljava/util/Locale;)Llibcore/icu/NativePluralRules;
    .locals 2

    new-instance v0, Llibcore/icu/NativePluralRules;

    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Llibcore/icu/NativePluralRules;->forLocaleImpl(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1}, Llibcore/icu/NativePluralRules;-><init>(I)V

    return-object v0
.end method

.method private static native forLocaleImpl(Ljava/lang/String;)I
.end method

.method private static native quantityForIntImpl(II)I
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget v0, p0, Llibcore/icu/NativePluralRules;->address:I

    invoke-static {v0}, Llibcore/icu/NativePluralRules;->finalizeImpl(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public quantityForInt(I)I
    .locals 1

    iget v0, p0, Llibcore/icu/NativePluralRules;->address:I

    invoke-static {v0, p1}, Llibcore/icu/NativePluralRules;->quantityForIntImpl(II)I

    move-result v0

    return v0
.end method
