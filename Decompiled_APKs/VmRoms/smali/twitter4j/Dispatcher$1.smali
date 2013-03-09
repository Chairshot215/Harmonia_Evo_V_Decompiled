.class Ltwitter4j/Dispatcher$1;
.super Ljava/lang/Thread;
.source "Dispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltwitter4j/Dispatcher;-><init>(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final this$0:Ltwitter4j/Dispatcher;


# direct methods
.method constructor <init>(Ltwitter4j/Dispatcher;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Ltwitter4j/Dispatcher$1;->this$0:Ltwitter4j/Dispatcher;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Ltwitter4j/Dispatcher$1;->this$0:Ltwitter4j/Dispatcher;

    invoke-static {v0}, Ltwitter4j/Dispatcher;->access$000(Ltwitter4j/Dispatcher;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Ltwitter4j/Dispatcher$1;->this$0:Ltwitter4j/Dispatcher;

    invoke-virtual {v0}, Ltwitter4j/Dispatcher;->shutdown()V

    .line 54
    :cond_0
    return-void
.end method
