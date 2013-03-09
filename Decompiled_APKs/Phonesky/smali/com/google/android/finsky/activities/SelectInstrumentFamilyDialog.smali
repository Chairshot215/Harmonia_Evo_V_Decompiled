.class public Lcom/google/android/finsky/activities/SelectInstrumentFamilyDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "SelectInstrumentFamilyDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/activities/SelectInstrumentFamilyDialog$InstrumentFamilyListAdapter;,
        Lcom/google/android/finsky/activities/SelectInstrumentFamilyDialog$SelectInstrumentFamilyListener;
    }
.end annotation


# instance fields
.field private mSelectionList:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 81
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/activities/SelectInstrumentFamilyDialog;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/finsky/activities/SelectInstrumentFamilyDialog;->mSelectionList:Landroid/widget/ListView;

    return-object v0
.end method

.method public static newInstance(Ljava/util/List;Lcom/google/android/finsky/billing/InstrumentFactory;II)Lcom/google/android/finsky/activities/SelectInstrumentFamilyDialog;
    .locals 8
    .parameter
    .parameter "instrumentFactory"
    .parameter "titleResourceId"
    .parameter "defaultIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;",
            ">;",
            "Lcom/google/android/finsky/billing/InstrumentFactory;",
            "II)",
            "Lcom/google/android/finsky/activities/SelectInstrumentFamilyDialog;"
        }
    .end annotation

    .prologue
    .line 63
    .local p0, eligibleInstruments:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;>;"
    new-instance v2, Lcom/google/android/finsky/activities/SelectInstrumentFamilyDialog;

    invoke-direct {v2}, Lcom/google/android/finsky/activities/SelectInstrumentFamilyDialog;-><init>()V

    .line 64
    .local v2, dialogFragment:Lcom/google/android/finsky/activities/SelectInstrumentFamilyDialog;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 65
    .local v1, arguments:Landroid/os/Bundle;
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v5

    .line 66
    .local v5, parcelableInstruments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 67
    .local v0, addTextList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    .line 68
    .local v3, eligibleInstrument:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;
    invoke-virtual {v3}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->getInstrumentFamily()I

    move-result v6

    invoke-static {v3}, Lcom/google/android/finsky/billing/BillingUtils;->getFopVersion(Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;)I

    move-result v7

    invoke-virtual {p1, v6, v7}, Lcom/google/android/finsky/billing/InstrumentFactory;->getAddText(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    invoke-static {v3}, Lcom/google/android/finsky/utils/ParcelableProto;->forProto(Lcom/google/protobuf/micro/MessageMicro;)Lcom/google/android/finsky/utils/ParcelableProto;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 73
    .end local v3           #eligibleInstrument:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;
    :cond_0
    const-string v6, "instruments"

    invoke-virtual {v1, v6, v5}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 74
    const-string v6, "instrument_add_text_list"

    invoke-virtual {v1, v6, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 75
    const-string v6, "title_resource_id"

    invoke-virtual {v1, v6, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 76
    const-string v6, "selected_index"

    invoke-virtual {v1, v6, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 77
    invoke-virtual {v2, v1}, Lcom/google/android/finsky/activities/SelectInstrumentFamilyDialog;->setArguments(Landroid/os/Bundle;)V

    .line 78
    return-object v2
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const/4 v9, 0x1

    .line 119
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SelectInstrumentFamilyDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "instruments"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 121
    .local v3, instruments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/finsky/utils/ParcelableProto<Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;>;>;"
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SelectInstrumentFamilyDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "instrument_add_text_list"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 124
    .local v2, instrumentAddTextList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 125
    const-string v7, "selected_index"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 129
    .local v4, selectedIndex:Ljava/lang/Integer;
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SelectInstrumentFamilyDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "title_resource_id"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 130
    .local v6, titleResourceId:I
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SelectInstrumentFamilyDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    const v8, 0x7f0e0040

    invoke-direct {v0, v7, v8}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 133
    .local v0, contextThemeWrapper:Landroid/view/ContextThemeWrapper;
    new-instance v5, Lcom/google/android/finsky/activities/SelectInstrumentFamilyDialog$InstrumentFamilyListAdapter;

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SelectInstrumentFamilyDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-direct {v5, v2, v7}, Lcom/google/android/finsky/activities/SelectInstrumentFamilyDialog$InstrumentFamilyListAdapter;-><init>(Ljava/util/List;Landroid/content/Context;)V

    .line 135
    .local v5, selectionListAdapter:Lcom/google/android/finsky/activities/SelectInstrumentFamilyDialog$InstrumentFamilyListAdapter;
    new-instance v7, Landroid/widget/ListView;

    invoke-direct {v7, v0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/google/android/finsky/activities/SelectInstrumentFamilyDialog;->mSelectionList:Landroid/widget/ListView;

    .line 136
    iget-object v7, p0, Lcom/google/android/finsky/activities/SelectInstrumentFamilyDialog;->mSelectionList:Landroid/widget/ListView;

    invoke-virtual {v7, v9}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 137
    iget-object v7, p0, Lcom/google/android/finsky/activities/SelectInstrumentFamilyDialog;->mSelectionList:Landroid/widget/ListView;

    invoke-virtual {v7, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 138
    iget-object v7, p0, Lcom/google/android/finsky/activities/SelectInstrumentFamilyDialog;->mSelectionList:Landroid/widget/ListView;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8, v9}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 140
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 141
    .local v1, dialogBuilder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 142
    iget-object v7, p0, Lcom/google/android/finsky/activities/SelectInstrumentFamilyDialog;->mSelectionList:Landroid/widget/ListView;

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 143
    const v7, 0x7f070059

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 144
    const v7, 0x7f070130

    new-instance v8, Lcom/google/android/finsky/activities/SelectInstrumentFamilyDialog$1;

    invoke-direct {v8, p0, v3}, Lcom/google/android/finsky/activities/SelectInstrumentFamilyDialog$1;-><init>(Lcom/google/android/finsky/activities/SelectInstrumentFamilyDialog;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 156
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    return-object v7

    .line 127
    .end local v0           #contextThemeWrapper:Landroid/view/ContextThemeWrapper;
    .end local v1           #dialogBuilder:Landroid/app/AlertDialog$Builder;
    .end local v4           #selectedIndex:Ljava/lang/Integer;
    .end local v5           #selectionListAdapter:Lcom/google/android/finsky/activities/SelectInstrumentFamilyDialog$InstrumentFamilyListAdapter;
    .end local v6           #titleResourceId:I
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SelectInstrumentFamilyDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "selected_index"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .restart local v4       #selectedIndex:Ljava/lang/Integer;
    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 161
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 162
    const-string v0, "selected_index"

    iget-object v1, p0, Lcom/google/android/finsky/activities/SelectInstrumentFamilyDialog;->mSelectionList:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 163
    return-void
.end method
