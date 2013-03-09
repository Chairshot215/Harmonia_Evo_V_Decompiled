.class public abstract Ldalvik/system/SocketTagger;
.super Ljava/lang/Object;
.source "SocketTagger.java"


# static fields
.field private static tagger:Ldalvik/system/SocketTagger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ldalvik/system/SocketTagger$1;

    invoke-direct {v0}, Ldalvik/system/SocketTagger$1;-><init>()V

    sput-object v0, Ldalvik/system/SocketTagger;->tagger:Ldalvik/system/SocketTagger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized get()Ldalvik/system/SocketTagger;
    .locals 2

    const-class v0, Ldalvik/system/SocketTagger;

    monitor-enter v0

    :try_start_0
    sget-object v1, Ldalvik/system/SocketTagger;->tagger:Ldalvik/system/SocketTagger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized set(Ldalvik/system/SocketTagger;)V
    .locals 3

    const-class v1, Ldalvik/system/SocketTagger;

    monitor-enter v1

    if-nez p0, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v2, "tagger == null"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    sput-object p0, Ldalvik/system/SocketTagger;->tagger:Ldalvik/system/SocketTagger;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-void
.end method


# virtual methods
.method public abstract tag(Ljava/io/FileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method public final tag(Ljava/net/Socket;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/net/Socket;->getFileDescriptor$()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {p0, v0}, Ldalvik/system/SocketTagger;->tag(Ljava/io/FileDescriptor;)V

    :cond_0
    return-void
.end method

.method public abstract untag(Ljava/io/FileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method public final untag(Ljava/net/Socket;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/net/Socket;->getFileDescriptor$()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {p0, v0}, Ldalvik/system/SocketTagger;->untag(Ljava/io/FileDescriptor;)V

    :cond_0
    return-void
.end method
