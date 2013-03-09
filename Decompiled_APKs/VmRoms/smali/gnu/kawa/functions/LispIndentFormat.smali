.class Lgnu/kawa/functions/LispIndentFormat;
.super Lgnu/text/ReportFormat;
.source "LispFormat.java"


# instance fields
.field columns:I

.field current:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 708
    invoke-direct {p0}, Lgnu/text/ReportFormat;-><init>()V

    return-void
.end method

.method public static getInstance(IZ)Lgnu/kawa/functions/LispIndentFormat;
    .locals 1
    .parameter "columns"
    .parameter "current"

    .prologue
    .line 717
    new-instance v0, Lgnu/kawa/functions/LispIndentFormat;

    invoke-direct {v0}, Lgnu/kawa/functions/LispIndentFormat;-><init>()V

    .line 718
    .local v0, fmt:Lgnu/kawa/functions/LispIndentFormat;
    iput p0, v0, Lgnu/kawa/functions/LispIndentFormat;->columns:I

    .line 719
    iput-boolean p1, v0, Lgnu/kawa/functions/LispIndentFormat;->current:Z

    .line 720
    return-object v0
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
    .line 727
    iget v1, p0, Lgnu/kawa/functions/LispIndentFormat;->columns:I

    const/4 v2, 0x0

    invoke-static {v1, v2, p1, p2}, Lgnu/kawa/functions/LispIndentFormat;->getParam(II[Ljava/lang/Object;I)I

    move-result v0

    .line 728
    .local v0, columns:I
    iget v1, p0, Lgnu/kawa/functions/LispIndentFormat;->columns:I

    const/high16 v2, -0x6000

    if-ne v1, v2, :cond_0

    add-int/lit8 p2, p2, 0x1

    .line 729
    :cond_0
    instance-of v1, p3, Lgnu/mapping/OutPort;

    if-eqz v1, :cond_1

    .line 730
    check-cast p3, Lgnu/mapping/OutPort;

    .end local p3
    iget-boolean v1, p0, Lgnu/kawa/functions/LispIndentFormat;->current:Z

    invoke-virtual {p3, v0, v1}, Lgnu/mapping/OutPort;->setIndentation(IZ)V

    .line 731
    :cond_1
    return p2
.end method
