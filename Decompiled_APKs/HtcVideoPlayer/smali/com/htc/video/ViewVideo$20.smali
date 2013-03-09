.class Lcom/htc/video/ViewVideo$20;
.super Ljava/lang/Object;
.source "ViewVideo.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/video/ViewVideo;->createSoundEffectDialog()Landroid/app/Dialog;
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
    .line 2921
    iput-object p1, p0, Lcom/htc/video/ViewVideo$20;->this$0:Lcom/htc/video/ViewVideo;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 7
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
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
    .local p1, arg0:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2926
    const-string v2, "ViewVideo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SoundEffectDialog, setOnItemClickListener: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " +++"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2927
    iget-object v2, p0, Lcom/htc/video/ViewVideo$20;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mSoundEffectList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/video/ViewVideo;->access$4400(Lcom/htc/video/ViewVideo;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/htc/video/ViewVideo$20;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mSoundEffectList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/video/ViewVideo;->access$4400(Lcom/htc/video/ViewVideo;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, p0, Lcom/htc/video/ViewVideo$20;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mVideoSoundEffectHelper:Lcom/htc/video/VideoSoundEffectHelper;
    invoke-static {v3}, Lcom/htc/video/ViewVideo;->access$800(Lcom/htc/video/ViewVideo;)Lcom/htc/video/VideoSoundEffectHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/video/VideoSoundEffectHelper;->numSupportCodec()I

    move-result v3

    if-lt v2, v3, :cond_4

    .line 2929
    invoke-static {p3}, Lcom/htc/video/Common/SoundEffectAdapter;->getRealListPos(I)I

    move-result v1

    .line 2930
    .local v1, realPos:I
    iget-object v2, p0, Lcom/htc/video/ViewVideo$20;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mSoundEffectList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/video/ViewVideo;->access$4400(Lcom/htc/video/ViewVideo;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/video/VideoUtility/SoundEffectItem;

    .line 2931
    .local v0, item:Lcom/htc/video/VideoUtility/SoundEffectItem;
    iget-object v2, p0, Lcom/htc/video/ViewVideo$20;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mSoundEffectSelectedItem:Lcom/htc/video/VideoUtility/SoundEffectItem;
    invoke-static {v2}, Lcom/htc/video/ViewVideo;->access$4500(Lcom/htc/video/ViewVideo;)Lcom/htc/video/VideoUtility/SoundEffectItem;

    move-result-object v2

    if-ne v0, v2, :cond_1

    .line 2958
    .end local v0           #item:Lcom/htc/video/VideoUtility/SoundEffectItem;
    .end local v1           #realPos:I
    :cond_0
    :goto_0
    return-void

    .line 2934
    .restart local v0       #item:Lcom/htc/video/VideoUtility/SoundEffectItem;
    .restart local v1       #realPos:I
    :cond_1
    iget-object v2, p0, Lcom/htc/video/ViewVideo$20;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mVideoSoundEffectHelper:Lcom/htc/video/VideoSoundEffectHelper;
    invoke-static {v2}, Lcom/htc/video/ViewVideo;->access$800(Lcom/htc/video/ViewVideo;)Lcom/htc/video/VideoSoundEffectHelper;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/video/ViewVideo$20;->this$0:Lcom/htc/video/ViewVideo;

    invoke-virtual {v2}, Lcom/htc/video/ViewVideo;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2939
    iget-boolean v2, v0, Lcom/htc/video/VideoUtility/SoundEffectItem;->mIsEnabled:Z

    if-eqz v2, :cond_3

    .line 2941
    iput-boolean v6, v0, Lcom/htc/video/VideoUtility/SoundEffectItem;->mIsSelected:Z

    .line 2942
    iget-object v2, p0, Lcom/htc/video/ViewVideo$20;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mSoundEffectSelectedItem:Lcom/htc/video/VideoUtility/SoundEffectItem;
    invoke-static {v2}, Lcom/htc/video/ViewVideo;->access$4500(Lcom/htc/video/ViewVideo;)Lcom/htc/video/VideoUtility/SoundEffectItem;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 2944
    iget-object v2, p0, Lcom/htc/video/ViewVideo$20;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mSoundEffectSelectedItem:Lcom/htc/video/VideoUtility/SoundEffectItem;
    invoke-static {v2}, Lcom/htc/video/ViewVideo;->access$4500(Lcom/htc/video/ViewVideo;)Lcom/htc/video/VideoUtility/SoundEffectItem;

    move-result-object v2

    iput-boolean v5, v2, Lcom/htc/video/VideoUtility/SoundEffectItem;->mIsSelected:Z

    .line 2947
    :cond_2
    iget-object v2, p0, Lcom/htc/video/ViewVideo$20;->this$0:Lcom/htc/video/ViewVideo;

    iget-object v3, p0, Lcom/htc/video/ViewVideo$20;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mVideoSoundEffectHelper:Lcom/htc/video/VideoSoundEffectHelper;
    invoke-static {v3}, Lcom/htc/video/ViewVideo;->access$800(Lcom/htc/video/ViewVideo;)Lcom/htc/video/VideoSoundEffectHelper;

    sget-object v3, Lcom/htc/video/VideoSoundEffectHelper;->SoundEffectStyle:[I

    aget v3, v3, v1

    #calls: Lcom/htc/video/ViewVideo;->applyNewVideoSoundEffect(IZZ)V
    invoke-static {v2, v3, v5, v6}, Lcom/htc/video/ViewVideo;->access$100(Lcom/htc/video/ViewVideo;IZZ)V

    .line 2948
    iget-object v2, p0, Lcom/htc/video/ViewVideo$20;->this$0:Lcom/htc/video/ViewVideo;

    #setter for: Lcom/htc/video/ViewVideo;->mSoundEffectSelectedItem:Lcom/htc/video/VideoUtility/SoundEffectItem;
    invoke-static {v2, v0}, Lcom/htc/video/ViewVideo;->access$4502(Lcom/htc/video/ViewVideo;Lcom/htc/video/VideoUtility/SoundEffectItem;)Lcom/htc/video/VideoUtility/SoundEffectItem;

    .line 2949
    iget-object v2, p0, Lcom/htc/video/ViewVideo$20;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mSoundEffectAdapter:Lcom/htc/video/Common/SoundEffectAdapter;
    invoke-static {v2}, Lcom/htc/video/ViewVideo;->access$2600(Lcom/htc/video/ViewVideo;)Lcom/htc/video/Common/SoundEffectAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/video/Common/SoundEffectAdapter;->notifyDataSetChanged()V

    .line 2957
    .end local v0           #item:Lcom/htc/video/VideoUtility/SoundEffectItem;
    .end local v1           #realPos:I
    :cond_3
    :goto_1
    const-string v2, "ViewVideo"

    const-string v3, "SoundEffectDialog, setOnItemClickListener ---"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2954
    :cond_4
    const-string v2, "ViewVideo"

    const-string v3, "SoundEffectDialog, setOnItemClickListener, mSoundEffectList is null or size is incorrect."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
