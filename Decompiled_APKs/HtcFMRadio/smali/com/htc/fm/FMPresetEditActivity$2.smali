.class Lcom/htc/fm/FMPresetEditActivity$2;
.super Ljava/lang/Object;
.source "FMPresetEditActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/fm/FMPresetEditActivity;->initUi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/fm/FMPresetEditActivity;


# direct methods
.method constructor <init>(Lcom/htc/fm/FMPresetEditActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 278
    iput-object p1, p0, Lcom/htc/fm/FMPresetEditActivity$2;->this$0:Lcom/htc/fm/FMPresetEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 280
    iget-object v3, p0, Lcom/htc/fm/FMPresetEditActivity$2;->this$0:Lcom/htc/fm/FMPresetEditActivity;

    #getter for: Lcom/htc/fm/FMPresetEditActivity;->mEditPresetName:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/htc/fm/FMPresetEditActivity;->access$100(Lcom/htc/fm/FMPresetEditActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 281
    .local v2, title:Ljava/lang/String;
    new-instance v1, Lcom/htc/fm/Preset;

    invoke-direct {v1}, Lcom/htc/fm/Preset;-><init>()V

    .line 282
    .local v1, preset:Lcom/htc/fm/Preset;
    iget-object v3, p0, Lcom/htc/fm/FMPresetEditActivity$2;->this$0:Lcom/htc/fm/FMPresetEditActivity;

    #getter for: Lcom/htc/fm/FMPresetEditActivity;->mRowId:I
    invoke-static {v3}, Lcom/htc/fm/FMPresetEditActivity;->access$200(Lcom/htc/fm/FMPresetEditActivity;)I

    move-result v3

    iput v3, v1, Lcom/htc/fm/Preset;->rowId:I

    .line 283
    iget-object v3, p0, Lcom/htc/fm/FMPresetEditActivity$2;->this$0:Lcom/htc/fm/FMPresetEditActivity;

    #getter for: Lcom/htc/fm/FMPresetEditActivity;->mFreq:I
    invoke-static {v3}, Lcom/htc/fm/FMPresetEditActivity;->access$300(Lcom/htc/fm/FMPresetEditActivity;)I

    move-result v3

    iput v3, v1, Lcom/htc/fm/Preset;->freq:I

    .line 284
    iput-object v2, v1, Lcom/htc/fm/Preset;->title:Ljava/lang/String;

    .line 285
    iget-object v3, p0, Lcom/htc/fm/FMPresetEditActivity$2;->this$0:Lcom/htc/fm/FMPresetEditActivity;

    #getter for: Lcom/htc/fm/FMPresetEditActivity;->mRds:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/fm/FMPresetEditActivity;->access$400(Lcom/htc/fm/FMPresetEditActivity;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/htc/fm/Preset;->rds:Ljava/lang/String;

    .line 288
    :try_start_0
    iget-object v3, p0, Lcom/htc/fm/FMPresetEditActivity$2;->this$0:Lcom/htc/fm/FMPresetEditActivity;

    #calls: Lcom/htc/fm/FMPresetEditActivity;->submitPresetToDB(Lcom/htc/fm/Preset;)V
    invoke-static {v3, v1}, Lcom/htc/fm/FMPresetEditActivity;->access$500(Lcom/htc/fm/FMPresetEditActivity;Lcom/htc/fm/Preset;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    :goto_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 292
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "fm_mode"

    iget-object v4, p0, Lcom/htc/fm/FMPresetEditActivity$2;->this$0:Lcom/htc/fm/FMPresetEditActivity;

    #getter for: Lcom/htc/fm/FMPresetEditActivity;->mMode:I
    invoke-static {v4}, Lcom/htc/fm/FMPresetEditActivity;->access$600(Lcom/htc/fm/FMPresetEditActivity;)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 293
    const-string v3, "fm_rowid"

    iget-object v4, p0, Lcom/htc/fm/FMPresetEditActivity$2;->this$0:Lcom/htc/fm/FMPresetEditActivity;

    #getter for: Lcom/htc/fm/FMPresetEditActivity;->mRowId:I
    invoke-static {v4}, Lcom/htc/fm/FMPresetEditActivity;->access$200(Lcom/htc/fm/FMPresetEditActivity;)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 294
    const-string v3, "fm_freq"

    iget-object v4, p0, Lcom/htc/fm/FMPresetEditActivity$2;->this$0:Lcom/htc/fm/FMPresetEditActivity;

    #getter for: Lcom/htc/fm/FMPresetEditActivity;->mFreq:I
    invoke-static {v4}, Lcom/htc/fm/FMPresetEditActivity;->access$300(Lcom/htc/fm/FMPresetEditActivity;)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 295
    const-string v3, "fm_title"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 296
    iget-object v3, p0, Lcom/htc/fm/FMPresetEditActivity$2;->this$0:Lcom/htc/fm/FMPresetEditActivity;

    const/4 v4, -0x1

    invoke-virtual {v3, v4, v0}, Lcom/htc/fm/FMPresetEditActivity;->setResult(ILandroid/content/Intent;)V

    .line 297
    iget-object v3, p0, Lcom/htc/fm/FMPresetEditActivity$2;->this$0:Lcom/htc/fm/FMPresetEditActivity;

    invoke-virtual {v3}, Lcom/htc/fm/FMPresetEditActivity;->finish()V

    .line 298
    return-void

    .line 289
    .end local v0           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v3

    goto :goto_0
.end method
