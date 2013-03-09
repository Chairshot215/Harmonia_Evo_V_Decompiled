.class Lcom/android/htccontacts/HtcCompanyDirectoryPicker$NetworkSearchProcessor$1;
.super Ljava/lang/Object;
.source "HtcCompanyDirectoryPicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/HtcCompanyDirectoryPicker$NetworkSearchProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/HtcCompanyDirectoryPicker$NetworkSearchProcessor;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/HtcCompanyDirectoryPicker$NetworkSearchProcessor;)V
    .locals 0
    .parameter

    .prologue
    .line 698
    iput-object p1, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$NetworkSearchProcessor$1;->this$0:Lcom/android/htccontacts/HtcCompanyDirectoryPicker$NetworkSearchProcessor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 700
    iget-object v1, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$NetworkSearchProcessor$1;->this$0:Lcom/android/htccontacts/HtcCompanyDirectoryPicker$NetworkSearchProcessor;

    iget-object v1, v1, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$NetworkSearchProcessor;->mPickerActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;

    .line 701
    .local v0, holder:Lcom/android/htccontacts/HtcCompanyDirectoryPicker;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    #getter for: Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mIsDestroy:Z
    invoke-static {v0}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->access$1800(Lcom/android/htccontacts/HtcCompanyDirectoryPicker;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 705
    :cond_0
    :goto_0
    return-void

    .line 704
    :cond_1
    const/4 v1, 0x0

    #calls: Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->displayProgress(Z)V
    invoke-static {v0, v1}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->access$2000(Lcom/android/htccontacts/HtcCompanyDirectoryPicker;Z)V

    goto :goto_0
.end method
