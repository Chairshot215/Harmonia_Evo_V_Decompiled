.class Lcom/htc/gson/JsonPrintFormatter$JsonWriter;
.super Ljava/lang/Object;
.source "JsonPrintFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/gson/JsonPrintFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "JsonWriter"
.end annotation


# instance fields
.field private level:I

.field private line:Ljava/lang/StringBuilder;

.field final synthetic this$0:Lcom/htc/gson/JsonPrintFormatter;

.field private final writer:Ljava/lang/Appendable;


# direct methods
.method constructor <init>(Lcom/htc/gson/JsonPrintFormatter;Ljava/lang/Appendable;)V
    .locals 1

    iput-object p1, p0, Lcom/htc/gson/JsonPrintFormatter$JsonWriter;->this$0:Lcom/htc/gson/JsonPrintFormatter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/htc/gson/JsonPrintFormatter$JsonWriter;->writer:Ljava/lang/Appendable;

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/gson/JsonPrintFormatter$JsonWriter;->level:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/htc/gson/JsonPrintFormatter$JsonWriter;->line:Ljava/lang/StringBuilder;

    return-void
.end method

.method static synthetic access$300(Lcom/htc/gson/JsonPrintFormatter$JsonWriter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/htc/gson/JsonPrintFormatter$JsonWriter;->finishLine()V

    return-void
.end method

.method private breakLineIfNeeded()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/gson/JsonPrintFormatter$JsonWriter;->breakLineIfThisToNextExceedsLimit(I)V

    return-void
.end method

.method private breakLineIfThisToNextExceedsLimit(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/htc/gson/JsonPrintFormatter$JsonWriter;->getLine()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/2addr v0, p1

    iget-object v1, p0, Lcom/htc/gson/JsonPrintFormatter$JsonWriter;->this$0:Lcom/htc/gson/JsonPrintFormatter;

    #getter for: Lcom/htc/gson/JsonPrintFormatter;->printMargin:I
    invoke-static {v1}, Lcom/htc/gson/JsonPrintFormatter;->access$000(Lcom/htc/gson/JsonPrintFormatter;)I

    move-result v1

    iget-object v2, p0, Lcom/htc/gson/JsonPrintFormatter$JsonWriter;->this$0:Lcom/htc/gson/JsonPrintFormatter;

    #getter for: Lcom/htc/gson/JsonPrintFormatter;->rightMargin:I
    invoke-static {v2}, Lcom/htc/gson/JsonPrintFormatter;->access$100(Lcom/htc/gson/JsonPrintFormatter;)I

    move-result v2

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_0

    invoke-direct {p0}, Lcom/htc/gson/JsonPrintFormatter$JsonWriter;->finishLine()V

    :cond_0
    return-void
.end method

.method private createNewLine()V
    .locals 4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v2, p0, Lcom/htc/gson/JsonPrintFormatter$JsonWriter;->line:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/htc/gson/JsonPrintFormatter$JsonWriter;->level:I

    if-ge v0, v2, :cond_1

    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/htc/gson/JsonPrintFormatter$JsonWriter;->this$0:Lcom/htc/gson/JsonPrintFormatter;

    #getter for: Lcom/htc/gson/JsonPrintFormatter;->indentationSize:I
    invoke-static {v2}, Lcom/htc/gson/JsonPrintFormatter;->access$200(Lcom/htc/gson/JsonPrintFormatter;)I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/htc/gson/JsonPrintFormatter$JsonWriter;->line:Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private finishLine()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/gson/JsonPrintFormatter$JsonWriter;->line:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/gson/JsonPrintFormatter$JsonWriter;->writer:Ljava/lang/Appendable;

    iget-object v1, p0, Lcom/htc/gson/JsonPrintFormatter$JsonWriter;->line:Ljava/lang/StringBuilder;

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v0

    const-string v1, "\n"

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/gson/JsonPrintFormatter$JsonWriter;->line:Ljava/lang/StringBuilder;

    return-void
.end method

.method private getLine()Ljava/lang/StringBuilder;
    .locals 1

    iget-object v0, p0, Lcom/htc/gson/JsonPrintFormatter$JsonWriter;->line:Ljava/lang/StringBuilder;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/htc/gson/JsonPrintFormatter$JsonWriter;->createNewLine()V

    :cond_0
    iget-object v0, p0, Lcom/htc/gson/JsonPrintFormatter$JsonWriter;->line:Ljava/lang/StringBuilder;

    return-object v0
.end method


# virtual methods
.method beginArray()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/htc/gson/JsonPrintFormatter$JsonWriter;->breakLineIfNeeded()V

    invoke-direct {p0}, Lcom/htc/gson/JsonPrintFormatter$JsonWriter;->getLine()Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/htc/gson/JsonPrintFormatter$JsonWriter;->level:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/gson/JsonPrintFormatter$JsonWriter;->level:I

    return-void
.end method

.method beginObject()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/htc/gson/JsonPrintFormatter$JsonWriter;->breakLineIfNeeded()V

    invoke-direct {p0}, Lcom/htc/gson/JsonPrintFormatter$JsonWriter;->getLine()Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/htc/gson/JsonPrintFormatter$JsonWriter;->level:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/gson/JsonPrintFormatter$JsonWriter;->level:I

    return-void
.end method

.method elementSeparator()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/htc/gson/JsonPrintFormatter$JsonWriter;->getLine()Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/htc/gson/JsonPrintFormatter$JsonWriter;->breakLineIfNeeded()V

    return-void
.end method

.method endArray()V
    .locals 2

    invoke-direct {p0}, Lcom/htc/gson/JsonPrintFormatter$JsonWriter;->getLine()Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/htc/gson/JsonPrintFormatter$JsonWriter;->level:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/gson/JsonPrintFormatter$JsonWriter;->level:I

    return-void
.end method

.method endObject()V
    .locals 2

    invoke-direct {p0}, Lcom/htc/gson/JsonPrintFormatter$JsonWriter;->getLine()Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/htc/gson/JsonPrintFormatter$JsonWriter;->level:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/gson/JsonPrintFormatter$JsonWriter;->level:I

    return-void
.end method

.method fieldSeparator()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/htc/gson/JsonPrintFormatter$JsonWriter;->getLine()Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/htc/gson/JsonPrintFormatter$JsonWriter;->breakLineIfNeeded()V

    return-void
.end method

.method key(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v1, 0x22

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    invoke-direct {p0, v0}, Lcom/htc/gson/JsonPrintFormatter$JsonWriter;->breakLineIfThisToNextExceedsLimit(I)V

    invoke-direct {p0}, Lcom/htc/gson/JsonPrintFormatter$JsonWriter;->getLine()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/htc/gson/JsonPrintFormatter$JsonWriter;->getLine()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/htc/gson/JsonPrintFormatter$JsonWriter;->getLine()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method value(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    invoke-direct {p0, v0}, Lcom/htc/gson/JsonPrintFormatter$JsonWriter;->breakLineIfThisToNextExceedsLimit(I)V

    invoke-direct {p0}, Lcom/htc/gson/JsonPrintFormatter$JsonWriter;->getLine()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method
