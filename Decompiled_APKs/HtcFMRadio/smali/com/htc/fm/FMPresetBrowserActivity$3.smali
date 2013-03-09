.class Lcom/htc/fm/FMPresetBrowserActivity$3;
.super Ljava/lang/Object;
.source "FMPresetBrowserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/fm/FMPresetBrowserActivity;->showButtonsPanel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/fm/FMPresetBrowserActivity;


# direct methods
.method constructor <init>(Lcom/htc/fm/FMPresetBrowserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 492
    iput-object p1, p0, Lcom/htc/fm/FMPresetBrowserActivity$3;->this$0:Lcom/htc/fm/FMPresetBrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 494
    iget-object v0, p0, Lcom/htc/fm/FMPresetBrowserActivity$3;->this$0:Lcom/htc/fm/FMPresetBrowserActivity;

    iget-object v0, v0, Lcom/htc/fm/FMPresetBrowserActivity;->mAdapter:Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;

    if-eqz v0, :cond_0

    .line 495
    iget-object v0, p0, Lcom/htc/fm/FMPresetBrowserActivity$3;->this$0:Lcom/htc/fm/FMPresetBrowserActivity;

    #setter for: Lcom/htc/fm/FMPresetBrowserActivity;->mMode:I
    invoke-static {v0, v2}, Lcom/htc/fm/FMPresetBrowserActivity;->access$502(Lcom/htc/fm/FMPresetBrowserActivity;I)I

    .line 497
    iget-object v0, p0, Lcom/htc/fm/FMPresetBrowserActivity$3;->this$0:Lcom/htc/fm/FMPresetBrowserActivity;

    #getter for: Lcom/htc/fm/FMPresetBrowserActivity;->mSaveBtn:Landroid/widget/Button;
    invoke-static {v0}, Lcom/htc/fm/FMPresetBrowserActivity;->access$800(Lcom/htc/fm/FMPresetBrowserActivity;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x20c01fc

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 500
    iget-object v0, p0, Lcom/htc/fm/FMPresetBrowserActivity$3;->this$0:Lcom/htc/fm/FMPresetBrowserActivity;

    #getter for: Lcom/htc/fm/FMPresetBrowserActivity;->mSaveBtn:Landroid/widget/Button;
    invoke-static {v0}, Lcom/htc/fm/FMPresetBrowserActivity;->access$800(Lcom/htc/fm/FMPresetBrowserActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 502
    iget-object v0, p0, Lcom/htc/fm/FMPresetBrowserActivity$3;->this$0:Lcom/htc/fm/FMPresetBrowserActivity;

    #calls: Lcom/htc/fm/FMPresetBrowserActivity;->updateUi()V
    invoke-static {v0}, Lcom/htc/fm/FMPresetBrowserActivity;->access$1000(Lcom/htc/fm/FMPresetBrowserActivity;)V

    .line 503
    iget-object v0, p0, Lcom/htc/fm/FMPresetBrowserActivity$3;->this$0:Lcom/htc/fm/FMPresetBrowserActivity;

    iget-object v0, v0, Lcom/htc/fm/FMPresetBrowserActivity;->mAdapter:Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;

    iget-object v1, p0, Lcom/htc/fm/FMPresetBrowserActivity$3;->this$0:Lcom/htc/fm/FMPresetBrowserActivity;

    #getter for: Lcom/htc/fm/FMPresetBrowserActivity;->mMode:I
    invoke-static {v1}, Lcom/htc/fm/FMPresetBrowserActivity;->access$500(Lcom/htc/fm/FMPresetBrowserActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;->changeMode(I)V

    .line 507
    :goto_0
    return-void

    .line 505
    :cond_0
    iget-object v0, p0, Lcom/htc/fm/FMPresetBrowserActivity$3;->this$0:Lcom/htc/fm/FMPresetBrowserActivity;

    invoke-virtual {v0}, Lcom/htc/fm/FMPresetBrowserActivity;->finish()V

    goto :goto_0
.end method
