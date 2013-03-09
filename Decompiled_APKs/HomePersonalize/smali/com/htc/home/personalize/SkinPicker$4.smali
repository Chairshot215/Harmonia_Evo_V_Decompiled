.class Lcom/htc/home/personalize/SkinPicker$4;
.super Ljava/lang/Object;
.source "SkinPicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/home/personalize/SkinPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/home/personalize/SkinPicker;


# direct methods
.method constructor <init>(Lcom/htc/home/personalize/SkinPicker;)V
    .locals 0
    .parameter

    .prologue
    .line 617
    iput-object p1, p0, Lcom/htc/home/personalize/SkinPicker$4;->this$0:Lcom/htc/home/personalize/SkinPicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 619
    iget-object v0, p0, Lcom/htc/home/personalize/SkinPicker$4;->this$0:Lcom/htc/home/personalize/SkinPicker;

    #getter for: Lcom/htc/home/personalize/SkinPicker;->mIsDeleteMode:Z
    invoke-static {v0}, Lcom/htc/home/personalize/SkinPicker;->access$300(Lcom/htc/home/personalize/SkinPicker;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 621
    iget-object v0, p0, Lcom/htc/home/personalize/SkinPicker$4;->this$0:Lcom/htc/home/personalize/SkinPicker;

    #calls: Lcom/htc/home/personalize/SkinPicker;->SwitchDeleteMode()V
    invoke-static {v0}, Lcom/htc/home/personalize/SkinPicker;->access$900(Lcom/htc/home/personalize/SkinPicker;)V

    .line 633
    :goto_0
    return-void

    .line 631
    :cond_0
    iget-object v0, p0, Lcom/htc/home/personalize/SkinPicker$4;->this$0:Lcom/htc/home/personalize/SkinPicker;

    #calls: Lcom/htc/home/personalize/SkinPicker;->StartOnlineSkin()V
    invoke-static {v0}, Lcom/htc/home/personalize/SkinPicker;->access$1000(Lcom/htc/home/personalize/SkinPicker;)V

    goto :goto_0
.end method
