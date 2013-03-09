.class Lcom/google/android/gm/provider/MailEngine$4;
.super Ljava/lang/Object;
.source "MailEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gm/provider/MailEngine;->enqueueAttachmentDownloadTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gm/provider/MailEngine;


# direct methods
.method constructor <init>(Lcom/google/android/gm/provider/MailEngine;)V
    .locals 0
    .parameter

    .prologue
    .line 970
    iput-object p1, p0, Lcom/google/android/gm/provider/MailEngine$4;->this$0:Lcom/google/android/gm/provider/MailEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 973
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine$4;->this$0:Lcom/google/android/gm/provider/MailEngine;

    #getter for: Lcom/google/android/gm/provider/MailEngine;->mAttachmentManager:Lcom/google/android/gm/provider/AttachmentManager;
    invoke-static {v0}, Lcom/google/android/gm/provider/MailEngine;->access$1100(Lcom/google/android/gm/provider/MailEngine;)Lcom/google/android/gm/provider/AttachmentManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gm/provider/AttachmentManager;->maybeStartNextAttachmentDownload()V

    .line 974
    return-void
.end method
