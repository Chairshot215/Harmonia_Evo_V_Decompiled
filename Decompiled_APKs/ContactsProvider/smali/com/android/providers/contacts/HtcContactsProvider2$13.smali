.class Lcom/android/providers/contacts/HtcContactsProvider2$13;
.super Ljava/lang/Object;
.source "HtcContactsProvider2.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/contacts/HtcContactsProvider2;->autoUpdateGroupDisplayName(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

.field final synthetic val$delay:I


# direct methods
.method constructor <init>(Lcom/android/providers/contacts/HtcContactsProvider2;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 16673
    iput-object p1, p0, Lcom/android/providers/contacts/HtcContactsProvider2$13;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    iput p2, p0, Lcom/android/providers/contacts/HtcContactsProvider2$13;->val$delay:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .locals 4

    .prologue
    const/16 v3, 0x2f

    .line 16682
    iget-object v0, p0, Lcom/android/providers/contacts/HtcContactsProvider2$13;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    invoke-virtual {v0, v3}, Lcom/android/providers/contacts/HtcContactsProvider2;->removeBackgroundTask(I)V

    .line 16683
    iget-object v0, p0, Lcom/android/providers/contacts/HtcContactsProvider2$13;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    iget v1, p0, Lcom/android/providers/contacts/HtcContactsProvider2$13;->val$delay:I

    int-to-long v1, v1

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/providers/contacts/HtcContactsProvider2;->scheduleBackgroundTaskDelayed(IJ)V

    .line 16685
    const/4 v0, 0x0

    return v0
.end method
