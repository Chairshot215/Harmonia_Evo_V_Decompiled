.class Lcom/android/mms/ui/ComposeMessageActivity$90;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->cancelNotificationByThreadIds(J)V
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
    .line 16105
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$90;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/16 v1, 0x25e2

    const/4 v4, 0x0

    .line 16107
    const-string v0, "content://mms-sms-v2/get-threadID-from-contactID"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 16108
    .local v8, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$90;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListQueryHandler:Lcom/android/mms/ui/ComposeMessageActivity$MsgListQueryHandler;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$4700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/ComposeMessageActivity$MsgListQueryHandler;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity$MsgListQueryHandler;->cancelOperation(I)V

    .line 16110
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$90;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListQueryHandler:Lcom/android/mms/ui/ComposeMessageActivity$MsgListQueryHandler;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$4700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/ComposeMessageActivity$MsgListQueryHandler;

    move-result-object v0

    new-instance v2, Ljava/lang/Boolean;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/lang/Boolean;-><init>(Z)V

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$90;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mThreadId:J
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$7300(Lcom/android/mms/ui/ComposeMessageActivity;)J

    move-result-wide v5

    invoke-static {v8, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Lcom/android/mms/ui/ComposeMessageActivity$MsgListQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 16114
    return-void
.end method
