.class public Lkawa/standard/char_ready_p;
.super Ljava/lang/Object;
.source "char_ready_p.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ready(Ljava/lang/Object;)Z
    .locals 4
    .parameter "arg1"

    .prologue
    const/4 v3, 0x0

    .line 8
    :try_start_0
    instance-of v1, p0, Ljava/io/InputStream;

    if-eqz v1, :cond_1

    .line 9
    check-cast p0, Ljava/io/InputStream;

    .end local p0
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    .line 17
    :goto_0
    return v1

    :cond_0
    move v1, v3

    .line 9
    goto :goto_0

    .line 10
    .restart local p0
    :cond_1
    instance-of v1, p0, Ljava/io/Reader;

    if-eqz v1, :cond_2

    .line 11
    check-cast p0, Ljava/io/Reader;

    .end local p0
    invoke-virtual {p0}, Ljava/io/Reader;->ready()Z

    move-result v1

    goto :goto_0

    .line 13
    .restart local p0
    :cond_2
    new-instance v1, Ljava/lang/ClassCastException;

    const-string v2, "invalid argument to char-ready?"

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .end local p0
    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/io/IOException;
    move v1, v3

    .line 17
    goto :goto_0
.end method
