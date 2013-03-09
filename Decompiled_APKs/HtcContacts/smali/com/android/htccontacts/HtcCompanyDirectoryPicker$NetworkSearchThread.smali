.class Lcom/android/htccontacts/HtcCompanyDirectoryPicker$NetworkSearchThread;
.super Ljava/lang/Thread;
.source "HtcCompanyDirectoryPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/HtcCompanyDirectoryPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NetworkSearchThread"
.end annotation


# instance fields
.field processor:Lcom/android/htccontacts/HtcCompanyDirectoryPicker$NetworkSearchProcessor;

.field targetAccount:Landroid/accounts/Account;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/HtcCompanyDirectoryPicker$NetworkSearchProcessor;Landroid/accounts/Account;)V
    .locals 0
    .parameter "proc"
    .parameter "account"

    .prologue
    .line 729
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 730
    iput-object p2, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$NetworkSearchThread;->targetAccount:Landroid/accounts/Account;

    .line 731
    iput-object p1, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$NetworkSearchThread;->processor:Lcom/android/htccontacts/HtcCompanyDirectoryPicker$NetworkSearchProcessor;

    .line 732
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 734
    iget-object v0, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$NetworkSearchThread;->processor:Lcom/android/htccontacts/HtcCompanyDirectoryPicker$NetworkSearchProcessor;

    iget-object v1, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$NetworkSearchThread;->targetAccount:Landroid/accounts/Account;

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$NetworkSearchProcessor;->process(Landroid/accounts/Account;)V

    .line 735
    return-void
.end method
