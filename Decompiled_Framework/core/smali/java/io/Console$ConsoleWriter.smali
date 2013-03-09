.class Ljava/io/Console$ConsoleWriter;
.super Ljava/io/PrintWriter;
.source "Console.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/io/Console;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConsoleWriter"
.end annotation


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    invoke-static {}, Ljava/io/Console;->access$000()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljava/io/Writer;->lock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    invoke-virtual {p0}, Ljava/io/Console$ConsoleWriter;->flush()V

    return-void
.end method
