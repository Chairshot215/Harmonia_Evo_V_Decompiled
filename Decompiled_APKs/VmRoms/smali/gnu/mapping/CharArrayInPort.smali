.class public Lgnu/mapping/CharArrayInPort;
.super Lgnu/mapping/InPort;
.source "CharArrayInPort.java"


# static fields
.field static final stringPath:Lgnu/text/Path;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-string v0, "<string>"

    invoke-static {v0}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object v0

    sput-object v0, Lgnu/mapping/CharArrayInPort;->stringPath:Lgnu/text/Path;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "string"

    .prologue
    .line 63
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-direct {p0, v0}, Lgnu/mapping/CharArrayInPort;-><init>([C)V

    .line 64
    return-void
.end method

.method public constructor <init>([C)V
    .locals 1
    .parameter "buffer"

    .prologue
    .line 58
    array-length v0, p1

    invoke-direct {p0, p1, v0}, Lgnu/mapping/CharArrayInPort;-><init>([CI)V

    .line 59
    return-void
.end method

.method public constructor <init>([CI)V
    .locals 3
    .parameter "buffer"
    .parameter "len"

    .prologue
    .line 44
    sget-object v1, Lgnu/text/NullReader;->nullReader:Lgnu/text/NullReader;

    sget-object v2, Lgnu/mapping/CharArrayInPort;->stringPath:Lgnu/text/Path;

    invoke-direct {p0, v1, v2}, Lgnu/mapping/InPort;-><init>(Ljava/io/Reader;Lgnu/text/Path;)V

    .line 47
    :try_start_0
    invoke-virtual {p0, p1}, Lgnu/mapping/CharArrayInPort;->setBuffer([C)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    iput p2, p0, Lgnu/mapping/CharArrayInPort;->limit:I

    .line 54
    return-void

    .line 49
    :catch_0
    move-exception v0

    .line 51
    .local v0, ex:Ljava/io/IOException;
    new-instance v1, Ljava/lang/Error;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public make(Ljava/lang/CharSequence;)Lgnu/mapping/CharArrayInPort;
    .locals 8
    .parameter "seq"

    .prologue
    const/4 v6, 0x0

    .line 20
    instance-of v5, p1, Lgnu/lists/FString;

    if-eqz v5, :cond_0

    .line 22
    move-object v0, p1

    check-cast v0, Lgnu/lists/FString;

    move-object v2, v0

    .line 23
    .local v2, fstr:Lgnu/lists/FString;
    new-instance v5, Lgnu/mapping/CharArrayInPort;

    iget-object v6, v2, Lgnu/lists/FString;->data:[C

    iget v7, v2, Lgnu/lists/FString;->size:I

    invoke-direct {v5, v6, v7}, Lgnu/mapping/CharArrayInPort;-><init>([CI)V

    .line 38
    .end local v2           #fstr:Lgnu/lists/FString;
    .end local p1
    :goto_0
    return-object v5

    .line 27
    .restart local p1
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 28
    .local v4, len:I
    new-array v1, v4, [C

    .line 30
    .local v1, buf:[C
    instance-of v5, p1, Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 31
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p1, v6, v4, v1, v6}, Ljava/lang/String;->getChars(II[CI)V

    .line 38
    :cond_1
    :goto_1
    new-instance v5, Lgnu/mapping/CharArrayInPort;

    invoke-direct {v5, v1, v4}, Lgnu/mapping/CharArrayInPort;-><init>([CI)V

    goto :goto_0

    .line 32
    .restart local p1
    :cond_2
    instance-of v5, p1, Lgnu/lists/CharSeq;

    if-nez v5, :cond_3

    .line 33
    move v3, v4

    .local v3, i:I
    :goto_2
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_1

    .line 34
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    aput-char v5, v1, v3

    goto :goto_2

    .line 37
    .end local v3           #i:I
    :cond_3
    check-cast p1, Lgnu/lists/CharSeq;

    .end local p1
    invoke-interface {p1, v6, v4, v1, v6}, Lgnu/lists/CharSeq;->getChars(II[CI)V

    goto :goto_1
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    iget v0, p0, Lgnu/mapping/CharArrayInPort;->pos:I

    iget v1, p0, Lgnu/mapping/CharArrayInPort;->limit:I

    if-lt v0, v1, :cond_0

    .line 69
    const/4 v0, -0x1

    .line 70
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lgnu/mapping/InPort;->read()I

    move-result v0

    goto :goto_0
.end method
