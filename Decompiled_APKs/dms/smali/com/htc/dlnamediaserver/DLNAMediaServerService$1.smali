.class Lcom/htc/dlnamediaserver/DLNAMediaServerService$1;
.super Lcom/htc/dlnamediaserver/ServiceCommunication$Stub;
.source "DLNAMediaServerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dlnamediaserver/DLNAMediaServerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/dlnamediaserver/DLNAMediaServerService;


# direct methods
.method constructor <init>(Lcom/htc/dlnamediaserver/DLNAMediaServerService;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 168
    iput-object p1, p0, Lcom/htc/dlnamediaserver/DLNAMediaServerService$1;->this$0:Lcom/htc/dlnamediaserver/DLNAMediaServerService;

    invoke-direct {p0}, Lcom/htc/dlnamediaserver/ServiceCommunication$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public AddSharedFolder(Ljava/lang/String;)Z
    .locals 1
    .parameter "aSharedFolder"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/htc/dlnamediaserver/DLNAMediaServerService$1;->this$0:Lcom/htc/dlnamediaserver/DLNAMediaServerService;

    #getter for: Lcom/htc/dlnamediaserver/DLNAMediaServerService;->mThread:Lcom/htc/dlnamediaserver/DLNAMediaServerService$DLNAMediaServerServiceThread;
    invoke-static {v0}, Lcom/htc/dlnamediaserver/DLNAMediaServerService;->access$000(Lcom/htc/dlnamediaserver/DLNAMediaServerService;)Lcom/htc/dlnamediaserver/DLNAMediaServerService$DLNAMediaServerServiceThread;

    move-result-object v0

    if-nez v0, :cond_0

    .line 102
    const/4 v0, 0x0

    .line 104
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/dlnamediaserver/DLNAMediaServerService$1;->this$0:Lcom/htc/dlnamediaserver/DLNAMediaServerService;

    #getter for: Lcom/htc/dlnamediaserver/DLNAMediaServerService;->mThread:Lcom/htc/dlnamediaserver/DLNAMediaServerService$DLNAMediaServerServiceThread;
    invoke-static {v0}, Lcom/htc/dlnamediaserver/DLNAMediaServerService;->access$000(Lcom/htc/dlnamediaserver/DLNAMediaServerService;)Lcom/htc/dlnamediaserver/DLNAMediaServerService$DLNAMediaServerServiceThread;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/dlnamediaserver/DLNAMediaServerService$DLNAMediaServerServiceThread;->addSharedFolder(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public ClearDatabase()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 162
    iget-object v0, p0, Lcom/htc/dlnamediaserver/DLNAMediaServerService$1;->this$0:Lcom/htc/dlnamediaserver/DLNAMediaServerService;

    #getter for: Lcom/htc/dlnamediaserver/DLNAMediaServerService;->mThread:Lcom/htc/dlnamediaserver/DLNAMediaServerService$DLNAMediaServerServiceThread;
    invoke-static {v0}, Lcom/htc/dlnamediaserver/DLNAMediaServerService;->access$000(Lcom/htc/dlnamediaserver/DLNAMediaServerService;)Lcom/htc/dlnamediaserver/DLNAMediaServerService$DLNAMediaServerServiceThread;

    move-result-object v0

    if-nez v0, :cond_0

    .line 163
    const/4 v0, 0x0

    .line 165
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/dlnamediaserver/DLNAMediaServerService$1;->this$0:Lcom/htc/dlnamediaserver/DLNAMediaServerService;

    #getter for: Lcom/htc/dlnamediaserver/DLNAMediaServerService;->mThread:Lcom/htc/dlnamediaserver/DLNAMediaServerService$DLNAMediaServerServiceThread;
    invoke-static {v0}, Lcom/htc/dlnamediaserver/DLNAMediaServerService;->access$000(Lcom/htc/dlnamediaserver/DLNAMediaServerService;)Lcom/htc/dlnamediaserver/DLNAMediaServerService$DLNAMediaServerServiceThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/dlnamediaserver/DLNAMediaServerService$DLNAMediaServerServiceThread;->ClearDatabase()Z

    move-result v0

    goto :goto_0
.end method

.method public ForceUpdate()Z
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/htc/dlnamediaserver/DLNAMediaServerService$1;->this$0:Lcom/htc/dlnamediaserver/DLNAMediaServerService;

    #getter for: Lcom/htc/dlnamediaserver/DLNAMediaServerService;->mThread:Lcom/htc/dlnamediaserver/DLNAMediaServerService$DLNAMediaServerServiceThread;
    invoke-static {v0}, Lcom/htc/dlnamediaserver/DLNAMediaServerService;->access$000(Lcom/htc/dlnamediaserver/DLNAMediaServerService;)Lcom/htc/dlnamediaserver/DLNAMediaServerService$DLNAMediaServerServiceThread;

    move-result-object v0

    if-nez v0, :cond_0

    .line 124
    const/4 v0, 0x0

    .line 126
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/dlnamediaserver/DLNAMediaServerService$1;->this$0:Lcom/htc/dlnamediaserver/DLNAMediaServerService;

    #getter for: Lcom/htc/dlnamediaserver/DLNAMediaServerService;->mThread:Lcom/htc/dlnamediaserver/DLNAMediaServerService$DLNAMediaServerServiceThread;
    invoke-static {v0}, Lcom/htc/dlnamediaserver/DLNAMediaServerService;->access$000(Lcom/htc/dlnamediaserver/DLNAMediaServerService;)Lcom/htc/dlnamediaserver/DLNAMediaServerService$DLNAMediaServerServiceThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/dlnamediaserver/DLNAMediaServerService$DLNAMediaServerServiceThread;->ForceUpdate()Z

    move-result v0

    goto :goto_0
.end method

.method public GetFriendlyName()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Lcom/htc/dlnamediaserver/DLNAMediaServerService$1;->this$0:Lcom/htc/dlnamediaserver/DLNAMediaServerService;

    #getter for: Lcom/htc/dlnamediaserver/DLNAMediaServerService;->mThread:Lcom/htc/dlnamediaserver/DLNAMediaServerService$DLNAMediaServerServiceThread;
    invoke-static {v0}, Lcom/htc/dlnamediaserver/DLNAMediaServerService;->access$000(Lcom/htc/dlnamediaserver/DLNAMediaServerService;)Lcom/htc/dlnamediaserver/DLNAMediaServerService$DLNAMediaServerServiceThread;

    move-result-object v0

    if-nez v0, :cond_0

    .line 94
    const-string v0, ""

    .line 96
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/dlnamediaserver/DLNAMediaServerService$1;->this$0:Lcom/htc/dlnamediaserver/DLNAMediaServerService;

    #getter for: Lcom/htc/dlnamediaserver/DLNAMediaServerService;->mThread:Lcom/htc/dlnamediaserver/DLNAMediaServerService$DLNAMediaServerServiceThread;
    invoke-static {v0}, Lcom/htc/dlnamediaserver/DLNAMediaServerService;->access$000(Lcom/htc/dlnamediaserver/DLNAMediaServerService;)Lcom/htc/dlnamediaserver/DLNAMediaServerService$DLNAMediaServerServiceThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/dlnamediaserver/DLNAMediaServerService$DLNAMediaServerServiceThread;->GetFriendlyName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public GetMediaType()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 146
    iget-object v0, p0, Lcom/htc/dlnamediaserver/DLNAMediaServerService$1;->this$0:Lcom/htc/dlnamediaserver/DLNAMediaServerService;

    #getter for: Lcom/htc/dlnamediaserver/DLNAMediaServerService;->mThread:Lcom/htc/dlnamediaserver/DLNAMediaServerService$DLNAMediaServerServiceThread;
    invoke-static {v0}, Lcom/htc/dlnamediaserver/DLNAMediaServerService;->access$000(Lcom/htc/dlnamediaserver/DLNAMediaServerService;)Lcom/htc/dlnamediaserver/DLNAMediaServerService$DLNAMediaServerServiceThread;

    move-result-object v0

    if-nez v0, :cond_0

    .line 147
    sget v0, Lcom/awox/jSebring/jSebringConstants;->kawMediaTypeShared_Error:I

    int-to-long v0, v0

    .line 149
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/htc/dlnamediaserver/DLNAMediaServerService$1;->this$0:Lcom/htc/dlnamediaserver/DLNAMediaServerService;

    #getter for: Lcom/htc/dlnamediaserver/DLNAMediaServerService;->mThread:Lcom/htc/dlnamediaserver/DLNAMediaServerService$DLNAMediaServerServiceThread;
    invoke-static {v0}, Lcom/htc/dlnamediaserver/DLNAMediaServerService;->access$000(Lcom/htc/dlnamediaserver/DLNAMediaServerService;)Lcom/htc/dlnamediaserver/DLNAMediaServerService$DLNAMediaServerServiceThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/dlnamediaserver/DLNAMediaServerService$DLNAMediaServerServiceThread;->GetMediaType()J

    move-result-wide v0

    goto :goto_0
.end method

.method public GetSharedFolder()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Lcom/htc/dlnamediaserver/DLNAMediaServerService$1;->this$0:Lcom/htc/dlnamediaserver/DLNAMediaServerService;

    #getter for: Lcom/htc/dlnamediaserver/DLNAMediaServerService;->mThread:Lcom/htc/dlnamediaserver/DLNAMediaServerService$DLNAMediaServerServiceThread;
    invoke-static {v0}, Lcom/htc/dlnamediaserver/DLNAMediaServerService;->access$000(Lcom/htc/dlnamediaserver/DLNAMediaServerService;)Lcom/htc/dlnamediaserver/DLNAMediaServerService$DLNAMediaServerServiceThread;

    move-result-object v0

    if-nez v0, :cond_0

    .line 116
    const-string v0, "ERROR"

    .line 118
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/dlnamediaserver/DLNAMediaServerService$1;->this$0:Lcom/htc/dlnamediaserver/DLNAMediaServerService;

    #getter for: Lcom/htc/dlnamediaserver/DLNAMediaServerService;->mThread:Lcom/htc/dlnamediaserver/DLNAMediaServerService$DLNAMediaServerServiceThread;
    invoke-static {v0}, Lcom/htc/dlnamediaserver/DLNAMediaServerService;->access$000(Lcom/htc/dlnamediaserver/DLNAMediaServerService;)Lcom/htc/dlnamediaserver/DLNAMediaServerService$DLNAMediaServerServiceThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/dlnamediaserver/DLNAMediaServerService$DLNAMediaServerServiceThread;->getSharedFolder()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public IsRunning()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 170
    iget-object v0, p0, Lcom/htc/dlnamediaserver/DLNAMediaServerService$1;->this$0:Lcom/htc/dlnamediaserver/DLNAMediaServerService;

    #getter for: Lcom/htc/dlnamediaserver/DLNAMediaServerService;->mThread:Lcom/htc/dlnamediaserver/DLNAMediaServerService$DLNAMediaServerServiceThread;
    invoke-static {v0}, Lcom/htc/dlnamediaserver/DLNAMediaServerService;->access$000(Lcom/htc/dlnamediaserver/DLNAMediaServerService;)Lcom/htc/dlnamediaserver/DLNAMediaServerService$DLNAMediaServerServiceThread;

    move-result-object v0

    if-nez v0, :cond_0

    .line 171
    const/4 v0, 0x0

    .line 173
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/dlnamediaserver/DLNAMediaServerService$1;->this$0:Lcom/htc/dlnamediaserver/DLNAMediaServerService;

    #getter for: Lcom/htc/dlnamediaserver/DLNAMediaServerService;->mThread:Lcom/htc/dlnamediaserver/DLNAMediaServerService$DLNAMediaServerServiceThread;
    invoke-static {v0}, Lcom/htc/dlnamediaserver/DLNAMediaServerService;->access$000(Lcom/htc/dlnamediaserver/DLNAMediaServerService;)Lcom/htc/dlnamediaserver/DLNAMediaServerService$DLNAMediaServerServiceThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/dlnamediaserver/DLNAMediaServerService$DLNAMediaServerServiceThread;->IsRunning()Z

    move-result v0

    goto :goto_0
.end method

.method public IsUpdating()Z
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/htc/dlnamediaserver/DLNAMediaServerService$1;->this$0:Lcom/htc/dlnamediaserver/DLNAMediaServerService;

    #getter for: Lcom/htc/dlnamediaserver/DLNAMediaServerService;->mThread:Lcom/htc/dlnamediaserver/DLNAMediaServerService$DLNAMediaServerServiceThread;
    invoke-static {v0}, Lcom/htc/dlnamediaserver/DLNAMediaServerService;->access$000(Lcom/htc/dlnamediaserver/DLNAMediaServerService;)Lcom/htc/dlnamediaserver/DLNAMediaServerService$DLNAMediaServerServiceThread;

    move-result-object v0

    if-nez v0, :cond_0

    .line 132
    const/4 v0, 0x0

    .line 134
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/dlnamediaserver/DLNAMediaServerService$1;->this$0:Lcom/htc/dlnamediaserver/DLNAMediaServerService;

    #getter for: Lcom/htc/dlnamediaserver/DLNAMediaServerService;->mThread:Lcom/htc/dlnamediaserver/DLNAMediaServerService$DLNAMediaServerServiceThread;
    invoke-static {v0}, Lcom/htc/dlnamediaserver/DLNAMediaServerService;->access$000(Lcom/htc/dlnamediaserver/DLNAMediaServerService;)Lcom/htc/dlnamediaserver/DLNAMediaServerService$DLNAMediaServerServiceThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/dlnamediaserver/DLNAMediaServerService$DLNAMediaServerServiceThread;->IsUpdating()Z

    move-result v0

    goto :goto_0
.end method

.method public RemoveSharedFolder(Ljava/lang/String;)Z
    .locals 1
    .parameter "aSharedFolder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 108
    iget-object v0, p0, Lcom/htc/dlnamediaserver/DLNAMediaServerService$1;->this$0:Lcom/htc/dlnamediaserver/DLNAMediaServerService;

    #getter for: Lcom/htc/dlnamediaserver/DLNAMediaServerService;->mThread:Lcom/htc/dlnamediaserver/DLNAMediaServerService$DLNAMediaServerServiceThread;
    invoke-static {v0}, Lcom/htc/dlnamediaserver/DLNAMediaServerService;->access$000(Lcom/htc/dlnamediaserver/DLNAMediaServerService;)Lcom/htc/dlnamediaserver/DLNAMediaServerService$DLNAMediaServerServiceThread;

    move-result-object v0

    if-nez v0, :cond_0

    .line 109
    const/4 v0, 0x0

    .line 111
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/dlnamediaserver/DLNAMediaServerService$1;->this$0:Lcom/htc/dlnamediaserver/DLNAMediaServerService;

    #getter for: Lcom/htc/dlnamediaserver/DLNAMediaServerService;->mThread:Lcom/htc/dlnamediaserver/DLNAMediaServerService$DLNAMediaServerServiceThread;
    invoke-static {v0}, Lcom/htc/dlnamediaserver/DLNAMediaServerService;->access$000(Lcom/htc/dlnamediaserver/DLNAMediaServerService;)Lcom/htc/dlnamediaserver/DLNAMediaServerService$DLNAMediaServerServiceThread;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/dlnamediaserver/DLNAMediaServerService$DLNAMediaServerServiceThread;->removeSharedFolder(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public Restart()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 154
    iget-object v0, p0, Lcom/htc/dlnamediaserver/DLNAMediaServerService$1;->this$0:Lcom/htc/dlnamediaserver/DLNAMediaServerService;

    #getter for: Lcom/htc/dlnamediaserver/DLNAMediaServerService;->mThread:Lcom/htc/dlnamediaserver/DLNAMediaServerService$DLNAMediaServerServiceThread;
    invoke-static {v0}, Lcom/htc/dlnamediaserver/DLNAMediaServerService;->access$000(Lcom/htc/dlnamediaserver/DLNAMediaServerService;)Lcom/htc/dlnamediaserver/DLNAMediaServerService$DLNAMediaServerServiceThread;

    move-result-object v0

    if-nez v0, :cond_0

    .line 155
    const/4 v0, 0x0

    .line 157
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/dlnamediaserver/DLNAMediaServerService$1;->this$0:Lcom/htc/dlnamediaserver/DLNAMediaServerService;

    #getter for: Lcom/htc/dlnamediaserver/DLNAMediaServerService;->mThread:Lcom/htc/dlnamediaserver/DLNAMediaServerService$DLNAMediaServerServiceThread;
    invoke-static {v0}, Lcom/htc/dlnamediaserver/DLNAMediaServerService;->access$000(Lcom/htc/dlnamediaserver/DLNAMediaServerService;)Lcom/htc/dlnamediaserver/DLNAMediaServerService$DLNAMediaServerServiceThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/dlnamediaserver/DLNAMediaServerService$DLNAMediaServerServiceThread;->Restart()Z

    move-result v0

    goto :goto_0
.end method

.method public SetFriendlyName(Ljava/lang/String;)Z
    .locals 1
    .parameter "aFriendlyName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lcom/htc/dlnamediaserver/DLNAMediaServerService$1;->this$0:Lcom/htc/dlnamediaserver/DLNAMediaServerService;

    #getter for: Lcom/htc/dlnamediaserver/DLNAMediaServerService;->mThread:Lcom/htc/dlnamediaserver/DLNAMediaServerService$DLNAMediaServerServiceThread;
    invoke-static {v0}, Lcom/htc/dlnamediaserver/DLNAMediaServerService;->access$000(Lcom/htc/dlnamediaserver/DLNAMediaServerService;)Lcom/htc/dlnamediaserver/DLNAMediaServerService$DLNAMediaServerServiceThread;

    move-result-object v0

    if-nez v0, :cond_0

    .line 86
    const/4 v0, 0x0

    .line 88
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/dlnamediaserver/DLNAMediaServerService$1;->this$0:Lcom/htc/dlnamediaserver/DLNAMediaServerService;

    #getter for: Lcom/htc/dlnamediaserver/DLNAMediaServerService;->mThread:Lcom/htc/dlnamediaserver/DLNAMediaServerService$DLNAMediaServerServiceThread;
    invoke-static {v0}, Lcom/htc/dlnamediaserver/DLNAMediaServerService;->access$000(Lcom/htc/dlnamediaserver/DLNAMediaServerService;)Lcom/htc/dlnamediaserver/DLNAMediaServerService$DLNAMediaServerServiceThread;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/dlnamediaserver/DLNAMediaServerService$DLNAMediaServerServiceThread;->SetFriendlyName(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public SetMediaType(ZZZ)Z
    .locals 1
    .parameter "afVideo"
    .parameter "afAudio"
    .parameter "afImage"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 139
    iget-object v0, p0, Lcom/htc/dlnamediaserver/DLNAMediaServerService$1;->this$0:Lcom/htc/dlnamediaserver/DLNAMediaServerService;

    #getter for: Lcom/htc/dlnamediaserver/DLNAMediaServerService;->mThread:Lcom/htc/dlnamediaserver/DLNAMediaServerService$DLNAMediaServerServiceThread;
    invoke-static {v0}, Lcom/htc/dlnamediaserver/DLNAMediaServerService;->access$000(Lcom/htc/dlnamediaserver/DLNAMediaServerService;)Lcom/htc/dlnamediaserver/DLNAMediaServerService$DLNAMediaServerServiceThread;

    move-result-object v0

    if-nez v0, :cond_0

    .line 140
    const/4 v0, 0x0

    .line 142
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/dlnamediaserver/DLNAMediaServerService$1;->this$0:Lcom/htc/dlnamediaserver/DLNAMediaServerService;

    #getter for: Lcom/htc/dlnamediaserver/DLNAMediaServerService;->mThread:Lcom/htc/dlnamediaserver/DLNAMediaServerService$DLNAMediaServerServiceThread;
    invoke-static {v0}, Lcom/htc/dlnamediaserver/DLNAMediaServerService;->access$000(Lcom/htc/dlnamediaserver/DLNAMediaServerService;)Lcom/htc/dlnamediaserver/DLNAMediaServerService$DLNAMediaServerServiceThread;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/dlnamediaserver/DLNAMediaServerService$DLNAMediaServerServiceThread;->SetMediaType(ZZZ)Z

    move-result v0

    goto :goto_0
.end method
