.class final Lcom/htc/gson/JsonPrintFormatter;
.super Ljava/lang/Object;
.source "JsonPrintFormatter.java"

# interfaces
.implements Lcom/htc/gson/JsonFormatter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/gson/JsonPrintFormatter$PrintFormattingVisitor;,
        Lcom/htc/gson/JsonPrintFormatter$JsonWriter;
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
    .line 42
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/gson/JsonPrintFormatter;-><init>(Z)V

    .line 43
    return-void
.end method

.method constructor <init>(IIIZ)V
    .locals 0
    .parameter "printMargin"
    .parameter "indentationSize"
    .parameter "rightMargin"
    .parameter "escapeHtmlChars"

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput p1, p0, Lcom/htc/gson/JsonPrintFormatter;->printMargin:I

    .line 52
    iput p2, p0, Lcom/htc/gson/JsonPrintFormatter;->indentationSize:I

    .line 53
    iput p3, p0, Lcom/htc/gson/JsonPrintFormatter;->rightMargin:I

    .line 54
    iput-boolean p4, p0, Lcom/htc/gson/JsonPrintFormatter;->escapeHtmlChars:Z

    .line 55
    return-void
.end method

.method constructor <init>(Z)V
    .locals 3
    .parameter "escapeHtmlChars"

    .prologue
    .line 46
    const/16 v0, 0x50

    const/4 v1, 0x2

    const/4 v2, 0x4

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/htc/gson/JsonPrintFormatter;-><init>(IIIZ)V

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/htc/gson/JsonPrintFormatter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/htc/gson/JsonPrintFormatter;->printMargin:I

    return v0
.end method

.method static synthetic access$100(Lcom/htc/gson/JsonPrintFormatter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/htc/gson/JsonPrintFormatter;->rightMargin:I

    return v0
.end method

.method static synthetic access$200(Lcom/htc/gson/JsonPrintFormatter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/htc/gson/JsonPrintFormatter;->indentationSize:I

    return v0
.end method


# virtual methods
.method public format(Lcom/htc/gson/JsonElement;Ljava/lang/Appendable;Z)V
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
    .line 244
    if-nez p1, :cond_0

    .line 253
    :goto_0
    return-void

    .line 247
    :cond_0
    new-instance v0, Lcom/htc/gson/JsonPrintFormatter$JsonWriter;

    invoke-direct {v0, p0, p2}, Lcom/htc/gson/JsonPrintFormatter$JsonWriter;-><init>(Lcom/htc/gson/JsonPrintFormatter;Ljava/lang/Appendable;)V

    .line 248
    .local v0, jsonWriter:Lcom/htc/gson/JsonPrintFormatter$JsonWriter;
    new-instance v2, Lcom/htc/gson/JsonPrintFormatter$PrintFormattingVisitor;

    new-instance v3, Lcom/htc/gson/Escaper;

    iget-boolean v4, p0, Lcom/htc/gson/JsonPrintFormatter;->escapeHtmlChars:Z

    invoke-direct {v3, v4}, Lcom/htc/gson/Escaper;-><init>(Z)V

    invoke-direct {v2, p0, v0, v3, p3}, Lcom/htc/gson/JsonPrintFormatter$PrintFormattingVisitor;-><init>(Lcom/htc/gson/JsonPrintFormatter;Lcom/htc/gson/JsonPrintFormatter$JsonWriter;Lcom/htc/gson/Escaper;Z)V

    .line 250
    .local v2, visitor:Lcom/htc/gson/JsonElementVisitor;
    new-instance v1, Lcom/htc/gson/JsonTreeNavigator;

    invoke-direct {v1, v2, p3}, Lcom/htc/gson/JsonTreeNavigator;-><init>(Lcom/htc/gson/JsonElementVisitor;Z)V

    .line 251
    .local v1, navigator:Lcom/htc/gson/JsonTreeNavigator;
    invoke-virtual {v1, p1}, Lcom/htc/gson/JsonTreeNavigator;->navigate(Lcom/htc/gson/JsonElement;)V

    .line 252
    #calls: Lcom/htc/gson/JsonPrintFormatter$JsonWriter;->finishLine()V
    invoke-static {v0}, Lcom/htc/gson/JsonPrintFormatter$JsonWriter;->access$300(Lcom/htc/gson/JsonPrintFormatter$JsonWriter;)V

    goto :goto_0
.end method
