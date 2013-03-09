.class Lcom/android/mms/ui/SearchResultActivity$3;
.super Landroid/os/Handler;
.source "SearchResultActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SearchResultActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SearchResultActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SearchResultActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 465
    iput-object p1, p0, Lcom/android/mms/ui/SearchResultActivity$3;->this$0:Lcom/android/mms/ui/SearchResultActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 468
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 474
    :cond_0
    :goto_0
    return-void

    .line 470
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/SearchResultActivity$3;->this$0:Lcom/android/mms/ui/SearchResultActivity;

    #getter for: Lcom/android/mms/ui/SearchResultActivity;->mListAdapter:Lcom/android/mms/ui/SearchResultListAdapter;
    invoke-static {v0}, Lcom/android/mms/ui/SearchResultActivity;->access$400(Lcom/android/mms/ui/SearchResultActivity;)Lcom/android/mms/ui/SearchResultListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 471
    iget-object v0, p0, Lcom/android/mms/ui/SearchResultActivity$3;->this$0:Lcom/android/mms/ui/SearchResultActivity;

    #getter for: Lcom/android/mms/ui/SearchResultActivity;->mListAdapter:Lcom/android/mms/ui/SearchResultListAdapter;
    invoke-static {v0}, Lcom/android/mms/ui/SearchResultActivity;->access$400(Lcom/android/mms/ui/SearchResultActivity;)Lcom/android/mms/ui/SearchResultListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/SearchResultListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 468
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
