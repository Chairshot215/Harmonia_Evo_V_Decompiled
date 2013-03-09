.class Lcom/htc/fusion/fx/controls/TextInputWorker$GetKeyListenerCreator;
.super Ljava/util/concurrent/FutureTask;
.source "TextInputWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fusion/fx/controls/TextInputWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetKeyListenerCreator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask",
        "<",
        "Landroid/text/method/KeyListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/fusion/fx/controls/TextInputWorker;


# direct methods
.method public constructor <init>(Lcom/htc/fusion/fx/controls/TextInputWorker;Ljava/util/concurrent/Callable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<",
            "Landroid/text/method/KeyListener;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$GetKeyListenerCreator;->this$0:Lcom/htc/fusion/fx/controls/TextInputWorker;

    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-void
.end method
