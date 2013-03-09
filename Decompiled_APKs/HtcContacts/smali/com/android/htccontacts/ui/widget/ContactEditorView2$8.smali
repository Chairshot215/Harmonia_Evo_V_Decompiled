.class Lcom/android/htccontacts/ui/widget/ContactEditorView2$8;
.super Ljava/lang/Object;
.source "ContactEditorView2.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/ui/widget/ContactEditorView2;->addNickname()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/ui/widget/ContactEditorView2;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/ui/widget/ContactEditorView2;)V
    .locals 0
    .parameter

    .prologue
    .line 1515
    iput-object p1, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2$8;->this$0:Lcom/android/htccontacts/ui/widget/ContactEditorView2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1517
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2$8;->this$0:Lcom/android/htccontacts/ui/widget/ContactEditorView2;

    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2$8;->this$0:Lcom/android/htccontacts/ui/widget/ContactEditorView2;

    #getter for: Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mKindSectionContainerNickname:Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;
    invoke-static {v1}, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->access$1000(Lcom/android/htccontacts/ui/widget/ContactEditorView2;)Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;

    move-result-object v1

    #calls: Lcom/android/htccontacts/ui/widget/ContactEditorView2;->inserNewEmpty(Landroid/view/ViewGroup;I)V
    invoke-static {v0, v1, p2}, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->access$300(Lcom/android/htccontacts/ui/widget/ContactEditorView2;Landroid/view/ViewGroup;I)V

    .line 1518
    return-void
.end method
