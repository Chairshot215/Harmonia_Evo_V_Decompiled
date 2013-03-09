.class final Lcom/android/htccontacts/ui/menu/context/PeopleListContextMenu$2;
.super Ljava/lang/Thread;
.source "PeopleListContextMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/ui/menu/context/PeopleListContextMenu;->addContactToBlacklist(Landroid/content/Context;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$bundle:Landroid/os/Bundle;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/os/Bundle;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 727
    iput-object p1, p0, Lcom/android/htccontacts/ui/menu/context/PeopleListContextMenu$2;->val$bundle:Landroid/os/Bundle;

    iput-object p2, p0, Lcom/android/htccontacts/ui/menu/context/PeopleListContextMenu$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 729
    iget-object v1, p0, Lcom/android/htccontacts/ui/menu/context/PeopleListContextMenu$2;->val$bundle:Landroid/os/Bundle;

    #calls: Lcom/android/htccontacts/ui/menu/context/PeopleListContextMenu;->getContactUri(Landroid/os/Bundle;)Landroid/net/Uri;
    invoke-static {v1}, Lcom/android/htccontacts/ui/menu/context/PeopleListContextMenu;->access$100(Landroid/os/Bundle;)Landroid/net/Uri;

    move-result-object v0

    .line 730
    .local v0, uri:Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/htccontacts/ui/menu/context/PeopleListContextMenu$2;->val$bundle:Landroid/os/Bundle;

    #calls: Lcom/android/htccontacts/ui/menu/context/PeopleListContextMenu;->isSimContactItem(Landroid/os/Bundle;)Z
    invoke-static {v1}, Lcom/android/htccontacts/ui/menu/context/PeopleListContextMenu;->access$200(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 731
    iget-object v1, p0, Lcom/android/htccontacts/ui/menu/context/PeopleListContextMenu$2;->val$context:Landroid/content/Context;

    invoke-static {v1, v0, v2}, Lcom/htc/util/contacts/BlacklistUtils;->modifySendToVoiceMailForSim(Landroid/content/Context;Landroid/net/Uri;Z)V

    .line 736
    :goto_0
    return-void

    .line 733
    :cond_0
    iget-object v1, p0, Lcom/android/htccontacts/ui/menu/context/PeopleListContextMenu$2;->val$context:Landroid/content/Context;

    invoke-static {v1, v0, v2}, Lcom/htc/util/contacts/BlacklistUtils;->modifySendToVoiceMail(Landroid/content/Context;Landroid/net/Uri;Z)V

    goto :goto_0
.end method
