.class Lcom/google/android/talk/GroupChatInviteeList$2;
.super Ljava/lang/Object;
.source "GroupChatInviteeList.java"

# interfaces
.implements Lcom/google/android/talk/fragments/GroupChatInviteeListFragment$Controller;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/GroupChatInviteeList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/GroupChatInviteeList;


# direct methods
.method constructor <init>(Lcom/google/android/talk/GroupChatInviteeList;)V
    .locals 0
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/google/android/talk/GroupChatInviteeList$2;->this$0:Lcom/google/android/talk/GroupChatInviteeList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInviteePicked(Ljava/lang/String;)V
    .locals 5
    .parameter "username"

    .prologue
    .line 133
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 134
    .local v0, ret:Landroid/os/Bundle;
    const-string v1, "invitee"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iget-object v1, p0, Lcom/google/android/talk/GroupChatInviteeList$2;->this$0:Lcom/google/android/talk/GroupChatInviteeList;

    const/4 v2, -0x1

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    iget-object v4, p0, Lcom/google/android/talk/GroupChatInviteeList$2;->this$0:Lcom/google/android/talk/GroupChatInviteeList;

    invoke-virtual {v4}, Lcom/google/android/talk/GroupChatInviteeList;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/talk/GroupChatInviteeList;->setResult(ILandroid/content/Intent;)V

    .line 136
    iget-object v1, p0, Lcom/google/android/talk/GroupChatInviteeList$2;->this$0:Lcom/google/android/talk/GroupChatInviteeList;

    invoke-virtual {v1}, Lcom/google/android/talk/GroupChatInviteeList;->finish()V

    .line 137
    return-void
.end method
