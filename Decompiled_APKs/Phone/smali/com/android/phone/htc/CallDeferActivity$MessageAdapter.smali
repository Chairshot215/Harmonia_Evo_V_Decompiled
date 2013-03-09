.class Lcom/android/phone/htc/CallDeferActivity$MessageAdapter;
.super Landroid/widget/ArrayAdapter;
.source "CallDeferActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/htc/CallDeferActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessageAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/htc/CallDeferActivity;


# direct methods
.method public constructor <init>(Lcom/android/phone/htc/CallDeferActivity;Landroid/content/Context;II[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "resource"
    .parameter "textViewResourceId"
    .parameter "objects"

    .prologue
    .line 777
    iput-object p1, p0, Lcom/android/phone/htc/CallDeferActivity$MessageAdapter;->this$0:Lcom/android/phone/htc/CallDeferActivity;

    .line 778
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 779
    return-void
.end method


# virtual methods
.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 775
    invoke-virtual {p0, p1}, Lcom/android/phone/htc/CallDeferActivity$MessageAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/String;
    .locals 2
    .parameter "position"

    .prologue
    .line 782
    const/4 v0, 0x0

    .line 783
    .local v0, result:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/phone/htc/CallDeferActivity$MessageAdapter;->this$0:Lcom/android/phone/htc/CallDeferActivity;

    #calls: Lcom/android/phone/htc/CallDeferActivity;->getCustomMsgIndex()I
    invoke-static {v1}, Lcom/android/phone/htc/CallDeferActivity;->access$000(Lcom/android/phone/htc/CallDeferActivity;)I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 784
    iget-object v1, p0, Lcom/android/phone/htc/CallDeferActivity$MessageAdapter;->this$0:Lcom/android/phone/htc/CallDeferActivity;

    #getter for: Lcom/android/phone/htc/CallDeferActivity;->mCustomDeferMsg:Ljava/lang/CharSequence;
    invoke-static {v1}, Lcom/android/phone/htc/CallDeferActivity;->access$500(Lcom/android/phone/htc/CallDeferActivity;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 785
    iget-object v1, p0, Lcom/android/phone/htc/CallDeferActivity$MessageAdapter;->this$0:Lcom/android/phone/htc/CallDeferActivity;

    #getter for: Lcom/android/phone/htc/CallDeferActivity;->mCustomDeferMsg:Ljava/lang/CharSequence;
    invoke-static {v1}, Lcom/android/phone/htc/CallDeferActivity;->access$500(Lcom/android/phone/htc/CallDeferActivity;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 789
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 790
    invoke-super {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #result:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 793
    .restart local v0       #result:Ljava/lang/String;
    :cond_1
    return-object v0
.end method
