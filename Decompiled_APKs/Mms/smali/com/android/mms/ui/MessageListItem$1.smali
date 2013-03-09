.class Lcom/android/mms/ui/MessageListItem$1;
.super Ljava/lang/Object;
.source "MessageListItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageListItem;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageListItem;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageListItem;)V
    .locals 0
    .parameter

    .prologue
    .line 146
    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem$1;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    .line 148
    iget-object v6, p0, Lcom/android/mms/ui/MessageListItem$1;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v6}, Lcom/android/mms/ui/MessageListItem;->access$000(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/MessageItem;

    move-result-object v6

    iget-boolean v6, v6, Lcom/android/mms/ui/MessageItem;->bInDelMode:Z

    if-eqz v6, :cond_1

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    iget-object v6, p0, Lcom/android/mms/ui/MessageListItem$1;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v6}, Lcom/android/mms/ui/MessageListItem;->access$000(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/MessageItem;

    move-result-object v6

    iget-boolean v6, v6, Lcom/android/mms/ui/MessageItem;->bInForwardMode:Z

    if-nez v6, :cond_0

    .line 157
    iget-object v6, p0, Lcom/android/mms/ui/MessageListItem$1;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v6}, Lcom/android/mms/ui/MessageListItem;->access$000(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/MessageItem;

    move-result-object v6

    iget-boolean v6, v6, Lcom/android/mms/ui/MessageItem;->bInSimSMSMode:Z

    if-nez v6, :cond_0

    .line 162
    iget-object v6, p0, Lcom/android/mms/ui/MessageListItem$1;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v6}, Lcom/android/mms/ui/MessageListItem;->access$000(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/MessageItem;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/ui/MessageItem;->isIncomingMessage()Z

    move-result v6

    if-nez v6, :cond_2

    .line 163
    iget-object v6, p0, Lcom/android/mms/ui/MessageListItem$1;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/mms/ui/MessageListItem;->access$100(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/mms/ui/MessageUtils;->getViewMyContactCardIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v4

    .line 164
    .local v4, intent:Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/mms/ui/MessageListItem$1;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Lcom/android/mms/ui/MessageListItem;->mCaller:Landroid/app/Activity;
    invoke-static {v6}, Lcom/android/mms/ui/MessageListItem;->access$200(Lcom/android/mms/ui/MessageListItem;)Landroid/app/Activity;

    move-result-object v6

    if-eqz v6, :cond_0

    if-eqz v4, :cond_0

    .line 165
    iget-object v6, p0, Lcom/android/mms/ui/MessageListItem$1;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Lcom/android/mms/ui/MessageListItem;->mCaller:Landroid/app/Activity;
    invoke-static {v6}, Lcom/android/mms/ui/MessageListItem;->access$200(Lcom/android/mms/ui/MessageListItem;)Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 168
    .end local v4           #intent:Landroid/content/Intent;
    :cond_2
    iget-object v6, p0, Lcom/android/mms/ui/MessageListItem$1;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v6}, Lcom/android/mms/ui/MessageListItem;->access$000(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/MessageItem;

    move-result-object v6

    iget-object v0, v6, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    .line 169
    .local v0, address:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/util/ContactNameCache;->getInstance()Lcom/android/mms/util/ContactNameCache;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/ui/MessageListItem$1;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {v7}, Lcom/android/mms/ui/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Lcom/android/mms/util/ContactNameCache;->getPersonalId(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v1

    .line 170
    .local v1, contactId:J
    const-wide/16 v6, -0x1

    cmp-long v6, v1, v6

    if-lez v6, :cond_0

    .line 171
    sget-object v6, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 173
    .local v3, contactUri:Landroid/net/Uri;
    iget-object v6, p0, Lcom/android/mms/ui/MessageListItem$1;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {v6}, Lcom/android/mms/ui/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6, v3}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v5

    .line 175
    .local v5, lookupUri:Landroid/net/Uri;
    if-eqz v5, :cond_0

    .line 176
    iget-object v6, p0, Lcom/android/mms/ui/MessageListItem$1;->this$0:Lcom/android/mms/ui/MessageListItem;

    const v7, 0x7f0e007f

    invoke-virtual {v6, v7}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->performClick()Z

    goto :goto_0
.end method
