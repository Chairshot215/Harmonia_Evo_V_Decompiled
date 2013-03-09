.class Lcom/android/htccontacts/BrowseContactsAllActivity2$10;
.super Landroid/content/BroadcastReceiver;
.source "BrowseContactsAllActivity2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/BrowseContactsAllActivity2;->initBroadcastReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/BrowseContactsAllActivity2;)V
    .locals 0
    .parameter

    .prologue
    .line 1529
    iput-object p1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$10;->this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1532
    iget-object v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$10;->this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;

    iget-object v0, v0, Lcom/android/htccontacts/ContactListSearchPicker;->mFirstAdapter:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    instance-of v0, v0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;

    if-eqz v0, :cond_0

    .line 1533
    iget-object v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$10;->this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;

    iget-object v0, v0, Lcom/android/htccontacts/ContactListSearchPicker;->mFirstAdapter:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    check-cast v0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;

    invoke-virtual {v0}, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->refreshMyContactCard()V

    .line 1535
    :cond_0
    return-void
.end method
