.class Lcom/htc/android/epst/FileBrowserActivity$4;
.super Ljava/lang/Object;
.source "FileBrowserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/epst/FileBrowserActivity;->populateFields()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/epst/FileBrowserActivity;


# direct methods
.method constructor <init>(Lcom/htc/android/epst/FileBrowserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 269
    iput-object p1, p0, Lcom/htc/android/epst/FileBrowserActivity$4;->this$0:Lcom/htc/android/epst/FileBrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 272
    iget-object v0, p0, Lcom/htc/android/epst/FileBrowserActivity$4;->this$0:Lcom/htc/android/epst/FileBrowserActivity;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/epst/FileBrowserActivity;->setResult(ILandroid/content/Intent;)V

    .line 273
    iget-object v0, p0, Lcom/htc/android/epst/FileBrowserActivity$4;->this$0:Lcom/htc/android/epst/FileBrowserActivity;

    invoke-virtual {v0}, Lcom/htc/android/epst/FileBrowserActivity;->finish()V

    .line 274
    return-void
.end method
