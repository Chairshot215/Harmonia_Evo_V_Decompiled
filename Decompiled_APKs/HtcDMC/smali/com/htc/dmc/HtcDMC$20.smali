.class Lcom/htc/dmc/HtcDMC$20;
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
    .line 3981
    iput-object p1, p0, Lcom/htc/dmc/HtcDMC$20;->this$0:Lcom/htc/dmc/HtcDMC;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 3985
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC$20;->this$0:Lcom/htc/dmc/HtcDMC;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/dmc/HtcDMC;->DMRPowerOff(I)V

    .line 3986
    return-void
.end method
