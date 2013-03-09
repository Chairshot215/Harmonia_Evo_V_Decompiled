.class Lgnu/kawa/functions/LispPrettyFormat;
.super Lgnu/text/ReportFormat;
.source "LispFormat.java"


# instance fields
.field body:Ljava/text/Format;

.field perLine:Z

.field prefix:Ljava/lang/String;

.field seenAt:Z

.field segments:[Ljava/text/Format;

.field suffix:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 875
    invoke-direct {p0}, Lgnu/text/ReportFormat;-><init>()V

    return-void
.end method


# virtual methods
.method public format([Ljava/lang/Object;ILjava/io/Writer;Ljava/text/FieldPosition;)I
    .locals 8
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
    .line 888
    iget-object v4, p0, Lgnu/kawa/functions/LispPrettyFormat;->prefix:Ljava/lang/String;

    .line 889
    .local v4, pre:Ljava/lang/String;
    iget-object v5, p0, Lgnu/kawa/functions/LispPrettyFormat;->suffix:Ljava/lang/String;

    .line 890
    .local v5, suf:Ljava/lang/String;
    instance-of v6, p3, Lgnu/mapping/OutPort;

    if-eqz v6, :cond_2

    move-object v0, p3

    check-cast v0, Lgnu/mapping/OutPort;

    move-object v6, v0

    move-object v3, v6

    .line 893
    .local v3, out:Lgnu/mapping/OutPort;
    :goto_0
    :try_start_0
    iget-boolean v6, p0, Lgnu/kawa/functions/LispPrettyFormat;->seenAt:Z

    if-eqz v6, :cond_3

    .line 895
    if-eqz v3, :cond_0

    .line 896
    iget-boolean v6, p0, Lgnu/kawa/functions/LispPrettyFormat;->perLine:Z

    iget-object v7, p0, Lgnu/kawa/functions/LispPrettyFormat;->suffix:Ljava/lang/String;

    invoke-virtual {v3, v4, v6, v7}, Lgnu/mapping/OutPort;->startLogicalBlock(Ljava/lang/String;ZLjava/lang/String;)V

    .line 897
    :cond_0
    iget-object v6, p0, Lgnu/kawa/functions/LispPrettyFormat;->body:Ljava/text/Format;

    invoke-static {v6, p1, p2, p3, p4}, Lgnu/text/ReportFormat;->format(Ljava/text/Format;[Ljava/lang/Object;ILjava/io/Writer;Ljava/text/FieldPosition;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result p2

    .line 916
    :goto_1
    if-eqz v3, :cond_1

    .line 917
    invoke-virtual {v3, v5}, Lgnu/mapping/OutPort;->endLogicalBlock(Ljava/lang/String;)V

    .line 919
    :cond_1
    return p2

    .line 890
    .end local v3           #out:Lgnu/mapping/OutPort;
    :cond_2
    const/4 v6, 0x0

    move-object v3, v6

    goto :goto_0

    .line 901
    .restart local v3       #out:Lgnu/mapping/OutPort;
    :cond_3
    :try_start_1
    aget-object v1, p1, p2

    .line 902
    .local v1, curArg:Ljava/lang/Object;
    invoke-static {v1}, Lgnu/kawa/functions/LispFormat;->asArray(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    .line 903
    .local v2, curArr:[Ljava/lang/Object;
    if-nez v2, :cond_4

    .line 904
    const-string v5, ""

    move-object v4, v5

    .line 905
    :cond_4
    if-eqz v3, :cond_5

    .line 906
    iget-boolean v6, p0, Lgnu/kawa/functions/LispPrettyFormat;->perLine:Z

    iget-object v7, p0, Lgnu/kawa/functions/LispPrettyFormat;->suffix:Ljava/lang/String;

    invoke-virtual {v3, v4, v6, v7}, Lgnu/mapping/OutPort;->startLogicalBlock(Ljava/lang/String;ZLjava/lang/String;)V

    .line 907
    :cond_5
    if-nez v2, :cond_6

    .line 908
    const/4 v6, -0x1

    const/4 v7, 0x1

    invoke-static {v1, p3, v6, v7}, Lgnu/kawa/functions/ObjectFormat;->format(Ljava/lang/Object;Ljava/io/Writer;IZ)Z

    .line 911
    :goto_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 910
    :cond_6
    iget-object v6, p0, Lgnu/kawa/functions/LispPrettyFormat;->body:Ljava/text/Format;

    const/4 v7, 0x0

    invoke-static {v6, v2, v7, p3, p4}, Lgnu/text/ReportFormat;->format(Ljava/text/Format;[Ljava/lang/Object;ILjava/io/Writer;Ljava/text/FieldPosition;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 916
    .end local v1           #curArg:Ljava/lang/Object;
    .end local v2           #curArr:[Ljava/lang/Object;
    :catchall_0
    move-exception v6

    if-eqz v3, :cond_7

    .line 917
    invoke-virtual {v3, v5}, Lgnu/mapping/OutPort;->endLogicalBlock(Ljava/lang/String;)V

    :cond_7
    throw v6
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 924
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 925
    .local v0, sbuf:Ljava/lang/StringBuffer;
    const-string v1, "LispPrettyFormat["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 926
    const-string v1, "prefix: \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lgnu/kawa/functions/LispPrettyFormat;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 927
    const-string v1, "\", suffix: \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lgnu/kawa/functions/LispPrettyFormat;->suffix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 928
    const-string v1, "\", body: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 929
    iget-object v1, p0, Lgnu/kawa/functions/LispPrettyFormat;->body:Ljava/text/Format;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 930
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 931
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
