.class Lcom/android/mms/ui/ConversationListBaseActivity$6;
.super Ljava/lang/Object;
.source "ConversationListBaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ConversationListBaseActivity;->addCallandSaveToPeopleContextMenu(Landroid/view/ContextMenu;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ConversationListBaseActivity;

.field final synthetic val$menu:Landroid/view/ContextMenu;

.field final synthetic val$person_id:J


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationListBaseActivity;JLandroid/view/ContextMenu;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1552
    iput-object p1, p0, Lcom/android/mms/ui/ConversationListBaseActivity$6;->this$0:Lcom/android/mms/ui/ConversationListBaseActivity;

    iput-wide p2, p0, Lcom/android/mms/ui/ConversationListBaseActivity$6;->val$person_id:J

    iput-object p4, p0, Lcom/android/mms/ui/ConversationListBaseActivity$6;->val$menu:Landroid/view/ContextMenu;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1554
    iget-wide v2, p0, Lcom/android/mms/ui/ConversationListBaseActivity$6;->val$person_id:J

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/mms/ui/ConversationListBaseActivity$6;->this$0:Lcom/android/mms/ui/ConversationListBaseActivity;

    invoke-virtual {v5}, Lcom/android/mms/ui/ConversationListBaseActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Landroid/provider/HtcContactsContract$ThumbnailsSequence;->loadContactThumbnail(JLandroid/graphics/BitmapFactory$Options;Landroid/content/ContentResolver;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1557
    .local v0, bm:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 1558
    .local v1, msg:Landroid/os/Message;
    if-eqz v0, :cond_0

    const/4 v2, 0x4

    :goto_0
    iput v2, v1, Landroid/os/Message;->what:I

    .line 1559
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListBaseActivity$6;->val$menu:Landroid/view/ContextMenu;

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1560
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListBaseActivity$6;->this$0:Lcom/android/mms/ui/ConversationListBaseActivity;

    iget-object v2, v2, Lcom/android/mms/ui/ConversationListBaseActivity;->mUIHandler:Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;

    invoke-virtual {v2, v1}, Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1561
    return-void

    .line 1558
    :cond_0
    const/4 v2, 0x5

    goto :goto_0
.end method
