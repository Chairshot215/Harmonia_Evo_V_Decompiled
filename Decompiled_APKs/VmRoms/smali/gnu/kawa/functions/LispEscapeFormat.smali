.class Lgnu/kawa/functions/LispEscapeFormat;
.super Lgnu/text/ReportFormat;
.source "LispFormat.java"


# static fields
.field public static final ESCAPE_ALL:I = 0xf2

.field public static final ESCAPE_NORMAL:I = 0xf1

.field public static final alwaysTerminate:Lgnu/kawa/functions/LispEscapeFormat;


# instance fields
.field escapeAll:Z

.field param1:I

.field param2:I

.field param3:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 785
    new-instance v0, Lgnu/kawa/functions/LispEscapeFormat;

    const/4 v1, 0x0

    const/high16 v2, -0x4000

    invoke-direct {v0, v1, v2}, Lgnu/kawa/functions/LispEscapeFormat;-><init>(II)V

    sput-object v0, Lgnu/kawa/functions/LispEscapeFormat;->alwaysTerminate:Lgnu/kawa/functions/LispEscapeFormat;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .parameter "param1"
    .parameter "param2"

    .prologue
    .line 789
    invoke-direct {p0}, Lgnu/text/ReportFormat;-><init>()V

    .line 790
    iput p1, p0, Lgnu/kawa/functions/LispEscapeFormat;->param1:I

    .line 791
    iput p2, p0, Lgnu/kawa/functions/LispEscapeFormat;->param2:I

    .line 792
    const/high16 v0, -0x4000

    iput v0, p0, Lgnu/kawa/functions/LispEscapeFormat;->param3:I

    .line 793
    return-void
.end method

.method public constructor <init>(III)V
    .locals 0
    .parameter "param1"
    .parameter "param2"
    .parameter "param3"

    .prologue
    .line 796
    invoke-direct {p0}, Lgnu/text/ReportFormat;-><init>()V

    .line 797
    iput p1, p0, Lgnu/kawa/functions/LispEscapeFormat;->param1:I

    .line 798
    iput p2, p0, Lgnu/kawa/functions/LispEscapeFormat;->param2:I

    .line 799
    iput p3, p0, Lgnu/kawa/functions/LispEscapeFormat;->param3:I

    .line 800
    return-void
.end method

