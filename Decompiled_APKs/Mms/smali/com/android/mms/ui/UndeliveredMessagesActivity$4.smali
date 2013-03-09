.class Lcom/android/mms/ui/UndeliveredMessagesActivity$4;
.super Ljava/lang/Object;
.source "UndeliveredMessagesActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/UndeliveredMessagesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/UndeliveredMessagesActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/UndeliveredMessagesActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 745
    iput-object p1, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity$4;->this$0:Lcom/android/mms/ui/UndeliveredMessagesActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 747
    iget-object v0, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity$4;->this$0:Lcom/android/mms/ui/UndeliveredMessagesActivity;

    iget-object v1, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity$4;->this$0:Lcom/android/mms/ui/UndeliveredMessagesActivity;

    iget-object v2, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity$4;->this$0:Lcom/android/mms/ui/UndeliveredMessagesActivity;

    #getter for: Lcom/android/mms/ui/UndeliveredMessagesActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/android/mms/ui/UndeliveredMessagesActivity;->access$000(Lcom/android/mms/ui/UndeliveredMessagesActivity;)Landroid/database/Cursor;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/UndeliveredMessagesActivity;->deleteMessageByCursor(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 748
    return-void
.end method
