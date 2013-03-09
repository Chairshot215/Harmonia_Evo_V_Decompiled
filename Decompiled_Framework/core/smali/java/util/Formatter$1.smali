.class final Ljava/util/Formatter$1;
.super Ljava/lang/ThreadLocal;
.source "Formatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Formatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<",
        "Ljava/util/Formatter$CachedDecimalFormat;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ljava/util/Formatter$1;->initialValue()Ljava/util/Formatter$CachedDecimalFormat;

    move-result-object v0

    return-object v0
.end method

.method protected initialValue()Ljava/util/Formatter$CachedDecimalFormat;
    .locals 1

    new-instance v0, Ljava/util/Formatter$CachedDecimalFormat;

    invoke-direct {v0}, Ljava/util/Formatter$CachedDecimalFormat;-><init>()V

    return-object v0
.end method