.method static getParam(I[Ljava/lang/Object;I)Lgnu/math/Numeric;
    .locals 4
    .parameter "param"
    .parameter "args"
    .parameter "start"

    .prologue
    .line 804
    const/high16 v1, -0x5000

    if-ne p0, v1, :cond_0

    .line 805
    array-length v1, p1

    sub-int/2addr v1, p2

    invoke-static {v1}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v1

    .line 823
    :goto_0
    return-object v1

    .line 806
    :cond_0
    const/high16 v1, -0x6000

    if-ne p0, v1, :cond_7

    .line 808
    aget-object v0, p1, p2

    .line 809
    .local v0, arg:Ljava/lang/Object;
    instance-of v1, v0, Lgnu/math/Numeric;

    if-eqz v1, :cond_1

    .line 810
    check-cast v0, Lgnu/math/Numeric;

    .end local v0           #arg:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_0

    .line 811
    .restart local v0       #arg:Ljava/lang/Object;
    :cond_1
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_4

    .line 813
    instance-of v1, v0, Ljava/lang/Float;

    if-nez v1, :cond_2

    instance-of v1, v0, Ljava/lang/Double;

    if-eqz v1, :cond_3

    .line 814
    :cond_2
    new-instance v1, Lgnu/math/DFloNum;

    check-cast v0, Ljava/lang/Number;

    .end local v0           #arg:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lgnu/math/DFloNum;-><init>(D)V

    goto :goto_0

    .line 815
    .restart local v0       #arg:Ljava/lang/Object;
    :cond_3
    check-cast v0, Ljava/lang/Number;

    .end local v0           #arg:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lgnu/math/IntNum;->make(J)Lgnu/math/IntNum;

    move-result-object v1

    goto :goto_0

    .line 817
    .restart local v0       #arg:Ljava/lang/Object;
    :cond_4
    instance-of v1, v0, Lgnu/text/Char;

    if-eqz v1, :cond_5

    .line 818
    new-instance v1, Lgnu/math/IntNum;

    check-cast v0, Lgnu/text/Char;

    .end local v0           #arg:Ljava/lang/Object;
    invoke-virtual {v0}, Lgnu/text/Char;->intValue()I

    move-result v2

    invoke-direct {v1, v2}, Lgnu/math/IntNum;-><init>(I)V

    goto :goto_0

    .line 819
    .restart local v0       #arg:Ljava/lang/Object;
    :cond_5
    instance-of v1, v0, Ljava/lang/Character;

    if-eqz v1, :cond_6

    .line 820
    new-instance v1, Lgnu/math/IntNum;

    check-cast v0, Ljava/lang/Character;

    .end local v0           #arg:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v2

    invoke-direct {v1, v2}, Lgnu/math/IntNum;-><init>(I)V

    goto :goto_0

    .line 821
    .restart local v0       #arg:Ljava/lang/Object;
    :cond_6
    new-instance v1, Lgnu/math/DFloNum;

    const-wide/high16 v2, 0x7ff8

    invoke-direct {v1, v2, v3}, Lgnu/math/DFloNum;-><init>(D)V

    goto :goto_0

    .line 823
    .end local v0           #arg:Ljava/lang/Object;
    :cond_7
    invoke-static {p0}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v1

    goto :goto_0
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
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/high16 v7, -0x6000

    const/high16 v6, -0x4000

    .line 834
    move v4, p2

    .line 836
    .local v4, orig_start:I
    iget v5, p0, Lgnu/kawa/functions/LispEscapeFormat;->param1:I

    if-ne v5, v6, :cond_1

    .line 837
    array-length v5, p1

    if-ne p2, v5, :cond_0

    move v3, v9

    .line 864
    .local v3, do_terminate:Z
    :goto_0
    if-nez v3, :cond_9

    move v5, v8

    :goto_1
    invoke-static {v5, p2}, Lgnu/kawa/functions/LispEscapeFormat;->result(II)I

    move-result v5

    return v5

    .end local v3           #do_terminate:Z
    :cond_0
    move v3, v8

    .line 837
    goto :goto_0

    .line 838
    :cond_1
    iget v5, p0, Lgnu/kawa/functions/LispEscapeFormat;->param2:I

    if-ne v5, v6, :cond_2

    iget v5, p0, Lgnu/kawa/functions/LispEscapeFormat;->param1:I

    if-nez v5, :cond_2

    .line 839
    const/4 v3, 0x1

    .restart local v3       #do_terminate:Z
    goto :goto_0

    .line 842
    .end local v3           #do_terminate:Z
    :cond_2
    iget v5, p0, Lgnu/kawa/functions/LispEscapeFormat;->param1:I

    invoke-static {v5, p1, p2}, Lgnu/kawa/functions/LispEscapeFormat;->getParam(I[Ljava/lang/Object;I)Lgnu/math/Numeric;

    move-result-object v0

    .line 843
    .local v0, arg1:Lgnu/math/Numeric;
    iget v5, p0, Lgnu/kawa/functions/LispEscapeFormat;->param1:I

    if-ne v5, v7, :cond_3

    add-int/lit8 p2, p2, 0x1

    .line 844
    :cond_3
    iget v5, p0, Lgnu/kawa/functions/LispEscapeFormat;->param2:I

    if-ne v5, v6, :cond_4

    .line 846
    invoke-virtual {v0}, Lgnu/math/Numeric;->isZero()Z

    move-result v3

    .restart local v3       #do_terminate:Z
    goto :goto_0

    .line 850
    .end local v3           #do_terminate:Z
    :cond_4
    iget v5, p0, Lgnu/kawa/functions/LispEscapeFormat;->param2:I

    invoke-static {v5, p1, p2}, Lgnu/kawa/functions/LispEscapeFormat;->getParam(I[Ljava/lang/Object;I)Lgnu/math/Numeric;

    move-result-object v1

    .line 851
    .local v1, arg2:Lgnu/math/Numeric;
    iget v5, p0, Lgnu/kawa/functions/LispEscapeFormat;->param2:I

    if-ne v5, v7, :cond_5

    add-int/lit8 p2, p2, 0x1

    .line 852
    :cond_5
    iget v5, p0, Lgnu/kawa/functions/LispEscapeFormat;->param3:I

    if-ne v5, v6, :cond_6

    .line 854
    invoke-virtual {v0, v1}, Lgnu/math/Numeric;->equals(Ljava/lang/Object;)Z

    move-result v3

    .restart local v3       #do_terminate:Z
    goto :goto_0

    .line 858
    .end local v3           #do_terminate:Z
    :cond_6
    iget v5, p0, Lgnu/kawa/functions/LispEscapeFormat;->param3:I

    invoke-static {v5, p1, p2}, Lgnu/kawa/functions/LispEscapeFormat;->getParam(I[Ljava/lang/Object;I)Lgnu/math/Numeric;

    move-result-object v2

    .line 859
    .local v2, arg3:Lgnu/math/Numeric;
    iget v5, p0, Lgnu/kawa/functions/LispEscapeFormat;->param3:I

    if-ne v5, v7, :cond_7

    add-int/lit8 p2, p2, 0x1

    .line 860
    :cond_7
    invoke-virtual {v1, v0}, Lgnu/math/Numeric;->geq(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {v2, v1}, Lgnu/math/Numeric;->geq(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    move v3, v9

    .restart local v3       #do_terminate:Z
    :goto_2
    goto :goto_0

    .end local v3           #do_terminate:Z
    :cond_8
    move v3, v8

    goto :goto_2

    .line 864
    .end local v0           #arg1:Lgnu/math/Numeric;
    .end local v1           #arg2:Lgnu/math/Numeric;
    .end local v2           #arg3:Lgnu/math/Numeric;
    .restart local v3       #do_terminate:Z
    :cond_9
    iget-boolean v5, p0, Lgnu/kawa/functions/LispEscapeFormat;->escapeAll:Z

    if-eqz v5, :cond_a

    const/16 v5, 0xf2

    goto :goto_1

    :cond_a
    const/16 v5, 0xf1

    goto :goto_1
.end method
