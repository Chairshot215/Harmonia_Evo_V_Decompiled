.class Lcom/htc/app/FilePickerActivity$12;
.super Ljava/lang/Object;
.source "FilePickerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/app/FilePickerActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/app/FilePickerActivity;


# direct methods
.method constructor <init>(Lcom/htc/app/FilePickerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1594
    iput-object p1, p0, Lcom/htc/app/FilePickerActivity$12;->this$0:Lcom/htc/app/FilePickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v1, 0x0

    .line 1600
    iget-object v0, p0, Lcom/htc/app/FilePickerActivity$12;->this$0:Lcom/htc/app/FilePickerActivity;

    #getter for: Lcom/htc/app/FilePickerActivity;->mFileSorter:Lcom/htc/app/FileSorter;
    invoke-static {v0}, Lcom/htc/app/FilePickerActivity;->access$3500(Lcom/htc/app/FilePickerActivity;)Lcom/htc/app/FileSorter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/htc/app/FileSorter;->setSortBy(I)V

    .line 1601
    iget-object v0, p0, Lcom/htc/app/FilePickerActivity$12;->this$0:Lcom/htc/app/FilePickerActivity;

    #getter for: Lcom/htc/app/FilePickerActivity;->mFileSorter:Lcom/htc/app/FileSorter;
    invoke-static {v0}, Lcom/htc/app/FilePickerActivity;->access$3500(Lcom/htc/app/FilePickerActivity;)Lcom/htc/app/FileSorter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/htc/app/FileSorter;->setSortOrder(I)V

    .line 1604
    iget-object v0, p0, Lcom/htc/app/FilePickerActivity$12;->this$0:Lcom/htc/app/FilePickerActivity;

    #setter for: Lcom/htc/app/FilePickerActivity;->mIsShowDialog:Z
    invoke-static {v0, v1}, Lcom/htc/app/FilePickerActivity;->access$3602(Lcom/htc/app/FilePickerActivity;Z)Z

    .line 1605
    return-void
.end method
