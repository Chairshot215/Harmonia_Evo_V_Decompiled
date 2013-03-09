.class final Lcom/google/protobuf/TextFormat$TextGenerator;
.super Ljava/lang/Object;
.source "TextFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/TextFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TextGenerator"
.end annotation


# instance fields
.field private atStartOfLine:Z

.field private final indent:Ljava/lang/StringBuilder;

.field private output:Ljava/lang/Appendable;


# direct methods
.method private constructor <init>(Ljava/lang/Appendable;)V
    .locals 1
    .parameter "output"

    .prologue
    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 317
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/protobuf/TextFormat$TextGenerator;->atStartOfLine:Z

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/TextFormat$TextGenerator;->indent:Ljava/lang/StringBuilder;

    .line 321
    iput-object p1, p0, Lcom/google/protobuf/TextFormat$TextGenerator;->output:Ljava/lang/Appendable;

    .line 322
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Appendable;Lcom/google/protobuf/TextFormat$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 315
    invoke-direct {p0, p1}, Lcom/google/protobuf/TextFormat$TextGenerator;-><init>(Ljava/lang/Appendable;)V

    return-void
.end method

.method private write(Ljava/lang/CharSequence;I)V
    .locals 2
    .parameter "data"
    .parameter "size"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 365
    if-nez p2, :cond_0

    .line 373
    :goto_0
    return-void

    .line 368
    :cond_0
    iget-boolean v0, p0, Lcom/google/protobuf/TextFormat$TextGenerator;->atStartOfLine:Z

    if-eqz v0, :cond_1

    .line 369
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/TextFormat$TextGenerator;->atStartOfLine:Z

    .line 370
    iget-object v0, p0, Lcom/google/protobuf/TextFormat$TextGenerator;->output:Ljava/lang/Appendable;

    iget-object v1, p0, Lcom/google/protobuf/TextFormat$TextGenerator;->indent:Ljava/lang/StringBuilder;

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 372
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/TextFormat$TextGenerator;->output:Ljava/lang/Appendable;

    invoke-interface {v0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_0
.end method


# virtual methods
.method public indent()V
    .locals 2

    .prologue
    .line 330
    iget-object v0, p0, Lcom/google/protobuf/TextFormat$TextGenerator;->indent:Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    return-void
.end method

.method public outdent()V
    .locals 3

    .prologue
    .line 338
    iget-object v1, p0, Lcom/google/protobuf/TextFormat$TextGenerator;->indent:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 339
    .local v0, length:I
    if-nez v0, :cond_0

    .line 340
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, " Outdent() without matching Indent()."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 343
    :cond_0
    iget-object v1, p0, Lcom/google/protobuf/TextFormat$TextGenerator;->indent:Ljava/lang/StringBuilder;

    add-int/lit8 v2, v0, -0x2

    invoke-virtual {v1, v2, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 344
    return-void
.end method

.method public print(Ljava/lang/CharSequence;)V
    .locals 5
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 350
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 351
    .local v2, size:I
    const/4 v1, 0x0

    .line 353
    .local v1, pos:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 354
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_0

    .line 355
    invoke-interface {p1, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    sub-int v4, v0, v1

    add-int/lit8 v4, v4, 0x1

    invoke-direct {p0, v3, v4}, Lcom/google/protobuf/TextFormat$TextGenerator;->write(Ljava/lang/CharSequence;I)V

    .line 356
    add-int/lit8 v1, v0, 0x1

    .line 357
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/google/protobuf/TextFormat$TextGenerator;->atStartOfLine:Z

    .line 353
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 360
    :cond_1
    invoke-interface {p1, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    sub-int v4, v2, v1

    invoke-direct {p0, v3, v4}, Lcom/google/protobuf/TextFormat$TextGenerator;->write(Ljava/lang/CharSequence;I)V

    .line 361
    return-void
.end method
