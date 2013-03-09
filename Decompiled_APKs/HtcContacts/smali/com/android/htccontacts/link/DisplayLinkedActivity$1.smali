.class Lcom/android/htccontacts/link/DisplayLinkedActivity$1;
.super Ljava/lang/Object;
.source "DisplayLinkedActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/link/DisplayLinkedActivity;->setListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/link/DisplayLinkedActivity;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/link/DisplayLinkedActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 347
    iput-object p1, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity$1;->this$0:Lcom/android/htccontacts/link/DisplayLinkedActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 349
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity$1;->this$0:Lcom/android/htccontacts/link/DisplayLinkedActivity;

    const/4 v1, 0x1

    #setter for: Lcom/android/htccontacts/link/DisplayLinkedActivity;->isOK:Z
    invoke-static {v0, v1}, Lcom/android/htccontacts/link/DisplayLinkedActivity;->access$002(Lcom/android/htccontacts/link/DisplayLinkedActivity;Z)Z

    .line 350
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity$1;->this$0:Lcom/android/htccontacts/link/DisplayLinkedActivity;

    #calls: Lcom/android/htccontacts/link/DisplayLinkedActivity;->doSaveAction()V
    invoke-static {v0}, Lcom/android/htccontacts/link/DisplayLinkedActivity;->access$100(Lcom/android/htccontacts/link/DisplayLinkedActivity;)V

    .line 352
    return-void
.end method
