.class public abstract Lcom/htc/net/FourG/FourGManager$QosServiceFlowControl;
.super Ljava/lang/Object;
.source "FourGManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/net/FourG/FourGManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "QosServiceFlowControl"
.end annotation


# static fields
.field public static final EXTRA_SERVICE_FLOW:Ljava/lang/String; = "com.htc.net.wimax.EXTRA_SERVICE_FLOW"

.field public static final EXTRA_SF_SCHEDULING_CLASS:Ljava/lang/String; = "com.htc.net.wimax.EXTRA_LINK_SF_SCHEDULING_CLASS"

.field public static final EXTRA_SF_STATE:Ljava/lang/String; = "com.htc.net.wimax.EXTRA_LINK_SF_STATE"


# instance fields
.field private sfds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/net/FourG/QosServiceFlowDescriptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/net/FourG/FourGManager$QosServiceFlowControl;->sfds:Ljava/util/List;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/htc/net/FourG/FourGManager$QosServiceFlowControl;->sfds:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public createServiceFlow(Lcom/htc/net/FourG/QosServiceFlowDescriptor;)I
    .locals 1

    iget-object v0, p0, Lcom/htc/net/FourG/FourGManager$QosServiceFlowControl;->sfds:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/net/FourG/FourGManager$QosServiceFlowControl;->sfds:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public abstract getServiceFlows()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/net/FourG/QosServiceFlowDescriptor;",
            ">;"
        }
    .end annotation
.end method

.method public abstract initiateServiceFlow(Lcom/htc/net/FourG/QosServiceFlowDescriptor;)I
.end method

.method public abstract pauseServiceFlow(Lcom/htc/net/FourG/QosServiceFlowDescriptor;)I
.end method

.method public abstract resumeServiceFlow(Lcom/htc/net/FourG/QosServiceFlowDescriptor;)I
.end method

.method public abstract submitServiceFlow(Lcom/htc/net/FourG/QosServiceFlowDescriptor;)I
.end method

.method public abstract terminateServiceFlow(Lcom/htc/net/FourG/QosServiceFlowDescriptor;)I
.end method
