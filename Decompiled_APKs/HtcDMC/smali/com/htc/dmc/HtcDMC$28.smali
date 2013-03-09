.class Lcom/htc/dmc/HtcDMC$28;
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
    .line 4467
    iput-object p1, p0, Lcom/htc/dmc/HtcDMC$28;->this$0:Lcom/htc/dmc/HtcDMC;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 4469
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC$28;->this$0:Lcom/htc/dmc/HtcDMC;

    const/4 v1, 0x2

    const/16 v2, 0x64

    #calls: Lcom/htc/dmc/HtcDMC;->TuneVolume(II)V
    invoke-static {v0, v1, v2}, Lcom/htc/dmc/HtcDMC;->access$6300(Lcom/htc/dmc/HtcDMC;II)V

    .line 4470
    return-void
.end method
