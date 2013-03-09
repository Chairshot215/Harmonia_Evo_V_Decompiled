.class final Ljava/nio/FileChannelImpl$1;
.super Ljava/lang/Object;
.source "FileChannelImpl.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/nio/FileChannelImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/nio/channels/FileLock;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Ljava/nio/channels/FileLock;

    check-cast p2, Ljava/nio/channels/FileLock;

    invoke-virtual {p0, p1, p2}, Ljava/nio/FileChannelImpl$1;->compare(Ljava/nio/channels/FileLock;Ljava/nio/channels/FileLock;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/nio/channels/FileLock;Ljava/nio/channels/FileLock;)I
    .locals 5

    invoke-virtual {p1}, Ljava/nio/channels/FileLock;->position()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/nio/channels/FileLock;->position()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    const/4 v4, -0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method
