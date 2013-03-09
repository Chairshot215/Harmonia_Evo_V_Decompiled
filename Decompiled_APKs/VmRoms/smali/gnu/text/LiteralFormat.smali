.class public Lgnu/text/LiteralFormat;
.super Lgnu/text/ReportFormat;
.source "LiteralFormat.java"


# instance fields
.field text:[C


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 15
    invoke-direct {p0}, Lgnu/text/ReportFormat;-><init>()V

    .line 16
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lgnu/text/LiteralFormat;->text:[C

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/StringBuffer;)V
    .locals 3
    .parameter "sbuf"

    .prologue
    const/4 v2, 0x0

    .line 20
    invoke-direct {p0}, Lgnu/text/ReportFormat;-><init>()V

    .line 21
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    .line 22
    .local v0, len:I
    new-array v1, v0, [C

    iput-object v1, p0, Lgnu/text/LiteralFormat;->text:[C

    .line 23
    iget-object v1, p0, Lgnu/text/LiteralFormat;->text:[C

    invoke-virtual {p1, v2, v0, v1, v2}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    .line 24
    return-void
.end method

.method public constructor <init>([C)V
    .locals 0
    .parameter "text"

    .prologue
    .line 10
    invoke-direct {p0}, Lgnu/text/ReportFormat;-><init>()V

    .line 11
    iput-object p1, p0, Lgnu/text/LiteralFormat;->text:[C

    .line 12
    return-void
.end method


# virtual methods
.method public content()Ljava/lang/String;
    .locals 2

    .prologue
    .line 41
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lgnu/text/LiteralFormat;->text:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public format([Ljava/lang/Object;ILjava/io/Writer;Ljava/text/FieldPosition;)I
    .locals 1
    .parameter "args"
    .parameter "start"
    .parameter "dst"
    .parameter "fpos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 29
    iget-object v0, p0, Lgnu/text/LiteralFormat;->text:[C

    invoke-virtual {p3, v0}, Ljava/io/Writer;->write([C)V

    .line 30
    return p2
.end method

.method public parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .locals 2
    .parameter "text"
    .parameter "status"

    .prologue
    .line 35
    new-instance v0, Ljava/lang/Error;

    const-string v1, "LiteralFormat.parseObject - not implemented"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 46
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "LiteralFormat[\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 47
    .local v0, sbuf:Ljava/lang/StringBuffer;
    iget-object v1, p0, Lgnu/text/LiteralFormat;->text:[C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 48
    const-string v1, "\"]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
