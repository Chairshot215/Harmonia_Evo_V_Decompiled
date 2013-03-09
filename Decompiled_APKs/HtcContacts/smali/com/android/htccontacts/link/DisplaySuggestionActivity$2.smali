.class Lcom/android/htccontacts/link/DisplaySuggestionActivity$2;
.super Ljava/lang/Object;
.source "DisplaySuggestionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/link/DisplaySuggestionActivity;->setListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/link/DisplaySuggestionActivity;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/link/DisplaySuggestionActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 384
    iput-object p1, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity$2;->this$0:Lcom/android/htccontacts/link/DisplaySuggestionActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 386
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity$2;->this$0:Lcom/android/htccontacts/link/DisplaySuggestionActivity;

    const/4 v1, 0x1

    #setter for: Lcom/android/htccontacts/link/DisplaySuggestionActivity;->isOK:Z
    invoke-static {v0, v1}, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->access$202(Lcom/android/htccontacts/link/DisplaySuggestionActivity;Z)Z

    .line 387
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity$2;->this$0:Lcom/android/htccontacts/link/DisplaySuggestionActivity;

    #calls: Lcom/android/htccontacts/link/DisplaySuggestionActivity;->doSaveAction()V
    invoke-static {v0}, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->access$300(Lcom/android/htccontacts/link/DisplaySuggestionActivity;)V

    .line 389
    return-void
.end method
