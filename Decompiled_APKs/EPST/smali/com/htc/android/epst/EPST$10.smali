.class Lcom/htc/android/epst/EPST$10;
.super Ljava/lang/Object;
.source "EPST.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/epst/EPST;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/epst/EPST;


# direct methods
.method constructor <init>(Lcom/htc/android/epst/EPST;)V
    .locals 0
    .parameter

    .prologue
    .line 570
    iput-object p1, p0, Lcom/htc/android/epst/EPST$10;->this$0:Lcom/htc/android/epst/EPST;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 572
    invoke-static {}, Lcom/htc/android/epst/EPST;->access$700()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/android/epst/EPST$10;->this$0:Lcom/htc/android/epst/EPST;

    const v2, 0x7f04000a

    invoke-virtual {v1, v2}, Lcom/htc/android/epst/EPST;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 573
    iget-object v0, p0, Lcom/htc/android/epst/EPST$10;->this$0:Lcom/htc/android/epst/EPST;

    const/4 v1, 0x1

    #calls: Lcom/htc/android/epst/EPST;->startSettingUI(I)V
    invoke-static {v0, v1}, Lcom/htc/android/epst/EPST;->access$400(Lcom/htc/android/epst/EPST;I)V

    .line 585
    :goto_0
    return-void

    .line 575
    :cond_0
    new-instance v0, Lcom/htc/android/epst/EPST$10$1;

    invoke-direct {v0, p0}, Lcom/htc/android/epst/EPST$10$1;-><init>(Lcom/htc/android/epst/EPST$10;)V

    invoke-virtual {v0}, Lcom/htc/android/epst/EPST$10$1;->start()V

    goto :goto_0
.end method
