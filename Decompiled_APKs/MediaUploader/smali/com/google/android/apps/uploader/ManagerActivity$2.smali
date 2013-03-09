.class Lcom/google/android/apps/uploader/ManagerActivity$2;
.super Ljava/lang/Object;
.source "ManagerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/uploader/ManagerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/uploader/ManagerActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/uploader/ManagerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 221
    iput-object p1, p0, Lcom/google/android/apps/uploader/ManagerActivity$2;->this$0:Lcom/google/android/apps/uploader/ManagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 223
    iget-object v0, p0, Lcom/google/android/apps/uploader/ManagerActivity$2;->this$0:Lcom/google/android/apps/uploader/ManagerActivity;

    #getter for: Lcom/google/android/apps/uploader/ManagerActivity;->progressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/google/android/apps/uploader/ManagerActivity;->access$200(Lcom/google/android/apps/uploader/ManagerActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/google/android/apps/uploader/ManagerActivity$2;->this$0:Lcom/google/android/apps/uploader/ManagerActivity;

    #getter for: Lcom/google/android/apps/uploader/ManagerActivity;->progressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/google/android/apps/uploader/ManagerActivity;->access$200(Lcom/google/android/apps/uploader/ManagerActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/uploader/ManagerActivity$2;->this$0:Lcom/google/android/apps/uploader/ManagerActivity;

    #getter for: Lcom/google/android/apps/uploader/ManagerActivity;->progressPercent:I
    invoke-static {v1}, Lcom/google/android/apps/uploader/ManagerActivity;->access$400(Lcom/google/android/apps/uploader/ManagerActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/uploader/ManagerActivity$2;->this$0:Lcom/google/android/apps/uploader/ManagerActivity;

    #getter for: Lcom/google/android/apps/uploader/ManagerActivity;->percentTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/google/android/apps/uploader/ManagerActivity;->access$300(Lcom/google/android/apps/uploader/ManagerActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 227
    iget-object v0, p0, Lcom/google/android/apps/uploader/ManagerActivity$2;->this$0:Lcom/google/android/apps/uploader/ManagerActivity;

    #getter for: Lcom/google/android/apps/uploader/ManagerActivity;->percentTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/google/android/apps/uploader/ManagerActivity;->access$300(Lcom/google/android/apps/uploader/ManagerActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/android/apps/uploader/ManagerActivity$2;->this$0:Lcom/google/android/apps/uploader/ManagerActivity;

    #getter for: Lcom/google/android/apps/uploader/ManagerActivity;->progressPercent:I
    invoke-static {v2}, Lcom/google/android/apps/uploader/ManagerActivity;->access$400(Lcom/google/android/apps/uploader/ManagerActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    :cond_1
    return-void
.end method
