.class Lcom/htc/dmc/HtcDMC$30;
.super Ljava/lang/Object;
.source "HtcDMC.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/dmc/HtcDMC;->prepareVolumeUI(Landroid/content/Context;)V
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
    .line 4704
    iput-object p1, p0, Lcom/htc/dmc/HtcDMC$30;->this$0:Lcom/htc/dmc/HtcDMC;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 4706
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC$30;->this$0:Lcom/htc/dmc/HtcDMC;

    #calls: Lcom/htc/dmc/HtcDMC;->resetVolUITimeout()V
    invoke-static {v0}, Lcom/htc/dmc/HtcDMC;->access$6800(Lcom/htc/dmc/HtcDMC;)V

    .line 4707
    const/4 v0, 0x1

    return v0
.end method
