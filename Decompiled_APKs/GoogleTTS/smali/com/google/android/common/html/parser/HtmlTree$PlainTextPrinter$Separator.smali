.class final enum Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter$Separator;
.super Ljava/lang/Enum;
.source "HtmlTree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Separator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter$Separator;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter$Separator;

.field public static final enum BlankLine:Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter$Separator;

.field public static final enum LineBreak:Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter$Separator;

.field public static final enum None:Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter$Separator;

.field public static final enum Space:Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter$Separator;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 560
    new-instance v0, Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter$Separator;

    const-string v1, "None"

    invoke-direct {v0, v1, v2}, Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter$Separator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter$Separator;->None:Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter$Separator;

    .line 561
    new-instance v0, Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter$Separator;

    const-string v1, "Space"

    invoke-direct {v0, v1, v3}, Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter$Separator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter$Separator;->Space:Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter$Separator;

    .line 562
    new-instance v0, Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter$Separator;

    const-string v1, "LineBreak"

    invoke-direct {v0, v1, v4}, Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter$Separator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter$Separator;->LineBreak:Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter$Separator;

    .line 563
    new-instance v0, Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter$Separator;

    const-string v1, "BlankLine"

    invoke-direct {v0, v1, v5}, Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter$Separator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter$Separator;->BlankLine:Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter$Separator;

    .line 556
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter$Separator;

    sget-object v1, Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter$Separator;->None:Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter$Separator;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter$Separator;->Space:Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter$Separator;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter$Separator;->LineBreak:Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter$Separator;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter$Separator;->BlankLine:Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter$Separator;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter$Separator;->$VALUES:[Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter$Separator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 556
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter$Separator;
    .locals 1
    .parameter

    .prologue
    .line 556
    const-class v0, Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter$Separator;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter$Separator;

    return-object v0
.end method

.method public static values()[Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter$Separator;
    .locals 1

    .prologue
    .line 556
    sget-object v0, Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter$Separator;->$VALUES:[Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter$Separator;

    invoke-virtual {v0}, [Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter$Separator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter$Separator;

    return-object v0
.end method
