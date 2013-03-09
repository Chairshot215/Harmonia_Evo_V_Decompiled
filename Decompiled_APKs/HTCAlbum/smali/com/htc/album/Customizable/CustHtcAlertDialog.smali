.class public Lcom/htc/album/Customizable/CustHtcAlertDialog;
.super Ljava/lang/Object;
.source "CustHtcAlertDialog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createAlertDialogBuilder(Landroid/content/Context;ILandroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 2
    .parameter "context"
    .parameter "nResTitle"
    .parameter "adapter"
    .parameter "clickListener"

    .prologue
    .line 36
    const/4 v0, 0x0

    .line 39
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 44
    return-object v0
.end method

.method public static rearrangeListItem(Landroid/content/Context;Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;)V
    .locals 0
    .parameter "context"
    .parameter "adapter"

    .prologue
    .line 49
    return-void
.end method
