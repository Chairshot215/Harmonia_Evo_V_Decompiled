.class Lcom/htc/store/activity/landing/DeleteMarkedItem$6;
.super Ljava/lang/Object;
.source "DeleteMarkedItem.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/store/activity/landing/DeleteMarkedItem;->getDeleteMarkedItemError(Landroid/content/Context;I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/store/activity/landing/DeleteMarkedItem;


# direct methods
.method constructor <init>(Lcom/htc/store/activity/landing/DeleteMarkedItem;)V
    .locals 0
    .parameter

    .prologue
    .line 525
    iput-object p1, p0, Lcom/htc/store/activity/landing/DeleteMarkedItem$6;->this$0:Lcom/htc/store/activity/landing/DeleteMarkedItem;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    .line 528
    iget-object v0, p0, Lcom/htc/store/activity/landing/DeleteMarkedItem$6;->this$0:Lcom/htc/store/activity/landing/DeleteMarkedItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/store/activity/landing/DeleteMarkedItem;->removeDialog(I)V

    .line 529
    return-void
.end method
