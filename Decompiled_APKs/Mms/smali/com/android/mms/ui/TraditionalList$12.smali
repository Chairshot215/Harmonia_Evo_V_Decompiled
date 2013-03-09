.class Lcom/android/mms/ui/TraditionalList$12;
.super Ljava/lang/Object;
.source "TraditionalList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/TraditionalList;->confirmDialog(Landroid/content/DialogInterface$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/TraditionalList;

.field final synthetic val$checkbox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/TraditionalList;Landroid/widget/CheckBox;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2096
    iput-object p1, p0, Lcom/android/mms/ui/TraditionalList$12;->this$0:Lcom/android/mms/ui/TraditionalList;

    iput-object p2, p0, Lcom/android/mms/ui/TraditionalList$12;->val$checkbox:Landroid/widget/CheckBox;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 2099
    iget-object v0, p0, Lcom/android/mms/ui/TraditionalList$12;->this$0:Lcom/android/mms/ui/TraditionalList;

    iget-object v1, p0, Lcom/android/mms/ui/TraditionalList$12;->val$checkbox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    #setter for: Lcom/android/mms/ui/TraditionalList;->mDeleteUnlock:Z
    invoke-static {v0, v1}, Lcom/android/mms/ui/TraditionalList;->access$1302(Lcom/android/mms/ui/TraditionalList;Z)Z

    .line 2100
    return-void
.end method
