.class public Lgnu/text/FlushFormat;
.super Lgnu/text/ReportFormat;
.source "FlushFormat.java"


# static fields
.field private static flush:Lgnu/text/FlushFormat;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lgnu/text/ReportFormat;-><init>()V

    return-void
.end method

.method public static getInstance()Lgnu/text/FlushFormat;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lgnu/text/FlushFormat;->flush:Lgnu/text/FlushFormat;

    if-nez v0, :cond_0

    .line 14
    new-instance v0, Lgnu/text/FlushFormat;

    invoke-direct {v0}, Lgnu/text/FlushFormat;-><init>()V

    sput-object v0, Lgnu/text/FlushFormat;->flush:Lgnu/text/FlushFormat;

    .line 15
    :cond_0
    sget-object v0, Lgnu/text/FlushFormat;->flush:Lgnu/text/FlushFormat;

    return-object v0
.end method


# virtual methods
.method public format([Ljava/lang/Object;ILjava/io/Writer;Ljava/text/FieldPosition;)I
    .locals 0
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
    .line 21
    invoke-virtual {p3}, Ljava/io/Writer;->flush()V

    .line 22
    return p2
.end method
