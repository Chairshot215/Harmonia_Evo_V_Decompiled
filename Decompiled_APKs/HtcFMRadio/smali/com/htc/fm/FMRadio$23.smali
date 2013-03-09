.class Lcom/htc/fm/FMRadio$23;
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
    .line 2880
    iput-object p1, p0, Lcom/htc/fm/FMRadio$23;->this$0:Lcom/htc/fm/FMRadio;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    .line 2883
    sget-boolean v2, Lcom/htc/fm/FMUtils;->HeadSetPlugged:Z

    if-nez v2, :cond_0

    .line 2884
    iget-object v2, p0, Lcom/htc/fm/FMRadio$23;->this$0:Lcom/htc/fm/FMRadio;

    #calls: Lcom/htc/fm/FMRadio;->showNoHeadsetDialog()V
    invoke-static {v2}, Lcom/htc/fm/FMRadio;->access$2900(Lcom/htc/fm/FMRadio;)V

    .line 2907
    :goto_0
    return-void

    .line 2888
    :cond_0
    iget-object v2, p0, Lcom/htc/fm/FMRadio$23;->this$0:Lcom/htc/fm/FMRadio;

    #calls: Lcom/htc/fm/FMRadio;->getState()I
    invoke-static {v2}, Lcom/htc/fm/FMRadio;->access$400(Lcom/htc/fm/FMRadio;)I

    move-result v2

    if-eq v2, v3, :cond_1

    .line 2889
    invoke-static {}, Lcom/htc/fm/FMRadio;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "!!!! Not ready, status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/fm/FMRadio$23;->this$0:Lcom/htc/fm/FMRadio;

    #calls: Lcom/htc/fm/FMRadio;->getStatusText()Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/fm/FMRadio;->access$3000(Lcom/htc/fm/FMRadio;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2893
    :cond_1
    iget-object v2, p0, Lcom/htc/fm/FMRadio$23;->this$0:Lcom/htc/fm/FMRadio;

    #calls: Lcom/htc/fm/FMRadio;->getCmdState()I
    invoke-static {v2}, Lcom/htc/fm/FMRadio;->access$3400(Lcom/htc/fm/FMRadio;)I

    move-result v2

    if-eqz v2, :cond_2

    .line 2894
    invoke-static {}, Lcom/htc/fm/FMRadio;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "!!!! Not ready, status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/fm/FMRadio$23;->this$0:Lcom/htc/fm/FMRadio;

    #calls: Lcom/htc/fm/FMRadio;->getCmdStateText()Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/fm/FMRadio;->access$3900(Lcom/htc/fm/FMRadio;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2898
    :cond_2
    iget-object v2, p0, Lcom/htc/fm/FMRadio$23;->this$0:Lcom/htc/fm/FMRadio;

    #setter for: Lcom/htc/fm/FMRadio;->mFromManul:Z
    invoke-static {v2, v3}, Lcom/htc/fm/FMRadio;->access$1702(Lcom/htc/fm/FMRadio;Z)Z

    .line 2900
    iget-object v2, p0, Lcom/htc/fm/FMRadio$23;->this$0:Lcom/htc/fm/FMRadio;

    #calls: Lcom/htc/fm/FMRadio;->getNowPreset()Lcom/htc/fm/Preset;
    invoke-static {v2}, Lcom/htc/fm/FMRadio;->access$1400(Lcom/htc/fm/FMRadio;)Lcom/htc/fm/Preset;

    move-result-object v1

    .line 2901
    .local v1, preset:Lcom/htc/fm/Preset;
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/htc/fm/FMRadio$23;->this$0:Lcom/htc/fm/FMRadio;

    #getter for: Lcom/htc/fm/FMRadio;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/htc/fm/FMRadio;->access$3100(Lcom/htc/fm/FMRadio;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/htc/fm/FMPresetEditActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2902
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "fm_mode"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2903
    const-string v2, "fm_rowid"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2904
    const-string v2, "fm_freq"

    iget-object v3, p0, Lcom/htc/fm/FMRadio$23;->this$0:Lcom/htc/fm/FMRadio;

    iget-object v3, v3, Lcom/htc/fm/FMRadio;->mPreset:Lcom/htc/fm/Preset;

    iget v3, v3, Lcom/htc/fm/Preset;->freq:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2905
    const-string v2, "fm_title"

    iget-object v3, p0, Lcom/htc/fm/FMRadio$23;->this$0:Lcom/htc/fm/FMRadio;

    #getter for: Lcom/htc/fm/FMRadio;->mTextName:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/htc/fm/FMRadio;->access$3200(Lcom/htc/fm/FMRadio;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 2906
    iget-object v2, p0, Lcom/htc/fm/FMRadio$23;->this$0:Lcom/htc/fm/FMRadio;

    const/16 v3, 0x6f

    invoke-virtual {v2, v0, v3}, Lcom/htc/fm/FMRadio;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0
.end method
