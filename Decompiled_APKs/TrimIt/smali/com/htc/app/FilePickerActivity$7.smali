.class Lcom/htc/app/FilePickerActivity$7;
.super Ljava/lang/Object;
.source "FilePickerActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/app/FilePickerActivity;->initialFilePicker(Ljava/lang/String;IZII[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIILjava/lang/String;[Ljava/lang/String;I)V
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
    .line 793
    iput-object p1, p0, Lcom/htc/app/FilePickerActivity$7;->this$0:Lcom/htc/app/FilePickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 796
    if-eqz p2, :cond_0

    .line 799
    iget-object v0, p0, Lcom/htc/app/FilePickerActivity$7;->this$0:Lcom/htc/app/FilePickerActivity;

    #getter for: Lcom/htc/app/FilePickerActivity;->mHeaderBar:Lcom/htc/widget/HeaderBarMiddle;
    invoke-static {v0}, Lcom/htc/app/FilePickerActivity;->access$500(Lcom/htc/app/FilePickerActivity;)Lcom/htc/widget/HeaderBarMiddle;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarMiddle;->setFocusable(Z)V

    .line 800
    iget-object v0, p0, Lcom/htc/app/FilePickerActivity$7;->this$0:Lcom/htc/app/FilePickerActivity;

    #getter for: Lcom/htc/app/FilePickerActivity;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/app/FilePickerActivity;->access$900(Lcom/htc/app/FilePickerActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/htc/app/FilePickerActivity$7$1;

    invoke-direct {v1, p0}, Lcom/htc/app/FilePickerActivity$7$1;-><init>(Lcom/htc/app/FilePickerActivity$7;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 817
    :cond_0
    return-void
.end method
