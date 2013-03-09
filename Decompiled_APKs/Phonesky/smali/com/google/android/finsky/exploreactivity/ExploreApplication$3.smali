.class Lcom/google/android/finsky/exploreactivity/ExploreApplication$3;
.super Ljava/lang/Object;
.source "ExploreApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/exploreactivity/ExploreApplication;->onPlayStateChanged(Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/exploreactivity/ExploreApplication;

.field final synthetic val$playState:Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/exploreactivity/ExploreApplication;Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 613
    iput-object p1, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication$3;->this$0:Lcom/google/android/finsky/exploreactivity/ExploreApplication;

    iput-object p2, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication$3;->val$playState:Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;

    iput-object p3, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication$3;->val$title:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 616
    sget-object v0, Lcom/google/android/finsky/exploreactivity/ExploreApplication$4;->$SwitchMap$com$google$android$finsky$exploreactivity$NodeController$PlayState:[I

    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication$3;->val$playState:Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;

    invoke-virtual {v1}, Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 632
    :goto_0
    return-void

    .line 618
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication$3;->this$0:Lcom/google/android/finsky/exploreactivity/ExploreApplication;

    #getter for: Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mPlaybackControls:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->access$000(Lcom/google/android/finsky/exploreactivity/ExploreApplication;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication$3;->this$0:Lcom/google/android/finsky/exploreactivity/ExploreApplication;

    #getter for: Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mActivity:Lcom/google/android/finsky/exploreactivity/ExploreActivity;
    invoke-static {v1}, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->access$200(Lcom/google/android/finsky/exploreactivity/ExploreApplication;)Lcom/google/android/finsky/exploreactivity/ExploreActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700f8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 622
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication$3;->this$0:Lcom/google/android/finsky/exploreactivity/ExploreApplication;

    #getter for: Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mPlaybackControls:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->access$000(Lcom/google/android/finsky/exploreactivity/ExploreApplication;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f02009c

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 624
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication$3;->this$0:Lcom/google/android/finsky/exploreactivity/ExploreApplication;

    #getter for: Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mPlaybackControls:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->access$000(Lcom/google/android/finsky/exploreactivity/ExploreApplication;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication$3;->val$title:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication$3;->val$title:Ljava/lang/String;

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const-string v0, ""

    goto :goto_1

    .line 627
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication$3;->this$0:Lcom/google/android/finsky/exploreactivity/ExploreApplication;

    #getter for: Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mPlaybackControls:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->access$000(Lcom/google/android/finsky/exploreactivity/ExploreApplication;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f02009d

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 629
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication$3;->this$0:Lcom/google/android/finsky/exploreactivity/ExploreApplication;

    #getter for: Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mPlaybackControls:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->access$000(Lcom/google/android/finsky/exploreactivity/ExploreApplication;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication$3;->val$title:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication$3;->val$title:Ljava/lang/String;

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_2

    .line 616
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
