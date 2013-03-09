.class Lcom/android/htccontacts/HtcViewContactDetailActivity$10;
.super Ljava/lang/Object;
.source "HtcViewContactDetailActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/HtcViewContactDetailActivity;->createTmoImChatDialog(Ljava/util/ArrayList;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/HtcViewContactDetailActivity;

.field final synthetic val$tmoImChatData:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/HtcViewContactDetailActivity;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4285
    iput-object p1, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity$10;->this$0:Lcom/android/htccontacts/HtcViewContactDetailActivity;

    iput-object p2, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity$10;->val$tmoImChatData:Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 4288
    iget-object v2, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity$10;->val$tmoImChatData:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/htccontacts/util/ImData;

    invoke-virtual {v2}, Lcom/android/htccontacts/util/ImData;->getIntentIm()Landroid/content/Intent;

    move-result-object v1

    .line 4289
    .local v1, intent:Landroid/content/Intent;
    if-nez v1, :cond_0

    .line 4295
    :goto_0
    return-void

    .line 4291
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity$10;->this$0:Lcom/android/htccontacts/HtcViewContactDetailActivity;

    invoke-virtual {v2, v1}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4292
    :catch_0
    move-exception v0

    .line 4293
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v2, "HtcViewContactDetailActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createTmoImChatDialog No activity found for intent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
