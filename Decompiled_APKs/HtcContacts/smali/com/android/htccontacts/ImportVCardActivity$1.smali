.class Lcom/android/htccontacts/ImportVCardActivity$1;
.super Ljava/lang/Object;
.source "ImportVCardActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ImportVCardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/ImportVCardActivity;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/ImportVCardActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 166
    iput-object p1, p0, Lcom/android/htccontacts/ImportVCardActivity$1;->this$0:Lcom/android/htccontacts/ImportVCardActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "name"
    .parameter "service"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity$1;->this$0:Lcom/android/htccontacts/ImportVCardActivity;

    invoke-static {p2}, Lcom/android/syncml/service/ISyncMLService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/syncml/service/ISyncMLService;

    move-result-object v1

    #setter for: Lcom/android/htccontacts/ImportVCardActivity;->mService:Lcom/android/syncml/service/ISyncMLService;
    invoke-static {v0, v1}, Lcom/android/htccontacts/ImportVCardActivity;->access$002(Lcom/android/htccontacts/ImportVCardActivity;Lcom/android/syncml/service/ISyncMLService;)Lcom/android/syncml/service/ISyncMLService;

    .line 170
    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity$1;->this$0:Lcom/android/htccontacts/ImportVCardActivity;

    invoke-virtual {v0}, Lcom/android/htccontacts/ImportVCardActivity;->myPhonebookCancelSync()V

    .line 171
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity$1;->this$0:Lcom/android/htccontacts/ImportVCardActivity;

    const/4 v1, 0x0

    #setter for: Lcom/android/htccontacts/ImportVCardActivity;->mService:Lcom/android/syncml/service/ISyncMLService;
    invoke-static {v0, v1}, Lcom/android/htccontacts/ImportVCardActivity;->access$002(Lcom/android/htccontacts/ImportVCardActivity;Lcom/android/syncml/service/ISyncMLService;)Lcom/android/syncml/service/ISyncMLService;

    .line 175
    return-void
.end method
