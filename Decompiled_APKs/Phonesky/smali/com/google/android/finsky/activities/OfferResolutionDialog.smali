.class public Lcom/google/android/finsky/activities/OfferResolutionDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "OfferResolutionDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/activities/OfferResolutionDialog$OfferListAdapter;,
        Lcom/google/android/finsky/activities/OfferResolutionDialog$OfferResolutionListener;
    }
.end annotation


# instance fields
.field private mDocuments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;"
        }
    .end annotation
.end field

.field private mOfferList:Landroid/widget/ListView;

.field private mOffers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Common$Offer;",
            ">;"
        }
    .end annotation
.end field

.field private mTitleResourceId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 89
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/activities/OfferResolutionDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/google/android/finsky/activities/OfferResolutionDialog;->syncOkButtonState()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/finsky/activities/OfferResolutionDialog;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/finsky/activities/OfferResolutionDialog;->mOfferList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/finsky/activities/OfferResolutionDialog;)Lcom/google/android/finsky/activities/OfferResolutionDialog$OfferResolutionListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/google/android/finsky/activities/OfferResolutionDialog;->getListener()Lcom/google/android/finsky/activities/OfferResolutionDialog$OfferResolutionListener;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/finsky/activities/OfferResolutionDialog;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/finsky/activities/OfferResolutionDialog;->mDocuments:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/finsky/activities/OfferResolutionDialog;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/finsky/activities/OfferResolutionDialog;->mOffers:Ljava/util/List;

    return-object v0
.end method

