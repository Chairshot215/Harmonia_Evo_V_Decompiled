.class Lcom/htc/sunny2/view/SView$SViewHandler;
.super Lcom/htc/sunny2/RenderThreadHandler;
.source "SView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/view/SView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SViewHandler"
.end annotation


# static fields
.field public static final EVENT_ANIMATING:I = 0x1

.field public static final EVENT_CANCEL_ANIMATION:I = 0x3

.field public static final EVENT_REFRESH_BACKGROUND:I = 0x4

.field public static final EVENT_SET_GLOBAL_BACKGROUND:I = 0x6

.field public static final EVENT_SET_GLOBAL_HEADER_BAR:I = 0x7

.field public static final EVENT_SET_RESID_BACKGROUND:I = 0x5

.field public static final EVENT_START_ANIMATIION:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/htc/sunny2/view/SView;


# direct methods
.method public constructor <init>(Lcom/htc/sunny2/view/SView;Ljava/lang/Object;Ljava/lang/String;Lcom/htc/sunny2/RenderThread;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/sunny2/view/SView$SViewHandler;->this$0:Lcom/htc/sunny2/view/SView;

    invoke-direct {p0, p2, p3, p4}, Lcom/htc/sunny2/RenderThreadHandler;-><init>(Ljava/lang/Object;Ljava/lang/String;Lcom/htc/sunny2/RenderThread;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;)V
    .locals 2

    iget v0, p1, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/htc/sunny2/view/SView$SViewHandler;->this$0:Lcom/htc/sunny2/view/SView;

    iget-object v0, p1, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/htc/sunny2/view/animation/SAnimationController;

    invoke-virtual {v1, v0}, Lcom/htc/sunny2/view/SView;->startAnimationIRT(Lcom/htc/sunny2/view/animation/SAnimationController;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/htc/sunny2/view/SView$SViewHandler;->this$0:Lcom/htc/sunny2/view/SView;

    #calls: Lcom/htc/sunny2/view/SView;->cancelAnimationIRT()V
    invoke-static {v0}, Lcom/htc/sunny2/view/SView;->access$000(Lcom/htc/sunny2/view/SView;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/htc/sunny2/view/SView$SViewHandler;->this$0:Lcom/htc/sunny2/view/SView;

    #calls: Lcom/htc/sunny2/view/SView;->applyAnimation()V
    invoke-static {v0}, Lcom/htc/sunny2/view/SView;->access$100(Lcom/htc/sunny2/view/SView;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/htc/sunny2/view/SView$SViewHandler;->this$0:Lcom/htc/sunny2/view/SView;

    #calls: Lcom/htc/sunny2/view/SView;->invalidateBackgroundDrawable()V
    invoke-static {v0}, Lcom/htc/sunny2/view/SView;->access$200(Lcom/htc/sunny2/view/SView;)V

    goto :goto_0

    :pswitch_4
    iget-object v1, p0, Lcom/htc/sunny2/view/SView$SViewHandler;->this$0:Lcom/htc/sunny2/view/SView;

    iget-object v0, p1, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    #calls: Lcom/htc/sunny2/view/SView;->setBackgroundResource_IRT(I)V
    invoke-static {v1, v0}, Lcom/htc/sunny2/view/SView;->access$300(Lcom/htc/sunny2/view/SView;I)V

    goto :goto_0

    :pswitch_5
    iget-object v1, p0, Lcom/htc/sunny2/view/SView$SViewHandler;->this$0:Lcom/htc/sunny2/view/SView;

    iget-object v0, p1, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    #calls: Lcom/htc/sunny2/view/SView;->setGlobalBackgroundResource_IRT(I)V
    invoke-static {v1, v0}, Lcom/htc/sunny2/view/SView;->access$400(Lcom/htc/sunny2/view/SView;I)V

    goto :goto_0

    :pswitch_6
    iget-object v1, p0, Lcom/htc/sunny2/view/SView$SViewHandler;->this$0:Lcom/htc/sunny2/view/SView;

    iget-object v0, p1, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/htc/sunny2/view/SView$GlobalHeaderBarParm;

    #calls: Lcom/htc/sunny2/view/SView;->setGlobalHeaderBar_IRT(Lcom/htc/sunny2/view/SView$GlobalHeaderBarParm;)V
    invoke-static {v1, v0}, Lcom/htc/sunny2/view/SView;->access$500(Lcom/htc/sunny2/view/SView;Lcom/htc/sunny2/view/SView$GlobalHeaderBarParm;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
