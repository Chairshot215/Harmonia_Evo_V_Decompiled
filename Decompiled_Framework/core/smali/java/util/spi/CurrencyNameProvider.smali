.class public abstract Ljava/util/spi/CurrencyNameProvider;
.super Ljava/util/spi/LocaleServiceProvider;
.source "CurrencyNameProvider.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/spi/LocaleServiceProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getSymbol(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
.end method
