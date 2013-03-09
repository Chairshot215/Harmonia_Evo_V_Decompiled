.class Lcom/htc/android/htcime/util/ContactsDBGenerator$1;
.super Landroid/database/ContentObserver;
.source "ContactsDBGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/htcime/util/ContactsDBGenerator;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/htcime/util/ContactsDBGenerator;


# direct methods
.method constructor <init>(Lcom/htc/android/htcime/util/ContactsDBGenerator;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/htc/android/htcime/util/ContactsDBGenerator$1;->this$0:Lcom/htc/android/htcime/util/ContactsDBGenerator;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .parameter "self"

    .prologue
    const/4 v2, 0x1

    .line 62
    iget-object v0, p0, Lcom/htc/android/htcime/util/ContactsDBGenerator$1;->this$0:Lcom/htc/android/htcime/util/ContactsDBGenerator;

    #getter for: Lcom/htc/android/htcime/util/ContactsDBGenerator;->DEBUG:Z
    invoke-static {v0}, Lcom/htc/android/htcime/util/ContactsDBGenerator;->access$000(Lcom/htc/android/htcime/util/ContactsDBGenerator;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ContactsDBGenerator"

    const-string v1, "name_phone_or_email update 111"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcime/util/ContactsDBGenerator$1;->this$0:Lcom/htc/android/htcime/util/ContactsDBGenerator;

    #getter for: Lcom/htc/android/htcime/util/ContactsDBGenerator;->mRequiresReload:Z
    invoke-static {v0}, Lcom/htc/android/htcime/util/ContactsDBGenerator;->access$100(Lcom/htc/android/htcime/util/ContactsDBGenerator;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 65
    iget-object v0, p0, Lcom/htc/android/htcime/util/ContactsDBGenerator$1;->this$0:Lcom/htc/android/htcime/util/ContactsDBGenerator;

    #setter for: Lcom/htc/android/htcime/util/ContactsDBGenerator;->mRequiresReload:Z
    invoke-static {v0, v2}, Lcom/htc/android/htcime/util/ContactsDBGenerator;->access$102(Lcom/htc/android/htcime/util/ContactsDBGenerator;Z)Z

    .line 66
    iget-object v0, p0, Lcom/htc/android/htcime/util/ContactsDBGenerator$1;->this$0:Lcom/htc/android/htcime/util/ContactsDBGenerator;

    #getter for: Lcom/htc/android/htcime/util/ContactsDBGenerator;->DEBUG:Z
    invoke-static {v0}, Lcom/htc/android/htcime/util/ContactsDBGenerator;->access$000(Lcom/htc/android/htcime/util/ContactsDBGenerator;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ContactsDBGenerator"

    const-string v1, "name_phone_or_email update 222"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :cond_1
    iget-object v0, p0, Lcom/htc/android/htcime/util/ContactsDBGenerator$1;->this$0:Lcom/htc/android/htcime/util/ContactsDBGenerator;

    iget-object v0, v0, Lcom/htc/android/htcime/util/ContactsDBGenerator;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/android/htcime/util/ContactsDBGenerator$1;->this$0:Lcom/htc/android/htcime/util/ContactsDBGenerator;

    iget-object v1, v1, Lcom/htc/android/htcime/util/ContactsDBGenerator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/32 v2, 0x36ee80

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 69
    :cond_2
    return-void
.end method
