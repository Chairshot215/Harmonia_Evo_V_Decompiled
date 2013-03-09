.class Lcom/google/android/common/base/CharEscaperBuilder$CharArrayDecorator;
.super Lcom/google/android/common/base/CharEscaper;
.source "CharEscaperBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/common/base/CharEscaperBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CharArrayDecorator"
.end annotation


# instance fields
.field private final replaceLength:I

.field private final replacements:[[C


# direct methods
.method constructor <init>([[C)V
    .locals 1
    .parameter "replacements"

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/google/android/common/base/CharEscaper;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/google/android/common/base/CharEscaperBuilder$CharArrayDecorator;->replacements:[[C

    .line 27
    array-length v0, p1

    iput v0, p0, Lcom/google/android/common/base/CharEscaperBuilder$CharArrayDecorator;->replaceLength:I

    .line 28
    return-void
.end method
