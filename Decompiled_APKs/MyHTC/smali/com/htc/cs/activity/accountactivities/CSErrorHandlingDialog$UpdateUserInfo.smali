.class Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog$UpdateUserInfo;
.super Ljava/lang/Thread;
.source "CSErrorHandlingDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateUserInfo"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mtext:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog;


# direct methods
.method constructor <init>(Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "text"

    .prologue
    .line 309
    iput-object p1, p0, Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog$UpdateUserInfo;->this$0:Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 310
    iput-object p2, p0, Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog$UpdateUserInfo;->mContext:Landroid/content/Context;

    .line 311
    iput-object p3, p0, Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog$UpdateUserInfo;->mtext:Ljava/lang/String;

    .line 312
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 316
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog$UpdateUserInfo;->mContext:Landroid/content/Context;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/htc/cs/util/CSStatusBarNotification;->cancel(Landroid/content/Context;I)V

    .line 317
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog$UpdateUserInfo;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog$UpdateUserInfo;->mtext:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/htc/cs/util/CSUserPreferenceUtil;->setHashedPassword(Landroid/content/Context;Ljava/lang/String;)V

    .line 318
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog$UpdateUserInfo;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog$UpdateUserInfo;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/cscore/util/CSUtil;->getAccountID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog$UpdateUserInfo;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/cscore/util/CSUtil;->getDeviceID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog$UpdateUserInfo;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/htc/cs/util/CSUserPreferenceUtil;->getHashedPassword(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/htc/cs/util/CSDatabaseUtil;->WriteAccountInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    return-void
.end method
