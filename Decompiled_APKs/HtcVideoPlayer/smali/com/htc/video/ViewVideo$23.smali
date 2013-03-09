.class Lcom/htc/video/ViewVideo$23;
.super Ljava/lang/Object;
.source "ViewVideo.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/video/ViewVideo;->onPreparePopupMenu(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/video/ViewVideo;


# direct methods
.method constructor <init>(Lcom/htc/video/ViewVideo;)V
    .locals 0
    .parameter

    .prologue
    .line 3059
    iput-object p1, p0, Lcom/htc/video/ViewVideo$23;->this$0:Lcom/htc/video/ViewVideo;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter "arg1"
    .parameter "choice"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v5, 0x0

    .line 3064
    iget-object v2, p0, Lcom/htc/video/ViewVideo$23;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mMoreCompare:[Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/video/ViewVideo;->access$4600(Lcom/htc/video/ViewVideo;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, p3

    iget-object v3, p0, Lcom/htc/video/ViewVideo$23;->this$0:Lcom/htc/video/ViewVideo;

    invoke-virtual {v3}, Lcom/htc/video/ViewVideo;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f040006

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/htc/video/ViewVideo$23;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mMoreCompare:[Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/video/ViewVideo;->access$4600(Lcom/htc/video/ViewVideo;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, p3

    iget-object v3, p0, Lcom/htc/video/ViewVideo$23;->this$0:Lcom/htc/video/ViewVideo;

    invoke-virtual {v3}, Lcom/htc/video/ViewVideo;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f040005

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3067
    :cond_0
    iget-object v2, p0, Lcom/htc/video/ViewVideo$23;->this$0:Lcom/htc/video/ViewVideo;

    #calls: Lcom/htc/video/ViewVideo;->changeVisionMode(I)V
    invoke-static {v2, p3}, Lcom/htc/video/ViewVideo;->access$4700(Lcom/htc/video/ViewVideo;I)V

    .line 3120
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/htc/video/ViewVideo$23;->this$0:Lcom/htc/video/ViewVideo;

    iget-object v2, v2, Lcom/htc/video/ViewVideo;->mMenuPopup:Lcom/htc/widget/HtcPopupWindowWrapper;

    invoke-virtual {v2}, Lcom/htc/widget/HtcPopupWindowWrapper;->dismissWithoutAnimation()V

    .line 3121
    return-void

    .line 3069
    :cond_2
    iget-object v2, p0, Lcom/htc/video/ViewVideo$23;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mMoreCompare:[Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/video/ViewVideo;->access$4600(Lcom/htc/video/ViewVideo;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, p3

    iget-object v3, p0, Lcom/htc/video/ViewVideo$23;->this$0:Lcom/htc/video/ViewVideo;

    invoke-virtual {v3}, Lcom/htc/video/ViewVideo;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f040018

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3071
    iget-object v2, p0, Lcom/htc/video/ViewVideo$23;->this$0:Lcom/htc/video/ViewVideo;

    #calls: Lcom/htc/video/ViewVideo;->trimVideo()V
    invoke-static {v2}, Lcom/htc/video/ViewVideo;->access$4800(Lcom/htc/video/ViewVideo;)V

    goto :goto_0

    .line 3073
    :cond_3
    iget-object v2, p0, Lcom/htc/video/ViewVideo$23;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mMoreCompare:[Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/video/ViewVideo;->access$4600(Lcom/htc/video/ViewVideo;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, p3

    iget-object v3, p0, Lcom/htc/video/ViewVideo$23;->this$0:Lcom/htc/video/ViewVideo;

    invoke-virtual {v3}, Lcom/htc/video/ViewVideo;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f04001d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 3075
    const/4 v0, 0x1

    .line 3076
    .local v0, bShowSoundDialog:Z
    invoke-static {}, Lcom/htc/video/HeadSetHelper;->isBeatsSupport()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3079
    invoke-static {}, Lcom/htc/video/HdmiAlbumLib;->GetMgr()Lcom/htc/video/HdmiAlbumLib;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/video/HdmiAlbumLib;->IsHDMIConnected()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/htc/video/HeadSetHelper;->isHeadsetPlugged()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/htc/video/ViewVideo$23;->this$0:Lcom/htc/video/ViewVideo;

    invoke-virtual {v2}, Lcom/htc/video/ViewVideo;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/video/HeadSetHelper;->isBTHeadsetPlugged(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/htc/video/ViewVideo$23;->this$0:Lcom/htc/video/ViewVideo;

    invoke-virtual {v2}, Lcom/htc/video/ViewVideo;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/video/HeadSetHelper;->isBTHeadsetCarkit(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {}, Lcom/htc/video/HeadSetHelper;->isBeatsHeadsetPlugged()Z

    move-result v2

    if-nez v2, :cond_5

    .line 3085
    iget-object v2, p0, Lcom/htc/video/ViewVideo$23;->this$0:Lcom/htc/video/ViewVideo;

    invoke-virtual {v2}, Lcom/htc/video/ViewVideo;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f040013

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 3086
    .local v1, t:Landroid/widget/Toast;
    const-string v2, "ViewVideo"

    const-string v3, "onItemClick, HDMI is plugged. return."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3087
    const/4 v0, 0x0

    .line 3088
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 3110
    .end local v1           #t:Landroid/widget/Toast;
    :cond_4
    :goto_1
    if-eqz v0, :cond_1

    .line 3112
    iget-object v2, p0, Lcom/htc/video/ViewVideo$23;->this$0:Lcom/htc/video/ViewVideo;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/htc/video/ViewVideo;->showDialog(I)V

    goto/16 :goto_0

    .line 3091
    :cond_5
    iget-object v2, p0, Lcom/htc/video/ViewVideo$23;->this$0:Lcom/htc/video/ViewVideo;

    invoke-virtual {v2}, Lcom/htc/video/ViewVideo;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/video/HeadSetHelper;->isBTHeadsetPlugged(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/htc/video/ViewVideo$23;->this$0:Lcom/htc/video/ViewVideo;

    invoke-virtual {v2}, Lcom/htc/video/ViewVideo;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/video/HeadSetHelper;->isBTHeadsetCarkit(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    invoke-static {}, Lcom/htc/video/HeadSetHelper;->isHeadsetPlugged()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-static {}, Lcom/htc/video/HeadSetHelper;->isBeatsHeadsetPlugged()Z

    move-result v2

    if-nez v2, :cond_7

    .line 3096
    iget-object v2, p0, Lcom/htc/video/ViewVideo$23;->this$0:Lcom/htc/video/ViewVideo;

    invoke-virtual {v2}, Lcom/htc/video/ViewVideo;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f040012

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 3097
    .restart local v1       #t:Landroid/widget/Toast;
    const-string v2, "ViewVideo"

    const-string v3, "onItemClick, BT is plugged. return."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3098
    const/4 v0, 0x0

    .line 3099
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 3102
    .end local v1           #t:Landroid/widget/Toast;
    :cond_7
    invoke-static {}, Lcom/htc/video/HeadSetHelper;->isBeatsOrHeadSetPlugged()Z

    move-result v2

    if-nez v2, :cond_4

    .line 3104
    iget-object v2, p0, Lcom/htc/video/ViewVideo$23;->this$0:Lcom/htc/video/ViewVideo;

    invoke-virtual {v2}, Lcom/htc/video/ViewVideo;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f040014

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 3105
    .restart local v1       #t:Landroid/widget/Toast;
    const-string v2, "ViewVideo"

    const-string v3, "onItemClick, nothing is plugged. return."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3106
    const/4 v0, 0x0

    .line 3107
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 3115
    .end local v0           #bShowSoundDialog:Z
    .end local v1           #t:Landroid/widget/Toast;
    :cond_8
    iget-object v2, p0, Lcom/htc/video/ViewVideo$23;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mMoreCompare:[Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/video/ViewVideo;->access$4600(Lcom/htc/video/ViewVideo;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, p3

    iget-object v3, p0, Lcom/htc/video/ViewVideo$23;->this$0:Lcom/htc/video/ViewVideo;

    invoke-virtual {v3}, Lcom/htc/video/ViewVideo;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f040004

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, p0, Lcom/htc/video/ViewVideo$23;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mMoreCompare:[Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/video/ViewVideo;->access$4600(Lcom/htc/video/ViewVideo;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, p3

    iget-object v3, p0, Lcom/htc/video/ViewVideo$23;->this$0:Lcom/htc/video/ViewVideo;

    invoke-virtual {v3}, Lcom/htc/video/ViewVideo;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f040003

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3118
    :cond_9
    iget-object v2, p0, Lcom/htc/video/ViewVideo$23;->this$0:Lcom/htc/video/ViewVideo;

    #calls: Lcom/htc/video/ViewVideo;->changeScreenMode()V
    invoke-static {v2}, Lcom/htc/video/ViewVideo;->access$4900(Lcom/htc/video/ViewVideo;)V

    goto/16 :goto_0
.end method
