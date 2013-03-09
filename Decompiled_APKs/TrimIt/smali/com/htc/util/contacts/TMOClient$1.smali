.class Lcom/htc/util/contacts/TMOClient$1;
.super Lcom/htc/clientprofileservice/IClientProfileCallback$Stub;
.source "TMOClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/util/contacts/TMOClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/util/contacts/TMOClient;


# direct methods
.method constructor <init>(Lcom/htc/util/contacts/TMOClient;)V
    .locals 0
    .parameter

    .prologue
    .line 146
    iput-object p1, p0, Lcom/htc/util/contacts/TMOClient$1;->this$0:Lcom/htc/util/contacts/TMOClient;

    invoke-direct {p0}, Lcom/htc/clientprofileservice/IClientProfileCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public capabilitiesSubmitted(Z)V
    .locals 0
    .parameter "result"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 149
    return-void
.end method

.method public myGroupsRetrieved(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/clientprofileservice/Group;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 212
    .local p1, myGroups:Ljava/util/List;,"Ljava/util/List<Lcom/htc/clientprofileservice/Group;>;"
    const-string v0, "TMOClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "myGroupsRetrieved..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object v0, p0, Lcom/htc/util/contacts/TMOClient$1;->this$0:Lcom/htc/util/contacts/TMOClient;

    invoke-virtual {v0}, Lcom/htc/util/contacts/TMOClient;->getGroupRetrivedStatus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 214
    const-string v0, "TMOClient"

    const-string v1, "Group data has been set before, do nothing..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    invoke-static {}, Lcom/htc/util/contacts/TMOClient;->access$400()Lcom/htc/util/contacts/TMOClient;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 219
    iget-object v0, p0, Lcom/htc/util/contacts/TMOClient$1;->this$0:Lcom/htc/util/contacts/TMOClient;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/util/contacts/TMOClient;->setGroupRetrivedStatus(Z)V

    .line 220
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/util/contacts/TMOClient$1$3;

    invoke-direct {v1, p0, p1}, Lcom/htc/util/contacts/TMOClient$1$3;-><init>(Lcom/htc/util/contacts/TMOClient$1;Ljava/util/List;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public myPhonebookRetrieved(Lcom/htc/clientprofileservice/MyPhonebook;)V
    .locals 3
    .parameter "mpb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 154
    invoke-static {p1}, Lcom/htc/util/contacts/TMOClient;->access$202(Lcom/htc/clientprofileservice/MyPhonebook;)Lcom/htc/clientprofileservice/MyPhonebook;

    .line 155
    const-string v0, "TMOClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "myPhonebookRetrieved..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    return-void
.end method

.method public profileModified(Z)V
    .locals 0
    .parameter "result"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 152
    return-void
.end method

.method public profileRetrieved(Lcom/htc/clientprofileservice/Profile;)V
    .locals 4
    .parameter "profile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 159
    invoke-static {p1}, Lcom/htc/util/contacts/TMOClient;->access$302(Lcom/htc/clientprofileservice/Profile;)Lcom/htc/clientprofileservice/Profile;

    .line 160
    invoke-virtual {p1}, Lcom/htc/clientprofileservice/Profile;->getMyPhonebook()Lcom/htc/clientprofileservice/MyPhonebook;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/util/contacts/TMOClient;->access$202(Lcom/htc/clientprofileservice/MyPhonebook;)Lcom/htc/clientprofileservice/MyPhonebook;

    .line 161
    const-string v1, "TMOClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "profileRetrieved..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v1, p0, Lcom/htc/util/contacts/TMOClient$1;->this$0:Lcom/htc/util/contacts/TMOClient;

    invoke-virtual {v1}, Lcom/htc/util/contacts/TMOClient;->getGroupRetrivedStatus()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 163
    const-string v1, "TMOClient"

    const-string v2, "Group data has been set before, do nothing..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    invoke-virtual {p1}, Lcom/htc/clientprofileservice/Profile;->getMyGroups()Ljava/util/List;

    move-result-object v0

    .line 168
    .local v0, myGroups:Ljava/util/List;,"Ljava/util/List<Lcom/htc/clientprofileservice/Group;>;"
    invoke-static {}, Lcom/htc/util/contacts/TMOClient;->access$400()Lcom/htc/util/contacts/TMOClient;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 169
    iget-object v1, p0, Lcom/htc/util/contacts/TMOClient$1;->this$0:Lcom/htc/util/contacts/TMOClient;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/util/contacts/TMOClient;->setGroupRetrivedStatus(Z)V

    .line 170
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/htc/util/contacts/TMOClient$1$1;

    invoke-direct {v2, p0, v0}, Lcom/htc/util/contacts/TMOClient$1$1;-><init>(Lcom/htc/util/contacts/TMOClient$1;Ljava/util/List;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public serverNotified(IZ)V
    .locals 2
    .parameter "opcode"
    .parameter "result"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 237
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/htc/util/contacts/TMOClient$1;->this$0:Lcom/htc/util/contacts/TMOClient;

    #getter for: Lcom/htc/util/contacts/TMOClient;->mService:Lcom/htc/clientprofileservice/IClientProfileService;
    invoke-static {v0}, Lcom/htc/util/contacts/TMOClient;->access$000(Lcom/htc/util/contacts/TMOClient;)Lcom/htc/clientprofileservice/IClientProfileService;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/htc/clientprofileservice/IClientProfileService;->retrieveMyGroups(Z)V

    .line 240
    :cond_0
    if-nez p1, :cond_1

    .line 241
    iget-object v0, p0, Lcom/htc/util/contacts/TMOClient$1;->this$0:Lcom/htc/util/contacts/TMOClient;

    #getter for: Lcom/htc/util/contacts/TMOClient;->mService:Lcom/htc/clientprofileservice/IClientProfileService;
    invoke-static {v0}, Lcom/htc/util/contacts/TMOClient;->access$000(Lcom/htc/util/contacts/TMOClient;)Lcom/htc/clientprofileservice/IClientProfileService;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/htc/clientprofileservice/IClientProfileService;->retrieveProfile(Z)V

    .line 243
    :cond_1
    return-void
.end method

.method public sncdataRetrieved(Lcom/htc/clientprofileservice/Sncdata;)V
    .locals 3
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 188
    const-string v0, "TMOClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sncdataRetrieved..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object v0, p0, Lcom/htc/util/contacts/TMOClient$1;->this$0:Lcom/htc/util/contacts/TMOClient;

    invoke-virtual {v0}, Lcom/htc/util/contacts/TMOClient;->getSNCRetrivedStatus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 190
    const-string v0, "TMOClient"

    const-string v1, "SNC data has been set before, do nothing..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/htc/clientprofileservice/Sncdata;->getSnc()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/htc/util/contacts/TMOClient$1;->this$0:Lcom/htc/util/contacts/TMOClient;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/util/contacts/TMOClient;->setSNCRetrivedStatus(Z)V

    .line 196
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/util/contacts/TMOClient$1$2;

    invoke-direct {v1, p0, p1}, Lcom/htc/util/contacts/TMOClient$1$2;-><init>(Lcom/htc/util/contacts/TMOClient$1;Lcom/htc/clientprofileservice/Sncdata;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
