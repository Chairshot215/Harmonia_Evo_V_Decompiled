.class Lcom/htc/store/activity/EntryActivity$1;
.super Ljava/lang/Object;
.source "EntryActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/store/activity/EntryActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/store/activity/EntryActivity;


# direct methods
.method constructor <init>(Lcom/htc/store/activity/EntryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lcom/htc/store/activity/EntryActivity$1;->this$0:Lcom/htc/store/activity/EntryActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/htc/store/activity/EntryActivity$1;->this$0:Lcom/htc/store/activity/EntryActivity;

    invoke-virtual {v0}, Lcom/htc/store/activity/EntryActivity;->finish()V

    .line 118
    return-void
.end method
