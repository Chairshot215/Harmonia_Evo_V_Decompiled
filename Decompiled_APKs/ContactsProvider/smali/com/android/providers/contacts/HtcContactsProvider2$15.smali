.class Lcom/android/providers/contacts/HtcContactsProvider2$15;
.super Ljava/lang/Object;
.source "HtcContactsProvider2.java"

# interfaces
.implements Lcom/android/providers/contacts/RefineRigntoneUriReceiver$OnUpdateReadyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/contacts/HtcContactsProvider2;->processRingtoneUriUpdate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/contacts/HtcContactsProvider2;


# direct methods
.method constructor <init>(Lcom/android/providers/contacts/HtcContactsProvider2;)V
    .locals 0
    .parameter

    .prologue
    .line 18560
    iput-object p1, p0, Lcom/android/providers/contacts/HtcContactsProvider2$15;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdateReady()V
    .locals 3

    .prologue
    const/16 v2, 0x38

    .line 18564
    iget-object v0, p0, Lcom/android/providers/contacts/HtcContactsProvider2$15;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    #getter for: Lcom/android/providers/contacts/HtcContactsProvider2;->hasProcessGoing:Z
    invoke-static {v0}, Lcom/android/providers/contacts/HtcContactsProvider2;->access$5200(Lcom/android/providers/contacts/HtcContactsProvider2;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18588
    :goto_0
    return-void

    .line 18571
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/HtcContactsProvider2$15;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    const/4 v1, 0x1

    #setter for: Lcom/android/providers/contacts/HtcContactsProvider2;->hasProcessGoing:Z
    invoke-static {v0, v1}, Lcom/android/providers/contacts/HtcContactsProvider2;->access$5202(Lcom/android/providers/contacts/HtcContactsProvider2;Z)Z

    .line 18572
    iget-object v0, p0, Lcom/android/providers/contacts/HtcContactsProvider2$15;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    invoke-virtual {v0, v2}, Lcom/android/providers/contacts/HtcContactsProvider2;->removeBackgroundTask(I)V

    .line 18573
    iget-object v0, p0, Lcom/android/providers/contacts/HtcContactsProvider2$15;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    invoke-virtual {v0, v2}, Lcom/android/providers/contacts/HtcContactsProvider2;->scheduleBackgroundTask(I)V

    goto :goto_0
.end method
