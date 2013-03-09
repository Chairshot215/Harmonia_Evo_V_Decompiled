.class Lcom/htc/music/DRMActionActivity$13;
.super Landroid/widget/BaseAdapter;
.source "DRMActionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/DRMActionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/DRMActionActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/DRMActionActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/DRMActionActivity$13;->this$0:Lcom/htc/music/DRMActionActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method private wasDRMFilePlaying()Z
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/htc/music/DRMActionActivity$13;->this$0:Lcom/htc/music/DRMActionActivity;

    #getter for: Lcom/htc/music/DRMActionActivity;->mService:Lcom/htc/music/IMediaPlaybackService;
    invoke-static {v1}, Lcom/htc/music/DRMActionActivity;->access$600(Lcom/htc/music/DRMActionActivity;)Lcom/htc/music/IMediaPlaybackService;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/DRMActionActivity$13;->this$0:Lcom/htc/music/DRMActionActivity;

    #getter for: Lcom/htc/music/DRMActionActivity;->mService:Lcom/htc/music/IMediaPlaybackService;
    invoke-static {v1}, Lcom/htc/music/DRMActionActivity;->access$600(Lcom/htc/music/DRMActionActivity;)Lcom/htc/music/IMediaPlaybackService;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "content://drm/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :catch_0
    move-exception v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/htc/music/DRMActionActivity$13;->this$0:Lcom/htc/music/DRMActionActivity;

    #getter for: Lcom/htc/music/DRMActionActivity;->actionArray:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/music/DRMActionActivity;->access$400(Lcom/htc/music/DRMActionActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/music/DRMActionActivity$13;->this$0:Lcom/htc/music/DRMActionActivity;

    #getter for: Lcom/htc/music/DRMActionActivity;->actionArray:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/music/DRMActionActivity;->access$400(Lcom/htc/music/DRMActionActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    const/4 v6, 0x0

    invoke-static {}, Lcom/htc/music/DRMActionActivity;->access$100()Ljava/lang/String;

    move-result-object v7

    const-string v8, "getView IN"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/htc/music/DRMActionActivity$13;->this$0:Lcom/htc/music/DRMActionActivity;

    #getter for: Lcom/htc/music/DRMActionActivity;->actionArray:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/htc/music/DRMActionActivity;->access$400(Lcom/htc/music/DRMActionActivity;)Ljava/util/ArrayList;

    move-result-object v7

    if-nez v7, :cond_0

    :goto_0
    return-object v6

    :cond_0
    if-ltz p1, :cond_1

    iget-object v7, p0, Lcom/htc/music/DRMActionActivity$13;->this$0:Lcom/htc/music/DRMActionActivity;

    #getter for: Lcom/htc/music/DRMActionActivity;->actionArray:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/htc/music/DRMActionActivity;->access$400(Lcom/htc/music/DRMActionActivity;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-gt v7, p1, :cond_2

    :cond_1
    invoke-static {}, Lcom/htc/music/DRMActionActivity;->access$100()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "list getView out of bound, this shouldn\'t happen. position:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",actionArray size:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/music/DRMActionActivity$13;->this$0:Lcom/htc/music/DRMActionActivity;

    #getter for: Lcom/htc/music/DRMActionActivity;->actionArray:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/htc/music/DRMActionActivity;->access$400(Lcom/htc/music/DRMActionActivity;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    if-nez p2, :cond_3

    iget-object v7, p0, Lcom/htc/music/DRMActionActivity$13;->this$0:Lcom/htc/music/DRMActionActivity;

    invoke-virtual {v7}, Lcom/htc/music/DRMActionActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f030023

    invoke-virtual {v7, v8, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_3
    const-string v4, ""

    iget-object v6, p0, Lcom/htc/music/DRMActionActivity$13;->this$0:Lcom/htc/music/DRMActionActivity;

    #getter for: Lcom/htc/music/DRMActionActivity;->actionArray:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/htc/music/DRMActionActivity;->access$400(Lcom/htc/music/DRMActionActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    :goto_1
    const v6, 0x7f080071

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItemImageButton;

    invoke-virtual {v2, v1}, Lcom/htc/widget/HtcListItemImageButton;->setImageResource(I)V

    const v6, 0x7f080074

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v5, v4}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    invoke-static {}, Lcom/htc/music/DRMActionActivity;->access$100()Ljava/lang/String;

    move-result-object v6

    const-string v7, "getView set and finish"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, p2

    goto/16 :goto_0

    :pswitch_0
    iget-object v6, p0, Lcom/htc/music/DRMActionActivity$13;->this$0:Lcom/htc/music/DRMActionActivity;

    const v7, 0x7f07004e

    invoke-virtual {v6, v7}, Lcom/htc/music/DRMActionActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v1, 0x7f020016

    goto :goto_1

    :pswitch_1
    iget-object v6, p0, Lcom/htc/music/DRMActionActivity$13;->this$0:Lcom/htc/music/DRMActionActivity;

    const v7, 0x20c01ee

    invoke-virtual {v6, v7}, Lcom/htc/music/DRMActionActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v1, 0x20801d0

    goto :goto_1

    :pswitch_2
    iget-object v6, p0, Lcom/htc/music/DRMActionActivity$13;->this$0:Lcom/htc/music/DRMActionActivity;

    const v7, 0x7f070086

    invoke-virtual {v6, v7}, Lcom/htc/music/DRMActionActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v1, 0x7f020049

    const-string v6, "ACTION_PROPERTY about_rest : iconId= %d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/htc/music/DRMActionActivity;->access$100()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_3
    iget-object v6, p0, Lcom/htc/music/DRMActionActivity$13;->this$0:Lcom/htc/music/DRMActionActivity;

    const v7, 0x20c01fc

    invoke-virtual {v6, v7}, Lcom/htc/music/DRMActionActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v1, 0x7f020048

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
