.class Lcom/htc/android/mail/easclient/SynchronizationSetting$1;
.super Ljava/lang/Object;
.source "SynchronizationSetting.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/easclient/SynchronizationSetting;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/easclient/SynchronizationSetting;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/easclient/SynchronizationSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 320
    iput-object p1, p0, Lcom/htc/android/mail/easclient/SynchronizationSetting$1;->this$0:Lcom/htc/android/mail/easclient/SynchronizationSetting;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/widget/HtcAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 322
    .local p1, parent:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    invoke-static {}, Lcom/htc/android/mail/easclient/SynchronizationSetting;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/mail/easclient/SynchronizationSetting$1;->this$0:Lcom/htc/android/mail/easclient/SynchronizationSetting;

    #getter for: Lcom/htc/android/mail/easclient/SynchronizationSetting;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/android/mail/easclient/SynchronizationSetting;->access$200(Lcom/htc/android/mail/easclient/SynchronizationSetting;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "schedule pos: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/easclient/SynchronizationSetting$1;->this$0:Lcom/htc/android/mail/easclient/SynchronizationSetting;

    #setter for: Lcom/htc/android/mail/easclient/SynchronizationSetting;->mScheduleMode:I
    invoke-static {v0, p3}, Lcom/htc/android/mail/easclient/SynchronizationSetting;->access$302(Lcom/htc/android/mail/easclient/SynchronizationSetting;I)I

    .line 324
    return-void
.end method
