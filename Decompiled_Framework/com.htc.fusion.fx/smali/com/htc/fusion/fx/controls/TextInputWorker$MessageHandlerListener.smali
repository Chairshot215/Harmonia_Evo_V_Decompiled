.class abstract Lcom/htc/fusion/fx/controls/TextInputWorker$MessageHandlerListener;
.super Lcom/htc/fusion/fx/MessageListener;
.source "TextInputWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fusion/fx/controls/TextInputWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "MessageHandlerListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/fusion/fx/controls/TextInputWorker$MessageHandlerListener$InnerListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/htc/fusion/fx/MessageListener",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private mInnerListener:Lcom/htc/fusion/fx/controls/TextInputWorker$MessageHandlerListener$InnerListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/fusion/fx/controls/TextInputWorker$MessageHandlerListener",
            "<TT;>.Inner",
            "Listener;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/htc/fusion/fx/controls/TextInputWorker;


# direct methods
.method public constructor <init>(Lcom/htc/fusion/fx/controls/TextInputWorker;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$MessageHandlerListener;->this$0:Lcom/htc/fusion/fx/controls/TextInputWorker;

    invoke-direct {p0}, Lcom/htc/fusion/fx/MessageListener;-><init>()V

    new-instance v0, Lcom/htc/fusion/fx/controls/TextInputWorker$MessageHandlerListener$InnerListener;

    invoke-direct {v0, p0, p2}, Lcom/htc/fusion/fx/controls/TextInputWorker$MessageHandlerListener$InnerListener;-><init>(Lcom/htc/fusion/fx/controls/TextInputWorker$MessageHandlerListener;Landroid/view/View;)V

    iput-object v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$MessageHandlerListener;->mInnerListener:Lcom/htc/fusion/fx/controls/TextInputWorker$MessageHandlerListener$InnerListener;

    return-void
.end method


# virtual methods
.method public setSource_ONLY_THE_SOURCE_SHOULD_CALL_THIS(Lcom/htc/fusion/fx/IMessageSource;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/fusion/fx/IMessageSource",
            "<TT;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Lcom/htc/fusion/fx/IMessageSource;->unbind(Lcom/htc/fusion/fx/IMessageListener;)V

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$MessageHandlerListener;->mInnerListener:Lcom/htc/fusion/fx/controls/TextInputWorker$MessageHandlerListener$InnerListener;

    invoke-interface {p1, v0}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/htc/fusion/fx/controls/TextInputWorker$MessageHandlerListener;->unbind()V

    goto :goto_0
.end method

.method public unbind()V
    .locals 1

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$MessageHandlerListener;->mInnerListener:Lcom/htc/fusion/fx/controls/TextInputWorker$MessageHandlerListener$InnerListener;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/TextInputWorker$MessageHandlerListener$InnerListener;->unbind()V

    return-void
.end method
