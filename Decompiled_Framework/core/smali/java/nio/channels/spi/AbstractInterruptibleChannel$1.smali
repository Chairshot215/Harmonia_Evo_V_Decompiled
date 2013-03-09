.class Ljava/nio/channels/spi/AbstractInterruptibleChannel$1;
.super Ljava/lang/Object;
.source "AbstractInterruptibleChannel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/nio/channels/spi/AbstractInterruptibleChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljava/nio/channels/spi/AbstractInterruptibleChannel;


# direct methods
.method constructor <init>(Ljava/nio/channels/spi/AbstractInterruptibleChannel;)V
    .locals 0

    iput-object p1, p0, Ljava/nio/channels/spi/AbstractInterruptibleChannel$1;->this$0:Ljava/nio/channels/spi/AbstractInterruptibleChannel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Ljava/nio/channels/spi/AbstractInterruptibleChannel$1;->this$0:Ljava/nio/channels/spi/AbstractInterruptibleChannel;

    const/4 v1, 0x1

    iput-boolean v1, v0, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->interrupted:Z

    iget-object v0, p0, Ljava/nio/channels/spi/AbstractInterruptibleChannel$1;->this$0:Ljava/nio/channels/spi/AbstractInterruptibleChannel;

    invoke-virtual {v0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
