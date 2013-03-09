.class Lcom/android/htccontacts/ui/EditContactActivity2$2;
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
    .line 388
    iput-object p1, p0, Lcom/android/htccontacts/ui/EditContactActivity2$2;->this$0:Lcom/android/htccontacts/ui/EditContactActivity2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 390
    iget-object v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2$2;->this$0:Lcom/android/htccontacts/ui/EditContactActivity2;

    #calls: Lcom/android/htccontacts/ui/EditContactActivity2;->isPhotoEditable()Z
    invoke-static {v0}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$100(Lcom/android/htccontacts/ui/EditContactActivity2;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2$2;->this$0:Lcom/android/htccontacts/ui/EditContactActivity2;

    #calls: Lcom/android/htccontacts/ui/EditContactActivity2;->pickPhoto()V
    invoke-static {v0}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$200(Lcom/android/htccontacts/ui/EditContactActivity2;)V

    .line 392
    :cond_0
    return-void
.end method
