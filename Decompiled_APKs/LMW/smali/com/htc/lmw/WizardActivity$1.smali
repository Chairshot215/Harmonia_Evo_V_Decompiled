.class Lcom/htc/lmw/WizardActivity$1;
.super Ljava/lang/Object;
.source "WizardActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/lmw/WizardActivity;->onPostCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/lmw/WizardActivity;


# direct methods
.method constructor <init>(Lcom/htc/lmw/WizardActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/htc/lmw/WizardActivity$1;->this$0:Lcom/htc/lmw/WizardActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/htc/lmw/WizardActivity$1;->this$0:Lcom/htc/lmw/WizardActivity;

    invoke-virtual {v0}, Lcom/htc/lmw/WizardActivity;->handleBackPressed()V

    .line 49
    return-void
.end method
