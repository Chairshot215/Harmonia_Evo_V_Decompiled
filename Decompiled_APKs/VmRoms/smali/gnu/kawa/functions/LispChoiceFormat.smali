.class Lgnu/kawa/functions/LispChoiceFormat;
.super Lgnu/text/ReportFormat;
.source "LispFormat.java"


# instance fields
.field choices:[Ljava/text/Format;

.field lastIsDefault:Z

.field param:I

.field skipIfFalse:Z

.field testBoolean:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1036
    invoke-direct {p0}, Lgnu/text/ReportFormat;-><init>()V

    return-void
.end method


# virtual methods
.method public format([Ljava/lang/Object;ILjava/io/Writer;Ljava/text/FieldPosition;)I
    .locals 7
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
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/high16 v3, -0x6000

    .line 1048
    iget-boolean v2, p0, Lgnu/kawa/functions/LispChoiceFormat;->testBoolean:Z

    if-eqz v2, :cond_1

    .line 1050
    iget-object v2, p0, Lgnu/kawa/functions/LispChoiceFormat;->choices:[Ljava/text/Format;

    aget-object v3, p1, p2

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v3, v4, :cond_0

    move v3, v5

    :goto_0
    aget-object v0, v2, v3

    .line 1051
    .local v0, fmt:Ljava/text/Format;
    add-int/lit8 p2, p2, 0x1

    .line 1073
    :goto_1
    invoke-static {v0, p1, p2, p3, p4}, Lgnu/text/ReportFormat;->format(Ljava/text/Format;[Ljava/lang/Object;ILjava/io/Writer;Ljava/text/FieldPosition;)I

    move-result v2

    .end local v0           #fmt:Ljava/text/Format;
    :goto_2
    return v2

    :cond_0
    move v3, v6

    .line 1050
    goto :goto_0

    .line 1053
    :cond_1
    iget-boolean v2, p0, Lgnu/kawa/functions/LispChoiceFormat;->skipIfFalse:Z

    if-nez v2, :cond_6

    .line 1055
    iget v2, p0, Lgnu/kawa/functions/LispChoiceFormat;->param:I

    invoke-static {v2, v3, p1, p2}, Lgnu/kawa/functions/LispChoiceFormat;->getParam(II[Ljava/lang/Object;I)I

    move-result v1

    .line 1057
    .local v1, index:I
    iget v2, p0, Lgnu/kawa/functions/LispChoiceFormat;->param:I

    if-ne v2, v3, :cond_2

    add-int/lit8 p2, p2, 0x1

    .line 1058
    :cond_2
    if-ltz v1, :cond_3

    iget-object v2, p0, Lgnu/kawa/functions/LispChoiceFormat;->choices:[Ljava/text/Format;

    array-length v2, v2

    if-lt v1, v2, :cond_4

    .line 1060
    :cond_3
    iget-boolean v2, p0, Lgnu/kawa/functions/LispChoiceFormat;->lastIsDefault:Z

    if-eqz v2, :cond_5

    .line 1061
    iget-object v2, p0, Lgnu/kawa/functions/LispChoiceFormat;->choices:[Ljava/text/Format;

    array-length v2, v2

    sub-int v1, v2, v6

    .line 1065
    :cond_4
    iget-object v2, p0, Lgnu/kawa/functions/LispChoiceFormat;->choices:[Ljava/text/Format;

    aget-object v0, v2, v1

    .line 1066
    .restart local v0       #fmt:Ljava/text/Format;
    goto :goto_1

    .end local v0           #fmt:Ljava/text/Format;
    :cond_5
    move v2, p2

    .line 1063
    goto :goto_2

    .line 1069
    .end local v1           #index:I
    :cond_6
    aget-object v2, p1, p2

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v2, v3, :cond_7

    .line 1070
    add-int/lit8 v2, p2, 0x1

    goto :goto_2

    .line 1071
    :cond_7
    iget-object v2, p0, Lgnu/kawa/functions/LispChoiceFormat;->choices:[Ljava/text/Format;

    aget-object v0, v2, v5

    .restart local v0       #fmt:Ljava/text/Format;
    goto :goto_1
.end method
