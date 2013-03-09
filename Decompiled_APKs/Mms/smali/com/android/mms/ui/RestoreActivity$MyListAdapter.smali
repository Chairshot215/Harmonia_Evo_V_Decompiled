.class Lcom/android/mms/ui/RestoreActivity$MyListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "RestoreActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/RestoreActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# static fields
.field private static final KB:I = 0x400

.field private static final MB:I = 0x100000


# instance fields
.field checkable:Z

.field final listView:Lcom/htc/widget/HtcListView;

.field mCheckIcon:Lcom/htc/widget/HtcListItemCheckBox;

.field mTimeStamp:Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;

.field mTxt:Lcom/htc/widget/HtcListItem2LineText;


# direct methods
.method public constructor <init>(Landroid/content/Context;I[Ljava/io/File;Lcom/htc/widget/HtcListView;)V
    .locals 1
    .parameter "context"
    .parameter "textViewResourceId"
    .parameter "objects"
    .parameter "listView"

    .prologue
    .line 865
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 857
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/RestoreActivity$MyListAdapter;->checkable:Z

    .line 866
    iput-object p4, p0, Lcom/android/mms/ui/RestoreActivity$MyListAdapter;->listView:Lcom/htc/widget/HtcListView;

    .line 867
    return-void
.end method

.method private formatFileLastModified(J)Ljava/lang/String;
    .locals 1
    .parameter "lastModified"

    .prologue
    .line 908
    const-string v0, "yyyy-MM-dd kk:mm:ss"

    invoke-static {v0, p1, p2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private formatFileLength(J)Ljava/lang/String;
    .locals 9
    .parameter "length"

    .prologue
    const-wide/16 v7, 0x1

    const-wide/32 v5, 0x100000

    const-wide/16 v3, 0x400

    .line 912
    cmp-long v0, p1, v5

    if-lez v0, :cond_0

    .line 913
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    add-long v1, p1, v5

    sub-long/2addr v1, v7

    div-long/2addr v1, v5

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " MB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 917
    :goto_0
    return-object v0

    .line 914
    :cond_0
    cmp-long v0, p1, v3

    if-lez v0, :cond_1

    .line 915
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    add-long v1, p1, v3

    sub-long/2addr v1, v7

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " KB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 917
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " B"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 871
    move-object v2, p2

    .line 873
    .local v2, view:Landroid/view/View;
    if-nez v2, :cond_0

    .line 874
    iget-boolean v3, p0, Lcom/android/mms/ui/RestoreActivity$MyListAdapter;->checkable:Z

    if-eqz v3, :cond_3

    .line 875
    invoke-virtual {p0}, Lcom/android/mms/ui/RestoreActivity$MyListAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v6}, Lcom/android/mms/ui/HtcListItemComposer;->createCheckboxListItem(Landroid/content/Context;Z)Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;

    move-result-object v1

    .line 879
    .local v1, group:Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;
    :goto_0
    iget-object v2, v1, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;->ListItem:Landroid/view/View;

    .line 880
    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 883
    .end local v1           #group:Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;

    .line 884
    .restart local v1       #group:Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/RestoreActivity$MyListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 886
    .local v0, file:Ljava/io/File;
    iget-object v3, v1, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;->Text:Lcom/htc/widget/HtcListItem2LineText;

    iput-object v3, p0, Lcom/android/mms/ui/RestoreActivity$MyListAdapter;->mTxt:Lcom/htc/widget/HtcListItem2LineText;

    .line 887
    iget-object v3, v1, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;->Stamp:Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;

    iput-object v3, p0, Lcom/android/mms/ui/RestoreActivity$MyListAdapter;->mTimeStamp:Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;

    .line 888
    iget-object v3, v1, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;->Checkbox:Lcom/htc/widget/HtcListItemCheckBox;

    iput-object v3, p0, Lcom/android/mms/ui/RestoreActivity$MyListAdapter;->mCheckIcon:Lcom/htc/widget/HtcListItemCheckBox;

    .line 890
    iget-object v3, p0, Lcom/android/mms/ui/RestoreActivity$MyListAdapter;->mTxt:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 891
    iget-object v3, p0, Lcom/android/mms/ui/RestoreActivity$MyListAdapter;->mTxt:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/android/mms/ui/RestoreActivity$MyListAdapter;->formatFileLastModified(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    .line 892
    iget-boolean v3, p0, Lcom/android/mms/ui/RestoreActivity$MyListAdapter;->checkable:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/mms/ui/RestoreActivity$MyListAdapter;->mTimeStamp:Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;

    if-eqz v3, :cond_1

    .line 893
    iget-object v3, p0, Lcom/android/mms/ui/RestoreActivity$MyListAdapter;->mTimeStamp:Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/android/mms/ui/RestoreActivity$MyListAdapter;->formatFileLength(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->setTextStamp(Ljava/lang/String;)V

    .line 895
    :cond_1
    iget-boolean v3, p0, Lcom/android/mms/ui/RestoreActivity$MyListAdapter;->checkable:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/mms/ui/RestoreActivity$MyListAdapter;->mCheckIcon:Lcom/htc/widget/HtcListItemCheckBox;

    if-eqz v3, :cond_2

    .line 897
    iget-object v3, p0, Lcom/android/mms/ui/RestoreActivity$MyListAdapter;->mCheckIcon:Lcom/htc/widget/HtcListItemCheckBox;

    invoke-virtual {v3, v7}, Lcom/htc/widget/HtcListItemCheckBox;->setVisibility(I)V

    .line 898
    iget-object v3, p0, Lcom/android/mms/ui/RestoreActivity$MyListAdapter;->listView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v3, p1}, Lcom/htc/widget/HtcListView;->isItemChecked(I)Z

    .line 899
    iget-object v3, p0, Lcom/android/mms/ui/RestoreActivity$MyListAdapter;->listView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v3, p1}, Lcom/htc/widget/HtcListView;->isItemChecked(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 900
    iget-object v3, p0, Lcom/android/mms/ui/RestoreActivity$MyListAdapter;->mCheckIcon:Lcom/htc/widget/HtcListItemCheckBox;

    invoke-virtual {v3, v6}, Lcom/htc/widget/HtcListItemCheckBox;->setChecked(Z)V

    .line 904
    :cond_2
    :goto_1
    return-object v2

    .line 877
    .end local v0           #file:Ljava/io/File;
    .end local v1           #group:Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;
    :cond_3
    invoke-virtual {p0}, Lcom/android/mms/ui/RestoreActivity$MyListAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v6}, Lcom/android/mms/ui/HtcListItemComposer;->createStampListItem(Landroid/content/Context;Z)Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;

    move-result-object v1

    .restart local v1       #group:Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;
    goto :goto_0

    .line 902
    .restart local v0       #file:Ljava/io/File;
    :cond_4
    iget-object v3, p0, Lcom/android/mms/ui/RestoreActivity$MyListAdapter;->mCheckIcon:Lcom/htc/widget/HtcListItemCheckBox;

    invoke-virtual {v3, v7}, Lcom/htc/widget/HtcListItemCheckBox;->setChecked(Z)V

    goto :goto_1
.end method

.method setCheckable(Z)V
    .locals 0
    .parameter "checkable"

    .prologue
    .line 922
    iput-boolean p1, p0, Lcom/android/mms/ui/RestoreActivity$MyListAdapter;->checkable:Z

    .line 923
    invoke-virtual {p0}, Lcom/android/mms/ui/RestoreActivity$MyListAdapter;->notifyDataSetChanged()V

    .line 924
    return-void
.end method
