.class final Lcom/google/gson/JsonPrintFormatter;
.super Ljava/lang/Object;
.source "JsonPrintFormatter.java"

# interfaces
.implements Lcom/google/gson/JsonFormatter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gson/JsonPrintFormatter$PrintFormattingVisitor;,
        Lcom/google/gson/JsonPrintFormatter$JsonWriter;
    }
.end annotation


# static fields
.field public static final DEFAULT_INDENTATION_SIZE:I = 0x2

.field public static final DEFAULT_PRINT_MARGIN:I = 0x50

.field public static final DEFAULT_RIGHT_MARGIN:I = 0x4


# instance fields
.field private final escapeHtmlChars:Z

.field private final indentationSize:I

.field private final printMargin:I

.field private final rightMargin:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/gson/JsonPrintFormatter;-><init>(Z)V

    .line 41
    return-void
.end method

.method constructor <init>(IIIZ)V
    .locals 0
    .parameter "printMargin"
    .parameter "indentationSize"
    .parameter "rightMargin"
    .parameter "escapeHtmlChars"

    .prologue
    .line 48
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput p1, p0, Lcom/google/gson/JsonPrintFormatter;->printMargin:I

    .line 50
    iput p2, p0, Lcom/google/gson/JsonPrintFormatter;->indentationSize:I

    .line 51
    iput p3, p0, Lcom/google/gson/JsonPrintFormatter;->rightMargin:I

    .line 52
    iput-boolean p4, p0, Lcom/google/gson/JsonPrintFormatter;->escapeHtmlChars:Z

    .line 53
    return-void
.end method

.method constructor <init>(Z)V
    .locals 3
    .parameter "escapeHtmlChars"

    .prologue
    .line 44
    const/16 v0, 0x50

    const/4 v1, 0x2

    const/4 v2, 0x4

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/google/gson/JsonPrintFormatter;-><init>(IIIZ)V

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/google/gson/JsonPrintFormatter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget v0, p0, Lcom/google/gson/JsonPrintFormatter;->printMargin:I

    return v0
.end method

.method static synthetic access$100(Lcom/google/gson/JsonPrintFormatter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget v0, p0, Lcom/google/gson/JsonPrintFormatter;->rightMargin:I

    return v0
.end method

.method static synthetic access$200(Lcom/google/gson/JsonPrintFormatter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget v0, p0, Lcom/google/gson/JsonPrintFormatter;->indentationSize:I

    return v0
.end method


# virtual methods
.method public format(Lcom/google/gson/JsonElement;Ljava/lang/Appendable;Z)V
    .locals 5
    .parameter "root"
    .parameter "writer"
    .parameter "serializeNulls"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 242
    if-nez p1, :cond_0

    .line 251
    :goto_0
    return-void

    .line 245
    :cond_0
    new-instance v0, Lcom/google/gson/JsonPrintFormatter$JsonWriter;

    invoke-direct {v0, p0, p2}, Lcom/google/gson/JsonPrintFormatter$JsonWriter;-><init>(Lcom/google/gson/JsonPrintFormatter;Ljava/lang/Appendable;)V

    .line 246
    .local v0, jsonWriter:Lcom/google/gson/JsonPrintFormatter$JsonWriter;
    new-instance v2, Lcom/google/gson/JsonPrintFormatter$PrintFormattingVisitor;

    new-instance v3, Lcom/google/gson/Escaper;

    iget-boolean v4, p0, Lcom/google/gson/JsonPrintFormatter;->escapeHtmlChars:Z

    invoke-direct {v3, v4}, Lcom/google/gson/Escaper;-><init>(Z)V

    invoke-direct {v2, p0, v0, v3, p3}, Lcom/google/gson/JsonPrintFormatter$PrintFormattingVisitor;-><init>(Lcom/google/gson/JsonPrintFormatter;Lcom/google/gson/JsonPrintFormatter$JsonWriter;Lcom/google/gson/Escaper;Z)V

    .line 248
    .local v2, visitor:Lcom/google/gson/JsonElementVisitor;
    new-instance v1, Lcom/google/gson/JsonTreeNavigator;

    invoke-direct {v1, v2, p3}, Lcom/google/gson/JsonTreeNavigator;-><init>(Lcom/google/gson/JsonElementVisitor;Z)V

    .line 249
    .local v1, navigator:Lcom/google/gson/JsonTreeNavigator;
    invoke-virtual {v1, p1}, Lcom/google/gson/JsonTreeNavigator;->navigate(Lcom/google/gson/JsonElement;)V

    .line 250
    #calls: Lcom/google/gson/JsonPrintFormatter$JsonWriter;->finishLine()V
    invoke-static {v0}, Lcom/google/gson/JsonPrintFormatter$JsonWriter;->access$300(Lcom/google/gson/JsonPrintFormatter$JsonWriter;)V

    goto :goto_0
.end method
