.class Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$RemoveAccount;
.super Ljava/lang/Thread;
.source "CSConfirmDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoveAccount"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;


# direct methods
.method constructor <init>(Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 782
    iput-object p1, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$RemoveAccount;->this$0:Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 783
    iput-object p2, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$RemoveAccount;->mContext:Landroid/content/Context;

    .line 784
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 788
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$RemoveAccount;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/htc/cs/service/DashboardService;->removeAccount(Landroid/content/Context;)V

    .line 789
    return-void
.end method
