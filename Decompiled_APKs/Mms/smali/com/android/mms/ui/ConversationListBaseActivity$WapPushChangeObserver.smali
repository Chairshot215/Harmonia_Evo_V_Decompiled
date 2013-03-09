.class Lcom/android/mms/ui/ConversationListBaseActivity$WapPushChangeObserver;
.super Landroid/database/ContentObserver;
.source "ConversationListBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ConversationListBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WapPushChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ConversationListBaseActivity;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/ConversationListBaseActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 3022
    iput-object p1, p0, Lcom/android/mms/ui/ConversationListBaseActivity$WapPushChangeObserver;->this$0:Lcom/android/mms/ui/ConversationListBaseActivity;

    .line 3023
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 3024
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 3028
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity$WapPushChangeObserver;->this$0:Lcom/android/mms/ui/ConversationListBaseActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListBaseActivity;->updateShowWapPushMenuItem()V

    .line 3029
    return-void
.end method
