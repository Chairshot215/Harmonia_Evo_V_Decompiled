.class Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$NetworkSearchThread;
.super Ljava/lang/Thread;
.source "CompanyDirectorySearchAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NetworkSearchThread"
.end annotation


# instance fields
.field processor:Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$NetworkSearchProcessor;

.field targetAccount:Landroid/accounts/Account;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$NetworkSearchProcessor;Landroid/accounts/Account;)V
    .locals 0
    .parameter "proc"
    .parameter "account"

    .prologue
    .line 1129
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1130
    iput-object p2, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$NetworkSearchThread;->targetAccount:Landroid/accounts/Account;

    .line 1131
    iput-object p1, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$NetworkSearchThread;->processor:Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$NetworkSearchProcessor;

    .line 1132
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1135
    iget-object v0, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$NetworkSearchThread;->processor:Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$NetworkSearchProcessor;

    iget-object v1, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$NetworkSearchThread;->targetAccount:Landroid/accounts/Account;

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$NetworkSearchProcessor;->process(Landroid/accounts/Account;)V

    .line 1136
    return-void
.end method
