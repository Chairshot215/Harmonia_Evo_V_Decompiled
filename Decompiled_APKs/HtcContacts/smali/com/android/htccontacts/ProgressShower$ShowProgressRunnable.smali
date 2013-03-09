.class Lcom/android/htccontacts/ProgressShower$ShowProgressRunnable;
.super Ljava/lang/Object;
.source "ProgressShower.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ProgressShower;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShowProgressRunnable"
.end annotation


# instance fields
.field private mContact:Lcom/android/vcard/VCardEntry;

.field final synthetic this$0:Lcom/android/htccontacts/ProgressShower;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/ProgressShower;Lcom/android/vcard/VCardEntry;)V
    .locals 0
    .parameter
    .parameter "contact"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/htccontacts/ProgressShower$ShowProgressRunnable;->this$0:Lcom/android/htccontacts/ProgressShower;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p2, p0, Lcom/android/htccontacts/ProgressShower$ShowProgressRunnable;->mContact:Lcom/android/vcard/VCardEntry;

    .line 43
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/htccontacts/ProgressShower$ShowProgressRunnable;->this$0:Lcom/android/htccontacts/ProgressShower;

    #getter for: Lcom/android/htccontacts/ProgressShower;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v0}, Lcom/android/htccontacts/ProgressShower;->access$100(Lcom/android/htccontacts/ProgressShower;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/htccontacts/ProgressShower$ShowProgressRunnable;->this$0:Lcom/android/htccontacts/ProgressShower;

    #getter for: Lcom/android/htccontacts/ProgressShower;->mProgressMessage:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/htccontacts/ProgressShower;->access$000(Lcom/android/htccontacts/ProgressShower;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/htccontacts/ProgressShower$ShowProgressRunnable;->mContact:Lcom/android/vcard/VCardEntry;

    invoke-virtual {v2}, Lcom/android/vcard/VCardEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 48
    iget-object v0, p0, Lcom/android/htccontacts/ProgressShower$ShowProgressRunnable;->this$0:Lcom/android/htccontacts/ProgressShower;

    #getter for: Lcom/android/htccontacts/ProgressShower;->mDisableIncrementProgress:Z
    invoke-static {v0}, Lcom/android/htccontacts/ProgressShower;->access$200(Lcom/android/htccontacts/ProgressShower;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/android/htccontacts/ProgressShower$ShowProgressRunnable;->this$0:Lcom/android/htccontacts/ProgressShower;

    #getter for: Lcom/android/htccontacts/ProgressShower;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v0}, Lcom/android/htccontacts/ProgressShower;->access$100(Lcom/android/htccontacts/ProgressShower;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->incrementProgressBy(I)V

    .line 51
    :cond_0
    return-void
.end method
