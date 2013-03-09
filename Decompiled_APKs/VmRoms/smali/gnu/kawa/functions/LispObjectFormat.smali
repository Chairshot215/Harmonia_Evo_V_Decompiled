.class Lgnu/kawa/functions/LispObjectFormat;
.super Lgnu/text/ReportFormat;
.source "LispFormat.java"


# instance fields
.field base:Lgnu/text/ReportFormat;

.field colInc:I

.field minPad:I

.field minWidth:I

.field padChar:I

.field where:I


# direct methods
.method public constructor <init>(Lgnu/text/ReportFormat;IIIII)V
    .locals 0
    .parameter "base"
    .parameter "minWidth"
    .parameter "colInc"
    .parameter "minPad"
    .parameter "padChar"
    .parameter "where"

    .prologue
    .line 751
    invoke-direct {p0}, Lgnu/text/ReportFormat;-><init>()V

    .line 752
    iput-object p1, p0, Lgnu/kawa/functions/LispObjectFormat;->base:Lgnu/text/ReportFormat;

    .line 753
    iput p2, p0, Lgnu/kawa/functions/LispObjectFormat;->minWidth:I

    .line 754
    iput p3, p0, Lgnu/kawa/functions/LispObjectFormat;->colInc:I

    .line 755
    iput p4, p0, Lgnu/kawa/functions/LispObjectFormat;->minPad:I

    .line 756
    iput p5, p0, Lgnu/kawa/functions/LispObjectFormat;->padChar:I

    .line 757
    iput p6, p0, Lgnu/kawa/functions/LispObjectFormat;->where:I

    .line 758
    return-void
.end method


# virtual methods
.method public format([Ljava/lang/Object;ILjava/io/Writer;Ljava/text/FieldPosition;)I
    .locals 10
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
    const/4 v3, 0x0

    const/high16 v2, -0x6000

    .line 764
    iget v0, p0, Lgnu/kawa/functions/LispObjectFormat;->minWidth:I

    invoke-static {v0, v3, p1, p2}, Lgnu/kawa/functions/LispObjectFormat;->getParam(II[Ljava/lang/Object;I)I

    move-result v5

    .line 765
    .local v5, minWidth:I
    iget v0, p0, Lgnu/kawa/functions/LispObjectFormat;->minWidth:I

    if-ne v0, v2, :cond_0

    add-int/lit8 p2, p2, 0x1

    .line 766
    :cond_0
    iget v0, p0, Lgnu/kawa/functions/LispObjectFormat;->colInc:I

    const/4 v1, 0x1

    invoke-static {v0, v1, p1, p2}, Lgnu/kawa/functions/LispObjectFormat;->getParam(II[Ljava/lang/Object;I)I

    move-result v6

    .line 767
    .local v6, colInc:I
    iget v0, p0, Lgnu/kawa/functions/LispObjectFormat;->colInc:I

    if-ne v0, v2, :cond_1

    add-int/lit8 p2, p2, 0x1

    .line 768
    :cond_1
    iget v0, p0, Lgnu/kawa/functions/LispObjectFormat;->minPad:I

    invoke-static {v0, v3, p1, p2}, Lgnu/kawa/functions/LispObjectFormat;->getParam(II[Ljava/lang/Object;I)I

    move-result v7

    .line 769
    .local v7, minPad:I
    iget v0, p0, Lgnu/kawa/functions/LispObjectFormat;->minPad:I

    if-ne v0, v2, :cond_2

    add-int/lit8 p2, p2, 0x1

    .line 770
    :cond_2
    iget v0, p0, Lgnu/kawa/functions/LispObjectFormat;->padChar:I

    const/16 v1, 0x20

    invoke-static {v0, v1, p1, p2}, Lgnu/kawa/functions/LispObjectFormat;->getParam(IC[Ljava/lang/Object;I)C

    move-result v4

    .line 771
    .local v4, padChar:C
    iget v0, p0, Lgnu/kawa/functions/LispObjectFormat;->padChar:I

    if-ne v0, v2, :cond_3

    add-int/lit8 p2, p2, 0x1

    .line 772
    :cond_3
    iget-object v0, p0, Lgnu/kawa/functions/LispObjectFormat;->base:Lgnu/text/ReportFormat;

    iget v8, p0, Lgnu/kawa/functions/LispObjectFormat;->where:I

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v9, p4

    invoke-static/range {v0 .. v9}, Lgnu/text/PadFormat;->format(Ljava/text/Format;[Ljava/lang/Object;ILjava/io/Writer;CIIIILjava/text/FieldPosition;)I

    move-result v0

    return v0
.end method
