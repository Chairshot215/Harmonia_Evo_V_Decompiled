.class Lcom/htc/home/personalize/scene/NewSceneActivity$6;
.super Ljava/lang/Object;
.source "NewSceneActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/home/personalize/scene/NewSceneActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/home/personalize/scene/NewSceneActivity;


# direct methods
.method constructor <init>(Lcom/htc/home/personalize/scene/NewSceneActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 497
    iput-object p1, p0, Lcom/htc/home/personalize/scene/NewSceneActivity$6;->this$0:Lcom/htc/home/personalize/scene/NewSceneActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 501
    sget-boolean v0, Lcom/htc/home/personalize/config/SettingUtil;->localLOGD:Z

    if-eqz v0, :cond_0

    .line 502
    const-string v0, "NewSceneActivity"

    const-string v1, "Duplicate scene name dialog: click cancel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    :cond_0
    return-void
.end method
