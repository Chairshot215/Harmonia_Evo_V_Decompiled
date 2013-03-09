.class Lcom/htc/sdm/activity/SoundSetDetail$2;
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
    .line 805
    iput-object p1, p0, Lcom/htc/sdm/activity/SoundSetDetail$2;->this$0:Lcom/htc/sdm/activity/SoundSetDetail;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 808
    iget-object v4, p0, Lcom/htc/sdm/activity/SoundSetDetail$2;->this$0:Lcom/htc/sdm/activity/SoundSetDetail;

    iget-object v4, v4, Lcom/htc/sdm/activity/SoundSetDetail;->mlist:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sdm/activity/SoundSetDetail$SoundData;

    .line 810
    .local v1, item:Lcom/htc/sdm/activity/SoundSetDetail$SoundData;
    invoke-virtual {v1}, Lcom/htc/sdm/activity/SoundSetDetail$SoundData;->getParcelable()Lcom/htc/sdm/SoundSetParcelable;

    move-result-object v2

    .line 812
    .local v2, parcel:Lcom/htc/sdm/SoundSetParcelable;
    invoke-virtual {v2}, Lcom/htc/sdm/SoundSetParcelable;->getDownloadStatus()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lcom/htc/sdm/activity/SoundSetDetail$2;->this$0:Lcom/htc/sdm/activity/SoundSetDetail;

    invoke-virtual {v4}, Lcom/htc/sdm/activity/SoundSetDetail;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v2}, Lcom/htc/sdm/SoundSetParcelable;->getLocalFileUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5, v6, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    if-ne v4, v7, :cond_0

    .line 815
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 817
    .local v3, vl:Landroid/content/ContentValues;
    sget-object v4, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->downloaded:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;

    invoke-virtual {v4}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->name()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 818
    sget-object v4, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->soundUri:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;

    invoke-virtual {v4}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->name()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    iget-object v4, p0, Lcom/htc/sdm/activity/SoundSetDetail$2;->this$0:Lcom/htc/sdm/activity/SoundSetDetail;

    invoke-virtual {v4}, Lcom/htc/sdm/activity/SoundSetDetail;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v2}, Lcom/htc/sdm/SoundSetParcelable;->getSDMFileUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5, v3, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 824
    .end local v1           #item:Lcom/htc/sdm/activity/SoundSetDetail$SoundData;
    .end local v2           #parcel:Lcom/htc/sdm/SoundSetParcelable;
    .end local v3           #vl:Landroid/content/ContentValues;
    :cond_1
    iget-object v4, p0, Lcom/htc/sdm/activity/SoundSetDetail$2;->this$0:Lcom/htc/sdm/activity/SoundSetDetail;

    #getter for: Lcom/htc/sdm/activity/SoundSetDetail;->m_nSoundsetType:I
    invoke-static {v4}, Lcom/htc/sdm/activity/SoundSetDetail;->access$300(Lcom/htc/sdm/activity/SoundSetDetail;)I

    move-result v4

    if-ne v4, v7, :cond_2

    .line 826
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 828
    .restart local v3       #vl:Landroid/content/ContentValues;
    sget-object v4, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->downloaded:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;

    invoke-virtual {v4}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->name()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 830
    iget-object v4, p0, Lcom/htc/sdm/activity/SoundSetDetail$2;->this$0:Lcom/htc/sdm/activity/SoundSetDetail;

    invoke-virtual {v4}, Lcom/htc/sdm/activity/SoundSetDetail;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/sdm/activity/SoundSetDetail$2;->this$0:Lcom/htc/sdm/activity/SoundSetDetail;

    iget-object v5, v5, Lcom/htc/sdm/activity/SoundSetDetail;->m_parcelable:Lcom/htc/sdm/SoundSetParcelable;

    invoke-virtual {v5}, Lcom/htc/sdm/SoundSetParcelable;->getSDMFileUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5, v3, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 833
    .end local v3           #vl:Landroid/content/ContentValues;
    :cond_2
    iget-object v4, p0, Lcom/htc/sdm/activity/SoundSetDetail$2;->this$0:Lcom/htc/sdm/activity/SoundSetDetail;

    invoke-virtual {v4}, Lcom/htc/sdm/activity/SoundSetDetail;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v6}, Lcom/htc/sdm/util/SDMUtil;->generateSDMStatusNotificationUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 834
    iget-object v4, p0, Lcom/htc/sdm/activity/SoundSetDetail$2;->this$0:Lcom/htc/sdm/activity/SoundSetDetail;

    invoke-virtual {v4}, Lcom/htc/sdm/activity/SoundSetDetail;->finish()V

    .line 835
    return-void
.end method