.method private getListener()Lcom/google/android/finsky/activities/OfferResolutionDialog$OfferResolutionListener;
    .locals 3

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/OfferResolutionDialog;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 215
    .local v1, f:Landroid/support/v4/app/Fragment;
    instance-of v2, v1, Lcom/google/android/finsky/activities/OfferResolutionDialog$OfferResolutionListener;

    if-eqz v2, :cond_0

    .line 216
    check-cast v1, Lcom/google/android/finsky/activities/OfferResolutionDialog$OfferResolutionListener;

    .line 222
    .end local v1           #f:Landroid/support/v4/app/Fragment;
    :goto_0
    return-object v1

    .line 218
    .restart local v1       #f:Landroid/support/v4/app/Fragment;
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/OfferResolutionDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 219
    .local v0, a:Landroid/app/Activity;
    instance-of v2, v0, Lcom/google/android/finsky/activities/OfferResolutionDialog$OfferResolutionListener;

    if-eqz v2, :cond_1

    .line 220
    check-cast v0, Lcom/google/android/finsky/activities/OfferResolutionDialog$OfferResolutionListener;

    .end local v0           #a:Landroid/app/Activity;
    move-object v1, v0

    goto :goto_0

    .line 222
    .restart local v0       #a:Landroid/app/Activity;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static newInstance(Ljava/util/List;Ljava/util/ArrayList;II)Lcom/google/android/finsky/activities/OfferResolutionDialog;
    .locals 7
    .parameter
    .parameter
    .parameter "titleResourceId"
    .parameter "defaultIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Common$Offer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;II)",
            "Lcom/google/android/finsky/activities/OfferResolutionDialog;"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, offers:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/remoting/protos/Common$Offer;>;"
    .local p1, docs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/finsky/api/model/Document;>;"
    new-instance v1, Lcom/google/android/finsky/activities/OfferResolutionDialog;

    invoke-direct {v1}, Lcom/google/android/finsky/activities/OfferResolutionDialog;-><init>()V

    .line 72
    .local v1, dialogFragment:Lcom/google/android/finsky/activities/OfferResolutionDialog;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 74
    .local v0, arguments:Landroid/os/Bundle;
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    .line 75
    .local v4, offerCount:I
    new-array v5, v4, [Lcom/google/android/finsky/utils/ParcelableProto;

    .line 76
    .local v5, parcelables:[Lcom/google/android/finsky/utils/ParcelableProto;,"[Lcom/google/android/finsky/utils/ParcelableProto<Lcom/google/android/finsky/remoting/protos/Common$Offer;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 77
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/remoting/protos/Common$Offer;

    .line 78
    .local v3, offer:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    new-instance v6, Lcom/google/android/finsky/utils/ParcelableProto;

    invoke-direct {v6, v3}, Lcom/google/android/finsky/utils/ParcelableProto;-><init>(Lcom/google/protobuf/micro/MessageMicro;)V

    aput-object v6, v5, v2

    .line 76
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 81
    .end local v3           #offer:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    :cond_0
    const-string v6, "offers"

    invoke-virtual {v0, v6, v5}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 82
    const-string v6, "documents"

    invoke-virtual {v0, v6, p1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 83
    const-string v6, "title_resource_id"

    invoke-virtual {v0, v6, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 84
    const-string v6, "selected_offer_index"

    invoke-virtual {v0, v6, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 85
    invoke-virtual {v1, v0}, Lcom/google/android/finsky/activities/OfferResolutionDialog;->setArguments(Landroid/os/Bundle;)V

    .line 86
    return-object v1
.end method

.method private syncOkButtonState()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 196
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/OfferResolutionDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    check-cast v1, Landroid/app/AlertDialog;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 197
    .local v0, okButton:Landroid/widget/Button;
    iget-object v1, p0, Lcom/google/android/finsky/activities/OfferResolutionDialog;->mOfferList:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v1

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 199
    return-void

    .line 197
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 14
    .parameter "savedInstanceState"

    .prologue
    const/4 v13, 0x1

    const/4 v12, -0x1

    .line 130
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v10

    iput-object v10, p0, Lcom/google/android/finsky/activities/OfferResolutionDialog;->mOffers:Ljava/util/List;

    .line 131
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/OfferResolutionDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v10

    const-string v11, "offers"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, [Lcom/google/android/finsky/utils/ParcelableProto;

    move-object v8, v10

    check-cast v8, [Lcom/google/android/finsky/utils/ParcelableProto;

    .line 133
    .local v8, parcelableOffers:[Lcom/google/android/finsky/utils/ParcelableProto;,"[Lcom/google/android/finsky/utils/ParcelableProto<Lcom/google/android/finsky/remoting/protos/Common$Offer;>;"
    move-object v0, v8

    .local v0, arr$:[Lcom/google/android/finsky/utils/ParcelableProto;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v7, v0, v2

    .line 134
    .local v7, parcelableOffer:Lcom/google/android/finsky/utils/ParcelableProto;,"Lcom/google/android/finsky/utils/ParcelableProto<Lcom/google/android/finsky/remoting/protos/Common$Offer;>;"
    iget-object v10, p0, Lcom/google/android/finsky/activities/OfferResolutionDialog;->mOffers:Ljava/util/List;

    invoke-virtual {v7}, Lcom/google/android/finsky/utils/ParcelableProto;->getPayload()Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 137
    .end local v7           #parcelableOffer:Lcom/google/android/finsky/utils/ParcelableProto;,"Lcom/google/android/finsky/utils/ParcelableProto<Lcom/google/android/finsky/remoting/protos/Common$Offer;>;"
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/OfferResolutionDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v10

    const-string v11, "documents"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    iput-object v10, p0, Lcom/google/android/finsky/activities/OfferResolutionDialog;->mDocuments:Ljava/util/List;

    .line 139
    if-eqz p1, :cond_2

    move-object v9, p1

    .line 140
    .local v9, source:Landroid/os/Bundle;
    :goto_1
    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/OfferResolutionDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    const v11, 0x7f0e0040

    invoke-direct {v1, v10, v11}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 143
    .local v1, contextThemeWrapper:Landroid/view/ContextThemeWrapper;
    new-instance v6, Lcom/google/android/finsky/activities/OfferResolutionDialog$OfferListAdapter;

    iget-object v10, p0, Lcom/google/android/finsky/activities/OfferResolutionDialog;->mOffers:Ljava/util/List;

    invoke-direct {v6, v10, v1}, Lcom/google/android/finsky/activities/OfferResolutionDialog$OfferListAdapter;-><init>(Ljava/util/List;Landroid/content/Context;)V

    .line 144
    .local v6, offerListAdapter:Lcom/google/android/finsky/activities/OfferResolutionDialog$OfferListAdapter;
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 146
    .local v5, offerDialogBuilder:Landroid/app/AlertDialog$Builder;
    const-string v10, "title_resource_id"

    const v11, 0x7f07012a

    invoke-virtual {v9, v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    iput v10, p0, Lcom/google/android/finsky/activities/OfferResolutionDialog;->mTitleResourceId:I

    .line 148
    iget v10, p0, Lcom/google/android/finsky/activities/OfferResolutionDialog;->mTitleResourceId:I

    invoke-virtual {v5, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 150
    new-instance v10, Landroid/widget/ListView;

    invoke-direct {v10, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/google/android/finsky/activities/OfferResolutionDialog;->mOfferList:Landroid/widget/ListView;

    .line 151
    iget-object v10, p0, Lcom/google/android/finsky/activities/OfferResolutionDialog;->mOfferList:Landroid/widget/ListView;

    invoke-virtual {v10, v13}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 152
    iget-object v10, p0, Lcom/google/android/finsky/activities/OfferResolutionDialog;->mOfferList:Landroid/widget/ListView;

    invoke-virtual {v10, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 153
    iget-object v10, p0, Lcom/google/android/finsky/activities/OfferResolutionDialog;->mOfferList:Landroid/widget/ListView;

    new-instance v11, Lcom/google/android/finsky/activities/OfferResolutionDialog$1;

    invoke-direct {v11, p0}, Lcom/google/android/finsky/activities/OfferResolutionDialog$1;-><init>(Lcom/google/android/finsky/activities/OfferResolutionDialog;)V

    invoke-virtual {v10, v11}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 161
    const-string v10, "selected_offer_index"

    invoke-virtual {v9, v10, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 163
    .local v3, initialSelectedIndex:I
    if-eq v3, v12, :cond_1

    .line 164
    iget-object v10, p0, Lcom/google/android/finsky/activities/OfferResolutionDialog;->mOfferList:Landroid/widget/ListView;

    invoke-virtual {v10, v3, v13}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 167
    :cond_1
    iget-object v10, p0, Lcom/google/android/finsky/activities/OfferResolutionDialog;->mOfferList:Landroid/widget/ListView;

    invoke-virtual {v5, v10}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 168
    const v10, 0x7f070059

    const/4 v11, 0x0

    invoke-virtual {v5, v10, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 169
    const v10, 0x7f070130

    new-instance v11, Lcom/google/android/finsky/activities/OfferResolutionDialog$2;

    invoke-direct {v11, p0}, Lcom/google/android/finsky/activities/OfferResolutionDialog$2;-><init>(Lcom/google/android/finsky/activities/OfferResolutionDialog;)V

    invoke-virtual {v5, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 185
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    return-object v10

    .line 139
    .end local v1           #contextThemeWrapper:Landroid/view/ContextThemeWrapper;
    .end local v3           #initialSelectedIndex:I
    .end local v5           #offerDialogBuilder:Landroid/app/AlertDialog$Builder;
    .end local v6           #offerListAdapter:Lcom/google/android/finsky/activities/OfferResolutionDialog$OfferListAdapter;
    .end local v9           #source:Landroid/os/Bundle;
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/OfferResolutionDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v9

    goto :goto_1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 203
    iget-object v0, p0, Lcom/google/android/finsky/activities/OfferResolutionDialog;->mOfferList:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 204
    const-string v0, "selected_offer_index"

    iget-object v1, p0, Lcom/google/android/finsky/activities/OfferResolutionDialog;->mOfferList:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 206
    :cond_0
    const-string v0, "title_resource_id"

    iget v1, p0, Lcom/google/android/finsky/activities/OfferResolutionDialog;->mTitleResourceId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 207
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 208
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 190
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onStart()V

    .line 191
    invoke-direct {p0}, Lcom/google/android/finsky/activities/OfferResolutionDialog;->syncOkButtonState()V

    .line 192
    return-void
.end method
