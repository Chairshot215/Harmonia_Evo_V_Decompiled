.class Lcom/htc/opensense/widget/HtcFilmstripView$2;
.super Ljava/lang/Object;
.source "HtcFilmstripView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/opensense/widget/HtcFilmstripView;->onKeyUp(ILandroid/view/KeyEvent;)Z
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
    .line 1461
    iput-object p1, p0, Lcom/htc/opensense/widget/HtcFilmstripView$2;->this$0:Lcom/htc/opensense/widget/HtcFilmstripView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1463
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView$2;->this$0:Lcom/htc/opensense/widget/HtcFilmstripView;

    #calls: Lcom/htc/opensense/widget/HtcFilmstripView;->dispatchUnpress()V
    invoke-static {v0}, Lcom/htc/opensense/widget/HtcFilmstripView;->access$300(Lcom/htc/opensense/widget/HtcFilmstripView;)V

    .line 1464
    return-void
.end method
