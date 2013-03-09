.class Lgnu/kawa/functions/LispPluralFormat;
.super Lgnu/text/ReportFormat;
.source "LispFormat.java"


# instance fields
.field backup:Z

.field y:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 564
    invoke-direct {p0}, Lgnu/text/ReportFormat;-><init>()V

    return-void
.end method

.method public static getInstance(ZZ)Lgnu/kawa/functions/LispPluralFormat;
    .locals 1
    .parameter "backup"
    .parameter "y"

    .prologue
    .line 571
    new-instance v0, Lgnu/kawa/functions/LispPluralFormat;

    invoke-direct {v0}, Lgnu/kawa/functions/LispPluralFormat;-><init>()V

    .line 572
    .local v0, fmt:Lgnu/kawa/functions/LispPluralFormat;
    iput-boolean p0, v0, Lgnu/kawa/functions/LispPluralFormat;->backup:Z

    .line 573
    iput-boolean p1, v0, Lgnu/kawa/functions/LispPluralFormat;->y:Z

    .line 574
    return-object v0
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
    .line 581
    iget-boolean v3, p0, Lgnu/kawa/functions/LispPluralFormat;->backup:Z

    if-eqz v3, :cond_0

    .line 582
    add-int/lit8 p2, p2, -0x1

    .line 583
    :cond_0
    add-int/lit8 v2, p2, 0x1

    .end local p2
    .local v2, start:I
    aget-object v0, p1, p2

    .line 584
    .local v0, arg:Ljava/lang/Object;
    invoke-static {}, Lgnu/math/IntNum;->one()Lgnu/math/IntNum;

    move-result-object v3

    if-eq v0, v3, :cond_2

    const/4 v3, 0x1

    move v1, v3

    .line 585
    .local v1, plural:Z
    :goto_0
    iget-boolean v3, p0, Lgnu/kawa/functions/LispPluralFormat;->y:Z

    if-eqz v3, :cond_4

    .line 586
    if-eqz v1, :cond_3

    const-string v3, "ies"

    :goto_1
    invoke-static {p3, v3}, Lgnu/kawa/functions/LispPluralFormat;->print(Ljava/io/Writer;Ljava/lang/String;)V

    .line 589
    :cond_1
    :goto_2
    return v2

    .line 584
    .end local v1           #plural:Z
    :cond_2
    const/4 v3, 0x0

    move v1, v3

    goto :goto_0

    .line 586
    .restart local v1       #plural:Z
    :cond_3
    const-string v3, "y"

    goto :goto_1

    .line 587
    :cond_4
    if-eqz v1, :cond_1

    .line 588
    const/16 v3, 0x73

    invoke-virtual {p3, v3}, Ljava/io/Writer;->write(I)V

    goto :goto_2
.end method
