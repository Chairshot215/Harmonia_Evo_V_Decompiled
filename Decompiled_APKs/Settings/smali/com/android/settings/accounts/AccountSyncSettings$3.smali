.class Lcom/android/settings/accounts/AccountSyncSettings$3;
.super Ljava/lang/Thread;
.source "AccountSyncSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accounts/AccountSyncSettings;->onAuthDescriptionsUpdated()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accounts/AccountSyncSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/accounts/AccountSyncSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 816
    iput-object p1, p0, Lcom/android/settings/accounts/AccountSyncSettings$3;->this$0:Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 818
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings$3;->this$0:Lcom/android/settings/accounts/AccountSyncSettings;

    iget-object v1, p0, Lcom/android/settings/accounts/AccountSyncSettings$3;->this$0:Lcom/android/settings/accounts/AccountSyncSettings;

    #getter for: Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;
    invoke-static {v1}, Lcom/android/settings/accounts/AccountSyncSettings;->access$000(Lcom/android/settings/accounts/AccountSyncSettings;)Landroid/accounts/Account;

    move-result-object v1

    #calls: Lcom/android/settings/accounts/AccountSyncSettings;->addAdditionalPreferences(Landroid/accounts/Account;)V
    invoke-static {v0, v1}, Lcom/android/settings/accounts/AccountSyncSettings;->access$200(Lcom/android/settings/accounts/AccountSyncSettings;Landroid/accounts/Account;)V

    .line 819
    return-void
.end method
