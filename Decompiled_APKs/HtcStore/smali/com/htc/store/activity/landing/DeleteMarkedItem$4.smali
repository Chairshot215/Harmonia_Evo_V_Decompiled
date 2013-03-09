.class Lcom/htc/store/activity/landing/DeleteMarkedItem$4;
.super Ljava/lang/Object;
.source "DeleteMarkedItem.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/store/activity/landing/DeleteMarkedItem;->doConfirm()V
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
    .line 191
    iput-object p1, p0, Lcom/htc/store/activity/landing/DeleteMarkedItem$4;->this$0:Lcom/htc/store/activity/landing/DeleteMarkedItem;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 193
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 194
    iget-object v0, p0, Lcom/htc/store/activity/landing/DeleteMarkedItem$4;->this$0:Lcom/htc/store/activity/landing/DeleteMarkedItem;

    #calls: Lcom/htc/store/activity/landing/DeleteMarkedItem;->doDelete()V
    invoke-static {v0}, Lcom/htc/store/activity/landing/DeleteMarkedItem;->access$200(Lcom/htc/store/activity/landing/DeleteMarkedItem;)V

    .line 195
    return-void
.end method
