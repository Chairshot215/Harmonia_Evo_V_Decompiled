.class final Lcom/android/htccontacts/ui/menu/context/PeopleListContextMenu$3;
.super Ljava/lang/Object;
.source "PeopleListContextMenu.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/ui/menu/context/PeopleListContextMenu;->editNumberWithIpDialPrefix(Ljava/lang/String;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$number:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 998
    iput-object p1, p0, Lcom/android/htccontacts/ui/menu/context/PeopleListContextMenu$3;->val$number:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/htccontacts/ui/menu/context/PeopleListContextMenu$3;->val$context:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1003
    invoke-static {}, Lcom/android/htccontacts/ui/menu/context/PeopleListContextMenu;->access$300()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1004
    .local v1, prefix:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/htccontacts/ui/menu/context/PeopleListContextMenu$3;->val$number:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1005
    .local v0, ipDialNumber:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/htccontacts/ui/menu/context/PeopleListContextMenu$3;->val$context:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/android/htccontacts/ui/menu/context/PeopleListContextMenu;->editNumberBeforeCall(Ljava/lang/String;Landroid/content/Context;)V

    .line 1006
    return-void
.end method
