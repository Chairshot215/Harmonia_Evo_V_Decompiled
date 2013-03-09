.class Lcom/android/htccontacts/HtcCompanyDirectoryPicker$1;
.super Ljava/lang/Object;
.source "HtcCompanyDirectoryPicker.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/HtcCompanyDirectoryPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/HtcCompanyDirectoryPicker;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/HtcCompanyDirectoryPicker;)V
    .locals 0
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$1;->this$0:Lcom/android/htccontacts/HtcCompanyDirectoryPicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .parameter "className"
    .parameter "service"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$1;->this$0:Lcom/android/htccontacts/HtcCompanyDirectoryPicker;

    invoke-static {p2}, Lcom/htc/android/pim/eas/IEASSvc$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/android/pim/eas/IEASSvc;

    move-result-object v1

    #setter for: Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mEASSvc:Lcom/htc/android/pim/eas/IEASSvc;
    invoke-static {v0, v1}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->access$002(Lcom/android/htccontacts/HtcCompanyDirectoryPicker;Lcom/htc/android/pim/eas/IEASSvc;)Lcom/htc/android/pim/eas/IEASSvc;

    .line 125
    iget-object v0, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$1;->this$0:Lcom/android/htccontacts/HtcCompanyDirectoryPicker;

    new-instance v1, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$Status;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$Status;-><init>(Lcom/android/htccontacts/HtcCompanyDirectoryPicker$1;)V

    #setter for: Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mStatus:Lcom/android/htccontacts/HtcCompanyDirectoryPicker$Status;
    invoke-static {v0, v1}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->access$102(Lcom/android/htccontacts/HtcCompanyDirectoryPicker;Lcom/android/htccontacts/HtcCompanyDirectoryPicker$Status;)Lcom/android/htccontacts/HtcCompanyDirectoryPicker$Status;

    .line 126
    iget-object v0, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$1;->this$0:Lcom/android/htccontacts/HtcCompanyDirectoryPicker;

    #getter for: Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mStatus:Lcom/android/htccontacts/HtcCompanyDirectoryPicker$Status;
    invoke-static {v0}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->access$100(Lcom/android/htccontacts/HtcCompanyDirectoryPicker;)Lcom/android/htccontacts/HtcCompanyDirectoryPicker$Status;

    move-result-object v0

    sget v1, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$Status;->STATUS_OK:I

    iput v1, v0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$Status;->Code:I

    .line 127
    new-instance v0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$1$1;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$1$1;-><init>(Lcom/android/htccontacts/HtcCompanyDirectoryPicker$1;)V

    invoke-virtual {v0}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$1$1;->start()V

    .line 168
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "className"

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$1;->this$0:Lcom/android/htccontacts/HtcCompanyDirectoryPicker;

    const/4 v1, 0x0

    #setter for: Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mEASSvc:Lcom/htc/android/pim/eas/IEASSvc;
    invoke-static {v0, v1}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->access$002(Lcom/android/htccontacts/HtcCompanyDirectoryPicker;Lcom/htc/android/pim/eas/IEASSvc;)Lcom/htc/android/pim/eas/IEASSvc;

    .line 175
    return-void
.end method
