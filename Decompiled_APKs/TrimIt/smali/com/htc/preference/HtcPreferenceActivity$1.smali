.class Lcom/htc/preference/HtcPreferenceActivity$1;
.super Landroid/os/Handler;
.source "HtcPreferenceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/preference/HtcPreferenceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/preference/HtcPreferenceActivity;


# direct methods
.method constructor <init>(Lcom/htc/preference/HtcPreferenceActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 231
    iput-object p1, p0, Lcom/htc/preference/HtcPreferenceActivity$1;->this$0:Lcom/htc/preference/HtcPreferenceActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 234
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 236
    :pswitch_0
    iget-object v3, p0, Lcom/htc/preference/HtcPreferenceActivity$1;->this$0:Lcom/htc/preference/HtcPreferenceActivity;

    #calls: Lcom/htc/preference/HtcPreferenceActivity;->bindPreferences()V
    invoke-static {v3}, Lcom/htc/preference/HtcPreferenceActivity;->access$000(Lcom/htc/preference/HtcPreferenceActivity;)V

    goto :goto_0

    .line 239
    :pswitch_1
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/htc/preference/HtcPreferenceActivity$1;->this$0:Lcom/htc/preference/HtcPreferenceActivity;

    #getter for: Lcom/htc/preference/HtcPreferenceActivity;->mHeaders:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/htc/preference/HtcPreferenceActivity;->access$100(Lcom/htc/preference/HtcPreferenceActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 240
    .local v2, oldHeaders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/preference/HtcPreferenceActivity$Header;>;"
    iget-object v3, p0, Lcom/htc/preference/HtcPreferenceActivity$1;->this$0:Lcom/htc/preference/HtcPreferenceActivity;

    #getter for: Lcom/htc/preference/HtcPreferenceActivity;->mHeaders:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/htc/preference/HtcPreferenceActivity;->access$100(Lcom/htc/preference/HtcPreferenceActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 241
    iget-object v3, p0, Lcom/htc/preference/HtcPreferenceActivity$1;->this$0:Lcom/htc/preference/HtcPreferenceActivity;

    iget-object v4, p0, Lcom/htc/preference/HtcPreferenceActivity$1;->this$0:Lcom/htc/preference/HtcPreferenceActivity;

    #getter for: Lcom/htc/preference/HtcPreferenceActivity;->mHeaders:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/htc/preference/HtcPreferenceActivity;->access$100(Lcom/htc/preference/HtcPreferenceActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcPreferenceActivity;->onBuildHeaders(Ljava/util/List;)V

    .line 242
    iget-object v3, p0, Lcom/htc/preference/HtcPreferenceActivity$1;->this$0:Lcom/htc/preference/HtcPreferenceActivity;

    #getter for: Lcom/htc/preference/HtcPreferenceActivity;->mAdapter:Landroid/widget/ListAdapter;
    invoke-static {v3}, Lcom/htc/preference/HtcPreferenceActivity;->access$200(Lcom/htc/preference/HtcPreferenceActivity;)Landroid/widget/ListAdapter;

    move-result-object v3

    instance-of v3, v3, Landroid/widget/BaseAdapter;

    if-eqz v3, :cond_1

    .line 243
    iget-object v3, p0, Lcom/htc/preference/HtcPreferenceActivity$1;->this$0:Lcom/htc/preference/HtcPreferenceActivity;

    #getter for: Lcom/htc/preference/HtcPreferenceActivity;->mAdapter:Landroid/widget/ListAdapter;
    invoke-static {v3}, Lcom/htc/preference/HtcPreferenceActivity;->access$300(Lcom/htc/preference/HtcPreferenceActivity;)Landroid/widget/ListAdapter;

    move-result-object v3

    check-cast v3, Landroid/widget/BaseAdapter;

    invoke-virtual {v3}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 245
    :cond_1
    iget-object v3, p0, Lcom/htc/preference/HtcPreferenceActivity$1;->this$0:Lcom/htc/preference/HtcPreferenceActivity;

    invoke-virtual {v3}, Lcom/htc/preference/HtcPreferenceActivity;->onGetNewHeader()Lcom/htc/preference/HtcPreferenceActivity$Header;

    move-result-object v0

    .line 246
    .local v0, header:Lcom/htc/preference/HtcPreferenceActivity$Header;
    if-eqz v0, :cond_3

    iget-object v3, v0, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 247
    iget-object v3, p0, Lcom/htc/preference/HtcPreferenceActivity$1;->this$0:Lcom/htc/preference/HtcPreferenceActivity;

    invoke-virtual {v3, v0, v2}, Lcom/htc/preference/HtcPreferenceActivity;->findBestMatchingHeader(Lcom/htc/preference/HtcPreferenceActivity$Header;Ljava/util/ArrayList;)Lcom/htc/preference/HtcPreferenceActivity$Header;

    move-result-object v1

    .line 248
    .local v1, mappedHeader:Lcom/htc/preference/HtcPreferenceActivity$Header;
    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/htc/preference/HtcPreferenceActivity$1;->this$0:Lcom/htc/preference/HtcPreferenceActivity;

    #getter for: Lcom/htc/preference/HtcPreferenceActivity;->mCurHeader:Lcom/htc/preference/HtcPreferenceActivity$Header;
    invoke-static {v3}, Lcom/htc/preference/HtcPreferenceActivity;->access$400(Lcom/htc/preference/HtcPreferenceActivity;)Lcom/htc/preference/HtcPreferenceActivity$Header;

    move-result-object v3

    if-eq v3, v1, :cond_0

    .line 249
    :cond_2
    iget-object v3, p0, Lcom/htc/preference/HtcPreferenceActivity$1;->this$0:Lcom/htc/preference/HtcPreferenceActivity;

    invoke-virtual {v3, v0}, Lcom/htc/preference/HtcPreferenceActivity;->switchToHeader(Lcom/htc/preference/HtcPreferenceActivity$Header;)V

    goto :goto_0

    .line 251
    .end local v1           #mappedHeader:Lcom/htc/preference/HtcPreferenceActivity$Header;
    :cond_3
    iget-object v3, p0, Lcom/htc/preference/HtcPreferenceActivity$1;->this$0:Lcom/htc/preference/HtcPreferenceActivity;

    #getter for: Lcom/htc/preference/HtcPreferenceActivity;->mCurHeader:Lcom/htc/preference/HtcPreferenceActivity$Header;
    invoke-static {v3}, Lcom/htc/preference/HtcPreferenceActivity;->access$400(Lcom/htc/preference/HtcPreferenceActivity;)Lcom/htc/preference/HtcPreferenceActivity$Header;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 252
    iget-object v3, p0, Lcom/htc/preference/HtcPreferenceActivity$1;->this$0:Lcom/htc/preference/HtcPreferenceActivity;

    iget-object v4, p0, Lcom/htc/preference/HtcPreferenceActivity$1;->this$0:Lcom/htc/preference/HtcPreferenceActivity;

    #getter for: Lcom/htc/preference/HtcPreferenceActivity;->mCurHeader:Lcom/htc/preference/HtcPreferenceActivity$Header;
    invoke-static {v4}, Lcom/htc/preference/HtcPreferenceActivity;->access$400(Lcom/htc/preference/HtcPreferenceActivity;)Lcom/htc/preference/HtcPreferenceActivity$Header;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/preference/HtcPreferenceActivity$1;->this$0:Lcom/htc/preference/HtcPreferenceActivity;

    #getter for: Lcom/htc/preference/HtcPreferenceActivity;->mHeaders:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/htc/preference/HtcPreferenceActivity;->access$100(Lcom/htc/preference/HtcPreferenceActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/htc/preference/HtcPreferenceActivity;->findBestMatchingHeader(Lcom/htc/preference/HtcPreferenceActivity$Header;Ljava/util/ArrayList;)Lcom/htc/preference/HtcPreferenceActivity$Header;

    move-result-object v1

    .line 253
    .restart local v1       #mappedHeader:Lcom/htc/preference/HtcPreferenceActivity$Header;
    if-eqz v1, :cond_0

    .line 254
    iget-object v3, p0, Lcom/htc/preference/HtcPreferenceActivity$1;->this$0:Lcom/htc/preference/HtcPreferenceActivity;

    invoke-virtual {v3, v1}, Lcom/htc/preference/HtcPreferenceActivity;->setSelectedHeader(Lcom/htc/preference/HtcPreferenceActivity$Header;)V

    goto :goto_0

    .line 234
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
