.class Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$1BundleCursor;
.super Landroid/database/CursorWrapper;
.source "CompanyDirectorySearchAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->buildCompanyDirectoryCursor(Landroid/accounts/Account;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BundleCursor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;

.field final synthetic val$account:Landroid/accounts/Account;

.field final synthetic val$colleageDataList:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;Landroid/database/Cursor;Ljava/util/ArrayList;Landroid/accounts/Account;)V
    .locals 0
    .parameter
    .parameter "cursor"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 862
    iput-object p1, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$1BundleCursor;->this$0:Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;

    iput-object p3, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$1BundleCursor;->val$colleageDataList:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$1BundleCursor;->val$account:Landroid/accounts/Account;

    .line 863
    invoke-direct {p0, p2}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 864
    return-void
.end method


# virtual methods
.method public getExtras()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 866
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 867
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "colleage"

    iget-object v2, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$1BundleCursor;->val$colleageDataList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 868
    const-string v1, "account"

    iget-object v2, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$1BundleCursor;->val$account:Landroid/accounts/Account;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 869
    return-object v0
.end method
