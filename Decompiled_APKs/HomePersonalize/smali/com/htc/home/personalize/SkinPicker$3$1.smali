.class Lcom/htc/home/personalize/SkinPicker$3$1;
.super Ljava/lang/Object;
.source "SkinPicker.java"

# interfaces
.implements Lcom/htc/home/personalize/widget/SkinPickerAdapter$ApplySkinListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/home/personalize/SkinPicker$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/home/personalize/SkinPicker$3;


# direct methods
.method constructor <init>(Lcom/htc/home/personalize/SkinPicker$3;)V
    .locals 0
    .parameter

    .prologue
    .line 577
    iput-object p1, p0, Lcom/htc/home/personalize/SkinPicker$3$1;->this$1:Lcom/htc/home/personalize/SkinPicker$3;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyComplete()V
    .locals 3

    .prologue
    .line 579
    iget-object v0, p0, Lcom/htc/home/personalize/SkinPicker$3$1;->this$1:Lcom/htc/home/personalize/SkinPicker$3;

    iget-object v0, v0, Lcom/htc/home/personalize/SkinPicker$3;->this$0:Lcom/htc/home/personalize/SkinPicker;

    #getter for: Lcom/htc/home/personalize/SkinPicker;->mSkinPickerHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/home/personalize/SkinPicker;->access$700(Lcom/htc/home/personalize/SkinPicker;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/home/personalize/SkinPicker$3$1;->this$1:Lcom/htc/home/personalize/SkinPicker$3;

    iget-object v1, v1, Lcom/htc/home/personalize/SkinPicker$3;->this$0:Lcom/htc/home/personalize/SkinPicker;

    #getter for: Lcom/htc/home/personalize/SkinPicker;->mSkinPickerHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/home/personalize/SkinPicker;->access$700(Lcom/htc/home/personalize/SkinPicker;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x8d

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 580
    iget-object v0, p0, Lcom/htc/home/personalize/SkinPicker$3$1;->this$1:Lcom/htc/home/personalize/SkinPicker$3;

    iget-object v0, v0, Lcom/htc/home/personalize/SkinPicker$3;->this$0:Lcom/htc/home/personalize/SkinPicker;

    #calls: Lcom/htc/home/personalize/SkinPicker;->launchHome()V
    invoke-static {v0}, Lcom/htc/home/personalize/SkinPicker;->access$800(Lcom/htc/home/personalize/SkinPicker;)V

    .line 581
    return-void
.end method

.method public notifyFail()V
    .locals 3

    .prologue
    .line 585
    iget-object v0, p0, Lcom/htc/home/personalize/SkinPicker$3$1;->this$1:Lcom/htc/home/personalize/SkinPicker$3;

    iget-object v0, v0, Lcom/htc/home/personalize/SkinPicker$3;->this$0:Lcom/htc/home/personalize/SkinPicker;

    #getter for: Lcom/htc/home/personalize/SkinPicker;->mSkinPickerHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/home/personalize/SkinPicker;->access$700(Lcom/htc/home/personalize/SkinPicker;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/home/personalize/SkinPicker$3$1;->this$1:Lcom/htc/home/personalize/SkinPicker$3;

    iget-object v1, v1, Lcom/htc/home/personalize/SkinPicker$3;->this$0:Lcom/htc/home/personalize/SkinPicker;

    #getter for: Lcom/htc/home/personalize/SkinPicker;->mSkinPickerHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/home/personalize/SkinPicker;->access$700(Lcom/htc/home/personalize/SkinPicker;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x8f

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 586
    return-void
.end method
