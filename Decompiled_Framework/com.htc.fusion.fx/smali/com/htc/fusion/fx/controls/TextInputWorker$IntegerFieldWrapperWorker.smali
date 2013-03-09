.class Lcom/htc/fusion/fx/controls/TextInputWorker$IntegerFieldWrapperWorker;
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
    name = "IntegerFieldWrapperWorker"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field protected mFieldname:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/fusion/fx/controls/TextInputWorker;


# direct methods
.method public constructor <init>(Lcom/htc/fusion/fx/controls/TextInputWorker;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$IntegerFieldWrapperWorker;->this$0:Lcom/htc/fusion/fx/controls/TextInputWorker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$IntegerFieldWrapperWorker;->mFieldname:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Integer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$IntegerFieldWrapperWorker;->this$0:Lcom/htc/fusion/fx/controls/TextInputWorker;

    iget-object v1, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$IntegerFieldWrapperWorker;->mFieldname:Ljava/lang/String;

    #calls: Lcom/htc/fusion/fx/controls/TextInputWorker;->getIntegerFieldWrapperInternal(Ljava/lang/String;)Ljava/lang/Integer;
    invoke-static {v0, v1}, Lcom/htc/fusion/fx/controls/TextInputWorker;->access$1600(Lcom/htc/fusion/fx/controls/TextInputWorker;Ljava/lang/String;)Ljava/lang/Integer;

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

    invoke-virtual {p0}, Lcom/htc/fusion/fx/controls/TextInputWorker$IntegerFieldWrapperWorker;->call()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
