.class Lcom/htc/home/personalize/widget/HtcFilmstripView$2;
.super Ljava/lang/Object;
.source "HtcFilmstripView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/home/personalize/widget/HtcFilmstripView;->onKeyUp(ILandroid/view/KeyEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/home/personalize/widget/HtcFilmstripView;


# direct methods
.method constructor <init>(Lcom/htc/home/personalize/widget/HtcFilmstripView;)V
    .locals 0
    .parameter

    .prologue
    .line 1498
    iput-object p1, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView$2;->this$0:Lcom/htc/home/personalize/widget/HtcFilmstripView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1500
    iget-object v0, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView$2;->this$0:Lcom/htc/home/personalize/widget/HtcFilmstripView;

    #calls: Lcom/htc/home/personalize/widget/HtcFilmstripView;->dispatchUnpress()V
    invoke-static {v0}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->access$300(Lcom/htc/home/personalize/widget/HtcFilmstripView;)V

    .line 1501
    return-void
.end method
