.class Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;
.super Landroid/widget/BaseAdapter;
.source "MyAppsInstalledAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SectionAdapter"
.end annotation


# instance fields
.field private final mDocs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;"
        }
    .end annotation
.end field

.field private final mDocumentState:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentState;

.field private final mHeaderAction:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentBulkAction;

.field private final mHeaderTextId:I

.field final synthetic this$0:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentState;ILcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentBulkAction;)V
    .locals 1
    .parameter
    .parameter "documentState"
    .parameter "headerTextId"
    .parameter "headerAction"

    .prologue
    .line 109
    iput-object p1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;->this$0:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 110
    iput-object p2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;->mDocumentState:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentState;

    .line 111
    iput p3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;->mHeaderTextId:I

    .line 112
    iput-object p4, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;->mHeaderAction:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentBulkAction;

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;->mDocs:Ljava/util/List;

    .line 114
    return-void
.end method

.method static synthetic access$1100(Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;->mHeaderTextId:I

    return v0
.end method

.method static synthetic access$1200(Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;)Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentBulkAction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;->mHeaderAction:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentBulkAction;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;->mDocs:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method addDoc(Lcom/google/android/finsky/api/model/Document;)V
    .locals 1
    .parameter "doc"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;->mDocs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    return-void
.end method

.method clearDocs()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;->mDocs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 118
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;->mDocs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .parameter "position"

    .prologue
    .line 146
    if-nez p1, :cond_0

    .line 147
    const/4 v0, 0x0

    .line 149
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;->mDocs:Ljava/util/List;

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 141
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .parameter "position"

    .prologue
    .line 160
    if-nez p1, :cond_0

    .line 161
    const/4 v0, 0x0

    .line 164
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;->mDocumentState:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentState;

    sget-object v1, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentState;->DOWNLOADING:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentState;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 169
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;->getItemViewType(I)I

    move-result v7

    .line 170
    .local v7, type:I
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 v5, 0x1

    .line 171
    .local v5, isLastInSection:Z
    :goto_0
    const/4 v6, 0x0

    .line 173
    .local v6, result:Landroid/view/View;
    packed-switch v7, :pswitch_data_0

    .line 185
    :goto_1
    if-nez v6, :cond_1

    .line 186
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Null row view for position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    .end local v5           #isLastInSection:Z
    .end local v6           #result:Landroid/view/View;
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 175
    .restart local v5       #isLastInSection:Z
    .restart local v6       #result:Landroid/view/View;
    :pswitch_0
    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;->this$0:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/api/model/Document;

    #calls: Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->getDownloadingDocView(Lcom/google/android/finsky/api/model/Document;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    invoke-static {v1, v0, p2, p3}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->access$200(Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;Lcom/google/android/finsky/api/model/Document;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 176
    goto :goto_1

    .line 178
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;->this$0:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/api/model/Document;

    iget-object v4, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;->mDocumentState:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentState;

    move-object v2, p2

    move-object v3, p3

    #calls: Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->getDocView(Lcom/google/android/finsky/api/model/Document;Landroid/view/View;Landroid/view/ViewGroup;Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentState;Z)Landroid/view/View;
    invoke-static/range {v0 .. v5}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->access$300(Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;Lcom/google/android/finsky/api/model/Document;Landroid/view/View;Landroid/view/ViewGroup;Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentState;Z)Landroid/view/View;

    move-result-object v6

    .line 180
    goto :goto_1

    .line 182
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;->this$0:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;

    #calls: Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->getHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;)Landroid/view/View;
    invoke-static {v0, p1, p2, p3, p0}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->access$400(Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;ILandroid/view/View;Landroid/view/ViewGroup;Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;)Landroid/view/View;

    move-result-object v6

    goto :goto_1

    .line 189
    :cond_1
    return-object v6

    .line 173
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x3

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;->mDocs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method sortDocs()V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;->mDocs:Ljava/util/List;

    invoke-static {}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->access$100()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 126
    return-void
.end method
