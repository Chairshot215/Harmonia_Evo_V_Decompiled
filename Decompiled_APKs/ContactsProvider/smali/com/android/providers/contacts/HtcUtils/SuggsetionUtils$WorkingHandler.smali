.class Lcom/android/providers/contacts/HtcUtils/SuggsetionUtils$WorkingHandler;
.super Landroid/os/Handler;
.source "SuggsetionUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/HtcUtils/SuggsetionUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkingHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/contacts/HtcUtils/SuggsetionUtils;


# direct methods
.method public constructor <init>(Lcom/android/providers/contacts/HtcUtils/SuggsetionUtils;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 148
    iput-object p1, p0, Lcom/android/providers/contacts/HtcUtils/SuggsetionUtils$WorkingHandler;->this$0:Lcom/android/providers/contacts/HtcUtils/SuggsetionUtils;

    .line 149
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 150
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 154
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 156
    :pswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 157
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    .line 158
    .local v0, RawContacts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/android/providers/contacts/HtcUtils/SuggsetionUtils$WorkingHandler;->this$0:Lcom/android/providers/contacts/HtcUtils/SuggsetionUtils;

    #calls: Lcom/android/providers/contacts/HtcUtils/SuggsetionUtils;->updateSuggestForContactsList(Ljava/util/ArrayList;)V
    invoke-static {v2, v0}, Lcom/android/providers/contacts/HtcUtils/SuggsetionUtils;->access$000(Lcom/android/providers/contacts/HtcUtils/SuggsetionUtils;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 163
    .end local v0           #RawContacts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_1
    iget-object v2, p0, Lcom/android/providers/contacts/HtcUtils/SuggsetionUtils$WorkingHandler;->this$0:Lcom/android/providers/contacts/HtcUtils/SuggsetionUtils;

    #calls: Lcom/android/providers/contacts/HtcUtils/SuggsetionUtils;->queryContactNeedToDoSuggestion()V
    invoke-static {v2}, Lcom/android/providers/contacts/HtcUtils/SuggsetionUtils;->access$100(Lcom/android/providers/contacts/HtcUtils/SuggsetionUtils;)V

    goto :goto_0

    .line 167
    :pswitch_2
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CONTACT_MERGE_COMPLETE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 169
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/providers/contacts/HtcUtils/SuggsetionUtils$WorkingHandler;->this$0:Lcom/android/providers/contacts/HtcUtils/SuggsetionUtils;

    #getter for: Lcom/android/providers/contacts/HtcUtils/SuggsetionUtils;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/providers/contacts/HtcUtils/SuggsetionUtils;->access$200(Lcom/android/providers/contacts/HtcUtils/SuggsetionUtils;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 154
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
