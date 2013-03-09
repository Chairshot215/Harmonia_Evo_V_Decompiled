.class Lcom/htc/fusion/fx/MessageRelay$1;
.super Lcom/htc/fusion/fx/MessageListener;
.source "MessageRelay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fusion/fx/MessageRelay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/fusion/fx/MessageListener",
        "<TT;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lcom/htc/fusion/fx/MessageRelay;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/htc/fusion/fx/MessageRelay;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/htc/fusion/fx/MessageRelay$1;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/htc/fusion/fx/MessageRelay;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/fusion/fx/MessageRelay$1;->this$0:Lcom/htc/fusion/fx/MessageRelay;

    invoke-direct {p0}, Lcom/htc/fusion/fx/MessageListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageReceived(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    sget-boolean v0, Lcom/htc/fusion/fx/MessageRelay$1;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/fusion/fx/MessageRelay$1;->this$0:Lcom/htc/fusion/fx/MessageRelay;

    #getter for: Lcom/htc/fusion/fx/MessageRelay;->source:Lcom/htc/fusion/fx/MessageSource;
    invoke-static {v0}, Lcom/htc/fusion/fx/MessageRelay;->access$000(Lcom/htc/fusion/fx/MessageRelay;)Lcom/htc/fusion/fx/MessageSource;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/fusion/fx/MessageSource;->raiseMessage(Ljava/lang/Object;)V

    return-void
.end method
