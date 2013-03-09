.class Lcom/htc/HtcNaviPanel/HtcNaviPanel$2;
.super Ljava/lang/Object;
.source "HtcNaviPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/HtcNaviPanel/HtcNaviPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/HtcNaviPanel/HtcNaviPanel;


# direct methods
.method constructor <init>(Lcom/htc/HtcNaviPanel/HtcNaviPanel;)V
    .locals 0
    .parameter

    .prologue
    .line 200
    iput-object p1, p0, Lcom/htc/HtcNaviPanel/HtcNaviPanel$2;->this$0:Lcom/htc/HtcNaviPanel/HtcNaviPanel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/htc/HtcNaviPanel/HtcNaviPanel$2;->this$0:Lcom/htc/HtcNaviPanel/HtcNaviPanel;

    #calls: Lcom/htc/HtcNaviPanel/HtcNaviPanel;->removeGPS()V
    invoke-static {v0}, Lcom/htc/HtcNaviPanel/HtcNaviPanel;->access$100(Lcom/htc/HtcNaviPanel/HtcNaviPanel;)V

    .line 203
    return-void
.end method
