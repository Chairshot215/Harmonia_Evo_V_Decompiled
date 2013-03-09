.class Lcom/android/htccontacts/ui/EditContactActivity2$1;
.super Ljava/lang/Object;
.source "EditContactActivity2.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ui/EditContactActivity2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/ui/EditContactActivity2;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/ui/EditContactActivity2;)V
    .locals 0
    .parameter

    .prologue
    .line 279
    iput-object p1, p0, Lcom/android/htccontacts/ui/EditContactActivity2$1;->this$0:Lcom/android/htccontacts/ui/EditContactActivity2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "name"
    .parameter "service"

    .prologue
    .line 282
    iget-object v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2$1;->this$0:Lcom/android/htccontacts/ui/EditContactActivity2;

    invoke-static {p2}, Lcom/android/syncml/service/ISyncMLService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/syncml/service/ISyncMLService;

    move-result-object v1

    #setter for: Lcom/android/htccontacts/ui/EditContactActivity2;->mService:Lcom/android/syncml/service/ISyncMLService;
    invoke-static {v0, v1}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$002(Lcom/android/htccontacts/ui/EditContactActivity2;Lcom/android/syncml/service/ISyncMLService;)Lcom/android/syncml/service/ISyncMLService;

    .line 283
    iget-object v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2$1;->this$0:Lcom/android/htccontacts/ui/EditContactActivity2;

    invoke-virtual {v0}, Lcom/android/htccontacts/ui/EditContactActivity2;->myPhonebookCancelSync()V

    .line 284
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 287
    iget-object v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2$1;->this$0:Lcom/android/htccontacts/ui/EditContactActivity2;

    const/4 v1, 0x0

    #setter for: Lcom/android/htccontacts/ui/EditContactActivity2;->mService:Lcom/android/syncml/service/ISyncMLService;
    invoke-static {v0, v1}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$002(Lcom/android/htccontacts/ui/EditContactActivity2;Lcom/android/syncml/service/ISyncMLService;)Lcom/android/syncml/service/ISyncMLService;

    .line 288
    return-void
.end method
