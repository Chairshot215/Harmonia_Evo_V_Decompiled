.class Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine$1;
.super Ljava/lang/Object;
.source "FxIdleScreenEngine.java"

# interfaces
.implements Lcom/htc/lockscreen/fusion/widget/TouchFilter$TouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;


# direct methods
.method constructor <init>(Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine$1;->this$0:Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouchEvent(IIII)Z
    .locals 3

    iget-object v0, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine$1;->this$0:Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;

    iget-object v0, v0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mIdleScreen:Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine$1;->this$0:Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;

    iget-object v0, v0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mIdleScreen:Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;

    invoke-interface {v0, p1, p3, p4}, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;->onTouchEvent(III)V

    :cond_0
    invoke-static {}, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->access$100()Lcom/htc/fusion/fx/FxViewObject;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->access$100()Lcom/htc/fusion/fx/FxViewObject;

    move-result-object v0

    int-to-float v1, p3

    int-to-float v2, p4

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/htc/fusion/fx/FxViewObject;->onTouchEvent(IIFF)Z

    :cond_1
    const/4 v0, 0x0

    return v0
.end method
