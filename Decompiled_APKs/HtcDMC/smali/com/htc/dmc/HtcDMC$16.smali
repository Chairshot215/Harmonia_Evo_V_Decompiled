.class Lcom/htc/dmc/HtcDMC$16;
.super Ljava/lang/Object;
.source "HtcDMC.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dmc/HtcDMC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/dmc/HtcDMC;


# direct methods
.method constructor <init>(Lcom/htc/dmc/HtcDMC;)V
    .locals 0
    .parameter

    .prologue
    .line 3886
    iput-object p1, p0, Lcom/htc/dmc/HtcDMC$16;->this$0:Lcom/htc/dmc/HtcDMC;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 3888
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC$16;->this$0:Lcom/htc/dmc/HtcDMC;

    const/4 v1, 0x0

    #calls: Lcom/htc/dmc/HtcDMC;->DMCDoPP(Z)V
    invoke-static {v0, v1}, Lcom/htc/dmc/HtcDMC;->access$5400(Lcom/htc/dmc/HtcDMC;Z)V

    .line 3889
    return-void
.end method
