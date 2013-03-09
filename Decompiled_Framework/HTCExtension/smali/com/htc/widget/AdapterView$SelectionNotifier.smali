.class Lcom/htc/widget/AdapterView$SelectionNotifier;
.super Landroid/os/Handler;
.source "AdapterView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/AdapterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectionNotifier"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/AdapterView;


# direct methods
.method private constructor <init>(Lcom/htc/widget/AdapterView;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/AdapterView$SelectionNotifier;->this$0:Lcom/htc/widget/AdapterView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/widget/AdapterView;Lcom/htc/widget/AdapterView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/widget/AdapterView$SelectionNotifier;-><init>(Lcom/htc/widget/AdapterView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/AdapterView$SelectionNotifier;->this$0:Lcom/htc/widget/AdapterView;

    iget-boolean v0, v0, Lcom/htc/widget/AdapterView;->mDataChanged:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p0}, Lcom/htc/widget/AdapterView$SelectionNotifier;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/AdapterView$SelectionNotifier;->this$0:Lcom/htc/widget/AdapterView;

    #calls: Lcom/htc/widget/AdapterView;->fireOnSelected()V
    invoke-static {v0}, Lcom/htc/widget/AdapterView;->access$200(Lcom/htc/widget/AdapterView;)V

    goto :goto_0
.end method
