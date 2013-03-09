.class Lcom/android/mms/ui/MessageViewActivity$9;
.super Ljava/lang/Object;
.source "MessageViewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageViewActivity;->addMediaView(Lcom/android/mms/model/MediaModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageViewActivity;

.field final synthetic val$media:Lcom/android/mms/model/MediaModel;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageViewActivity;Lcom/android/mms/model/MediaModel;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1469
    iput-object p1, p0, Lcom/android/mms/ui/MessageViewActivity$9;->this$0:Lcom/android/mms/ui/MessageViewActivity;

    iput-object p2, p0, Lcom/android/mms/ui/MessageViewActivity$9;->val$media:Lcom/android/mms/model/MediaModel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 1472
    iget-object v0, p0, Lcom/android/mms/ui/MessageViewActivity$9;->this$0:Lcom/android/mms/ui/MessageViewActivity;

    const/16 v1, 0x65

    iget-object v2, p0, Lcom/android/mms/ui/MessageViewActivity$9;->val$media:Lcom/android/mms/model/MediaModel;

    #calls: Lcom/android/mms/ui/MessageViewActivity;->onClickHandler(ILcom/android/mms/model/MediaModel;)V
    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/MessageViewActivity;->access$600(Lcom/android/mms/ui/MessageViewActivity;ILcom/android/mms/model/MediaModel;)V

    .line 1473
    return-void
.end method
