.class public Lgnu/kawa/xml/WriteTo;
.super Lgnu/mapping/Procedure2;
.source "WriteTo.java"


# static fields
.field public static final writeTo:Lgnu/kawa/xml/WriteTo;

.field public static final writeToIfChanged:Lgnu/kawa/xml/WriteTo;


# instance fields
.field ifChanged:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 15
    new-instance v0, Lgnu/kawa/xml/WriteTo;

    invoke-direct {v0}, Lgnu/kawa/xml/WriteTo;-><init>()V

    sput-object v0, Lgnu/kawa/xml/WriteTo;->writeTo:Lgnu/kawa/xml/WriteTo;

    .line 16
    new-instance v0, Lgnu/kawa/xml/WriteTo;

    invoke-direct {v0}, Lgnu/kawa/xml/WriteTo;-><init>()V

    sput-object v0, Lgnu/kawa/xml/WriteTo;->writeToIfChanged:Lgnu/kawa/xml/WriteTo;

    .line 17
    sget-object v0, Lgnu/kawa/xml/WriteTo;->writeToIfChanged:Lgnu/kawa/xml/WriteTo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lgnu/kawa/xml/WriteTo;->ifChanged:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lgnu/mapping/Procedure2;-><init>()V

    return-void
.end method

.method public static writeTo(Ljava/lang/Object;Lgnu/text/Path;Ljava/io/OutputStream;)V
    .locals 4
    .parameter "value"
    .parameter "ppath"
    .parameter "outs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 22
    new-instance v2, Lgnu/mapping/OutPort;

    invoke-direct {v2, p2, p1}, Lgnu/mapping/OutPort;-><init>(Ljava/io/OutputStream;Lgnu/text/Path;)V

    .line 23
    .local v2, out:Lgnu/mapping/OutPort;
    new-instance v0, Lgnu/xml/XMLPrinter;

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lgnu/xml/XMLPrinter;-><init>(Lgnu/mapping/OutPort;Z)V

    .line 24
    .local v0, consumer:Lgnu/xml/XMLPrinter;
    invoke-virtual {p1}, Lgnu/text/Path;->getExtension()Ljava/lang/String;

    move-result-object v1

    .line 25
    .local v1, extension:Ljava/lang/String;
    const-string v3, "html"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 26
    const-string v3, "html"

    invoke-virtual {v0, v3}, Lgnu/xml/XMLPrinter;->setStyle(Ljava/lang/Object;)V

    .line 27
    :cond_0
    invoke-static {p0, v0}, Lgnu/mapping/Values;->writeValues(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    .line 28
    invoke-virtual {v2}, Lgnu/mapping/OutPort;->close()V

    .line 29
    return-void
.end method

.method public static writeTo(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .parameter "value"
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 33
    invoke-static {p1}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object v1

    .line 34
    .local v1, ppath:Lgnu/text/Path;
    invoke-virtual {v1}, Lgnu/text/Path;->openOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 35
    .local v0, outs:Ljava/io/OutputStream;
    invoke-static {p0, v1, v0}, Lgnu/kawa/xml/WriteTo;->writeTo(Ljava/lang/Object;Lgnu/text/Path;Ljava/io/OutputStream;)V

    .line 36
    return-void
.end method

.method public static writeToIfChanged(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 10
    .parameter "value"
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 41
    invoke-static {p1}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object v8

    .line 42
    .local v8, ppath:Lgnu/text/Path;
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 43
    .local v3, bout:Ljava/io/ByteArrayOutputStream;
    invoke-static {p0, v8, v3}, Lgnu/kawa/xml/WriteTo;->writeTo(Ljava/lang/Object;Lgnu/text/Path;Ljava/io/OutputStream;)V

    .line 44
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 47
    .local v2, bbuf:[B
    :try_start_0
    new-instance v7, Ljava/io/BufferedInputStream;

    invoke-virtual {v8}, Lgnu/text/Path;->openInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 48
    .local v7, ins:Ljava/io/InputStream;
    const/4 v5, 0x0

    .local v5, i:I
    move v6, v5

    .line 50
    .end local v5           #i:I
    .local v6, i:I
    :goto_0
    invoke-virtual {v7}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 51
    .local v1, b:I
    array-length v9, v2

    if-ne v6, v9, :cond_1

    const/4 v9, 0x1

    move v0, v9

    .line 52
    .local v0, atend:Z
    :goto_1
    if-gez v1, :cond_3

    .line 54
    if-nez v0, :cond_2

    move v5, v6

    .line 62
    .end local v6           #i:I
    .restart local v5       #i:I
    :cond_0
    :goto_2
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .end local v0           #atend:Z
    .end local v1           #b:I
    .end local v5           #i:I
    .end local v7           #ins:Ljava/io/InputStream;
    :goto_3
    new-instance v4, Ljava/io/BufferedOutputStream;

    invoke-virtual {v8}, Lgnu/text/Path;->openOutputStream()Ljava/io/OutputStream;

    move-result-object v9

    invoke-direct {v4, v9}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 70
    .local v4, fout:Ljava/io/OutputStream;
    invoke-virtual {v4, v2}, Ljava/io/OutputStream;->write([B)V

    .line 71
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 72
    .end local v4           #fout:Ljava/io/OutputStream;
    :goto_4
    return-void

    .line 51
    .restart local v1       #b:I
    .restart local v6       #i:I
    .restart local v7       #ins:Ljava/io/InputStream;
    :cond_1
    const/4 v9, 0x0

    move v0, v9

    goto :goto_1

    .line 56
    .restart local v0       #atend:Z
    :cond_2
    :try_start_1
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    goto :goto_4

    .line 64
    .end local v0           #atend:Z
    .end local v1           #b:I
    .end local v6           #i:I
    .end local v7           #ins:Ljava/io/InputStream;
    :catch_0
    move-exception v9

    goto :goto_3

    .line 59
    .restart local v0       #atend:Z
    .restart local v1       #b:I
    .restart local v6       #i:I
    .restart local v7       #ins:Ljava/io/InputStream;
    :cond_3
    if-nez v0, :cond_4

    add-int/lit8 v5, v6, 0x1

    .end local v6           #i:I
    .restart local v5       #i:I
    aget-byte v9, v2, v6
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    if-ne v9, v1, :cond_0

    move v6, v5

    .line 61
    .end local v5           #i:I
    .restart local v6       #i:I
    goto :goto_0

    :cond_4
    move v5, v6

    .end local v6           #i:I
    .restart local v5       #i:I
    goto :goto_2
.end method


# virtual methods
.method public apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "value"
    .parameter "fileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 76
    iget-boolean v0, p0, Lgnu/kawa/xml/WriteTo;->ifChanged:Z

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lgnu/kawa/xml/WriteTo;->writeToIfChanged(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 80
    :goto_0
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object v0

    .line 79
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lgnu/kawa/xml/WriteTo;->writeTo(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method
