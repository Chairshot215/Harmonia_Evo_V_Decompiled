.class public abstract Ljava/util/spi/LocaleNameProvider;
.super Ljava/util/spi/LocaleServiceProvider;
.source "LocaleNameProvider.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/spi/LocaleServiceProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getDisplayCountry(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
.end method

.method public abstract getDisplayLanguage(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
.end method

.method public abstract getDisplayVariant(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
.end method
