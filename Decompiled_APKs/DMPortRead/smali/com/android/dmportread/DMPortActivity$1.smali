.class Lcom/android/dmportread/DMPortActivity$1;
.super Ljava/lang/Object;
.source "DMPortActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dmportread/DMPortActivity;
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
    .line 97
    iput-object p1, p0, Lcom/android/dmportread/DMPortActivity$1;->this$0:Lcom/android/dmportread/DMPortActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .parameter "className"
    .parameter "service"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 99
    iget-object v0, p0, Lcom/android/dmportread/DMPortActivity$1;->this$0:Lcom/android/dmportread/DMPortActivity;

    check-cast p2, Lcom/android/dmportread/DMCommandService$DMServiceBinder;

    .end local p2
    invoke-virtual {p2}, Lcom/android/dmportread/DMCommandService$DMServiceBinder;->getService()Lcom/android/dmportread/DMCommandService;

    move-result-object v1

    #setter for: Lcom/android/dmportread/DMPortActivity;->mBoundService:Lcom/android/dmportread/DMCommandService;
    invoke-static {v0, v1}, Lcom/android/dmportread/DMPortActivity;->access$002(Lcom/android/dmportread/DMPortActivity;Lcom/android/dmportread/DMCommandService;)Lcom/android/dmportread/DMCommandService;

    .line 101
    iget-object v0, p0, Lcom/android/dmportread/DMPortActivity$1;->this$0:Lcom/android/dmportread/DMPortActivity;

    #getter for: Lcom/android/dmportread/DMPortActivity;->mBoundService:Lcom/android/dmportread/DMCommandService;
    invoke-static {v0}, Lcom/android/dmportread/DMPortActivity;->access$000(Lcom/android/dmportread/DMPortActivity;)Lcom/android/dmportread/DMCommandService;

    move-result-object v0

    if-nez v0, :cond_1

    .line 102
    iget-object v0, p0, Lcom/android/dmportread/DMPortActivity$1;->this$0:Lcom/android/dmportread/DMPortActivity;

    #setter for: Lcom/android/dmportread/DMPortActivity;->mServiceOn:Z
    invoke-static {v0, v2}, Lcom/android/dmportread/DMPortActivity;->access$102(Lcom/android/dmportread/DMPortActivity;Z)Z

    .line 107
    :goto_0
    iget-object v0, p0, Lcom/android/dmportread/DMPortActivity$1;->this$0:Lcom/android/dmportread/DMPortActivity;

    #calls: Lcom/android/dmportread/DMPortActivity;->updateButtons()V
    invoke-static {v0}, Lcom/android/dmportread/DMPortActivity;->access$200(Lcom/android/dmportread/DMPortActivity;)V

    .line 108
    iget-object v0, p0, Lcom/android/dmportread/DMPortActivity$1;->this$0:Lcom/android/dmportread/DMPortActivity;

    #getter for: Lcom/android/dmportread/DMPortActivity;->connectionBind:Z
    invoke-static {v0}, Lcom/android/dmportread/DMPortActivity;->access$300(Lcom/android/dmportread/DMPortActivity;)Z

    move-result v0

    if-ne v0, v3, :cond_0

    .line 109
    iget-object v0, p0, Lcom/android/dmportread/DMPortActivity$1;->this$0:Lcom/android/dmportread/DMPortActivity;

    #setter for: Lcom/android/dmportread/DMPortActivity;->connectionBind:Z
    invoke-static {v0, v2}, Lcom/android/dmportread/DMPortActivity;->access$302(Lcom/android/dmportread/DMPortActivity;Z)Z

    .line 112
    :cond_0
    return-void

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/android/dmportread/DMPortActivity$1;->this$0:Lcom/android/dmportread/DMPortActivity;

    #setter for: Lcom/android/dmportread/DMPortActivity;->mServiceOn:Z
    invoke-static {v0, v3}, Lcom/android/dmportread/DMPortActivity;->access$102(Lcom/android/dmportread/DMPortActivity;Z)Z

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .parameter "className"

    .prologue
    .line 115
    return-void
.end method
