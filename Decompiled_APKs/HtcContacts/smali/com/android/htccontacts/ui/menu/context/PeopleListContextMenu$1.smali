.class final Lcom/android/htccontacts/ui/menu/context/PeopleListContextMenu$1;
.super Ljava/lang/Object;
.source "PeopleListContextMenu.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/ui/menu/context/PeopleListContextMenu;->selectContextMenu(Landroid/view/MenuItem;Landroid/content/Context;Landroid/os/Bundle;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$bundle:Landroid/os/Bundle;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 580
    iput-object p1, p0, Lcom/android/htccontacts/ui/menu/context/PeopleListContextMenu$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/htccontacts/ui/menu/context/PeopleListContextMenu$1;->val$bundle:Landroid/os/Bundle;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 582
    iget-object v0, p0, Lcom/android/htccontacts/ui/menu/context/PeopleListContextMenu$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/htccontacts/ui/menu/context/PeopleListContextMenu$1;->val$bundle:Landroid/os/Bundle;

    #calls: Lcom/android/htccontacts/ui/menu/context/PeopleListContextMenu;->addContactToBlacklist(Landroid/content/Context;Landroid/os/Bundle;)V
    invoke-static {v0, v1}, Lcom/android/htccontacts/ui/menu/context/PeopleListContextMenu;->access$000(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 583
    iget-object v0, p0, Lcom/android/htccontacts/ui/menu/context/PeopleListContextMenu$1;->val$context:Landroid/content/Context;

    const v1, 0x7f0a030c

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 584
    return-void
.end method
