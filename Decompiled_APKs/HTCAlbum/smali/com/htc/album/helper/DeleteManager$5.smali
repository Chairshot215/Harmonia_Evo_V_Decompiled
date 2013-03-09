.class Lcom/htc/album/helper/DeleteManager$5;
.super Ljava/lang/Object;
.source "DeleteManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/helper/DeleteManager;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/helper/DeleteManager;


# direct methods
.method constructor <init>(Lcom/htc/album/helper/DeleteManager;)V
    .locals 0
    .parameter

    .prologue
    .line 138
    iput-object p1, p0, Lcom/htc/album/helper/DeleteManager$5;->this$0:Lcom/htc/album/helper/DeleteManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 141
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 142
    return-void
.end method
