.class Lcom/htc/home/personalize/scene/ScenePicker$10;
.super Ljava/lang/Object;
.source "ScenePicker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/home/personalize/scene/ScenePicker;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/home/personalize/scene/ScenePicker;


# direct methods
.method constructor <init>(Lcom/htc/home/personalize/scene/ScenePicker;)V
    .locals 0
    .parameter

    .prologue
    .line 1155
    iput-object p1, p0, Lcom/htc/home/personalize/scene/ScenePicker$10;->this$0:Lcom/htc/home/personalize/scene/ScenePicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1159
    packed-switch p2, :pswitch_data_0

    .line 1168
    :goto_0
    return-void

    .line 1161
    :pswitch_0
    iget-object v0, p0, Lcom/htc/home/personalize/scene/ScenePicker$10;->this$0:Lcom/htc/home/personalize/scene/ScenePicker;

    #calls: Lcom/htc/home/personalize/scene/ScenePicker;->startNewSceneActivity()V
    invoke-static {v0}, Lcom/htc/home/personalize/scene/ScenePicker;->access$1500(Lcom/htc/home/personalize/scene/ScenePicker;)V

    goto :goto_0

    .line 1164
    :pswitch_1
    iget-object v0, p0, Lcom/htc/home/personalize/scene/ScenePicker$10;->this$0:Lcom/htc/home/personalize/scene/ScenePicker;

    #calls: Lcom/htc/home/personalize/scene/ScenePicker;->startBrowserHtcDirect()V
    invoke-static {v0}, Lcom/htc/home/personalize/scene/ScenePicker;->access$400(Lcom/htc/home/personalize/scene/ScenePicker;)V

    goto :goto_0

    .line 1159
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
