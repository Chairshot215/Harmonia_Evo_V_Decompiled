.class Lgnu/text/WriterRef;
.super Ljava/lang/ref/WeakReference;
.source "WriterManager.java"


# instance fields
.field next:Lgnu/text/WriterRef;

.field prev:Lgnu/text/WriterRef;


# direct methods
.method public constructor <init>(Ljava/io/Writer;)V
    .locals 0
    .parameter "wr"

    .prologue
    .line 107
    invoke-direct {p0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 108
    return-void
.end method
