.class Lcom/android/mms/ui/ConversationListBaseActivity$2;
.super Ljava/lang/Object;
.source "ConversationListBaseActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ConversationListBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ConversationListBaseActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationListBaseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1181
    iput-object p1, p0, Lcom/android/mms/ui/ConversationListBaseActivity$2;->this$0:Lcom/android/mms/ui/ConversationListBaseActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1184
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity$2;->this$0:Lcom/android/mms/ui/ConversationListBaseActivity;

    #calls: Lcom/android/mms/ui/ConversationListBaseActivity;->updateTextSize(I)V
    invoke-static {v0, p2}, Lcom/android/mms/ui/ConversationListBaseActivity;->access$000(Lcom/android/mms/ui/ConversationListBaseActivity;I)V

    .line 1186
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity$2;->this$0:Lcom/android/mms/ui/ConversationListBaseActivity;

    rsub-int/lit8 v1, p2, 0x4

    add-int/lit8 v1, v1, 0x0

    #calls: Lcom/android/mms/ui/ConversationListBaseActivity;->setTextLevel(I)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/ConversationListBaseActivity;->access$100(Lcom/android/mms/ui/ConversationListBaseActivity;I)V

    .line 1187
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity$2;->this$0:Lcom/android/mms/ui/ConversationListBaseActivity;

    #calls: Lcom/android/mms/ui/ConversationListBaseActivity;->updateResource()V
    invoke-static {v0}, Lcom/android/mms/ui/ConversationListBaseActivity;->access$200(Lcom/android/mms/ui/ConversationListBaseActivity;)V

    .line 1189
    invoke-static {p2}, Lcom/android/mms/ui/ConversationListBaseActivity;->access$302(I)I

    .line 1190
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1191
    return-void
.end method
