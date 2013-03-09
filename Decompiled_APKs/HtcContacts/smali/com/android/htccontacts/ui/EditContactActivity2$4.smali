.class Lcom/android/htccontacts/ui/EditContactActivity2$4;
.super Ljava/lang/Object;
.source "EditContactActivity2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/ui/EditContactActivity2;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/ui/EditContactActivity2;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/ui/EditContactActivity2;)V
    .locals 0
    .parameter

    .prologue
    .line 412
    iput-object p1, p0, Lcom/android/htccontacts/ui/EditContactActivity2$4;->this$0:Lcom/android/htccontacts/ui/EditContactActivity2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 414
    iget-object v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2$4;->this$0:Lcom/android/htccontacts/ui/EditContactActivity2;

    #calls: Lcom/android/htccontacts/ui/EditContactActivity2;->doSaveAction()Z
    invoke-static {v0}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$400(Lcom/android/htccontacts/ui/EditContactActivity2;)Z

    .line 415
    return-void
.end method
