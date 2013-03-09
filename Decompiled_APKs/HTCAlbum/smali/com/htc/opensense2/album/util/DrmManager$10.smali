.class final Lcom/htc/opensense2/album/util/DrmManager$10;
.super Ljava/lang/Object;
.source "DrmManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/opensense2/album/util/DrmManager;->renewRight(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$filePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 1148
    iput-object p1, p0, Lcom/htc/opensense2/album/util/DrmManager$10;->val$filePath:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 1151
    invoke-static {}, Lcom/htc/opensense2/album/util/DrmManager;->access$500()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/opensense2/album/util/DrmManager$10;->val$filePath:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1152
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1153
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/htc/opensense2/album/util/DrmManager;->access$602(Lcom/htc/app/HtcProgressDialog;)Lcom/htc/app/HtcProgressDialog;

    .line 1154
    invoke-static {}, Lcom/htc/opensense2/album/util/DrmManager;->access$700()Lcom/htc/opensense2/album/util/DrmManager$OnRenewRightListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1155
    invoke-static {}, Lcom/htc/opensense2/album/util/DrmManager;->access$700()Lcom/htc/opensense2/album/util/DrmManager$OnRenewRightListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/DrmManager$OnRenewRightListener;->onAbort()V

    .line 1156
    :cond_0
    return-void
.end method
