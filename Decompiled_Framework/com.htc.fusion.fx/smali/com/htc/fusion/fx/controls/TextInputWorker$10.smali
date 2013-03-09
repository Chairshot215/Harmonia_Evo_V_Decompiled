.class Lcom/htc/fusion/fx/controls/TextInputWorker$10;
.super Ljava/lang/Object;
.source "TextInputWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/fusion/fx/controls/TextInputWorker;->exitInputMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/fusion/fx/controls/TextInputWorker;


# direct methods
.method constructor <init>(Lcom/htc/fusion/fx/controls/TextInputWorker;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$10;->this$0:Lcom/htc/fusion/fx/controls/TextInputWorker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$10;->this$0:Lcom/htc/fusion/fx/controls/TextInputWorker;

    #calls: Lcom/htc/fusion/fx/controls/TextInputWorker;->exitInputMode_OnUiThread()V
    invoke-static {v0}, Lcom/htc/fusion/fx/controls/TextInputWorker;->access$800(Lcom/htc/fusion/fx/controls/TextInputWorker;)V

    return-void
.end method
