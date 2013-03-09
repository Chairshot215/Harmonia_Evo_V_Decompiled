.class Ljava/nio/PipeImpl$FdCloser;
.super Ljava/lang/Object;
.source "PipeImpl.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/nio/PipeImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FdCloser"
.end annotation


# instance fields
.field private final fd:Ljava/io/FileDescriptor;


# direct methods
.method private constructor <init>(Ljava/io/FileDescriptor;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/nio/PipeImpl$FdCloser;->fd:Ljava/io/FileDescriptor;

    return-void
.end method

.method synthetic constructor <init>(Ljava/io/FileDescriptor;Ljava/nio/PipeImpl$1;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/nio/PipeImpl$FdCloser;-><init>(Ljava/io/FileDescriptor;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/nio/PipeImpl$FdCloser;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0}, Llibcore/io/IoUtils;->close(Ljava/io/FileDescriptor;)V

    return-void
.end method
