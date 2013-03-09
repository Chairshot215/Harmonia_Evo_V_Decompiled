.class Lcom/android/mms/ui/ConversationListBaseActivity$7;
.super Ljava/lang/Object;
.source "ConversationListBaseActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ConversationListBaseActivity;->createAddMessageItem()Landroid/view/View;
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
    .line 2515
    iput-object p1, p0, Lcom/android/mms/ui/ConversationListBaseActivity$7;->this$0:Lcom/android/mms/ui/ConversationListBaseActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 2517
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity$7;->this$0:Lcom/android/mms/ui/ConversationListBaseActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListBaseActivity;->createNewMessage()V

    .line 2518
    return-void
.end method
