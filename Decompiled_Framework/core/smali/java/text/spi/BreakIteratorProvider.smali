.class public abstract Ljava/text/spi/BreakIteratorProvider;
.super Ljava/util/spi/LocaleServiceProvider;
.source "BreakIteratorProvider.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/spi/LocaleServiceProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getCharacterInstance(Ljava/util/Locale;)Ljava/text/BreakIterator;
.end method

.method public abstract getLineInstance(Ljava/util/Locale;)Ljava/text/BreakIterator;
.end method

.method public abstract getSentenceInstance(Ljava/util/Locale;)Ljava/text/BreakIterator;
.end method

.method public abstract getWordInstance(Ljava/util/Locale;)Ljava/text/BreakIterator;
.end method
