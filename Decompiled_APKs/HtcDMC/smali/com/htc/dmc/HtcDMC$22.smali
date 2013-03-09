.class Lcom/htc/dmc/HtcDMC$22;
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
    .line 4067
    iput-object p1, p0, Lcom/htc/dmc/HtcDMC$22;->this$0:Lcom/htc/dmc/HtcDMC;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    const/4 v1, 0x0

    .line 4069
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC$22;->this$0:Lcom/htc/dmc/HtcDMC;

    #calls: Lcom/htc/dmc/HtcDMC;->TuneVolume(II)V
    invoke-static {v0, v1, v1}, Lcom/htc/dmc/HtcDMC;->access$6300(Lcom/htc/dmc/HtcDMC;II)V

    .line 4070
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC$22;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mDMCStatus:Lcom/htc/dmc/HtcDMC$DMCStatus;
    invoke-static {v0}, Lcom/htc/dmc/HtcDMC;->access$2400(Lcom/htc/dmc/HtcDMC;)Lcom/htc/dmc/HtcDMC$DMCStatus;

    move-result-object v0

    iget v0, v0, Lcom/htc/dmc/HtcDMC$DMCStatus;->nUserVolume:I

    if-gtz v0, :cond_0

    .line 4072
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC$22;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mDMCStatus:Lcom/htc/dmc/HtcDMC$DMCStatus;
    invoke-static {v0}, Lcom/htc/dmc/HtcDMC;->access$2400(Lcom/htc/dmc/HtcDMC;)Lcom/htc/dmc/HtcDMC$DMCStatus;

    move-result-object v0

    iput v1, v0, Lcom/htc/dmc/HtcDMC$DMCStatus;->nUserVolume:I

    .line 4073
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC$22;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mVolumeIcon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/htc/dmc/HtcDMC;->access$6400(Lcom/htc/dmc/HtcDMC;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x1080742

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4078
    :goto_0
    return-void

    .line 4076
    :cond_0
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC$22;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mVolumeIcon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/htc/dmc/HtcDMC;->access$6400(Lcom/htc/dmc/HtcDMC;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x1080743

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method
