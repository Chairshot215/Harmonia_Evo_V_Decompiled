.class Lcom/m0narx/tweaks/widgets/ShellInterface$InputStreamHandler;
.super Ljava/lang/Thread;
.source "ShellInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/m0narx/tweaks/widgets/ShellInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InputStreamHandler"
.end annotation


# instance fields
.field output:Ljava/lang/StringBuffer;

.field private final sink:Z

.field private final stream:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Ljava/io/InputStream;Z)V
    .locals 0
    .parameter "stream"
    .parameter "sink"

    .prologue
    .line 164
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 165
    iput-boolean p2, p0, Lcom/m0narx/tweaks/widgets/ShellInterface$InputStreamHandler;->sink:Z

    .line 166
    iput-object p1, p0, Lcom/m0narx/tweaks/widgets/ShellInterface$InputStreamHandler;->stream:Ljava/io/InputStream;

    .line 167
    invoke-virtual {p0}, Lcom/m0narx/tweaks/widgets/ShellInterface$InputStreamHandler;->start()V

    .line 168
    return-void
.end method


# virtual methods
.method public getOutput()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/ShellInterface$InputStreamHandler;->output:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public run()V
    .locals 5

    .prologue
    .line 173
    :try_start_0
    iget-boolean v2, p0, Lcom/m0narx/tweaks/widgets/ShellInterface$InputStreamHandler;->sink:Z

    if-eqz v2, :cond_2

    .line 174
    :cond_0
    iget-object v2, p0, Lcom/m0narx/tweaks/widgets/ShellInterface$InputStreamHandler;->stream:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 184
    :cond_1
    :goto_0
    return-void

    .line 176
    :cond_2
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v2, p0, Lcom/m0narx/tweaks/widgets/ShellInterface$InputStreamHandler;->output:Ljava/lang/StringBuffer;

    .line 177
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    iget-object v3, p0, Lcom/m0narx/tweaks/widgets/ShellInterface$InputStreamHandler;->stream:Ljava/io/InputStream;

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 179
    .local v0, b:Ljava/io/BufferedReader;
    :goto_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, s:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 180
    iget-object v2, p0, Lcom/m0narx/tweaks/widgets/ShellInterface$InputStreamHandler;->output:Ljava/lang/StringBuffer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 183
    .end local v0           #b:Ljava/io/BufferedReader;
    .end local v1           #s:Ljava/lang/String;
    :catch_0
    move-exception v2

    goto :goto_0
.end method
