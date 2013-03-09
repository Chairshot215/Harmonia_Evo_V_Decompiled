.class Lcom/htc/home/personalize/widget/HtcFilmstripView$1;
.super Ljava/lang/Object;
.source "HtcFilmstripView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/home/personalize/widget/HtcFilmstripView;
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
    .line 122
    iput-object p1, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView$1;->this$0:Lcom/htc/home/personalize/widget/HtcFilmstripView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView$1;->this$0:Lcom/htc/home/personalize/widget/HtcFilmstripView;

    const/4 v1, 0x0

    #setter for: Lcom/htc/home/personalize/widget/HtcFilmstripView;->mSuppressSelectionChanged:Z
    invoke-static {v0, v1}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->access$002(Lcom/htc/home/personalize/widget/HtcFilmstripView;Z)Z

    .line 125
    iget-object v0, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView$1;->this$0:Lcom/htc/home/personalize/widget/HtcFilmstripView;

    invoke-virtual {v0}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->selectionChanged()V

    .line 126
    return-void
.end method
