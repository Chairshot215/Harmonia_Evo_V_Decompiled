.class public Lcom/htc/net/wimax/Wimax4GManager$WimaxQosServiceFlowControl;
.super Lcom/htc/net/FourG/FourGManager$QosServiceFlowControl;
.source "Wimax4GManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/net/wimax/Wimax4GManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WimaxQosServiceFlowControl"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/htc/net/FourG/FourGManager$QosServiceFlowControl;-><init>()V

    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-super {p0}, Lcom/htc/net/FourG/FourGManager$QosServiceFlowControl;->finalize()V

    return-void
.end method

.method public getServiceFlows()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/net/FourG/QosServiceFlowDescriptor;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public initiateServiceFlow(Lcom/htc/net/FourG/QosServiceFlowDescriptor;)I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public pauseServiceFlow(Lcom/htc/net/FourG/QosServiceFlowDescriptor;)I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public resumeServiceFlow(Lcom/htc/net/FourG/QosServiceFlowDescriptor;)I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public submitServiceFlow(Lcom/htc/net/FourG/QosServiceFlowDescriptor;)I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public terminateServiceFlow(Lcom/htc/net/FourG/QosServiceFlowDescriptor;)I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method
