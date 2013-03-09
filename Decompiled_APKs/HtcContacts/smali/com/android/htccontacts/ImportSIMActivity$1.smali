.class Lcom/android/htccontacts/ImportSIMActivity$1;
.super Ljava/lang/Object;
.source "ImportSIMActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ImportSIMActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/ImportSIMActivity;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/ImportSIMActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/htccontacts/ImportSIMActivity$1;->this$0:Lcom/android/htccontacts/ImportSIMActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "name"
    .parameter "service"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/htccontacts/ImportSIMActivity$1;->this$0:Lcom/android/htccontacts/ImportSIMActivity;

    invoke-static {p2}, Lcom/android/syncml/service/ISyncMLService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/syncml/service/ISyncMLService;

    move-result-object v1

    #setter for: Lcom/android/htccontacts/ImportSIMActivity;->mService:Lcom/android/syncml/service/ISyncMLService;
    invoke-static {v0, v1}, Lcom/android/htccontacts/ImportSIMActivity;->access$002(Lcom/android/htccontacts/ImportSIMActivity;Lcom/android/syncml/service/ISyncMLService;)Lcom/android/syncml/service/ISyncMLService;

    .line 63
    iget-object v0, p0, Lcom/android/htccontacts/ImportSIMActivity$1;->this$0:Lcom/android/htccontacts/ImportSIMActivity;

    invoke-virtual {v0}, Lcom/android/htccontacts/ImportSIMActivity;->myPhonebookCancelSync()V

    .line 64
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/htccontacts/ImportSIMActivity$1;->this$0:Lcom/android/htccontacts/ImportSIMActivity;

    const/4 v1, 0x0

    #setter for: Lcom/android/htccontacts/ImportSIMActivity;->mService:Lcom/android/syncml/service/ISyncMLService;
    invoke-static {v0, v1}, Lcom/android/htccontacts/ImportSIMActivity;->access$002(Lcom/android/htccontacts/ImportSIMActivity;Lcom/android/syncml/service/ISyncMLService;)Lcom/android/syncml/service/ISyncMLService;

    .line 68
    return-void
.end method
