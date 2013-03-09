.class Lcom/google/android/talk/GroupChatInviteeList$1;
.super Ljava/lang/Object;
.source "GroupChatInviteeList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/GroupChatInviteeList;->onCreate(Landroid/os/Bundle;)V
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
    .line 58
    iput-object p1, p0, Lcom/google/android/talk/GroupChatInviteeList$1;->this$0:Lcom/google/android/talk/GroupChatInviteeList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/talk/GroupChatInviteeList$1;->this$0:Lcom/google/android/talk/GroupChatInviteeList;

    invoke-virtual {v0}, Lcom/google/android/talk/GroupChatInviteeList;->finish()V

    .line 61
    return-void
.end method
