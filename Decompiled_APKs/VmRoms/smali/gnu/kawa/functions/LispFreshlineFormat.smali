.class Lgnu/kawa/functions/LispFreshlineFormat;
.super Lgnu/text/ReportFormat;
.source "LispFormat.java"


# instance fields
.field count:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "count"

    .prologue
    .line 1110
    invoke-direct {p0}, Lgnu/text/ReportFormat;-><init>()V

    .line 1111
    iput p1, p0, Lgnu/kawa/functions/LispFreshlineFormat;->count:I

    .line 1112
    return-void
.end method


# virtual methods
.method public format([Ljava/lang/Object;ILjava/io/Writer;Ljava/text/FieldPosition;)I
    .locals 4
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
    .line 1117
    iget v2, p0, Lgnu/kawa/functions/LispFreshlineFormat;->count:I

    const/4 v3, 0x1

    invoke-static {v2, v3, p1, p2}, Lgnu/kawa/functions/LispFreshlineFormat;->getParam(II[Ljava/lang/Object;I)I

    move-result v1

    .line 1118
    .local v1, count:I
    iget v2, p0, Lgnu/kawa/functions/LispFreshlineFormat;->count:I

    const/high16 v3, -0x6000

    if-ne v2, v3, :cond_0

    add-int/lit8 p2, p2, 0x1

    .line 1119
    :cond_0
    if-lez v1, :cond_2

    .line 1121
    instance-of v2, p3, Lgnu/mapping/OutPort;

    if-eqz v2, :cond_1

    .line 1123
    move-object v0, p3

    check-cast v0, Lgnu/mapping/OutPort;

    move-object v2, v0

    invoke-virtual {v2}, Lgnu/mapping/OutPort;->freshLine()V

    .line 1124
    add-int/lit8 v1, v1, -0x1

    .line 1126
    :cond_1
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_2

    .line 1127
    const/16 v2, 0xa

    invoke-virtual {p3, v2}, Ljava/io/Writer;->write(I)V

    goto :goto_0

    .line 1129
    :cond_2
    return p2
.end method
