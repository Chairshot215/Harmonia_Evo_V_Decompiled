.class Lcom/google/android/finsky/activities/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/google/android/finsky/utils/NotificationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/activities/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/MainActivity;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 199
    iput-object p1, p0, Lcom/google/android/finsky/activities/MainActivity$1;->this$0:Lcom/google/android/finsky/activities/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public showAppAlert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 3
    .parameter "packageName"
    .parameter "title"
    .parameter "htmlMessage"
    .parameter "returnCode"

    .prologue
    .line 216
    iget-object v1, p0, Lcom/google/android/finsky/activities/MainActivity$1;->this$0:Lcom/google/android/finsky/activities/MainActivity;

    #getter for: Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;
    invoke-static {v1}, Lcom/google/android/finsky/activities/MainActivity;->access$000(Lcom/google/android/finsky/activities/MainActivity;)Lcom/google/android/finsky/navigationmanager/NavigationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getCurrentDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v0

    .line 217
    .local v0, doc:Lcom/google/android/finsky/api/model/Document;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 219
    iget-object v1, p0, Lcom/google/android/finsky/activities/MainActivity$1;->this$0:Lcom/google/android/finsky/activities/MainActivity;

    #calls: Lcom/google/android/finsky/activities/MainActivity;->showErrorDialogForCode(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z
    invoke-static {v1, p2, p3, p4, p1}, Lcom/google/android/finsky/activities/MainActivity;->access$100(Lcom/google/android/finsky/activities/MainActivity;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z

    move-result v1

    .line 221
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public showAppNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "packageName"
    .parameter "title"
    .parameter "htmlMessage"

    .prologue
    .line 227
    iget-object v1, p0, Lcom/google/android/finsky/activities/MainActivity$1;->this$0:Lcom/google/android/finsky/activities/MainActivity;

    #getter for: Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;
    invoke-static {v1}, Lcom/google/android/finsky/activities/MainActivity;->access$000(Lcom/google/android/finsky/activities/MainActivity;)Lcom/google/android/finsky/navigationmanager/NavigationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getCurrentDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v0

    .line 228
    .local v0, doc:Lcom/google/android/finsky/api/model/Document;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 232
    const/4 v1, 0x1

    .line 234
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public showDocAlert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "docId"
    .parameter "title"
    .parameter "htmlMessage"
    .parameter "detailsUrl"

    .prologue
    const/4 v0, 0x0

    .line 203
    iget-object v1, p0, Lcom/google/android/finsky/activities/MainActivity$1;->this$0:Lcom/google/android/finsky/activities/MainActivity;

    #getter for: Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;
    invoke-static {v1}, Lcom/google/android/finsky/activities/MainActivity;->access$000(Lcom/google/android/finsky/activities/MainActivity;)Lcom/google/android/finsky/navigationmanager/NavigationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getCurrentDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/finsky/activities/MainActivity$1;->this$0:Lcom/google/android/finsky/activities/MainActivity;

    #getter for: Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;
    invoke-static {v1}, Lcom/google/android/finsky/activities/MainActivity;->access$000(Lcom/google/android/finsky/activities/MainActivity;)Lcom/google/android/finsky/navigationmanager/NavigationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getCurrentDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/activities/MainActivity$1;->this$0:Lcom/google/android/finsky/activities/MainActivity;

    #getter for: Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;
    invoke-static {v1}, Lcom/google/android/finsky/activities/MainActivity;->access$000(Lcom/google/android/finsky/activities/MainActivity;)Lcom/google/android/finsky/navigationmanager/NavigationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getCurrentDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getDetailsUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {p4, v1}, Lcom/google/android/finsky/api/DfeUtils;->isSameDocumentDetailsUrl(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 207
    :cond_0
    iget-object v1, p0, Lcom/google/android/finsky/activities/MainActivity$1;->this$0:Lcom/google/android/finsky/activities/MainActivity;

    invoke-virtual {v1, p2, p3, v0}, Lcom/google/android/finsky/activities/MainActivity;->showErrorDialog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 208
    const/4 v0, 0x1

    .line 210
    :cond_1
    return v0
.end method
