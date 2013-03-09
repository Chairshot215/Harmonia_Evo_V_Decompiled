.class Lgnu/kawa/functions/LispNewlineFormat;
.super Lgnu/text/ReportFormat;
.source "LispFormat.java"


# static fields
.field static final line_separator:Ljava/lang/String;


# instance fields
.field count:I

.field kind:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 664
    const-string v0, "line.separator"

    const-string v1, "\n"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgnu/kawa/functions/LispNewlineFormat;->line_separator:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 662
    invoke-direct {p0}, Lgnu/text/ReportFormat;-><init>()V

    return-void
.end method

.method public static getInstance(II)Lgnu/kawa/functions/LispNewlineFormat;
    .locals 1
    .parameter "count"
    .parameter "kind"

    .prologue
    .line 676
    new-instance v0, Lgnu/kawa/functions/LispNewlineFormat;

    invoke-direct {v0}, Lgnu/kawa/functions/LispNewlineFormat;-><init>()V

    .line 677
    .local v0, fmt:Lgnu/kawa/functions/LispNewlineFormat;
    iput p0, v0, Lgnu/kawa/functions/LispNewlineFormat;->count:I

    .line 678
    iput p1, v0, Lgnu/kawa/functions/LispNewlineFormat;->kind:I

    .line 679
    return-object v0
.end method

.method public static printNewline(ILjava/io/Writer;)V
    .locals 1
    .parameter "kind"
    .parameter "dst"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 696
    instance-of v0, p1, Lgnu/mapping/OutPort;

    if-eqz v0, :cond_0

    const/16 v0, 0x4c

    if-eq p0, v0, :cond_0

    .line 697
    check-cast p1, Lgnu/mapping/OutPort;

    .end local p1
    invoke-virtual {p1, p0}, Lgnu/mapping/OutPort;->writeBreak(I)V

    .line 703
    :goto_0
    return-void

    .line 698
    .restart local p1
    :cond_0
    instance-of v0, p1, Ljava/io/PrintWriter;

    if-eqz v0, :cond_1

    .line 700
    check-cast p1, Ljava/io/PrintWriter;

    .end local p1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_0

    .line 702
    .restart local p1
    :cond_1
    sget-object v0, Lgnu/kawa/functions/LispNewlineFormat;->line_separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public format([Ljava/lang/Object;ILjava/io/Writer;Ljava/text/FieldPosition;)I
    .locals 3
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
    .line 686
    iget v1, p0, Lgnu/kawa/functions/LispNewlineFormat;->count:I

    const/4 v2, 0x1

    invoke-static {v1, v2, p1, p2}, Lgnu/kawa/functions/LispNewlineFormat;->getParam(II[Ljava/lang/Object;I)I

    move-result v0

    .line 687
    .local v0, count:I
    iget v1, p0, Lgnu/kawa/functions/LispNewlineFormat;->count:I

    const/high16 v2, -0x6000

    if-ne v1, v2, :cond_0

    add-int/lit8 p2, p2, 0x1

    .line 688
    :cond_0
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    .line 689
    iget v1, p0, Lgnu/kawa/functions/LispNewlineFormat;->kind:I

    invoke-static {v1, p3}, Lgnu/kawa/functions/LispNewlineFormat;->printNewline(ILjava/io/Writer;)V

    goto :goto_0

    .line 690
    :cond_1
    return p2
.end method
