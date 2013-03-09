.class Lcom/android/dmportread/DMPortActivity$5;
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
    .line 370
    iput-object p1, p0, Lcom/android/dmportread/DMPortActivity$5;->this$0:Lcom/android/dmportread/DMPortActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x1

    .line 371
    iget-object v0, p0, Lcom/android/dmportread/DMPortActivity$5;->this$0:Lcom/android/dmportread/DMPortActivity;

    #getter for: Lcom/android/dmportread/DMPortActivity;->mServiceOn:Z
    invoke-static {v0}, Lcom/android/dmportread/DMPortActivity;->access$100(Lcom/android/dmportread/DMPortActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/android/dmportread/DMPortActivity$5;->this$0:Lcom/android/dmportread/DMPortActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/dmportread/DMPortActivity$5;->this$0:Lcom/android/dmportread/DMPortActivity;

    const-class v3, Lcom/android/dmportread/DMCommandService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/android/dmportread/DMPortActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 374
    iget-object v0, p0, Lcom/android/dmportread/DMPortActivity$5;->this$0:Lcom/android/dmportread/DMPortActivity;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/android/dmportread/DMPortActivity$5;->this$0:Lcom/android/dmportread/DMPortActivity;

    const-class v3, Lcom/android/dmportread/DMCommandService;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dmportread/DMPortActivity$5;->this$0:Lcom/android/dmportread/DMPortActivity;

    #getter for: Lcom/android/dmportread/DMPortActivity;->mConnection:Landroid/content/ServiceConnection;
    invoke-static {v2}, Lcom/android/dmportread/DMPortActivity;->access$800(Lcom/android/dmportread/DMPortActivity;)Landroid/content/ServiceConnection;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/dmportread/DMPortActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 375
    iget-object v0, p0, Lcom/android/dmportread/DMPortActivity$5;->this$0:Lcom/android/dmportread/DMPortActivity;

    #setter for: Lcom/android/dmportread/DMPortActivity;->connectionBind:Z
    invoke-static {v0, v4}, Lcom/android/dmportread/DMPortActivity;->access$302(Lcom/android/dmportread/DMPortActivity;Z)Z

    .line 376
    iget-object v0, p0, Lcom/android/dmportread/DMPortActivity$5;->this$0:Lcom/android/dmportread/DMPortActivity;

    #setter for: Lcom/android/dmportread/DMPortActivity;->mServiceOn:Z
    invoke-static {v0, v4}, Lcom/android/dmportread/DMPortActivity;->access$102(Lcom/android/dmportread/DMPortActivity;Z)Z

    .line 377
    iget-object v0, p0, Lcom/android/dmportread/DMPortActivity$5;->this$0:Lcom/android/dmportread/DMPortActivity;

    #calls: Lcom/android/dmportread/DMPortActivity;->updateButtons()V
    invoke-static {v0}, Lcom/android/dmportread/DMPortActivity;->access$200(Lcom/android/dmportread/DMPortActivity;)V

    .line 379
    :cond_0
    return-void
.end method
