.class Lcom/android/camera/MenuHandler$10;
.super Ljava/lang/Object;
.source "MenuHandler.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/MenuHandler;->createAutoCaptureList()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/MenuHandler;


# direct methods
.method constructor <init>(Lcom/android/camera/MenuHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/MenuHandler$10;->this$0:Lcom/android/camera/MenuHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/16 v4, 0x23

    const/4 v3, 0x1

    const-string v0, "MenuHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onItemClick: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/MenuHandler$10;->this$0:Lcom/android/camera/MenuHandler;

    #calls: Lcom/android/camera/MenuHandler;->isDisableFaceItems()Z
    invoke-static {v0}, Lcom/android/camera/MenuHandler;->access$1200(Lcom/android/camera/MenuHandler;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/MenuHandler$10;->this$0:Lcom/android/camera/MenuHandler;

    #calls: Lcom/android/camera/MenuHandler;->isFaceItem(I)Z
    invoke-static {v0, p3}, Lcom/android/camera/MenuHandler;->access$1300(Lcom/android/camera/MenuHandler;I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/MenuHandler$10;->this$0:Lcom/android/camera/MenuHandler;

    #getter for: Lcom/android/camera/MenuHandler;->mAutoCaptureView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/camera/MenuHandler;->access$1400(Lcom/android/camera/MenuHandler;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->clearChoices()V

    iget-object v0, p0, Lcom/android/camera/MenuHandler$10;->this$0:Lcom/android/camera/MenuHandler;

    #getter for: Lcom/android/camera/MenuHandler;->mAutoCaptureView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/camera/MenuHandler;->access$1400(Lcom/android/camera/MenuHandler;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/MenuHandler$10;->this$0:Lcom/android/camera/MenuHandler;

    #getter for: Lcom/android/camera/MenuHandler;->mFaceIndex:I
    invoke-static {v1}, Lcom/android/camera/MenuHandler;->access$1500(Lcom/android/camera/MenuHandler;)I

    move-result v1

    invoke-virtual {v0, v1, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    iget-object v0, p0, Lcom/android/camera/MenuHandler$10;->this$0:Lcom/android/camera/MenuHandler;

    #getter for: Lcom/android/camera/MenuHandler;->mAutoCaptureView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/camera/MenuHandler;->access$1400(Lcom/android/camera/MenuHandler;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/MenuHandler$10;->this$0:Lcom/android/camera/MenuHandler;

    #getter for: Lcom/android/camera/MenuHandler;->mTimerIndex:I
    invoke-static {v1}, Lcom/android/camera/MenuHandler;->access$1600(Lcom/android/camera/MenuHandler;)I

    move-result v1

    invoke-virtual {v0, v1, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/MenuHandler$10;->this$0:Lcom/android/camera/MenuHandler;

    #calls: Lcom/android/camera/MenuHandler;->checkAutoCaptureItem(I)Z
    invoke-static {v0, p3}, Lcom/android/camera/MenuHandler;->access$1700(Lcom/android/camera/MenuHandler;I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/MenuHandler$10;->this$0:Lcom/android/camera/MenuHandler;

    invoke-virtual {v0, v3}, Lcom/android/camera/MenuHandler;->closeSubMenu(Z)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/camera/MenuHandler$10;->this$0:Lcom/android/camera/MenuHandler;

    #getter for: Lcom/android/camera/MenuHandler;->mHTCCamera:Lcom/android/camera/HTCCamera;
    invoke-static {v0}, Lcom/android/camera/MenuHandler;->access$200(Lcom/android/camera/MenuHandler;)Lcom/android/camera/HTCCamera;

    move-result-object v0

    const-string v1, "pref_camera_face_number"

    iget-object v2, p0, Lcom/android/camera/MenuHandler$10;->this$0:Lcom/android/camera/MenuHandler;

    #getter for: Lcom/android/camera/MenuHandler;->mAutoCaptureValues:[Ljava/lang/String;
    invoke-static {v2}, Lcom/android/camera/MenuHandler;->access$1800(Lcom/android/camera/MenuHandler;)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/MenuHandler$10;->this$0:Lcom/android/camera/MenuHandler;

    #getter for: Lcom/android/camera/MenuHandler;->mFaceIndex:I
    invoke-static {v3}, Lcom/android/camera/MenuHandler;->access$1500(Lcom/android/camera/MenuHandler;)I

    move-result v3

    aget-object v2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/MenuHandler$10;->this$0:Lcom/android/camera/MenuHandler;

    #getter for: Lcom/android/camera/MenuHandler;->mHTCCamera:Lcom/android/camera/HTCCamera;
    invoke-static {v0}, Lcom/android/camera/MenuHandler;->access$200(Lcom/android/camera/MenuHandler;)Lcom/android/camera/HTCCamera;

    move-result-object v0

    const-string v1, "pref_camera_self_timer"

    iget-object v2, p0, Lcom/android/camera/MenuHandler$10;->this$0:Lcom/android/camera/MenuHandler;

    #getter for: Lcom/android/camera/MenuHandler;->mAutoCaptureValues:[Ljava/lang/String;
    invoke-static {v2}, Lcom/android/camera/MenuHandler;->access$1800(Lcom/android/camera/MenuHandler;)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/MenuHandler$10;->this$0:Lcom/android/camera/MenuHandler;

    #getter for: Lcom/android/camera/MenuHandler;->mTimerIndex:I
    invoke-static {v3}, Lcom/android/camera/MenuHandler;->access$1600(Lcom/android/camera/MenuHandler;)I

    move-result v3

    aget-object v2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/MenuHandler$10;->this$0:Lcom/android/camera/MenuHandler;

    #getter for: Lcom/android/camera/MenuHandler;->mUIHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/MenuHandler;->access$1900(Lcom/android/camera/MenuHandler;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v0, p0, Lcom/android/camera/MenuHandler$10;->this$0:Lcom/android/camera/MenuHandler;

    #getter for: Lcom/android/camera/MenuHandler;->mUIHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/MenuHandler;->access$1900(Lcom/android/camera/MenuHandler;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    iget-object v0, p0, Lcom/android/camera/MenuHandler$10;->this$0:Lcom/android/camera/MenuHandler;

    #getter for: Lcom/android/camera/MenuHandler;->mSettingsView:Lcom/android/camera/widget/SettingsView;
    invoke-static {v0}, Lcom/android/camera/MenuHandler;->access$2000(Lcom/android/camera/MenuHandler;)Lcom/android/camera/widget/SettingsView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/MenuHandler$10;->this$0:Lcom/android/camera/MenuHandler;

    #getter for: Lcom/android/camera/MenuHandler;->mSettingsView:Lcom/android/camera/widget/SettingsView;
    invoke-static {v0}, Lcom/android/camera/MenuHandler;->access$2000(Lcom/android/camera/MenuHandler;)Lcom/android/camera/widget/SettingsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/widget/SettingsView;->notifyMainLayoutChanged()V

    goto :goto_0
.end method
