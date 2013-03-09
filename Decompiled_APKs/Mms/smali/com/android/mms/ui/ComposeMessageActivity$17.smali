.class Lcom/android/mms/ui/ComposeMessageActivity$17;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->initRecipientsEditor()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 5916
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$17;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 5918
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$17;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const/4 v1, 0x0

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->goToSelectContacts(Z)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$9600(Lcom/android/mms/ui/ComposeMessageActivity;Z)V

    .line 5919
    return-void
.end method
