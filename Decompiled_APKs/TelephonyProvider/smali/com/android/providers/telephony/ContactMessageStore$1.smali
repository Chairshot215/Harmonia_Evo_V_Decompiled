.class Lcom/android/providers/telephony/ContactMessageStore$1;
.super Landroid/database/ContentObserver;
.source "ContactMessageStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/telephony/ContactMessageStore;->regisPeopleURIObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/telephony/ContactMessageStore;


# direct methods
.method constructor <init>(Lcom/android/providers/telephony/ContactMessageStore;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 223
    iput-object p1, p0, Lcom/android/providers/telephony/ContactMessageStore$1;->this$0:Lcom/android/providers/telephony/ContactMessageStore;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .parameter "selfChange"

    .prologue
    const/4 v2, 0x1

    .line 227
    iget-object v1, p0, Lcom/android/providers/telephony/ContactMessageStore$1;->this$0:Lcom/android/providers/telephony/ContactMessageStore;

    #getter for: Lcom/android/providers/telephony/ContactMessageStore;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/providers/telephony/ContactMessageStore;->access$000(Lcom/android/providers/telephony/ContactMessageStore;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 228
    iget-object v1, p0, Lcom/android/providers/telephony/ContactMessageStore$1;->this$0:Lcom/android/providers/telephony/ContactMessageStore;

    #getter for: Lcom/android/providers/telephony/ContactMessageStore;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/providers/telephony/ContactMessageStore;->access$000(Lcom/android/providers/telephony/ContactMessageStore;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 229
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/providers/telephony/ContactMessageStore$1;->this$0:Lcom/android/providers/telephony/ContactMessageStore;

    #getter for: Lcom/android/providers/telephony/ContactMessageStore;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/providers/telephony/ContactMessageStore;->access$000(Lcom/android/providers/telephony/ContactMessageStore;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 231
    return-void
.end method
