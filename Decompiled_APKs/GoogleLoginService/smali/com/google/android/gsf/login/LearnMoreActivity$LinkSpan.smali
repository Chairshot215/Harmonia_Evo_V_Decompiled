.class Lcom/google/android/gsf/login/LearnMoreActivity$LinkSpan;
.super Landroid/text/style/ClickableSpan;
.source "LearnMoreActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/login/LearnMoreActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LinkSpan"
.end annotation


# instance fields
.field private mMsgId:I

.field private mParent:Lcom/google/android/gsf/login/BaseActivity;

.field private mTitleId:I


# direct methods
.method constructor <init>(Lcom/google/android/gsf/login/BaseActivity;II)V
    .locals 0
    .parameter "parent"
    .parameter "titleId"
    .parameter "msgId"

    .prologue
    .line 82
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/google/android/gsf/login/LearnMoreActivity$LinkSpan;->mParent:Lcom/google/android/gsf/login/BaseActivity;

    .line 84
    iput p2, p0, Lcom/google/android/gsf/login/LearnMoreActivity$LinkSpan;->mTitleId:I

    .line 85
    iput p3, p0, Lcom/google/android/gsf/login/LearnMoreActivity$LinkSpan;->mMsgId:I

    .line 86
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "widget"

    .prologue
    .line 89
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/gsf/login/LearnMoreActivity$LinkSpan;->mParent:Lcom/google/android/gsf/login/BaseActivity;

    const-class v2, Lcom/google/android/gsf/login/LearnMoreActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 90
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "title_id"

    iget v2, p0, Lcom/google/android/gsf/login/LearnMoreActivity$LinkSpan;->mTitleId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 91
    const-string v1, "msg_id"

    iget v2, p0, Lcom/google/android/gsf/login/LearnMoreActivity$LinkSpan;->mMsgId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 92
    iget-object v1, p0, Lcom/google/android/gsf/login/LearnMoreActivity$LinkSpan;->mParent:Lcom/google/android/gsf/login/BaseActivity;

    invoke-virtual {v1, v0}, Lcom/google/android/gsf/login/BaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 93
    return-void
.end method
