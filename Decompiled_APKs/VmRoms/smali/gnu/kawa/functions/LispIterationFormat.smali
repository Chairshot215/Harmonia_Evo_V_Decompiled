.class Lgnu/kawa/functions/LispIterationFormat;
.super Lgnu/text/ReportFormat;
.source "LispFormat.java"


# instance fields
.field atLeastOnce:Z

.field body:Ljava/text/Format;

.field maxIterations:I

.field seenAt:Z

.field seenColon:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 935
    invoke-direct {p0}, Lgnu/text/ReportFormat;-><init>()V

    return-void
.end method

.method public static format(Ljava/text/Format;I[Ljava/lang/Object;ILjava/io/Writer;ZZ)I
    .locals 7
    .parameter "body"
    .parameter "maxIterations"
    .parameter "args"
    .parameter "start"
    .parameter "dst"
    .parameter "seenColon"
    .parameter "atLeastOnce"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 949
    const/4 v2, 0x0

    .line 951
    .local v2, i:I
    :goto_0
    if-ne v2, p1, :cond_1

    const/4 v4, -0x1

    if-eq p1, v4, :cond_1

    .line 977
    :cond_0
    :goto_1
    return p3

    .line 953
    :cond_1
    array-length v4, p2

    if-ne p3, v4, :cond_2

    if-gtz v2, :cond_0

    if-eqz p6, :cond_0

    .line 955
    :cond_2
    if-eqz p5, :cond_5

    .line 957
    aget-object v0, p2, p3

    .line 958
    .local v0, curArg:Ljava/lang/Object;
    invoke-static {v0}, Lgnu/kawa/functions/LispFormat;->asArray(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .line 959
    .local v1, curArr:[Ljava/lang/Object;
    if-nez v1, :cond_3

    .line 962
    :cond_3
    const/4 v4, 0x0

    invoke-static {p0, v1, v4, p4, v6}, Lgnu/text/ReportFormat;->format(Ljava/text/Format;[Ljava/lang/Object;ILjava/io/Writer;Ljava/text/FieldPosition;)I

    move-result v3

    .line 963
    .local v3, result:I
    add-int/lit8 p3, p3, 0x1

    .line 964
    invoke-static {v3}, Lgnu/text/ReportFormat;->resultCode(I)I

    move-result v4

    const/16 v5, 0xf2

    if-eq v4, v5, :cond_0

    .line 949
    .end local v0           #curArg:Ljava/lang/Object;
    .end local v1           #curArr:[Ljava/lang/Object;
    .end local v3           #result:I
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 969
    :cond_5
    invoke-static {p0, p2, p3, p4, v6}, Lgnu/text/ReportFormat;->format(Ljava/text/Format;[Ljava/lang/Object;ILjava/io/Writer;Ljava/text/FieldPosition;)I

    move-result p3

    .line 970
    if-gez p3, :cond_4

    .line 972
    invoke-static {p3}, Lgnu/text/ReportFormat;->nextArg(I)I

    move-result p3

    .line 973
    goto :goto_1
.end method


# virtual methods
.method public format([Ljava/lang/Object;ILjava/io/Writer;Ljava/text/FieldPosition;)I
    .locals 12
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
    .line 984
    iget v4, p0, Lgnu/kawa/functions/LispIterationFormat;->maxIterations:I

    const/4 v5, -0x1

    invoke-static {v4, v5, p1, p2}, Lgnu/kawa/functions/LispIterationFormat;->getParam(II[Ljava/lang/Object;I)I

    move-result v2

    .line 986
    .local v2, maxIterations:I
    iget v4, p0, Lgnu/kawa/functions/LispIterationFormat;->maxIterations:I

    const/high16 v5, -0x6000

    if-ne v4, v5, :cond_0

    add-int/lit8 p2, p2, 0x1

    .line 988
    :cond_0
    iget-object v1, p0, Lgnu/kawa/functions/LispIterationFormat;->body:Ljava/text/Format;

    .line 989
    .local v1, body:Ljava/text/Format;
    if-nez v1, :cond_1

    .line 992
    add-int/lit8 v11, p2, 0x1

    .end local p2
    .local v11, start:I
    aget-object v8, p1, p2

    .line 993
    .local v8, arg:Ljava/lang/Object;
    instance-of v4, v8, Ljava/text/Format;

    if-eqz v4, :cond_2

    .line 994
    move-object v0, v8

    check-cast v0, Ljava/text/Format;

    move-object v1, v0

    move p2, v11

    .line 1008
    .end local v8           #arg:Ljava/lang/Object;
    .end local v11           #start:I
    .restart local p2
    :cond_1
    :goto_0
    iget-boolean v4, p0, Lgnu/kawa/functions/LispIterationFormat;->seenAt:Z

    if-eqz v4, :cond_3

    .line 1010
    iget-boolean v6, p0, Lgnu/kawa/functions/LispIterationFormat;->seenColon:Z

    iget-boolean v7, p0, Lgnu/kawa/functions/LispIterationFormat;->atLeastOnce:Z

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-static/range {v1 .. v7}, Lgnu/kawa/functions/LispIterationFormat;->format(Ljava/text/Format;I[Ljava/lang/Object;ILjava/io/Writer;ZZ)I

    move-result v4

    .line 1022
    :goto_1
    return v4

    .line 999
    .end local p2
    .restart local v8       #arg:Ljava/lang/Object;
    .restart local v11       #start:I
    :cond_2
    :try_start_0
    new-instance v9, Lgnu/kawa/functions/LispFormat;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v9, v4}, Lgnu/kawa/functions/LispFormat;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #body:Ljava/text/Format;
    .local v9, body:Ljava/text/Format;
    move-object v1, v9

    .end local v9           #body:Ljava/text/Format;
    .restart local v1       #body:Ljava/text/Format;
    move p2, v11

    .line 1005
    .end local v11           #start:I
    .restart local p2
    goto :goto_0

    .line 1001
    .end local p2
    .restart local v11       #start:I
    :catch_0
    move-exception v4

    move-object v10, v4

    .line 1003
    .local v10, ex:Ljava/lang/Exception;
    const-string v4, "<invalid argument for \"~{~}\" format>"

    invoke-static {p3, v4}, Lgnu/kawa/functions/LispIterationFormat;->print(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1004
    array-length v4, p1

    move p2, v11

    .end local v11           #start:I
    .restart local p2
    goto :goto_1

    .line 1015
    .end local v8           #arg:Ljava/lang/Object;
    .end local v10           #ex:Ljava/lang/Exception;
    :cond_3
    aget-object v8, p1, p2

    .line 1016
    .restart local v8       #arg:Ljava/lang/Object;
    invoke-static {v8}, Lgnu/kawa/functions/LispFormat;->asArray(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    .line 1017
    .local v3, curArgs:[Ljava/lang/Object;
    if-nez v3, :cond_4

    .line 1018
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "{"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "}"

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1022
    :goto_2
    add-int/lit8 v4, p2, 0x1

    goto :goto_1

    .line 1020
    :cond_4
    const/4 v4, 0x0

    iget-boolean v6, p0, Lgnu/kawa/functions/LispIterationFormat;->seenColon:Z

    iget-boolean v7, p0, Lgnu/kawa/functions/LispIterationFormat;->atLeastOnce:Z

    move-object v5, p3

    invoke-static/range {v1 .. v7}, Lgnu/kawa/functions/LispIterationFormat;->format(Ljava/text/Format;I[Ljava/lang/Object;ILjava/io/Writer;ZZ)I

    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1028
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1029
    .local v0, sbuf:Ljava/lang/StringBuffer;
    const-string v1, "LispIterationFormat["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1030
    iget-object v1, p0, Lgnu/kawa/functions/LispIterationFormat;->body:Ljava/text/Format;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 1031
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1032
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
