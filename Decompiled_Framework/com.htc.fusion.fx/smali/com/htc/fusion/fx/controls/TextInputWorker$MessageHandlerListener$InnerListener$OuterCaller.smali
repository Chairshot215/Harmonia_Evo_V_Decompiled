.class Lcom/htc/fusion/fx/controls/TextInputWorker$MessageHandlerListener$InnerListener$OuterCaller;
.super Ljava/lang/Object;
.source "TextInputWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fusion/fx/controls/TextInputWorker$MessageHandlerListener$InnerListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OuterCaller"
.end annotation


# instance fields
.field private mMessageParam:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final synthetic this$2:Lcom/htc/fusion/fx/controls/TextInputWorker$MessageHandlerListener$InnerListener;


# direct methods
.method public constructor <init>(Lcom/htc/fusion/fx/controls/TextInputWorker$MessageHandlerListener$InnerListener;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$MessageHandlerListener$InnerListener$OuterCaller;->this$2:Lcom/htc/fusion/fx/controls/TextInputWorker$MessageHandlerListener$InnerListener;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$MessageHandlerListener$InnerListener$OuterCaller;->mMessageParam:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$MessageHandlerListener$InnerListener$OuterCaller;->this$2:Lcom/htc/fusion/fx/controls/TextInputWorker$MessageHandlerListener$InnerListener;

    iget-object v0, v0, Lcom/htc/fusion/fx/controls/TextInputWorker$MessageHandlerListener$InnerListener;->this$1:Lcom/htc/fusion/fx/controls/TextInputWorker$MessageHandlerListener;

    iget-object v1, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$MessageHandlerListener$InnerListener$OuterCaller;->mMessageParam:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/TextInputWorker$MessageHandlerListener;->onMessageReceived(Ljava/lang/Object;)V

    return-void
.end method
