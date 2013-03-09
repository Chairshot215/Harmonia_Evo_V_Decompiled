.class public final Llibcore/icu/NativeNormalizer;
.super Ljava/lang/Object;
.source "NativeNormalizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llibcore/icu/NativeNormalizer$1;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isNormalized(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Z
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Llibcore/icu/NativeNormalizer;->toUNormalizationMode(Ljava/text/Normalizer$Form;)I

    move-result v1

    invoke-static {v0, v1}, Llibcore/icu/NativeNormalizer;->isNormalizedImpl(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private static native isNormalizedImpl(Ljava/lang/String;I)Z
.end method

.method public static normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Llibcore/icu/NativeNormalizer;->toUNormalizationMode(Ljava/text/Normalizer$Form;)I

    move-result v1

    invoke-static {v0, v1}, Llibcore/icu/NativeNormalizer;->normalizeImpl(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static native normalizeImpl(Ljava/lang/String;I)Ljava/lang/String;
.end method

.method private static toUNormalizationMode(Ljava/text/Normalizer$Form;)I
    .locals 3

    sget-object v0, Llibcore/icu/NativeNormalizer$1;->$SwitchMap$java$text$Normalizer$Form:[I

    invoke-virtual {p0}, Ljava/text/Normalizer$Form;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown Normalizer.Form "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :pswitch_0
    const/4 v0, 0x4

    :goto_0
    return v0

    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x5

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
