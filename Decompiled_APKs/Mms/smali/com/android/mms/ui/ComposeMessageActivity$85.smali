.class Lcom/android/mms/ui/ComposeMessageActivity$85;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageActivity;
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
    .line 15075
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$85;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 15077
    if-eqz p2, :cond_0

    .line 15079
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSMS2Email()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 15083
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$85;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientList:Lcom/android/mms/ui/RecipientList;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2200(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/RecipientList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/RecipientList;->getToNumbers()[Ljava/lang/String;

    move-result-object v1

    .line 15085
    .local v1, dests:[Ljava/lang/String;
    array-length v2, v1

    if-lez v2, :cond_0

    .line 15086
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$85;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v2, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->getLongestEmailFromArray([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 15087
    .local v0, addr:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 15088
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$85;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMsgTextEditor:Lcom/android/mms/ui/MessageTextEditor;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageTextEditor;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/mms/ui/MessageTextEditor;->updateEmailString(Ljava/lang/String;)V

    .line 15095
    .end local v0           #addr:Ljava/lang/String;
    .end local v1           #dests:[Ljava/lang/String;
    :cond_0
    return-void
.end method
