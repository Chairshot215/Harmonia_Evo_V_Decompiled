.class Lcom/android/dmportread/DMPortActivity$6;
.super Ljava/lang/Object;
.source "DMPortActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dmportread/DMPortActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dmportread/DMPortActivity;


# direct methods
.method constructor <init>(Lcom/android/dmportread/DMPortActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 385
    iput-object p1, p0, Lcom/android/dmportread/DMPortActivity$6;->this$0:Lcom/android/dmportread/DMPortActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 386
    iget-object v0, p0, Lcom/android/dmportread/DMPortActivity$6;->this$0:Lcom/android/dmportread/DMPortActivity;

    #getter for: Lcom/android/dmportread/DMPortActivity;->mServiceOn:Z
    invoke-static {v0}, Lcom/android/dmportread/DMPortActivity;->access$100(Lcom/android/dmportread/DMPortActivity;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 388
    iget-object v0, p0, Lcom/android/dmportread/DMPortActivity$6;->this$0:Lcom/android/dmportread/DMPortActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/dmportread/DMPortActivity$6;->this$0:Lcom/android/dmportread/DMPortActivity;

    const-class v3, Lcom/android/dmportread/DMCommandService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/android/dmportread/DMPortActivity;->stopService(Landroid/content/Intent;)Z

    .line 389
    iget-object v0, p0, Lcom/android/dmportread/DMPortActivity$6;->this$0:Lcom/android/dmportread/DMPortActivity;

    const/4 v1, 0x0

    #setter for: Lcom/android/dmportread/DMPortActivity;->mServiceOn:Z
    invoke-static {v0, v1}, Lcom/android/dmportread/DMPortActivity;->access$102(Lcom/android/dmportread/DMPortActivity;Z)Z

    .line 390
    iget-object v0, p0, Lcom/android/dmportread/DMPortActivity$6;->this$0:Lcom/android/dmportread/DMPortActivity;

    const/4 v1, 0x0

    #setter for: Lcom/android/dmportread/DMPortActivity;->mBoundService:Lcom/android/dmportread/DMCommandService;
    invoke-static {v0, v1}, Lcom/android/dmportread/DMPortActivity;->access$002(Lcom/android/dmportread/DMPortActivity;Lcom/android/dmportread/DMCommandService;)Lcom/android/dmportread/DMCommandService;

    .line 391
    iget-object v0, p0, Lcom/android/dmportread/DMPortActivity$6;->this$0:Lcom/android/dmportread/DMPortActivity;

    #calls: Lcom/android/dmportread/DMPortActivity;->updateButtons()V
    invoke-static {v0}, Lcom/android/dmportread/DMPortActivity;->access$200(Lcom/android/dmportread/DMPortActivity;)V

    .line 392
    iget-object v0, p0, Lcom/android/dmportread/DMPortActivity$6;->this$0:Lcom/android/dmportread/DMPortActivity;

    invoke-virtual {v0}, Lcom/android/dmportread/DMPortActivity;->finish()V

    .line 394
    :cond_0
    return-void
.end method
