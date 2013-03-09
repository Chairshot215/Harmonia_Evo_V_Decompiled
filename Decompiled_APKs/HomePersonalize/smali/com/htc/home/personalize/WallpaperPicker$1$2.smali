.class Lcom/htc/home/personalize/WallpaperPicker$1$2;
.super Ljava/lang/Object;
.source "WallpaperPicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/home/personalize/WallpaperPicker$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/home/personalize/WallpaperPicker$1;


# direct methods
.method constructor <init>(Lcom/htc/home/personalize/WallpaperPicker$1;)V
    .locals 0
    .parameter

    .prologue
    .line 592
    iput-object p1, p0, Lcom/htc/home/personalize/WallpaperPicker$1$2;->this$1:Lcom/htc/home/personalize/WallpaperPicker$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 594
    iget-object v1, p0, Lcom/htc/home/personalize/WallpaperPicker$1$2;->this$1:Lcom/htc/home/personalize/WallpaperPicker$1;

    iget-object v1, v1, Lcom/htc/home/personalize/WallpaperPicker$1;->this$0:Lcom/htc/home/personalize/WallpaperPicker;

    #getter for: Lcom/htc/home/personalize/WallpaperPicker;->mDockMode:Z
    invoke-static {v1}, Lcom/htc/home/personalize/WallpaperPicker;->access$400(Lcom/htc/home/personalize/WallpaperPicker;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Lcom/htc/home/personalize/WallpaperPicker$PickerType;->PANEL:Lcom/htc/home/personalize/WallpaperPicker$PickerType;

    .line 595
    .local v0, tmpPickerType:Lcom/htc/home/personalize/WallpaperPicker$PickerType;
    :goto_0
    sget-object v1, Lcom/htc/home/personalize/WallpaperPicker$17;->$SwitchMap$com$htc$home$personalize$WallpaperPicker$PickerType:[I

    invoke-virtual {v0}, Lcom/htc/home/personalize/WallpaperPicker$PickerType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 608
    :cond_0
    :goto_1
    return-void

    .line 594
    .end local v0           #tmpPickerType:Lcom/htc/home/personalize/WallpaperPicker$PickerType;
    :cond_1
    iget-object v1, p0, Lcom/htc/home/personalize/WallpaperPicker$1$2;->this$1:Lcom/htc/home/personalize/WallpaperPicker$1;

    iget-object v1, v1, Lcom/htc/home/personalize/WallpaperPicker$1;->this$0:Lcom/htc/home/personalize/WallpaperPicker;

    #getter for: Lcom/htc/home/personalize/WallpaperPicker;->mPickerType:Lcom/htc/home/personalize/WallpaperPicker$PickerType;
    invoke-static {v1}, Lcom/htc/home/personalize/WallpaperPicker;->access$500(Lcom/htc/home/personalize/WallpaperPicker;)Lcom/htc/home/personalize/WallpaperPicker$PickerType;

    move-result-object v0

    goto :goto_0

    .line 597
    .restart local v0       #tmpPickerType:Lcom/htc/home/personalize/WallpaperPicker$PickerType;
    :pswitch_0
    iget-object v1, p0, Lcom/htc/home/personalize/WallpaperPicker$1$2;->this$1:Lcom/htc/home/personalize/WallpaperPicker$1;

    iget-object v1, v1, Lcom/htc/home/personalize/WallpaperPicker$1;->this$0:Lcom/htc/home/personalize/WallpaperPicker;

    #getter for: Lcom/htc/home/personalize/WallpaperPicker;->mGridAdapter:Lcom/htc/home/personalize/widget/WallpaperGridAdapter;
    invoke-static {v1}, Lcom/htc/home/personalize/WallpaperPicker;->access$600(Lcom/htc/home/personalize/WallpaperPicker;)Lcom/htc/home/personalize/widget/WallpaperGridAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 598
    iget-object v1, p0, Lcom/htc/home/personalize/WallpaperPicker$1$2;->this$1:Lcom/htc/home/personalize/WallpaperPicker$1;

    iget-object v1, v1, Lcom/htc/home/personalize/WallpaperPicker$1;->this$0:Lcom/htc/home/personalize/WallpaperPicker;

    #getter for: Lcom/htc/home/personalize/WallpaperPicker;->mGridAdapter:Lcom/htc/home/personalize/widget/WallpaperGridAdapter;
    invoke-static {v1}, Lcom/htc/home/personalize/WallpaperPicker;->access$600(Lcom/htc/home/personalize/WallpaperPicker;)Lcom/htc/home/personalize/widget/WallpaperGridAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/home/personalize/widget/WallpaperGridAdapter;->notifyDataSetChanged()V

    goto :goto_1

    .line 602
    :pswitch_1
    iget-object v1, p0, Lcom/htc/home/personalize/WallpaperPicker$1$2;->this$1:Lcom/htc/home/personalize/WallpaperPicker$1;

    iget-object v1, v1, Lcom/htc/home/personalize/WallpaperPicker$1;->this$0:Lcom/htc/home/personalize/WallpaperPicker;

    #getter for: Lcom/htc/home/personalize/WallpaperPicker;->mPanelAdapter:Lcom/htc/home/personalize/widget/WallpaperPanelAdapter;
    invoke-static {v1}, Lcom/htc/home/personalize/WallpaperPicker;->access$700(Lcom/htc/home/personalize/WallpaperPicker;)Lcom/htc/home/personalize/widget/WallpaperPanelAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 603
    iget-object v1, p0, Lcom/htc/home/personalize/WallpaperPicker$1$2;->this$1:Lcom/htc/home/personalize/WallpaperPicker$1;

    iget-object v1, v1, Lcom/htc/home/personalize/WallpaperPicker$1;->this$0:Lcom/htc/home/personalize/WallpaperPicker;

    #getter for: Lcom/htc/home/personalize/WallpaperPicker;->mPanelAdapter:Lcom/htc/home/personalize/widget/WallpaperPanelAdapter;
    invoke-static {v1}, Lcom/htc/home/personalize/WallpaperPicker;->access$700(Lcom/htc/home/personalize/WallpaperPicker;)Lcom/htc/home/personalize/widget/WallpaperPanelAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/home/personalize/widget/WallpaperPanelAdapter;->notifyDataSetChanged()V

    .line 604
    iget-object v1, p0, Lcom/htc/home/personalize/WallpaperPicker$1$2;->this$1:Lcom/htc/home/personalize/WallpaperPicker$1;

    iget-object v1, v1, Lcom/htc/home/personalize/WallpaperPicker$1;->this$0:Lcom/htc/home/personalize/WallpaperPicker;

    #calls: Lcom/htc/home/personalize/WallpaperPicker;->updateTitle()V
    invoke-static {v1}, Lcom/htc/home/personalize/WallpaperPicker;->access$800(Lcom/htc/home/personalize/WallpaperPicker;)V

    goto :goto_1

    .line 595
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
