.class Lcom/htc/sdm/activity/SoundSetDetail$1;
.super Ljava/lang/Object;
.source "SoundSetDetail.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sdm/activity/SoundSetDetail;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sdm/activity/SoundSetDetail;


# direct methods
.method constructor <init>(Lcom/htc/sdm/activity/SoundSetDetail;)V
    .locals 0
    .parameter

    .prologue
    .line 722
    iput-object p1, p0, Lcom/htc/sdm/activity/SoundSetDetail$1;->this$0:Lcom/htc/sdm/activity/SoundSetDetail;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x1

    .line 744
    iget-object v0, p0, Lcom/htc/sdm/activity/SoundSetDetail$1;->this$0:Lcom/htc/sdm/activity/SoundSetDetail;

    invoke-virtual {v0}, Lcom/htc/sdm/activity/SoundSetDetail;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-wide/32 v1, 0x80000

    invoke-static {v0, v1, v2}, Lcom/htc/sdm/util/SDMDBUtil;->isDataStorageFull(Landroid/content/Context;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 746
    iget-object v0, p0, Lcom/htc/sdm/activity/SoundSetDetail$1;->this$0:Lcom/htc/sdm/activity/SoundSetDetail;

    invoke-virtual {v0}, Lcom/htc/sdm/activity/SoundSetDetail;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/sdm/util/SDMUtil;->CreateDataStorageFullDialog(Landroid/content/Context;)V

    .line 762
    :goto_0
    return-void

    .line 751
    :cond_0
    iget-object v0, p0, Lcom/htc/sdm/activity/SoundSetDetail$1;->this$0:Lcom/htc/sdm/activity/SoundSetDetail;

    #getter for: Lcom/htc/sdm/activity/SoundSetDetail;->m_nSoundsetType:I
    invoke-static {v0}, Lcom/htc/sdm/activity/SoundSetDetail;->access$300(Lcom/htc/sdm/activity/SoundSetDetail;)I

    move-result v0

    if-ne v0, v4, :cond_1

    .line 753
    iget-object v0, p0, Lcom/htc/sdm/activity/SoundSetDetail$1;->this$0:Lcom/htc/sdm/activity/SoundSetDetail;

    const/16 v1, 0x3e7

    #calls: Lcom/htc/sdm/activity/SoundSetDetail;->showDialogSafe(I)V
    invoke-static {v0, v1}, Lcom/htc/sdm/activity/SoundSetDetail;->access$400(Lcom/htc/sdm/activity/SoundSetDetail;I)V

    .line 754
    new-instance v0, Lcom/htc/sdm/activity/SoundSetDetail$ApplySoundSetTask;

    iget-object v1, p0, Lcom/htc/sdm/activity/SoundSetDetail$1;->this$0:Lcom/htc/sdm/activity/SoundSetDetail;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/htc/sdm/activity/SoundSetDetail$ApplySoundSetTask;-><init>(Lcom/htc/sdm/activity/SoundSetDetail;Lcom/htc/sdm/activity/SoundSetDetail$1;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/htc/sdm/activity/SoundSetDetail$1;->this$0:Lcom/htc/sdm/activity/SoundSetDetail;

    iget-object v3, v3, Lcom/htc/sdm/activity/SoundSetDetail;->m_parcelable:Lcom/htc/sdm/SoundSetParcelable;

    invoke-virtual {v3}, Lcom/htc/sdm/SoundSetParcelable;->getGUID()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v2, p0, Lcom/htc/sdm/activity/SoundSetDetail$1;->this$0:Lcom/htc/sdm/activity/SoundSetDetail;

    iget-object v2, v2, Lcom/htc/sdm/activity/SoundSetDetail;->m_parcelable:Lcom/htc/sdm/SoundSetParcelable;

    invoke-virtual {v2}, Lcom/htc/sdm/SoundSetParcelable;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/htc/sdm/activity/SoundSetDetail$ApplySoundSetTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 758
    :cond_1
    iget-object v0, p0, Lcom/htc/sdm/activity/SoundSetDetail$1;->this$0:Lcom/htc/sdm/activity/SoundSetDetail;

    invoke-virtual {v0}, Lcom/htc/sdm/activity/SoundSetDetail;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/sdm/activity/SoundSetDetail$1;->this$0:Lcom/htc/sdm/activity/SoundSetDetail;

    iget-object v1, v1, Lcom/htc/sdm/activity/SoundSetDetail;->m_parcelable:Lcom/htc/sdm/SoundSetParcelable;

    invoke-virtual {v1}, Lcom/htc/sdm/SoundSetParcelable;->getGUID()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sdm/activity/SoundSetDetail$1;->this$0:Lcom/htc/sdm/activity/SoundSetDetail;

    iget-object v2, v2, Lcom/htc/sdm/activity/SoundSetDetail;->m_parcelable:Lcom/htc/sdm/SoundSetParcelable;

    invoke-virtual {v2}, Lcom/htc/sdm/SoundSetParcelable;->getSrcType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/htc/sdm/activity/SoundSetDetail$1;->this$0:Lcom/htc/sdm/activity/SoundSetDetail;

    #getter for: Lcom/htc/sdm/activity/SoundSetDetail;->m_nSoundsetType:I
    invoke-static {v3}, Lcom/htc/sdm/activity/SoundSetDetail;->access$300(Lcom/htc/sdm/activity/SoundSetDetail;)I

    move-result v3

    invoke-static {v3}, Lcom/htc/sdm/util/SDMUtil;->RefID2Type(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/sdm/activity/SoundSetDetail$1;->this$0:Lcom/htc/sdm/activity/SoundSetDetail;

    iget-object v4, v4, Lcom/htc/sdm/activity/SoundSetDetail;->m_parcelable:Lcom/htc/sdm/SoundSetParcelable;

    invoke-virtual {v4}, Lcom/htc/sdm/SoundSetParcelable;->getLocalFileUri()Landroid/net/Uri;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/sdm/util/SDMDBUtil;->ApplySound(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Landroid/net/Uri;)V

    .line 759
    iget-object v0, p0, Lcom/htc/sdm/activity/SoundSetDetail$1;->this$0:Lcom/htc/sdm/activity/SoundSetDetail;

    invoke-virtual {v0}, Lcom/htc/sdm/activity/SoundSetDetail;->finish()V

    goto :goto_0
.end method
