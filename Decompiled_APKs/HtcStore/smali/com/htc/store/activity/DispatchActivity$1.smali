.class Lcom/htc/store/activity/DispatchActivity$1;
.super Ljava/lang/Object;
.source "DispatchActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/store/activity/DispatchActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/store/activity/DispatchActivity;


# direct methods
.method constructor <init>(Lcom/htc/store/activity/DispatchActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 119
    iput-object p1, p0, Lcom/htc/store/activity/DispatchActivity$1;->this$0:Lcom/htc/store/activity/DispatchActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/htc/store/activity/DispatchActivity$1;->this$0:Lcom/htc/store/activity/DispatchActivity;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/htc/store/activity/DispatchActivity;->removeDialog(I)V

    .line 122
    iget-object v0, p0, Lcom/htc/store/activity/DispatchActivity$1;->this$0:Lcom/htc/store/activity/DispatchActivity;

    invoke-virtual {v0}, Lcom/htc/store/activity/DispatchActivity;->finish()V

    .line 123
    return-void
.end method
