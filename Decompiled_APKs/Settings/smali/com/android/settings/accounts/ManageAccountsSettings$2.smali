.class Lcom/android/settings/accounts/ManageAccountsSettings$2;
.super Ljava/lang/Object;
.source "ManageAccountsSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accounts/ManageAccountsSettings;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accounts/ManageAccountsSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/accounts/ManageAccountsSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/settings/accounts/ManageAccountsSettings$2;->this$0:Lcom/android/settings/accounts/ManageAccountsSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/settings/accounts/ManageAccountsSettings$2;->this$0:Lcom/android/settings/accounts/ManageAccountsSettings;

    invoke-virtual {v0}, Lcom/android/settings/accounts/ManageAccountsSettings;->onRightClick()V

    .line 129
    return-void
.end method
