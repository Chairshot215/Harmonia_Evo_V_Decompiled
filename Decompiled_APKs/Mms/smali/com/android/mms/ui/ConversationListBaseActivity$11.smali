.class Lcom/android/mms/ui/ConversationListBaseActivity$11;
.super Ljava/lang/Object;
.source "ConversationListBaseActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ConversationListBaseActivity;
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
    .line 3255
    iput-object p1, p0, Lcom/android/mms/ui/ConversationListBaseActivity$11;->this$0:Lcom/android/mms/ui/ConversationListBaseActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 3257
    const-string v0, "ConversationListBaseActivity"

    const-string v1, "CancelDeleting...."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3258
    invoke-static {}, Lcom/android/mms/ui/MultipleDeleteActivity;->CancelDeletion()V

    .line 3259
    invoke-static {}, Lcom/android/mms/ui/DeleteBySelectActivity;->CancelDeletion()V

    .line 3260
    const-string v0, "ConversationListBaseActivity"

    const-string v1, "CancelDeleting done...."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3261
    return-void
.end method
