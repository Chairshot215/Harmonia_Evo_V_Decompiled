.class Lcom/htc/android/mail/ComposeActivity$21;
.super Ljava/lang/Object;
.source "ComposeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/ComposeActivity;->forceSync(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/ComposeActivity;

.field final synthetic val$desFile:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/ComposeActivity;Ljava/io/File;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2425
    iput-object p1, p0, Lcom/htc/android/mail/ComposeActivity$21;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iput-object p2, p0, Lcom/htc/android/mail/ComposeActivity$21;->val$desFile:Ljava/io/File;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 2428
    :try_start_0
    iget-object v3, p0, Lcom/htc/android/mail/ComposeActivity$21;->val$desFile:Ljava/io/File;

    const/high16 v4, 0x1000

    invoke-static {v3, v4}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 2429
    .local v2, pfd:Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 2430
    .local v1, fd:Ljava/io/FileDescriptor;
    invoke-virtual {v1}, Ljava/io/FileDescriptor;->sync()V

    .line 2431
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2438
    .end local v1           #fd:Ljava/io/FileDescriptor;
    .end local v2           #pfd:Landroid/os/ParcelFileDescriptor;
    :goto_0
    return-void

    .line 2434
    :catch_0
    move-exception v0

    .line 2435
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "ComposeActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "write file excetion>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
