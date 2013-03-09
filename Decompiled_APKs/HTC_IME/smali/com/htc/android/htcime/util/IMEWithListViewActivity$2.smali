.class Lcom/htc/android/htcime/util/IMEWithListViewActivity$2;
.super Ljava/lang/Object;
.source "IMEWithListViewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/htcime/util/IMEWithListViewActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/htcime/util/IMEWithListViewActivity;


# direct methods
.method constructor <init>(Lcom/htc/android/htcime/util/IMEWithListViewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/htc/android/htcime/util/IMEWithListViewActivity$2;->this$0:Lcom/htc/android/htcime/util/IMEWithListViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/htc/android/htcime/util/IMEWithListViewActivity$2;->this$0:Lcom/htc/android/htcime/util/IMEWithListViewActivity;

    invoke-virtual {v0}, Lcom/htc/android/htcime/util/IMEWithListViewActivity;->leftCmdBtnAction()V

    .line 85
    return-void
.end method
