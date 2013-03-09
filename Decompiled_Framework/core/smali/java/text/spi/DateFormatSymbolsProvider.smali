.class public abstract Ljava/text/spi/DateFormatSymbolsProvider;
.super Ljava/util/spi/LocaleServiceProvider;
.source "DateFormatSymbolsProvider.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/spi/LocaleServiceProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;
.end method
