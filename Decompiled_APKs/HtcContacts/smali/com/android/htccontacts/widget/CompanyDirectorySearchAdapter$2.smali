.class Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$2;
.super Ljava/lang/Object;
.source "CompanyDirectorySearchAdapter.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 209
    iput-object p1, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$2;->this$0:Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .parameter "className"
    .parameter "service"

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$2;->this$0:Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;

    invoke-static {p2}, Lcom/htc/android/pim/eas/IEASSvc$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/android/pim/eas/IEASSvc;

    move-result-object v1

    #setter for: Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->mEASSvc:Lcom/htc/android/pim/eas/IEASSvc;
    invoke-static {v0, v1}, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->access$602(Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;Lcom/htc/android/pim/eas/IEASSvc;)Lcom/htc/android/pim/eas/IEASSvc;

    .line 217
    :try_start_0
    iget-object v0, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$2;->this$0:Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;

    new-instance v1, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$Status;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$Status;-><init>(Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$1;)V

    #setter for: Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->mStatus:Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$Status;
    invoke-static {v0, v1}, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->access$802(Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$Status;)Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$Status;

    .line 229
    new-instance v0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$GetAccountListThread;

    iget-object v1, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$2;->this$0:Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;

    invoke-direct {v0, v1}, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$GetAccountListThread;-><init>(Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;)V

    invoke-virtual {v0}, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$GetAccountListThread;->start()V

    .line 230
    iget-object v0, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$2;->this$0:Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;

    #getter for: Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->mStatus:Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$Status;
    invoke-static {v0}, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->access$800(Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;)Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$Status;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$Status;->mCode:I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    :goto_0
    return-void

    .line 231
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "className"

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$2;->this$0:Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;

    const/4 v1, 0x0

    #setter for: Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->mEASSvc:Lcom/htc/android/pim/eas/IEASSvc;
    invoke-static {v0, v1}, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->access$602(Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;Lcom/htc/android/pim/eas/IEASSvc;)Lcom/htc/android/pim/eas/IEASSvc;

    .line 239
    return-void
.end method
