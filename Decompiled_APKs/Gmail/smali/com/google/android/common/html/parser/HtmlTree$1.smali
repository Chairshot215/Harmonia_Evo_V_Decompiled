.class final Lcom/google/android/common/html/parser/HtmlTree$1;
.super Ljava/lang/Object;
.source "HtmlTree.java"

# interfaces
.implements Lcom/google/android/common/html/parser/HtmlTree$PlainTextConverterFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/common/html/parser/HtmlTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createInstance()Lcom/google/android/common/html/parser/HtmlTree$PlainTextConverter;
    .locals 1

    .prologue
    .line 79
    new-instance v0, Lcom/google/android/common/html/parser/HtmlTree$DefaultPlainTextConverter;

    invoke-direct {v0}, Lcom/google/android/common/html/parser/HtmlTree$DefaultPlainTextConverter;-><init>()V

    return-object v0
.end method
