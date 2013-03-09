.class Lcom/htc/opensense/widget/HtcFilmstripView$1;
.super Ljava/lang/Object;
.source "HtcFilmstripView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/widget/HtcFilmstripView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/opensense/widget/HtcFilmstripView;


# direct methods
.method constructor <init>(Lcom/htc/opensense/widget/HtcFilmstripView;)V
    .locals 0
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/htc/opensense/widget/HtcFilmstripView$1;->this$0:Lcom/htc/opensense/widget/HtcFilmstripView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView$1;->this$0:Lcom/htc/opensense/widget/HtcFilmstripView;

    const/4 v1, 0x0

    #setter for: Lcom/htc/opensense/widget/HtcFilmstripView;->mSuppressSelectionChanged:Z
    invoke-static {v0, v1}, Lcom/htc/opensense/widget/HtcFilmstripView;->access$002(Lcom/htc/opensense/widget/HtcFilmstripView;Z)Z

    .line 124
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView$1;->this$0:Lcom/htc/opensense/widget/HtcFilmstripView;

    invoke-virtual {v0}, Lcom/htc/opensense/widget/HtcFilmstripView;->selectionChanged()V

    .line 125
    return-void
.end method
