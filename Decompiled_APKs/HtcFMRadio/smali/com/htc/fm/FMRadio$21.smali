.class Lcom/htc/fm/FMRadio$21;
.super Ljava/lang/Object;
.source "FMRadio.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fm/FMRadio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/fm/FMRadio;


# direct methods
.method constructor <init>(Lcom/htc/fm/FMRadio;)V
    .locals 0
    .parameter

    .prologue
    .line 2729
    iput-object p1, p0, Lcom/htc/fm/FMRadio$21;->this$0:Lcom/htc/fm/FMRadio;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    .line 2731
    sget-boolean v1, Lcom/htc/fm/FMUtils;->HeadSetPlugged:Z

    if-nez v1, :cond_0

    .line 2732
    iget-object v1, p0, Lcom/htc/fm/FMRadio$21;->this$0:Lcom/htc/fm/FMRadio;

    #calls: Lcom/htc/fm/FMRadio;->showNoHeadsetDialog()V
    invoke-static {v1}, Lcom/htc/fm/FMRadio;->access$2900(Lcom/htc/fm/FMRadio;)V

    .line 2747
    :goto_0
    return-void

    .line 2736
    :cond_0
    iget-object v1, p0, Lcom/htc/fm/FMRadio$21;->this$0:Lcom/htc/fm/FMRadio;

    #calls: Lcom/htc/fm/FMRadio;->getState()I
    invoke-static {v1}, Lcom/htc/fm/FMRadio;->access$400(Lcom/htc/fm/FMRadio;)I

    move-result v1

    if-eq v1, v2, :cond_1

    .line 2737
    invoke-static {}, Lcom/htc/fm/FMRadio;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "!!!! Not ready, status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/fm/FMRadio$21;->this$0:Lcom/htc/fm/FMRadio;

    #calls: Lcom/htc/fm/FMRadio;->getStatusText()Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/fm/FMRadio;->access$3000(Lcom/htc/fm/FMRadio;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2740
    :cond_1
    iget-object v1, p0, Lcom/htc/fm/FMRadio$21;->this$0:Lcom/htc/fm/FMRadio;

    #setter for: Lcom/htc/fm/FMRadio;->mFromManul:Z
    invoke-static {v1, v2}, Lcom/htc/fm/FMRadio;->access$1702(Lcom/htc/fm/FMRadio;Z)Z

    .line 2741
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/htc/fm/FMRadio$21;->this$0:Lcom/htc/fm/FMRadio;

    #getter for: Lcom/htc/fm/FMRadio;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/htc/fm/FMRadio;->access$3100(Lcom/htc/fm/FMRadio;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/htc/fm/FMPresetBrowserActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2742
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "fm_mode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2743
    const-string v1, "fm_rowid"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2744
    const-string v1, "fm_freq"

    iget-object v2, p0, Lcom/htc/fm/FMRadio$21;->this$0:Lcom/htc/fm/FMRadio;

    iget-object v2, v2, Lcom/htc/fm/FMRadio;->mPreset:Lcom/htc/fm/Preset;

    iget v2, v2, Lcom/htc/fm/Preset;->freq:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2745
    const-string v1, "fm_title"

    iget-object v2, p0, Lcom/htc/fm/FMRadio$21;->this$0:Lcom/htc/fm/FMRadio;

    #getter for: Lcom/htc/fm/FMRadio;->mTextName:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/htc/fm/FMRadio;->access$3200(Lcom/htc/fm/FMRadio;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 2746
    iget-object v1, p0, Lcom/htc/fm/FMRadio$21;->this$0:Lcom/htc/fm/FMRadio;

    const/16 v2, 0x70

    invoke-virtual {v1, v0, v2}, Lcom/htc/fm/FMRadio;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
