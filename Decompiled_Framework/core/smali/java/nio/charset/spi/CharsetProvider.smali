.class public abstract Ljava/nio/charset/spi/CharsetProvider;
.super Ljava/lang/Object;
.source "CharsetProvider.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract charsetForName(Ljava/lang/String;)Ljava/nio/charset/Charset;
.end method

.method public abstract charsets()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/nio/charset/Charset;",
            ">;"
        }
    .end annotation
.end method
