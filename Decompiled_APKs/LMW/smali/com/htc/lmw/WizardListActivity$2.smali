.class Lcom/htc/lmw/WizardListActivity$2;
.super Ljava/lang/Object;
.source "WizardListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/lmw/WizardListActivity;->prepareUinstallAppsForCriticalMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/lmw/WizardListActivity;


# direct methods
.method constructor <init>(Lcom/htc/lmw/WizardListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 579
    iput-object p1, p0, Lcom/htc/lmw/WizardListActivity$2;->this$0:Lcom/htc/lmw/WizardListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 583
    iget-object v0, p0, Lcom/htc/lmw/WizardListActivity$2;->this$0:Lcom/htc/lmw/WizardListActivity;

    invoke-virtual {v0}, Lcom/htc/lmw/WizardListActivity;->updateMemoryInfo()V

    .line 584
    return-void
.end method
