.class Lcom/android/phone/SimContacts$1;
.super Landroid/os/Handler;
.source "SimContacts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/SimContacts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/SimContacts;


# direct methods
.method constructor <init>(Lcom/android/phone/SimContacts;)V
    .locals 0
    .parameter

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/phone/SimContacts$1;->this$0:Lcom/android/phone/SimContacts;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 126
    iget v3, p1, Landroid/os/Message;->what:I

    .line 127
    .local v3, what:I
    if-ne v6, v3, :cond_0

    .line 128
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 129
    .local v1, count:I
    iget-object v4, p0, Lcom/android/phone/SimContacts$1;->this$0:Lcom/android/phone/SimContacts;

    const v5, 0x7f0e00a3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Lcom/android/phone/SimContacts;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, complete:Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/android/phone/SimContacts$1;->this$0:Lcom/android/phone/SimContacts;

    invoke-virtual {v4}, Lcom/android/phone/SimContacts;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v0, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 133
    .local v2, resultMsg:Landroid/widget/Toast;
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 135
    .end local v0           #complete:Ljava/lang/CharSequence;
    .end local v1           #count:I
    .end local v2           #resultMsg:Landroid/widget/Toast;
    :cond_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 136
    return-void
.end method
