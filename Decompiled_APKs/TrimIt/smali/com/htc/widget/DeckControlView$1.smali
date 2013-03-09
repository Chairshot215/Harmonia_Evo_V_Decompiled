.class Lcom/htc/widget/DeckControlView$1;
.super Ljava/lang/Object;
.source "DeckControlView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/widget/DeckControlView;->init(Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/DeckControlView;


# direct methods
.method constructor <init>(Lcom/htc/widget/DeckControlView;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/htc/widget/DeckControlView$1;->this$0:Lcom/htc/widget/DeckControlView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/htc/widget/DeckControlView$1;->this$0:Lcom/htc/widget/DeckControlView;

    #calls: Lcom/htc/widget/DeckControlView;->initW()V
    invoke-static {v0}, Lcom/htc/widget/DeckControlView;->access$000(Lcom/htc/widget/DeckControlView;)V

    .line 76
    return-void
.end method
