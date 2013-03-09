.class Lcom/htc/dmc/HtcDMC$6;
.super Ljava/lang/Object;
.source "HtcDMC.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/dmc/HtcDMC;->onCreateDialog(I)Landroid/app/Dialog;
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
    .line 1488
    iput-object p1, p0, Lcom/htc/dmc/HtcDMC$6;->this$0:Lcom/htc/dmc/HtcDMC;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1491
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1492
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC$6;->this$0:Lcom/htc/dmc/HtcDMC;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/htc/dmc/HtcDMC;->DMRPowerOff(I)V

    .line 1493
    return-void
.end method
