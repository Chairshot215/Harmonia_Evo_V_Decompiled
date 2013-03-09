.class Lcom/android/mms/ui/MessageViewActivity$2;
.super Ljava/lang/Object;
.source "MessageViewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageViewActivity;->initLayoutView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageViewActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageViewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 614
    iput-object p1, p0, Lcom/android/mms/ui/MessageViewActivity$2;->this$0:Lcom/android/mms/ui/MessageViewActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 617
    check-cast p1, Landroid/widget/TextView;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/TextView;->getUrls()[Landroid/text/style/URLSpan;

    move-result-object v1

    .line 619
    .local v1, spans:[Landroid/text/style/URLSpan;
    array-length v2, v1

    if-eqz v2, :cond_0

    .line 621
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/mms/ui/MessageViewActivity$2;->this$0:Lcom/android/mms/ui/MessageViewActivity;

    const-class v3, Lcom/android/mms/ui/UrlListActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 622
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "com.android.mms.ExtraUrls"

    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->extractUris([Landroid/text/style/URLSpan;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 623
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 624
    iget-object v2, p0, Lcom/android/mms/ui/MessageViewActivity$2;->this$0:Lcom/android/mms/ui/MessageViewActivity;

    invoke-virtual {v2, v0}, Lcom/android/mms/ui/MessageViewActivity;->startActivity(Landroid/content/Intent;)V

    .line 626
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method
