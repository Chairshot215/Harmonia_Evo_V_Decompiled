.class Lcom/google/android/talk/GroupChatApproval$2;
.super Ljava/lang/Object;
.source "GroupChatApproval.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/GroupChatApproval;->makeDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/GroupChatApproval;


# direct methods
.method constructor <init>(Lcom/google/android/talk/GroupChatApproval;)V
    .locals 0
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/google/android/talk/GroupChatApproval$2;->this$0:Lcom/google/android/talk/GroupChatApproval;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/android/talk/GroupChatApproval$2;->this$0:Lcom/google/android/talk/GroupChatApproval;

    invoke-virtual {v0}, Lcom/google/android/talk/GroupChatApproval;->finish()V

    .line 98
    return-void
.end method
