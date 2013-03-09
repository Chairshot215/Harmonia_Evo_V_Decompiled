.class Lcom/htc/fm/FMPresetEditActivity$3;
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
    .line 303
    iput-object p1, p0, Lcom/htc/fm/FMPresetEditActivity$3;->this$0:Lcom/htc/fm/FMPresetEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 305
    iget-object v0, p0, Lcom/htc/fm/FMPresetEditActivity$3;->this$0:Lcom/htc/fm/FMPresetEditActivity;

    #calls: Lcom/htc/fm/FMPresetEditActivity;->hideIME()V
    invoke-static {v0}, Lcom/htc/fm/FMPresetEditActivity;->access$700(Lcom/htc/fm/FMPresetEditActivity;)V

    .line 307
    const-wide/16 v0, 0x64

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 310
    :goto_0
    iget-object v0, p0, Lcom/htc/fm/FMPresetEditActivity$3;->this$0:Lcom/htc/fm/FMPresetEditActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/fm/FMPresetEditActivity;->setResult(I)V

    .line 311
    iget-object v0, p0, Lcom/htc/fm/FMPresetEditActivity$3;->this$0:Lcom/htc/fm/FMPresetEditActivity;

    invoke-virtual {v0}, Lcom/htc/fm/FMPresetEditActivity;->finish()V

    .line 312
    return-void

    .line 308
    :catch_0
    move-exception v0

    goto :goto_0
.end method
