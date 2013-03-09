.class public final Ljava/text/Normalizer;
.super Ljava/lang/Object;
.source "Normalizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/text/Normalizer$Form;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isNormalized(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Z
    .locals 1

    invoke-static {p0, p1}, Llibcore/icu/NativeNormalizer;->isNormalized(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Z

    move-result v0

    return v0
.end method

.method public static normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;
    .locals 1

    invoke-static {p0, p1}, Llibcore/icu/NativeNormalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
