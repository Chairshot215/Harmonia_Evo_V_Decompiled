.class Lcom/htc/photowidget3d/grid/M10Operator$1;
.super Lcom/htc/fusion/fx/MessageListener;
.source "M10Operator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/photowidget3d/grid/M10Operator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/fusion/fx/MessageListener",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/photowidget3d/grid/M10Operator;


# direct methods
.method constructor <init>(Lcom/htc/photowidget3d/grid/M10Operator;)V
    .locals 0
    .parameter

    .prologue
    .line 960
    iput-object p1, p0, Lcom/htc/photowidget3d/grid/M10Operator$1;->this$0:Lcom/htc/photowidget3d/grid/M10Operator;

    invoke-direct {p0}, Lcom/htc/fusion/fx/MessageListener;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onMessageReceived(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 960
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/photowidget3d/grid/M10Operator$1;->onMessageReceived(Ljava/lang/Void;)V

    return-void
.end method

.method public onMessageReceived(Ljava/lang/Void;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 964
    const-string v0, "mBtnClickInfoListener onMessageReceived"

    invoke-static {v0}, Lcom/htc/photowidget3d/grid/util/HtcLog;->log_d(Ljava/lang/String;)V

    .line 965
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/M10Operator$1;->this$0:Lcom/htc/photowidget3d/grid/M10Operator;

    iget-object v1, p0, Lcom/htc/photowidget3d/grid/M10Operator$1;->this$0:Lcom/htc/photowidget3d/grid/M10Operator;

    iget-object v1, v1, Lcom/htc/photowidget3d/grid/M10Operator;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/htc/photowidget3d/grid/M10Operator;->hasMessage(Lcom/htc/android/rosie/widget/Widget$Host$Worker;I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/photowidget3d/grid/M10Operator$1;->this$0:Lcom/htc/photowidget3d/grid/M10Operator;

    iget-object v1, p0, Lcom/htc/photowidget3d/grid/M10Operator$1;->this$0:Lcom/htc/photowidget3d/grid/M10Operator;

    iget-object v1, v1, Lcom/htc/photowidget3d/grid/M10Operator;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lcom/htc/photowidget3d/grid/M10Operator;->hasMessage(Lcom/htc/android/rosie/widget/Widget$Host$Worker;I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/photowidget3d/grid/M10Operator$1;->this$0:Lcom/htc/photowidget3d/grid/M10Operator;

    iget-object v1, p0, Lcom/htc/photowidget3d/grid/M10Operator$1;->this$0:Lcom/htc/photowidget3d/grid/M10Operator;

    iget-object v1, v1, Lcom/htc/photowidget3d/grid/M10Operator;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Lcom/htc/photowidget3d/grid/M10Operator;->hasMessage(Lcom/htc/android/rosie/widget/Widget$Host$Worker;I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/photowidget3d/grid/M10Operator$1;->this$0:Lcom/htc/photowidget3d/grid/M10Operator;

    iget-object v1, p0, Lcom/htc/photowidget3d/grid/M10Operator$1;->this$0:Lcom/htc/photowidget3d/grid/M10Operator;

    iget-object v1, v1, Lcom/htc/photowidget3d/grid/M10Operator;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Lcom/htc/photowidget3d/grid/M10Operator;->hasMessage(Lcom/htc/android/rosie/widget/Widget$Host$Worker;I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/photowidget3d/grid/M10Operator$1;->this$0:Lcom/htc/photowidget3d/grid/M10Operator;

    iget-object v1, p0, Lcom/htc/photowidget3d/grid/M10Operator$1;->this$0:Lcom/htc/photowidget3d/grid/M10Operator;

    iget-object v1, v1, Lcom/htc/photowidget3d/grid/M10Operator;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Lcom/htc/photowidget3d/grid/M10Operator;->hasMessage(Lcom/htc/android/rosie/widget/Widget$Host$Worker;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 982
    :cond_0
    :goto_0
    return-void

    .line 973
    :cond_1
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/htc/photowidget3d/grid/M10Operator$1;->this$0:Lcom/htc/photowidget3d/grid/M10Operator;

    iget v1, v1, Lcom/htc/photowidget3d/grid/M10Operator;->m_CurrentView:I

    if-ne v0, v1, :cond_2

    .line 975
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/M10Operator$1;->this$0:Lcom/htc/photowidget3d/grid/M10Operator;

    const/4 v1, 0x0

    iput v1, v0, Lcom/htc/photowidget3d/grid/M10Operator;->m_ScrollDirection:I

    .line 976
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/M10Operator$1;->this$0:Lcom/htc/photowidget3d/grid/M10Operator;

    #calls: Lcom/htc/photowidget3d/grid/M10Operator;->triggerGridView()V
    invoke-static {v0}, Lcom/htc/photowidget3d/grid/M10Operator;->access$800(Lcom/htc/photowidget3d/grid/M10Operator;)V

    goto :goto_0

    .line 978
    :cond_2
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/M10Operator$1;->this$0:Lcom/htc/photowidget3d/grid/M10Operator;

    iget v0, v0, Lcom/htc/photowidget3d/grid/M10Operator;->m_CurrentView:I

    if-nez v0, :cond_0

    .line 980
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/M10Operator$1;->this$0:Lcom/htc/photowidget3d/grid/M10Operator;

    #calls: Lcom/htc/photowidget3d/grid/M10Operator;->launchAlbum()V
    invoke-static {v0}, Lcom/htc/photowidget3d/grid/M10Operator;->access$900(Lcom/htc/photowidget3d/grid/M10Operator;)V

    goto :goto_0
.end method
