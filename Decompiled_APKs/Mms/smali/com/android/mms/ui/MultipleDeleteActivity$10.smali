.class final Lcom/android/mms/ui/MultipleDeleteActivity$10;
.super Ljava/lang/Object;
.source "MultipleDeleteActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MultipleDeleteActivity;->updateStatusNotification(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 1796
    iput-object p1, p0, Lcom/android/mms/ui/MultipleDeleteActivity$10;->val$context:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1800
    iget-object v0, p0, Lcom/android/mms/ui/MultipleDeleteActivity$10;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/transaction/MessagingNotification;->updateNewMessageIndicator(Landroid/content/Context;)V

    .line 1804
    iget-object v0, p0, Lcom/android/mms/ui/MultipleDeleteActivity$10;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/transaction/MessagingNotification;->updateSendFailedNotification(Landroid/content/Context;)V

    .line 1808
    iget-object v0, p0, Lcom/android/mms/ui/MultipleDeleteActivity$10;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/transaction/MessagingNotification;->updateDownloadFailedNotification(Landroid/content/Context;)V

    .line 1810
    return-void
.end method
