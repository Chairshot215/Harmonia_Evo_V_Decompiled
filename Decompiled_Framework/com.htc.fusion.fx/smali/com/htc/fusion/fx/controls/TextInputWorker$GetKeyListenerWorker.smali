.class Lcom/htc/fusion/fx/controls/TextInputWorker$GetKeyListenerWorker;
.super Ljava/lang/Object;
.source "TextInputWorker.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fusion/fx/controls/TextInputWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetKeyListenerWorker"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Landroid/text/method/KeyListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/fusion/fx/controls/TextInputWorker;


# direct methods
.method private constructor <init>(Lcom/htc/fusion/fx/controls/TextInputWorker;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$GetKeyListenerWorker;->this$0:Lcom/htc/fusion/fx/controls/TextInputWorker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/fusion/fx/controls/TextInputWorker;Lcom/htc/fusion/fx/controls/TextInputWorker$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/fusion/fx/controls/TextInputWorker$GetKeyListenerWorker;-><init>(Lcom/htc/fusion/fx/controls/TextInputWorker;)V

    return-void
.end method


# virtual methods
.method public call()Landroid/text/method/KeyListener;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$GetKeyListenerWorker;->this$0:Lcom/htc/fusion/fx/controls/TextInputWorker;

    #getter for: Lcom/htc/fusion/fx/controls/TextInputWorker;->mEditText:Lcom/htc/fusion/fx/controls/TextInputStreaming;
    invoke-static {v0}, Lcom/htc/fusion/fx/controls/TextInputWorker;->access$100(Lcom/htc/fusion/fx/controls/TextInputWorker;)Lcom/htc/fusion/fx/controls/TextInputStreaming;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/TextInputStreaming;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/htc/fusion/fx/controls/TextInputWorker$GetKeyListenerWorker;->call()Landroid/text/method/KeyListener;

    move-result-object v0

    return-object v0
.end method
