.class Lcom/android/htccontacts/link/MergeContactReceiver$1;
.super Landroid/os/Handler;
.source "MergeContactReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/link/MergeContactReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/link/MergeContactReceiver;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/link/MergeContactReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/htccontacts/link/MergeContactReceiver$1;->this$0:Lcom/android/htccontacts/link/MergeContactReceiver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 80
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 82
    :pswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/htccontacts/util/LinkUtils$ReturnSuggests;

    .line 83
    .local v2, result:Lcom/android/htccontacts/util/LinkUtils$ReturnSuggests;
    iget-object v0, v2, Lcom/android/htccontacts/util/LinkUtils$ReturnSuggests;->mInnerContext:Landroid/content/Context;

    .line 85
    .local v0, context:Landroid/content/Context;
    const-string v3, "notification"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 87
    .local v1, nm:Landroid/app/NotificationManager;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/app/NotificationManager;->cancel(I)V

    .line 89
    iget-object v3, p0, Lcom/android/htccontacts/link/MergeContactReceiver$1;->this$0:Lcom/android/htccontacts/link/MergeContactReceiver;

    #getter for: Lcom/android/htccontacts/link/MergeContactReceiver;->isManullyLinked:Z
    invoke-static {v3}, Lcom/android/htccontacts/link/MergeContactReceiver;->access$000(Lcom/android/htccontacts/link/MergeContactReceiver;)Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz v2, :cond_0

    iget v3, v2, Lcom/android/htccontacts/util/LinkUtils$ReturnSuggests;->mCount:I

    if-lez v3, :cond_0

    iget-object v3, v2, Lcom/android/htccontacts/util/LinkUtils$ReturnSuggests;->mContactsHasSuggest:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 90
    :cond_1
    iget-object v3, p0, Lcom/android/htccontacts/link/MergeContactReceiver$1;->this$0:Lcom/android/htccontacts/link/MergeContactReceiver;

    #calls: Lcom/android/htccontacts/link/MergeContactReceiver;->nofityFoundSuggest(Landroid/content/Context;Lcom/android/htccontacts/util/LinkUtils$ReturnSuggests;)V
    invoke-static {v3, v0, v2}, Lcom/android/htccontacts/link/MergeContactReceiver;->access$100(Lcom/android/htccontacts/link/MergeContactReceiver;Landroid/content/Context;Lcom/android/htccontacts/util/LinkUtils$ReturnSuggests;)V

    goto :goto_0

    .line 80
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
