.class Lcom/htc/android/mail/ReadScreen$24;
.super Ljava/lang/Object;
.source "ReadScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/ReadScreen;->updatePhotoThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/ReadScreen;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/ReadScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 3011
    iput-object p1, p0, Lcom/htc/android/mail/ReadScreen$24;->this$0:Lcom/htc/android/mail/ReadScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3013
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen$24;->this$0:Lcom/htc/android/mail/ReadScreen;

    #getter for: Lcom/htc/android/mail/ReadScreen;->mSenderRecpt:Lcom/htc/android/mail/ReceiverList;
    invoke-static {v0}, Lcom/htc/android/mail/ReadScreen;->access$2700(Lcom/htc/android/mail/ReadScreen;)Lcom/htc/android/mail/ReceiverList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen$24;->this$0:Lcom/htc/android/mail/ReadScreen;

    #getter for: Lcom/htc/android/mail/ReadScreen;->mSenderRecpt:Lcom/htc/android/mail/ReceiverList;
    invoke-static {v0}, Lcom/htc/android/mail/ReadScreen;->access$2700(Lcom/htc/android/mail/ReadScreen;)Lcom/htc/android/mail/ReceiverList;

    move-result-object v0

    iget-wide v0, v0, Lcom/htc/android/mail/ReceiverList;->contactId:J

    invoke-static {v0, v1}, Landroid/provider/ContactsContract;->isProfileId(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3014
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen$24;->this$0:Lcom/htc/android/mail/ReadScreen;

    #calls: Lcom/htc/android/mail/ReadScreen;->updateProfilePhoto()V
    invoke-static {v0}, Lcom/htc/android/mail/ReadScreen;->access$3700(Lcom/htc/android/mail/ReadScreen;)V

    .line 3018
    :goto_0
    return-void

    .line 3016
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen$24;->this$0:Lcom/htc/android/mail/ReadScreen;

    #calls: Lcom/htc/android/mail/ReadScreen;->updateContactPhoto()V
    invoke-static {v0}, Lcom/htc/android/mail/ReadScreen;->access$3800(Lcom/htc/android/mail/ReadScreen;)V

    goto :goto_0
.end method
