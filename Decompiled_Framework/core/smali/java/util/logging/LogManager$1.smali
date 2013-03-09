.class Ljava/util/logging/LogManager$1;
.super Ljava/lang/Thread;
.source "LogManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/logging/LogManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/logging/LogManager;


# direct methods
.method constructor <init>(Ljava/util/logging/LogManager;)V
    .locals 0

    iput-object p1, p0, Ljava/util/logging/LogManager$1;->this$0:Ljava/util/logging/LogManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Ljava/util/logging/LogManager$1;->this$0:Ljava/util/logging/LogManager;

    invoke-virtual {v0}, Ljava/util/logging/LogManager;->reset()V

    return-void
.end method
