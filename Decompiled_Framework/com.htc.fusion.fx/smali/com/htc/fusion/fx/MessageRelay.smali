.class public Lcom/htc/fusion/fx/MessageRelay;
.super Ljava/lang/Object;
.source "MessageRelay.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private listener:Lcom/htc/fusion/fx/IMessageListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/fusion/fx/IMessageListener",
            "<TT;>;"
        }
    .end annotation
.end field

.field private source:Lcom/htc/fusion/fx/MessageSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/fusion/fx/MessageSource",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/htc/fusion/fx/MessageSource;

    invoke-direct {v0}, Lcom/htc/fusion/fx/MessageSource;-><init>()V

    iput-object v0, p0, Lcom/htc/fusion/fx/MessageRelay;->source:Lcom/htc/fusion/fx/MessageSource;

    new-instance v0, Lcom/htc/fusion/fx/MessageRelay$1;

    invoke-direct {v0, p0}, Lcom/htc/fusion/fx/MessageRelay$1;-><init>(Lcom/htc/fusion/fx/MessageRelay;)V

    iput-object v0, p0, Lcom/htc/fusion/fx/MessageRelay;->listener:Lcom/htc/fusion/fx/IMessageListener;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/fusion/fx/MessageRelay;)Lcom/htc/fusion/fx/MessageSource;
    .locals 1

    iget-object v0, p0, Lcom/htc/fusion/fx/MessageRelay;->source:Lcom/htc/fusion/fx/MessageSource;

    return-object v0
.end method


# virtual methods
.method public getListener()Lcom/htc/fusion/fx/IMessageListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/htc/fusion/fx/IMessageListener",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/fusion/fx/MessageRelay;->listener:Lcom/htc/fusion/fx/IMessageListener;

    return-object v0
.end method

.method public getSource()Lcom/htc/fusion/fx/IMessageSource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/htc/fusion/fx/IMessageSource",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/fusion/fx/MessageRelay;->source:Lcom/htc/fusion/fx/MessageSource;

    return-object v0
.end method
