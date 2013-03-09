.class Lcom/google/android/apps/uploader/ManagerActivity$3;
.super Ljava/lang/Object;
.source "ManagerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/uploader/ManagerActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
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
    .line 337
    iput-object p1, p0, Lcom/google/android/apps/uploader/ManagerActivity$3;->this$0:Lcom/google/android/apps/uploader/ManagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 339
    iget-object v0, p0, Lcom/google/android/apps/uploader/ManagerActivity$3;->this$0:Lcom/google/android/apps/uploader/ManagerActivity;

    #getter for: Lcom/google/android/apps/uploader/ManagerActivity;->queue:Lcom/google/android/apps/uploader/UploadsQueue;
    invoke-static {v0}, Lcom/google/android/apps/uploader/ManagerActivity;->access$500(Lcom/google/android/apps/uploader/ManagerActivity;)Lcom/google/android/apps/uploader/UploadsQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/UploadsQueue;->deleteAllResolved()V

    .line 340
    return-void
.end method
