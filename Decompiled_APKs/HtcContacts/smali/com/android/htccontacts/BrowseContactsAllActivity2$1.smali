.class Lcom/android/htccontacts/BrowseContactsAllActivity2$1;
.super Ljava/lang/Object;
.source "BrowseContactsAllActivity2.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/BrowseContactsAllActivity2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/BrowseContactsAllActivity2;)V
    .locals 0
    .parameter

    .prologue
    .line 266
    iput-object p1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$1;->this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .parameter "name"
    .parameter "service"

    .prologue
    .line 269
    const-string v0, "BrowseContactsAllActivity2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceConnected, ComponentName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iget-object v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$1;->this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;

    invoke-virtual {v0}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$1;->this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;

    iget-object v1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$1;->this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;

    #getter for: Lcom/android/htccontacts/BrowseContactsAllActivity2;->mConnection:Landroid/content/ServiceConnection;
    invoke-static {v1}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->access$000(Lcom/android/htccontacts/BrowseContactsAllActivity2;)Landroid/content/ServiceConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->unbindService(Landroid/content/ServiceConnection;)V

    .line 276
    :goto_0
    return-void

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$1;->this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;

    invoke-static {p2}, Lcom/android/syncml/service/ISyncMLService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/syncml/service/ISyncMLService;

    move-result-object v1

    #setter for: Lcom/android/htccontacts/BrowseContactsAllActivity2;->mService:Lcom/android/syncml/service/ISyncMLService;
    invoke-static {v0, v1}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->access$102(Lcom/android/htccontacts/BrowseContactsAllActivity2;Lcom/android/syncml/service/ISyncMLService;)Lcom/android/syncml/service/ISyncMLService;

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 279
    const-string v0, "BrowseContactsAllActivity2"

    const-string v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    iget-object v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$1;->this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;

    const/4 v1, 0x0

    #setter for: Lcom/android/htccontacts/BrowseContactsAllActivity2;->mService:Lcom/android/syncml/service/ISyncMLService;
    invoke-static {v0, v1}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->access$102(Lcom/android/htccontacts/BrowseContactsAllActivity2;Lcom/android/syncml/service/ISyncMLService;)Lcom/android/syncml/service/ISyncMLService;

    .line 281
    return-void
.end method
