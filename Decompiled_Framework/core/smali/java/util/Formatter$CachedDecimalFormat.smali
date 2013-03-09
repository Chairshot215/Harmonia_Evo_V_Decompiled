.class Ljava/util/Formatter$CachedDecimalFormat;
.super Ljava/lang/Object;
.source "Formatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Formatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CachedDecimalFormat"
.end annotation


# instance fields
.field public currentLocaleData:Llibcore/icu/LocaleData;

.field public currentPattern:Ljava/lang/String;

.field public decimalFormat:Llibcore/icu/NativeDecimalFormat;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Llibcore/icu/LocaleData;Ljava/lang/String;)Llibcore/icu/NativeDecimalFormat;
    .locals 3

    iget-object v0, p0, Ljava/util/Formatter$CachedDecimalFormat;->decimalFormat:Llibcore/icu/NativeDecimalFormat;

    if-nez v0, :cond_0

    iput-object p2, p0, Ljava/util/Formatter$CachedDecimalFormat;->currentPattern:Ljava/lang/String;

    iput-object p1, p0, Ljava/util/Formatter$CachedDecimalFormat;->currentLocaleData:Llibcore/icu/LocaleData;

    new-instance v0, Llibcore/icu/NativeDecimalFormat;

    iget-object v1, p0, Ljava/util/Formatter$CachedDecimalFormat;->currentPattern:Ljava/lang/String;

    iget-object v2, p0, Ljava/util/Formatter$CachedDecimalFormat;->currentLocaleData:Llibcore/icu/LocaleData;

    invoke-direct {v0, v1, v2}, Llibcore/icu/NativeDecimalFormat;-><init>(Ljava/lang/String;Llibcore/icu/LocaleData;)V

    iput-object v0, p0, Ljava/util/Formatter$CachedDecimalFormat;->decimalFormat:Llibcore/icu/NativeDecimalFormat;

    :cond_0
    iget-object v0, p0, Ljava/util/Formatter$CachedDecimalFormat;->currentPattern:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Ljava/util/Formatter$CachedDecimalFormat;->decimalFormat:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v0, p2}, Llibcore/icu/NativeDecimalFormat;->applyPattern(Ljava/lang/String;)V

    iput-object p2, p0, Ljava/util/Formatter$CachedDecimalFormat;->currentPattern:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Ljava/util/Formatter$CachedDecimalFormat;->currentLocaleData:Llibcore/icu/LocaleData;

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Ljava/util/Formatter$CachedDecimalFormat;->decimalFormat:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v0, p1}, Llibcore/icu/NativeDecimalFormat;->setDecimalFormatSymbols(Llibcore/icu/LocaleData;)V

    iput-object p1, p0, Ljava/util/Formatter$CachedDecimalFormat;->currentLocaleData:Llibcore/icu/LocaleData;

    :cond_2
    iget-object v0, p0, Ljava/util/Formatter$CachedDecimalFormat;->decimalFormat:Llibcore/icu/NativeDecimalFormat;

    return-object v0
.end method
