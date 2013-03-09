.class final Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter;
.super Ljava/lang/Object;
.source "HtmlTree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/common/html/parser/HtmlTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PlainTextPrinter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter$Separator;
    }
.end annotation


# instance fields
.field private endingNewLines:I

.field private quoteDepth:I

.field private final sb:Ljava/lang/StringBuilder;

.field private separator:Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter$Separator;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 546
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 581
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter;->sb:Ljava/lang/StringBuilder;

    .line 584
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter;->quoteDepth:I

    .line 594
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter;->endingNewLines:I

    .line 597
    sget-object v0, Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter$Separator;->None:Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter$Separator;

    iput-object v0, p0, Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter;->separator:Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter$Separator;

    return-void
.end method
