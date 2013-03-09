.class Lcom/htc/opensense/widget/BaseLoginActivity$12;
.super Ljava/lang/Object;
.source "BaseLoginActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/opensense/widget/BaseLoginActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/opensense/widget/BaseLoginActivity;


# direct methods
.method constructor <init>(Lcom/htc/opensense/widget/BaseLoginActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 416
    iput-object p1, p0, Lcom/htc/opensense/widget/BaseLoginActivity$12;->this$0:Lcom/htc/opensense/widget/BaseLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 419
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 420
    iget-object v0, p0, Lcom/htc/opensense/widget/BaseLoginActivity$12;->this$0:Lcom/htc/opensense/widget/BaseLoginActivity;

    invoke-virtual {v0}, Lcom/htc/opensense/widget/BaseLoginActivity;->finish()V

    .line 421
    return-void
.end method
