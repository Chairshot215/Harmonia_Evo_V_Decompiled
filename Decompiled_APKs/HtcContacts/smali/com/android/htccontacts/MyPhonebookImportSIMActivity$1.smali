.class Lcom/android/htccontacts/MyPhonebookImportSIMActivity$1;
.super Ljava/lang/Object;
.source "MyPhonebookImportSIMActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/MyPhonebookImportSIMActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/MyPhonebookImportSIMActivity;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/MyPhonebookImportSIMActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/htccontacts/MyPhonebookImportSIMActivity$1;->this$0:Lcom/android/htccontacts/MyPhonebookImportSIMActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .parameter "name"
    .parameter "service"

    .prologue
    .line 60
    const-string v0, "MyPhonebookImportSIMActivity"

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

    .line 61
    iget-object v0, p0, Lcom/android/htccontacts/MyPhonebookImportSIMActivity$1;->this$0:Lcom/android/htccontacts/MyPhonebookImportSIMActivity;

    invoke-static {p2}, Lcom/android/syncml/service/ISyncMLService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/syncml/service/ISyncMLService;

    move-result-object v1

    #setter for: Lcom/android/htccontacts/MyPhonebookImportSIMActivity;->mService:Lcom/android/syncml/service/ISyncMLService;
    invoke-static {v0, v1}, Lcom/android/htccontacts/MyPhonebookImportSIMActivity;->access$002(Lcom/android/htccontacts/MyPhonebookImportSIMActivity;Lcom/android/syncml/service/ISyncMLService;)Lcom/android/syncml/service/ISyncMLService;

    .line 62
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 65
    const-string v0, "MyPhonebookImportSIMActivity"

    const-string v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object v0, p0, Lcom/android/htccontacts/MyPhonebookImportSIMActivity$1;->this$0:Lcom/android/htccontacts/MyPhonebookImportSIMActivity;

    const/4 v1, 0x0

    #setter for: Lcom/android/htccontacts/MyPhonebookImportSIMActivity;->mService:Lcom/android/syncml/service/ISyncMLService;
    invoke-static {v0, v1}, Lcom/android/htccontacts/MyPhonebookImportSIMActivity;->access$002(Lcom/android/htccontacts/MyPhonebookImportSIMActivity;Lcom/android/syncml/service/ISyncMLService;)Lcom/android/syncml/service/ISyncMLService;

    .line 67
    return-void
.end method
