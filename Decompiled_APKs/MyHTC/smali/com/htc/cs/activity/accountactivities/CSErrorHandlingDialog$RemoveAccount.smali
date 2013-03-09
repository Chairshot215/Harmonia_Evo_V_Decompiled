.class Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog$RemoveAccount;
.super Ljava/lang/Thread;
.source "CSErrorHandlingDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoveAccount"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog;


# direct methods
.method constructor <init>(Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 294
    iput-object p1, p0, Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog$RemoveAccount;->this$0:Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 295
    iput-object p2, p0, Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog$RemoveAccount;->mContext:Landroid/content/Context;

    .line 296
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog$RemoveAccount;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/htc/cs/service/DashboardService;->removeAccount(Landroid/content/Context;)V

    .line 301
    return-void
.end method
