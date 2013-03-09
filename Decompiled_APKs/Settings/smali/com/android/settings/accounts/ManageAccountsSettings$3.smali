.class Lcom/android/settings/accounts/ManageAccountsSettings$3;
.super Ljava/lang/Object;
.source "ManageAccountsSettings.java"

# interfaces
.implements Lcom/htc/widget/HtcToggleButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accounts/ManageAccountsSettings;->onActivityCreated(Landroid/os/Bundle;)V
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
    .line 166
    iput-object p1, p0, Lcom/android/settings/accounts/ManageAccountsSettings$3;->this$0:Lcom/android/settings/accounts/ManageAccountsSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Lcom/htc/widget/HtcToggleButton;Z)V
    .locals 1
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 170
    invoke-static {p2}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    .line 171
    iget-object v0, p0, Lcom/android/settings/accounts/ManageAccountsSettings$3;->this$0:Lcom/android/settings/accounts/ManageAccountsSettings;

    invoke-virtual {v0}, Lcom/android/settings/accounts/ManageAccountsSettings;->onSyncStateUpdated()V

    .line 172
    return-void
.end method
