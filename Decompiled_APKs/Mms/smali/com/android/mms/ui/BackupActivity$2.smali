.class Lcom/android/mms/ui/BackupActivity$2;
.super Ljava/lang/Object;
.source "BackupActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/BackupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/BackupActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/BackupActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/mms/ui/BackupActivity$2;->this$0:Lcom/android/mms/ui/BackupActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 119
    invoke-static {}, Lcom/android/mms/ui/BackupActivity;->access$000()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 121
    iget-object v1, p0, Lcom/android/mms/ui/BackupActivity$2;->this$0:Lcom/android/mms/ui/BackupActivity;

    #getter for: Lcom/android/mms/ui/BackupActivity;->mFileName:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/mms/ui/BackupActivity;->access$100(Lcom/android/mms/ui/BackupActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, fileName:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/mms/ui/BackupActivity$2;->this$0:Lcom/android/mms/ui/BackupActivity;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/BackupActivity;->isValidFileName(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 123
    new-instance v1, Lcom/android/mms/ui/BackupActivity$2$1;

    invoke-direct {v1, p0, v0}, Lcom/android/mms/ui/BackupActivity$2$1;-><init>(Lcom/android/mms/ui/BackupActivity$2;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/android/mms/ui/BackupActivity;->access$202(Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 138
    invoke-static {}, Lcom/android/mms/ui/BackupActivity;->access$200()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 140
    :cond_0
    return-void
.end method
