.class Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage$2;
.super Ljava/lang/Object;
.source "HtcEncryption3LMPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage$2;->this$0:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v5, 0x0

    .line 85
    new-instance v0, Lcom/htc/app/HtcProgressDialog;

    iget-object v3, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage$2;->this$0:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage;

    invoke-virtual {v3}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    .line 87
    .local v0, dialog:Lcom/htc/app/HtcProgressDialog;
    iget-object v3, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage$2;->this$0:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage;

    const v4, 0x7f0c06ea

    invoke-virtual {v3, v4}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 88
    invoke-virtual {v0, v5}, Lcom/htc/app/HtcProgressDialog;->setProgressStyle(I)V

    .line 89
    invoke-virtual {v0, v5}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 90
    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->show()V

    .line 92
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 93
    .local v1, handler:Landroid/os/Handler;
    new-instance v2, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage$2$1;

    invoke-direct {v2, p0, v0}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage$2$1;-><init>(Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage$2;Lcom/htc/app/HtcProgressDialog;)V

    .line 103
    .local v2, runnable:Ljava/lang/Runnable;
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage$2$2;

    invoke-direct {v4, p0, v1, v2}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage$2$2;-><init>(Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage$2;Landroid/os/Handler;Ljava/lang/Runnable;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 116
    return-void
.end method
