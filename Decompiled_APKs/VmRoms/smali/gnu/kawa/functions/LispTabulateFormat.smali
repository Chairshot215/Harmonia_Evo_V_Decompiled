.class Lgnu/kawa/functions/LispTabulateFormat;
.super Lgnu/text/ReportFormat;
.source "LispFormat.java"


# instance fields
.field colinc:I

.field colnum:I

.field padChar:I

.field relative:Z


# direct methods
.method public constructor <init>(IIIZ)V
    .locals 0
    .parameter "colnum"
    .parameter "colinc"
    .parameter "padChar"
    .parameter "relative"

    .prologue
    .line 1142
    invoke-direct {p0}, Lgnu/text/ReportFormat;-><init>()V

    .line 1143
    iput p1, p0, Lgnu/kawa/functions/LispTabulateFormat;->colnum:I

    .line 1144
    iput p2, p0, Lgnu/kawa/functions/LispTabulateFormat;->colinc:I

    .line 1145
    iput-boolean p4, p0, Lgnu/kawa/functions/LispTabulateFormat;->relative:Z

    .line 1146
    iput p3, p0, Lgnu/kawa/functions/LispTabulateFormat;->padChar:I

    .line 1147
    return-void
.end method


# virtual methods
.method public format([Ljava/lang/Object;ILjava/io/Writer;Ljava/text/FieldPosition;)I
    .locals 9
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
    const/4 v7, 0x1

    const/high16 v8, -0x6000

    .line 1152
    iget v6, p0, Lgnu/kawa/functions/LispTabulateFormat;->colnum:I

    invoke-static {v6, v7, p1, p2}, Lgnu/kawa/functions/LispTabulateFormat;->getParam(II[Ljava/lang/Object;I)I

    move-result v2

    .line 1153
    .local v2, colnum:I
    iget v6, p0, Lgnu/kawa/functions/LispTabulateFormat;->colnum:I

    if-ne v6, v8, :cond_0

    add-int/lit8 p2, p2, 0x1

    .line 1154
    :cond_0
    iget v6, p0, Lgnu/kawa/functions/LispTabulateFormat;->colinc:I

    invoke-static {v6, v7, p1, p2}, Lgnu/kawa/functions/LispTabulateFormat;->getParam(II[Ljava/lang/Object;I)I

    move-result v1

    .line 1155
    .local v1, colinc:I
    iget v6, p0, Lgnu/kawa/functions/LispTabulateFormat;->colinc:I

    if-ne v6, v8, :cond_1

    add-int/lit8 p2, p2, 0x1

    .line 1157
    :cond_1
    iget v6, p0, Lgnu/kawa/functions/LispTabulateFormat;->padChar:I

    const/16 v7, 0x20

    invoke-static {v6, v7, p1, p2}, Lgnu/kawa/functions/LispTabulateFormat;->getParam(IC[Ljava/lang/Object;I)C

    move-result v4

    .line 1158
    .local v4, padChar:C
    iget v6, p0, Lgnu/kawa/functions/LispTabulateFormat;->padChar:I

    if-ne v6, v8, :cond_2

    add-int/lit8 p2, p2, 0x1

    .line 1159
    :cond_2
    const/4 v3, -0x1

    .line 1160
    .local v3, column:I
    instance-of v6, p3, Lgnu/mapping/OutPort;

    if-eqz v6, :cond_3

    .line 1161
    move-object v0, p3

    check-cast v0, Lgnu/mapping/OutPort;

    move-object v6, v0

    invoke-virtual {v6}, Lgnu/mapping/OutPort;->getColumnNumber()I

    move-result v3

    .line 1163
    :cond_3
    if-ltz v3, :cond_7

    .line 1165
    iget-boolean v6, p0, Lgnu/kawa/functions/LispTabulateFormat;->relative:Z

    if-nez v6, :cond_6

    .line 1167
    if-ge v3, v2, :cond_4

    .line 1168
    sub-int v5, v2, v3

    .line 1183
    .local v5, spaces:I
    :goto_0
    add-int/lit8 v5, v5, -0x1

    if-ltz v5, :cond_9

    .line 1184
    invoke-virtual {p3, v4}, Ljava/io/Writer;->write(I)V

    goto :goto_0

    .line 1169
    .end local v5           #spaces:I
    :cond_4
    if-gtz v1, :cond_5

    .line 1170
    const/4 v5, 0x0

    .restart local v5       #spaces:I
    goto :goto_0

    .line 1172
    .end local v5           #spaces:I
    :cond_5
    sub-int v6, v3, v2

    rem-int/2addr v6, v1

    sub-int v5, v1, v6

    .restart local v5       #spaces:I
    goto :goto_0

    .line 1176
    .end local v5           #spaces:I
    :cond_6
    add-int v6, v2, v1

    add-int v7, v3, v2

    rem-int/2addr v7, v1

    sub-int v5, v6, v7

    .restart local v5       #spaces:I
    goto :goto_0

    .line 1181
    .end local v5           #spaces:I
    :cond_7
    iget-boolean v6, p0, Lgnu/kawa/functions/LispTabulateFormat;->relative:Z

    if-eqz v6, :cond_8

    move v5, v2

    .restart local v5       #spaces:I
    :goto_1
    goto :goto_0

    .end local v5           #spaces:I
    :cond_8
    const/4 v6, 0x2

    move v5, v6

    goto :goto_1

    .line 1185
    .restart local v5       #spaces:I
    :cond_9
    return p2
.end method
