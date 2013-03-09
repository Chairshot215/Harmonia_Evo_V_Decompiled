.class final Lcom/android/browser/BookmarkUtils$1;
.super Ljava/lang/Object;
.source "BookmarkUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/BookmarkUtils;->displayRemoveBookmarkDialog(JLjava/lang/String;Landroid/content/Context;Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$id:J

.field final synthetic val$msg:Landroid/os/Message;


# direct methods
.method constructor <init>(Landroid/os/Message;JLandroid/content/Context;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 242
    iput-object p1, p0, Lcom/android/browser/BookmarkUtils$1;->val$msg:Landroid/os/Message;

    iput-wide p2, p0, Lcom/android/browser/BookmarkUtils$1;->val$id:J

    iput-object p4, p0, Lcom/android/browser/BookmarkUtils$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 245
    iget-object v1, p0, Lcom/android/browser/BookmarkUtils$1;->val$msg:Landroid/os/Message;

    if-eqz v1, :cond_0

    .line 246
    iget-object v1, p0, Lcom/android/browser/BookmarkUtils$1;->val$msg:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 248
    :cond_0
    new-instance v0, Lcom/android/browser/BookmarkUtils$1$1;

    invoke-direct {v0, p0}, Lcom/android/browser/BookmarkUtils$1$1;-><init>(Lcom/android/browser/BookmarkUtils$1;)V

    .line 257
    .local v0, runnable:Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 258
    return-void
.end method
