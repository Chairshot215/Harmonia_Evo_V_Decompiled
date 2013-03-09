.class public Lcom/google/android/common/html/parser/HtmlTree$DefaultPlainTextConverter;
.super Ljava/lang/Object;
.source "HtmlTree.java"

# interfaces
.implements Lcom/google/android/common/html/parser/HtmlTree$PlainTextConverter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/common/html/parser/HtmlTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultPlainTextConverter"
.end annotation


# static fields
.field private static final BLANK_LINE_ELEMENTS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/common/html/parser/HTML$Element;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private preDepth:I

.field private final printer:Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 794
    sget-object v0, Lcom/google/android/common/html/parser/HTML4;->P_ELEMENT:Lcom/google/android/common/html/parser/HTML$Element;

    sget-object v1, Lcom/google/android/common/html/parser/HTML4;->BLOCKQUOTE_ELEMENT:Lcom/google/android/common/html/parser/HTML$Element;

    sget-object v2, Lcom/google/android/common/html/parser/HTML4;->PRE_ELEMENT:Lcom/google/android/common/html/parser/HTML$Element;

    invoke-static {v0, v1, v2}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Lcom/google/android/common/html/parser/HtmlTree$DefaultPlainTextConverter;->BLANK_LINE_ELEMENTS:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 792
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 800
    new-instance v0, Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter;

    invoke-direct {v0}, Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter;-><init>()V

    iput-object v0, p0, Lcom/google/android/common/html/parser/HtmlTree$DefaultPlainTextConverter;->printer:Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter;

    .line 802
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/common/html/parser/HtmlTree$DefaultPlainTextConverter;->preDepth:I

    return-void
.end method
